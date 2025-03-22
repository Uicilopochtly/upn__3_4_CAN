unit ucontrlol_by_angle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs , umain , udata , can, StdCtrls, ComCtrls ;

procedure pangle_visual();

type
  TfrmControlByAngle = class(TForm)
    GroupBox1: TGroupBox;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControlByAngle: TfrmControlByAngle;

implementation

{$R *.dfm}

procedure TfrmControlByAngle.TrackBar2Change(Sender: TObject);
begin
  p.tx.control.angle.event:= true;
end;

procedure TfrmControlByAngle.TrackBar1Change(Sender: TObject);
begin
    p.tx.control.angle.event:= true;
end;

//==============================================================================
procedure pangle_visual();
begin
  frmControlByAngle.Label4.Caption := IntToStr(p.tx.control.angle.vn);
  frmControlByAngle.Label3.Caption := IntToStr(p.tx.control.angle.gn);

  p.tx.control.angle.vn360f                           := p.tx.control.angle.vn * CMR;
  p.tx.control.angle.gn360f                           := p.tx.control.angle.gn * CMR;

  //----------------------------------------------------------------------------
  p.tx.control.angle.vn360f :=  p.tx.control.angle.vn360f  - 5.0;
  //----------------------------------------------------------------------------
  p.tx.control.angle.vn360                            := trunc(p.tx.control.angle.vn360f);
  p.tx.control.angle.gn360                            := trunc(p.tx.control.angle.gn360f);


  p.tx.control.angle.vn360_fract                      := p.tx.control.angle.vn360f - p.tx.control.angle.vn360;
  p.tx.control.angle.gn360_fract                      := p.tx.control.angle.gn360f - p.tx.control.angle.gn360;

  p.tx.control.angle.vn360_fract1000                 := trunc(p.tx.control.angle.vn360_fract * 1000);
  p.tx.control.angle.gn360_fract1000                 := trunc(p.tx.control.angle.gn360_fract * 1000);

  frmControlByAngle.Label5.Caption :=  IntToStr(p.tx.control.angle.vn360);
  frmControlByAngle.Label6.Caption := '.';
  frmControlByAngle.Label7.Caption :=  IntToStr(p.tx.control.angle.vn360_fract1000);

  frmControlByAngle.Label8.Caption :=  IntToStr(p.tx.control.angle.gn360);
  frmControlByAngle.Label9.Caption := '.';
  frmControlByAngle.Label10.Caption :=  IntToStr(p.tx.control.angle.gn360_fract1000);


end;

end.
