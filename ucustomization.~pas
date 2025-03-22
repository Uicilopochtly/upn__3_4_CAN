unit ucustomization;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls , umain , udata, Menus  ;

type
  TfrmCust = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    TrackBar5: TTrackBar;
    TrackBar6: TTrackBar;
    TrackBar7: TTrackBar;
    TrackBar8: TTrackBar;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    PopupMenu1: TPopupMenu;
    LOAD1: TMenuItem;
    SAVE1: TMenuItem;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure Edit15KeyPress(Sender: TObject; var Key: Char);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure LOAD1Click(Sender: TObject);
    procedure SAVE1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  frmCust: TfrmCust;

procedure pcustomization_display();
procedure pcustomization();


implementation

{$R *.dfm}

uses usave;

//==============================================================================
procedure pcustomization_display();
begin
  //----------------------------------------------------------------------------
  //---------------------------------
  if (frmCust.Edit1.Text <> '-') then
    frmCust.TrackBar1.Min := StrToInt(frmCust.Edit1.Text);

  if (frmCust.Edit2.Text <> '-') then
    frmCust.TrackBar1.Max := StrToInt(frmCust.Edit2.Text);
  //---------------------------------
  if (frmCust.Edit3.Text <> '-') then
    frmCust.TrackBar2.Min := StrToInt(frmCust.Edit3.Text);

  if (frmCust.Edit4.Text <> '-') then
    frmCust.TrackBar2.Max := StrToInt(frmCust.Edit4.Text);
  //---------------------------------
  if (frmCust.Edit5.Text <> '-') then
    frmCust.TrackBar3.Min := StrToInt(frmCust.Edit5.Text);

  if (frmCust.Edit6.Text <> '-') then
    frmCust.TrackBar3.Max := StrToInt(frmCust.Edit6.Text);
  //---------------------------------
  if (frmCust.Edit7.Text <> '-') then
    frmCust.TrackBar4.Min := StrToInt(frmCust.Edit7.Text);

  if (frmCust.Edit8.Text <> '-') then
    frmCust.TrackBar4.Max := StrToInt(frmCust.Edit8.Text);
  //---------------------------------
  if (frmCust.Edit9.Text <> '-') then
    frmCust.TrackBar5.Min := StrToInt(frmCust.Edit9.Text);

  if (frmCust.Edit10.Text <> '-') then
    frmCust.TrackBar5.Max := StrToInt(frmCust.Edit10.Text);
  //---------------------------------
  if (frmCust.Edit11.Text <> '-') then
    frmCust.TrackBar6.Min := StrToInt(frmCust.Edit11.Text);

  if (frmCust.Edit12.Text <> '-') then
    frmCust.TrackBar6.Max := StrToInt(frmCust.Edit12.Text);
  //---------------------------------
  if (frmCust.Edit13.Text <> '-') then
    frmCust.TrackBar7.Min := StrToInt(frmCust.Edit13.Text);

  if (frmCust.Edit14.Text <> '-') then
    frmCust.TrackBar7.Max := StrToInt(frmCust.Edit14.Text);
  //---------------------------------
  if (frmCust.Edit15.Text <> '-') then
    frmCust.TrackBar8.Min := StrToInt(frmCust.Edit15.Text);

  if (frmCust.Edit16.Text <> '-') then
    frmCust.TrackBar8.Max := StrToInt(frmCust.Edit16.Text);

  //----------------------------------------------------------------------------
  if ( s.customization_opu.loaded = true) then begin
    frmCust.Label33.Caption :=  IntToStr(frmCust.TrackBar1.Position);
    frmCust.Label34.Caption :=  IntToStr(frmCust.TrackBar2.Position);
    frmCust.Label35.Caption :=  IntToStr(frmCust.TrackBar3.Position);
    frmCust.Label36.Caption :=  IntToStr(frmCust.TrackBar4.Position);
    frmCust.Label37.Caption :=  IntToStr(frmCust.TrackBar5.Position);
    frmCust.Label38.Caption :=  IntToStr(frmCust.TrackBar6.Position);
    frmCust.Label39.Caption :=  IntToStr(frmCust.TrackBar7.Position);
    frmCust.Label40.Caption :=  IntToStr(frmCust.TrackBar8.Position);
  end else begin
    frmCust.TrackBar1.Position := StrToInt(frmCust.Label33.Caption);
    frmCust.TrackBar2.Position := StrToInt(frmCust.Label34.Caption);
    frmCust.TrackBar3.Position := StrToInt(frmCust.Label35.Caption);
    frmCust.TrackBar4.Position := StrToInt(frmCust.Label36.Caption);

    frmCust.TrackBar5.Position := StrToInt(frmCust.Label37.Caption);
    frmCust.TrackBar6.Position := StrToInt(frmCust.Label38.Caption);
    frmCust.TrackBar7.Position := StrToInt(frmCust.Label39.Caption);
    frmCust.TrackBar8.Position := StrToInt(frmCust.Label40.Caption);

  end;

end;

