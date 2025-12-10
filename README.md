## 📂 Carpeta: drivers&libraries

Esta carpeta contiene las dependencias binarias críticas (DLLs, OCXs y BPLs) necesarias para ejecutar el sistema legado (`FB_IGestion.exe`) en entornos modernos como Windows 10/11.

El proyecto original fue compilado en **Delphi 2006** con la opción "Build with runtime packages", por lo que no es autosuficiente y requiere estos archivos en la misma carpeta del ejecutable o en `System32`/`SysWOW64`.

### 🖨️ Controladores Fiscales (Drivers)
Archivos necesarios para la comunicación con impresoras fiscales (específicamente Hasar).
* **`FISCAL.OCX`**: Control ActiveX principal para manejar la impresora fiscal. Requiere registro mediante `regsvr32`.
* **`WINFIS32.DLL`**: Librería de enlace dinámico obligatoria. Es una dependencia de `FISCAL.OCX`; sin ella, el OCX no funciona.

### 🗄️ Conectividad con Base de Datos (Firebird 2.0)
Archivos necesarios para conectar la aplicación con la base de datos `INSOLITOSRL.FDB`.
* **`fbclient.dll`**: Librería cliente nativa de Firebird. Es el "chofer" que lleva los datos.
* **`gds32.dll`**: Librería de compatibilidad (Legacy). A menudo es una copia renombrada de `fbclient.dll` que las aplicaciones Delphi viejas buscan por defecto para conectarse a Interbase/Firebird.
* **`midas.dll`**: Librería "Multi-Tier Distributed Application Services". Fundamental para el manejo de `TClientDataSet` y paquetes de datos en memoria. Requiere registro con `regsvr32`.

### 📦 Runtime Packages (Delphi 2006)
Librerías del entorno de Delphi. El sufijo "100" indica la versión 10.0 (Delphi 2006).
* **`rtl100.bpl`** (Runtime Library): El núcleo del sistema. Maneja memoria, excepciones y funciones básicas.
* **`vcl100.bpl`** (Visual Component Library): Contiene los componentes visuales estándar (ventanas, botones, formularios).
* **`dbrtl100.bpl`** (Database Runtime): Funciones base para conexión a datos.
* **`vcldb100.bpl`**: Componentes visuales conectados a datos (Grillas, DBEdits).
* **`ibxpress100.bpl`**: Componentes específicos para InterBase/Firebird.
* **`dsnap100.bpl`**: DataSnap, utilizado para aplicaciones multicapa.
* **`bdertl100.bpl`**: Borland Database Engine (Motor de base de datos legado).
* **`vclx100.bpl`**: Componentes visuales extendidos.
