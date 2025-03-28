unit usave;

interface

uses umain , udata  , SysUtils , ucustomization ;


procedure psave_customization();
procedure pload_customization();

implementation
//==============================================================================
procedure psave_customization();
begin
  s.customization_opu.WriteData[0] := StrToInt(frmCust.Label33.Caption);
  s.customization_opu.WriteData[1] := StrToInt(frmCust.Label34.Caption);
  s.customization_opu.WriteData[2] := StrToInt(frmCust.Label35.Caption);
  s.customization_opu.WriteData[3] := StrToInt(frmCust.Label36.Caption);
  s.customization_opu.WriteData[4] := StrToInt(frmCust.Label37.Caption);
  s.customization_opu.WriteData[5] := StrToInt(frmCust.Label38.Caption);
  s.customization_opu.WriteData[6] := StrToInt(frmCust.Label39.Caption);
  s.customization_opu.WriteData[7] := StrToInt(frmCust.Label40.Caption);

  //----------------------------------------------------------------------------
  AssignFile(s.customization_opu.myFile, '.\save\customization_opu.txt');
  ReWrite(s.customization_opu.myFile,  SizeOf(s.customization_opu.WriteData));
  BlockWrite(s.customization_opu.myFile, s.customization_opu.WriteData,  SizeOf(s.customization_opu.WriteData));
  CloseFile(s.customization_opu.myFile);


end;

//==============================================================================
procedure pload_customization();
var
  count     : integer;
begin

  FileMode := fmOpenRead;
  AssignFile(s.customization_opu.myFile, '.\save\customization_opu.txt');
  Reset(s.customization_opu.myFile, 1);
  count:=  SizeOf(s.customization_opu.ReadData);
  BlockRead(s.customization_opu.myFile, s.customization_opu.ReadData,  SizeOf(s.customization_opu.WriteData), count);
  //----------------------------------------------------------------------------
  frmCust.Label33.Caption := IntToStr( s.customization_opu.ReadData[0]);
  frmCust.Label34.Caption := IntToStr( s.customization_opu.ReadData[1]);
  frmCust.Label35.Caption := IntToStr( s.customization_opu.ReadData[2]);
  frmCust.Label36.Caption := IntToStr( s.customization_opu.ReadData[3]);
  frmCust.Label37.Caption := IntToStr( s.customization_opu.ReadData[4]);
  frmCust.Label38.Caption := IntToStr( s.customization_opu.ReadData[5]);
  frmCust.Label39.Caption := IntToStr( s.customization_opu.ReadData[6]);
  frmCust.Label40.Caption := IntToStr( s.customization_opu.ReadData[7]);


  

end;

end.
