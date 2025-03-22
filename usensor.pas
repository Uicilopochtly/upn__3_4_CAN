unit usensor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls , umain , udata  ;

procedure psensors();

type
  TfrmSens = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSens: TfrmSens;

implementation

{$R *.dfm}

procedure psensors();
begin
{
  p.rx.sensors.vn.angle_control
  p.rx.sensors.vn.angle_current
  p.rx.sensors.vn.aiming

}

  //----------------------------------------------------------------------------
  p.rx.sensors.vn.angle_current_data.d360f           := p.rx.sensors.vn.angle_current * CMR;

  p.rx.sensors.vn.angle_current_data.d360f := p.rx.sensors.vn.angle_current_data.d360f - 5.0;

  p.rx.sensors.vn.angle_current_data.d360            := trunc( p.rx.sensors.vn.angle_current_data.d360f );
  p.rx.sensors.vn.angle_current_data.d360_fract      := p.rx.sensors.vn.angle_current_data.d360f - p.rx.sensors.vn.angle_current_data.d360;
  p.rx.sensors.vn.angle_current_data.d360_fract1000  := trunc(p.rx.sensors.vn.angle_current_data.d360_fract * 1000);


  frmSens.Label3.Caption :=  IntToStr(p.rx.sensors.vn.angle_current);

  frmSens.Label4.Caption :=  IntToStr(p.rx.sensors.vn.angle_current_data.d360);
  frmSens.Label5.Caption := '.';
  frmSens.Label6.Caption :=  IntToStr(p.rx.sensors.vn.angle_current_data.d360_fract1000);
  //----------------------------------------------------------------------------
  p.rx.sensors.vn.angle_control_data.d360f           := p.rx.sensors.vn.angle_control * CMR;;
  p.rx.sensors.vn.angle_control_data.d360            := 0;
  p.rx.sensors.vn.angle_control_data.d360_fract      := 0.0;
  p.rx.sensors.vn.angle_control_data.d360_fract1000  := 0;


  p.rx.sensors.vn.angle_control_data.d360            := trunc( p.rx.sensors.vn.angle_control_data.d360f );
  p.rx.sensors.vn.angle_control_data.d360_fract      := p.rx.sensors.vn.angle_control_data.d360f - p.rx.sensors.vn.angle_control_data.d360;
  p.rx.sensors.vn.angle_control_data.d360_fract1000  := trunc(p.rx.sensors.vn.angle_control_data.d360_fract * 1000);


  frmSens.Label14.Caption :=  IntToStr(p.rx.sensors.vn.angle_control);

  frmSens.Label16.Caption :=  IntToStr(p.rx.sensors.vn.angle_control_data.d360);
  frmSens.Label17.Caption := '.';
  frmSens.Label18.Caption :=  IntToStr(p.rx.sensors.vn.angle_control_data.d360_fract1000);



  //================================================================================================
  //----------------------------------------------------------------------------
  p.rx.sensors.gn.angle_current_data.d360f           := p.rx.sensors.gn.angle_current * CMR;


  p.rx.sensors.gn.angle_current_data.d360            := trunc( p.rx.sensors.gn.angle_current_data.d360f );
  p.rx.sensors.gn.angle_current_data.d360_fract      := p.rx.sensors.gn.angle_current_data.d360f - p.rx.sensors.gn.angle_current_data.d360;
  p.rx.sensors.gn.angle_current_data.d360_fract1000  := trunc(p.rx.sensors.gn.angle_current_data.d360_fract * 1000);


  frmSens.Label8.Caption :=  IntToStr(p.rx.sensors.gn.angle_current);

  frmSens.Label10.Caption :=  IntToStr(p.rx.sensors.gn.angle_current_data.d360);
  frmSens.Label11.Caption := '.';
  frmSens.Label12.Caption :=  IntToStr(p.rx.sensors.gn.angle_current_data.d360_fract1000);
  //----------------------------------------------------------------------------
  p.rx.sensors.gn.angle_control_data.d360f           := p.rx.sensors.gn.angle_control * CMR;;
  p.rx.sensors.gn.angle_control_data.d360            := 0;
  p.rx.sensors.gn.angle_control_data.d360_fract      := 0.0;
  p.rx.sensors.gn.angle_control_data.d360_fract1000  := 0;


  p.rx.sensors.gn.angle_control_data.d360            := trunc( p.rx.sensors.gn.angle_control_data.d360f );
  p.rx.sensors.gn.angle_control_data.d360_fract      := p.rx.sensors.gn.angle_control_data.d360f - p.rx.sensors.gn.angle_control_data.d360;
  p.rx.sensors.gn.angle_control_data.d360_fract1000  := trunc(p.rx.sensors.gn.angle_control_data.d360_fract * 1000);


  frmSens.Label20.Caption :=  IntToStr(p.rx.sensors.gn.angle_control);

  frmSens.Label22.Caption :=  IntToStr(p.rx.sensors.gn.angle_control_data.d360);
  frmSens.Label23.Caption := '.';
  frmSens.Label24.Caption :=  IntToStr(p.rx.sensors.gn.angle_control_data.d360_fract1000);







end;

end.
