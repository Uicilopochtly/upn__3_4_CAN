unit urmd_customization;

interface
uses urmd , SysUtils;

procedure prmd_customization_display();
procedure prmd_customization();

implementation
uses urmd_data , udata;

//==============================================================================
procedure prmd_customization_display();
begin
  //----------------------------------------------------------------------------
  //---------------------------------
  if (frmRmd.Edit1.Text <> '-') then
    frmRmd.TrackBar1.Min := StrToInt(frmRmd.Edit1.Text);

  if (frmRmd.Edit2.Text <> '-') then
    frmRmd.TrackBar1.Max := StrToInt(frmRmd.Edit2.Text);
  //---------------------------------
  if (frmRmd.Edit3.Text <> '-') then
    frmRmd.TrackBar2.Min := StrToInt(frmRmd.Edit3.Text);

  if (frmRmd.Edit4.Text <> '-') then
    frmRmd.TrackBar2.Max := StrToInt(frmRmd.Edit4.Text);
  //---------------------------------
  if (frmRmd.Edit5.Text <> '-') then
    frmRmd.TrackBar3.Min := StrToInt(frmRmd.Edit5.Text);

  if (frmRmd.Edit6.Text <> '-') then
    frmRmd.TrackBar3.Max := StrToInt(frmRmd.Edit6.Text);
  //---------------------------------
  if (frmRmd.Edit7.Text <> '-') then
    frmRmd.TrackBar4.Min := StrToInt(frmRmd.Edit7.Text);

  if (frmRmd.Edit8.Text <> '-') then
    frmRmd.TrackBar4.Max := StrToInt(frmRmd.Edit8.Text);
  //---------------------------------
  if (frmRmd.Edit9.Text <> '-') then
    frmRmd.TrackBar5.Min := StrToInt(frmRmd.Edit9.Text);

  if (frmRmd.Edit10.Text <> '-') then
    frmRmd.TrackBar5.Max := StrToInt(frmRmd.Edit10.Text);
  //---------------------------------
  if (frmRmd.Edit11.Text <> '-') then
    frmRmd.TrackBar6.Min := StrToInt(frmRmd.Edit11.Text);

  if (frmRmd.Edit12.Text <> '-') then
    frmRmd.TrackBar6.Max := StrToInt(frmRmd.Edit12.Text);
  //---------------------------------
  if (frmRmd.Edit13.Text <> '-') then
    frmRmd.TrackBar7.Min := StrToInt(frmRmd.Edit13.Text);

  if (frmRmd.Edit14.Text <> '-') then
    frmRmd.TrackBar7.Max := StrToInt(frmRmd.Edit14.Text);
  //---------------------------------
  if (frmRmd.Edit15.Text <> '-') then
    frmRmd.TrackBar8.Min := StrToInt(frmRmd.Edit15.Text);

  if (frmRmd.Edit16.Text <> '-') then
    frmRmd.TrackBar8.Max := StrToInt(frmRmd.Edit16.Text);

  //----------------------------------------------------------------------------
  if ( s_rmd.customization_opu.loaded = true) then begin
    frmRmd.Label17.Caption :=  IntToStr(frmRmd.TrackBar1.Position);
    frmRmd.Label18.Caption :=  IntToStr(frmRmd.TrackBar2.Position);
    frmRmd.Label19.Caption :=  IntToStr(frmRmd.TrackBar3.Position);
    frmRmd.Label20.Caption :=  IntToStr(frmRmd.TrackBar4.Position);
    frmRmd.Label21.Caption :=  IntToStr(frmRmd.TrackBar5.Position);
    frmRmd.Label22.Caption :=  IntToStr(frmRmd.TrackBar6.Position);
    frmRmd.Label23.Caption :=  IntToStr(frmRmd.TrackBar7.Position);
    frmRmd.Label24.Caption :=  IntToStr(frmRmd.TrackBar8.Position);
  end else begin
    frmRmd.TrackBar1.Position := StrToInt(frmRmd.Label17.Caption);
    frmRmd.TrackBar2.Position := StrToInt(frmRmd.Label18.Caption);
    frmRmd.TrackBar3.Position := StrToInt(frmRmd.Label19.Caption);
    frmRmd.TrackBar4.Position := StrToInt(frmRmd.Label20.Caption);

    frmRmd.TrackBar5.Position := StrToInt(frmRmd.Label21.Caption);
    frmRmd.TrackBar6.Position := StrToInt(frmRmd.Label22.Caption);
    frmRmd.TrackBar7.Position := StrToInt(frmRmd.Label23.Caption);
    frmRmd.TrackBar8.Position := StrToInt(frmRmd.Label24.Caption);

  end;

end;

//==============================================================================
procedure prmd_customization();
begin
  //pack00
  //---------------------------------------------------------------------------- masks
  if (frmRmd.CheckBox1.Checked) then
    p.tx.custom.cntr.mask.b20       := 1
  else
    p.tx.custom.cntr.mask.b20        := 0;

  if (frmRmd.CheckBox2.Checked) then
    p.tx.custom.cntr.mask.b21       := 1
  else
    p.tx.custom.cntr.mask.b21        := 0;

  if (frmRmd.CheckBox3.Checked) then
    p.tx.custom.cntr.mask.b22       := 1
  else
    p.tx.custom.cntr.mask.b22        := 0;

  if (frmRmd.CheckBox4.Checked) then
    p.tx.custom.cntr.mask.b23       := 1
  else
    p.tx.custom.cntr.mask.b23        := 0;

  if (frmRmd.CheckBox5.Checked) then
    p.tx.custom.cntr.mask.b30       := 1
  else
    p.tx.custom.cntr.mask.b30        := 0;

  if (frmRmd.CheckBox6.Checked) then
    p.tx.custom.cntr.mask.b31       := 1
  else
    p.tx.custom.cntr.mask.b31        := 0;

  if (frmRmd.CheckBox7.Checked) then
    p.tx.custom.cntr.mask.b32       := 1
  else
    p.tx.custom.cntr.mask.b32        := 0;

  if (frmRmd.CheckBox8.Checked) then
    p.tx.custom.cntr.mask.b33       := 1
  else
    p.tx.custom.cntr.mask.b33        := 0;


  //pack01
  p.tx.custom.vn.data20   := StrToInt(frmRmd.Label17.Caption);
  p.tx.custom.vn.data21   := StrToInt(frmRmd.Label18.Caption);
  p.tx.custom.vn.data22   := StrToInt(frmRmd.Label19.Caption);
  p.tx.custom.vn.data23   := StrToInt(frmRmd.Label20.Caption);
  //pack02
  p.tx.custom.gn.data30   := StrToInt(frmRmd.Label21.Caption);
  p.tx.custom.gn.data31   := StrToInt(frmRmd.Label22.Caption);
  p.tx.custom.gn.data32   := StrToInt(frmRmd.Label23.Caption);
  p.tx.custom.gn.data33   := StrToInt(frmRmd.Label24.Caption);

end;

end.
