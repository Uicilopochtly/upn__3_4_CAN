unit urmd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls , umain, ComCtrls, Menus ;

type
  TfrmRmd = class(TForm)
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
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    TrackBar5: TTrackBar;
    TrackBar6: TTrackBar;
    TrackBar7: TTrackBar;
    TrackBar8: TTrackBar;
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
    PopupMenu1: TPopupMenu;
    LOAD1: TMenuItem;
    SAVE1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure LOAD1Click(Sender: TObject);
    procedure SAVE1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRmd: TfrmRmd;

implementation

{$R *.dfm}

uses urmd_data , urmd_init , urmd_customization , urmd_save;

procedure TfrmRmd.FormCreate(Sender: TObject);
begin
  prmd_init();

  prmd_load_customization();

  frmRmd.TrackBar1.Min := StrToInt(frmRmd.Edit1.Text);
  frmRmd.TrackBar1.Max := StrToInt(frmRmd.Edit2.Text);

  frmRmd.TrackBar2.Min := StrToInt(frmRmd.Edit3.Text);
  frmRmd.TrackBar2.Max := StrToInt(frmRmd.Edit4.Text);

  frmRmd.TrackBar3.Min := StrToInt(frmRmd.Edit5.Text);
  frmRmd.TrackBar3.Max := StrToInt(frmRmd.Edit6.Text);

  frmRmd.TrackBar4.Min := StrToInt(frmRmd.Edit7.Text);
  frmRmd.TrackBar4.Max := StrToInt(frmRmd.Edit8.Text);

  frmRmd.TrackBar5.Min := StrToInt(frmRmd.Edit9.Text);
  frmRmd.TrackBar5.Max := StrToInt(frmRmd.Edit10.Text);

  frmRmd.TrackBar6.Min := StrToInt(frmRmd.Edit11.Text);
  frmRmd.TrackBar6.Max := StrToInt(frmRmd.Edit12.Text);

  frmRmd.TrackBar7.Min := StrToInt(frmRmd.Edit13.Text);
  frmRmd.TrackBar7.Max := StrToInt(frmRmd.Edit14.Text);

  frmRmd.TrackBar8.Min := StrToInt(frmRmd.Edit15.Text);
  frmRmd.TrackBar8.Max := StrToInt(frmRmd.Edit16.Text);

  frmRmd.TrackBar1.Position := StrToInt(frmRmd.Label17.Caption);
  frmRmd.TrackBar2.Position := StrToInt(frmRmd.Label18.Caption);
  frmRmd.TrackBar3.Position := StrToInt(frmRmd.Label19.Caption);
  frmRmd.TrackBar4.Position := StrToInt(frmRmd.Label20.Caption);

  frmRmd.TrackBar5.Position := StrToInt(frmRmd.Label21.Caption);
  frmRmd.TrackBar6.Position := StrToInt(frmRmd.Label22.Caption);
  frmRmd.TrackBar7.Position := StrToInt(frmRmd.Label23.Caption);
  frmRmd.TrackBar8.Position := StrToInt(frmRmd.Label24.Caption);

  s_rmd.customization_opu.loaded := true;
end;

procedure TfrmRmd.LOAD1Click(Sender: TObject);
begin
  s_rmd.customization_opu.loaded :=false;
  prmd_load_customization();
end;

procedure TfrmRmd.SAVE1Click(Sender: TObject);
begin
  prmd_save_customization();
end;

end.