//==============================================================================
procedure pcustomization();
begin
  //pack00
  //---------------------------------------------------------------------------- masks
  if (frmCust.CheckBox1.Checked) then
    p.tx.custom.cntr.mask.b00       := 1
  else
    p.tx.custom.cntr.mask.b00        := 0;

  if (frmCust.CheckBox2.Checked) then
    p.tx.custom.cntr.mask.b01       := 1
  else
    p.tx.custom.cntr.mask.b01        := 0;

  if (frmCust.CheckBox3.Checked) then
    p.tx.custom.cntr.mask.b02       := 1
  else
    p.tx.custom.cntr.mask.b02        := 0;

  if (frmCust.CheckBox4.Checked) then
    p.tx.custom.cntr.mask.b03       := 1
  else
    p.tx.custom.cntr.mask.b03        := 0;

  if (frmCust.CheckBox5.Checked) then
    p.tx.custom.cntr.mask.b10       := 1
  else
    p.tx.custom.cntr.mask.b10        := 0;

  if (frmCust.CheckBox6.Checked) then
    p.tx.custom.cntr.mask.b11       := 1
  else
    p.tx.custom.cntr.mask.b11        := 0;

  if (frmCust.CheckBox7.Checked) then
    p.tx.custom.cntr.mask.b12       := 1
  else
    p.tx.custom.cntr.mask.b12        := 0;

  if (frmCust.CheckBox8.Checked) then
    p.tx.custom.cntr.mask.b13       := 1
  else
    p.tx.custom.cntr.mask.b13        := 0;


  //pack01
  p.tx.custom.vn.data00   := StrToInt(frmCust.Label33.Caption);
  p.tx.custom.vn.data01   := StrToInt(frmCust.Label34.Caption);
  p.tx.custom.vn.data02   := StrToInt(frmCust.Label35.Caption);
  p.tx.custom.vn.data03   := StrToInt(frmCust.Label36.Caption);
  //pack02
  p.tx.custom.gn.data10   := StrToInt(frmCust.Label37.Caption);
  p.tx.custom.gn.data11   := StrToInt(frmCust.Label38.Caption);
  p.tx.custom.gn.data12   := StrToInt(frmCust.Label39.Caption);
  p.tx.custom.gn.data13   := StrToInt(frmCust.Label40.Caption);

end;
//==============================================================================
procedure TfrmCust.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit13KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit15KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.Edit16KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-' ,#8])then Key:=#0;
end;

procedure TfrmCust.FormCreate(Sender: TObject);
begin
  pload_customization();

  frmCust.TrackBar1.Min := StrToInt(frmCust.Edit1.Text);
  frmCust.TrackBar1.Max := StrToInt(frmCust.Edit2.Text);

  frmCust.TrackBar2.Min := StrToInt(frmCust.Edit3.Text);
  frmCust.TrackBar2.Max := StrToInt(frmCust.Edit4.Text);

  frmCust.TrackBar3.Min := StrToInt(frmCust.Edit5.Text);
  frmCust.TrackBar3.Max := StrToInt(frmCust.Edit6.Text);

  frmCust.TrackBar4.Min := StrToInt(frmCust.Edit7.Text);
  frmCust.TrackBar4.Max := StrToInt(frmCust.Edit8.Text);

  frmCust.TrackBar5.Min := StrToInt(frmCust.Edit9.Text);
  frmCust.TrackBar5.Max := StrToInt(frmCust.Edit10.Text);

  frmCust.TrackBar6.Min := StrToInt(frmCust.Edit11.Text);
  frmCust.TrackBar6.Max := StrToInt(frmCust.Edit12.Text);

  frmCust.TrackBar7.Min := StrToInt(frmCust.Edit13.Text);
  frmCust.TrackBar7.Max := StrToInt(frmCust.Edit14.Text);

  frmCust.TrackBar8.Min := StrToInt(frmCust.Edit15.Text);
  frmCust.TrackBar8.Max := StrToInt(frmCust.Edit16.Text);

  frmCust.TrackBar1.Position := StrToInt(frmCust.Label33.Caption);
  frmCust.TrackBar2.Position := StrToInt(frmCust.Label34.Caption);
  frmCust.TrackBar3.Position := StrToInt(frmCust.Label35.Caption);
  frmCust.TrackBar4.Position := StrToInt(frmCust.Label36.Caption);

  frmCust.TrackBar5.Position := StrToInt(frmCust.Label37.Caption);
  frmCust.TrackBar6.Position := StrToInt(frmCust.Label38.Caption);
  frmCust.TrackBar7.Position := StrToInt(frmCust.Label39.Caption);
  frmCust.TrackBar8.Position := StrToInt(frmCust.Label40.Caption);

  s.customization_opu.loaded := true;
  

end;

procedure TfrmCust.LOAD1Click(Sender: TObject);
begin

  s.customization_opu.loaded :=false;
  pload_customization();
end;

procedure TfrmCust.SAVE1Click(Sender: TObject);
begin
  psave_customization();
end;

end.
