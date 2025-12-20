import sys

path = r"c:\Angela\FB_IGestion\uFiscal.pas"

try:
    with open(path, 'r', encoding='latin-1') as f:
        lines = f.readlines()
except Exception as e:
    print(f"Error reading file: {e}")
    sys.exit(1)

new_lines = []
added_uses = False
added_field = False
added_init = False
inside_imp_comp = False
processed_imp_comp = False
added_close_bypass = False

i = 0
while i < len(lines):
    line = lines[i]
    stripped = line.strip()
    
    # 1. Uses
    if not added_uses and stripped.startswith("uses uDemora, udmSaveFile;"):
        new_lines.append(line.replace("uses uDemora, udmSaveFile;", "uses uDemora, udmSaveFile, uAFIP;"))
        added_uses = True
        i += 1
        continue
        
    # 2. Field in TfrmFiscal
    if not added_field and "{ Published declarations }" in line:
        new_lines.append(line)
        new_lines.append("    oAFIP: TAFIPConnector;\n")
        added_field = True
        i += 1
        continue
        
    # 3. FormCreate Init
    if not added_init and "HuboFaltaPapel := False;" in line:
        new_lines.append(line)
        new_lines.append("""
  // INICIO MODIFICACION AFIP
  // Nota: Estos paths son temporales, se configuraran desde la base de datos luego
  oAFIP := TAFIPConnector.Create(
      '20123456789', // CUIT Generico
      'cert.crt',    // Path Certificado
      'clave.key',   // Path Key
      'https://wsaa.afip.gov.ar/ws/services/LoginCms',
      'https://servicios1.afip.gov.ar/wsfev1/service.asmx'
  );
  // FIN MODIFICACION AFIP
""")
        added_init = True
        i += 1
        continue
        
    # 4. Imprimir_Comprobante
    if "function TfrmFiscal.Imprimir_Comprobante" in line:
        inside_imp_comp = True
    
    if inside_imp_comp and not processed_imp_comp:
        if "i: Integer;" in line:
            new_lines.append(line)
            new_lines.append("  Resp: TRespuestaCAE;\n")
            i += 1
            continue
        
        if line.strip().lower() == 'begin':
            new_lines.append(line)
            # Inject the logic block
            new_lines.append("""  // --- INICIO BLOQUE AFIP ---
  if IF_Modelo = 99 then
  begin
    try
       ShowDemora('Conectando con AFIP...');
       // Llamamos a AFIP pasando la factura completa y los items
       // Nota: TipoComp y PtoVta se toman de la Factura o se pasan como parametros
       Resp := oAFIP.ObtenerCAE(Factura.TipoFactura, Factura.PuntoVta, Factura, ItemsFactura);

       if Resp.Resultado = 'A' then
       begin
          // EXITO: Guardamos datos en el registro Factura
          Factura.CAE := Resp.CAE;
          Factura.VencimientoCAE := Resp.Vencimiento;
          // Actualizamos el estado para que Cerrar_Comprobante lo guarde en BD
          ComprobanteOk := True;
          // Llamamos a Cerrar solo para persistencia en BD (sin imprimir)
          Cerrar_Comprobante(DatosPago, Factura, '');
          Result := True;
       end
       else
       begin
          // FALLO
          Result := False;
          ComprobanteOk := False;
          raise Exception.Create('Error AFIP: ' + Resp.Observaciones);
       end;
    finally
       CloseDemora;
    end;
    Exit; // Salimos para no ejecutar logica de impresoras fiscales
  end;
  // --- FIN BLOQUE AFIP ---
""")
            processed_imp_comp = True
            inside_imp_comp = False
            i += 1
            continue

    # 5. Cerrar_Comprobante bypass
    if not added_close_bypass and "if ControladorOK then" in line:
        # Verify context: check previous line (approximately)
        # But simple string match is safer if unique enough.
        # "if ControladorOK then" appears in Imprimir_Comprobante too!
        # Context: Needs to be inside Cerrar_Comprobante.
        # I'll rely on "Modelo_CF := IF_Modelo;" preceding it, which is specific to Cerrar_Comprobante logic.
        pass # Handle below
        
    if "Modelo_CF := IF_Modelo;" in line:
        new_lines.append(line)
        # Look ahead for if ControladorOK then
        if i + 1 < len(lines) and "if ControladorOK then" in lines[i+1]:
            # Consume the original line
            i += 1
            # Inject new line
            new_lines.append("  if (ControladorOK) or (IF_Modelo = 99) then\n")
            
            # Now consume until "case Modelo_CF of"
            # And inject 99 case
            while i+1 < len(lines):
                i+=1
                l_next = lines[i]
                new_lines.append(l_next)
                if "case Modelo_CF of" in l_next:
                    new_lines.append("        99:; // Bypass AFIP\n")
                    break
                    
            added_close_bypass = True
            i += 1
            continue

    new_lines.append(line)
    i += 1

with open(path, 'w', encoding='latin-1') as f:
    f.writelines(new_lines)

print("Updates applied successfully.")
