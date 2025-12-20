  Case Key of
    VK_RETURN: begin
                 Key := 0;
                 SelectNext(TWinControl(Sender), True, True);
               end;
    VK_UP    : begin
                 if (Sender is TwwDBLookUpCombo) then
                 begin
                   if not TwwDBLookUpCombo(Sender).Grid.Visible then
                   begin
                     Key := 0;
                     SelectNext(TWinControl(Sender), False, True);
                   end
                   else
                     Inherited KeyDown(Key, Shift);
                 end
                 else begin
                   if (Sender is TwwDBComboBox) then
                   begin
                     if not TwwDBComboBox(Sender).DroppedDown then
                     begin
                       Key := 0;
                       SelectNext(TWinControl(Sender), False, True);
                     end
                     else
                       Inherited KeyDown(Key, Shift);
                   end
                   else begin
                     Key := 0;
                     SelectNext(TWinControl(Sender), False, True);
                   end
                 end;
               end;
    VK_DOWN  : begin
                 if Sender is TwwDBLookUpCombo then
                 begin
                   if not TwwDBLookUpCombo(Sender).Grid.Visible then
                   begin
                     if ssAlt in Shift then
                     begin
                       inherited KeyDown(Key, Shift);
                     end
                     else begin
                       Key := 0;
                       SelectNext(TWinControl(Sender), True, True);
                     end;
                   end
                   else
                     Inherited KeyDown(Key, Shift);
                 end
                 else begin
                   Key := 0;
                   SelectNext(TWinControl(Sender), True, True);
                 end;
               end;
    else
      Inherited KeyDown(Key, Shift);
  end;
