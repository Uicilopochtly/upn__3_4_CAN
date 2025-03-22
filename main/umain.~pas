unit umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls;

type
  TfrmMain = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    tmrMainThread: TTimer;
    GroupBox5: TGroupBox;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    tmrSecond: TTimer;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox6: TGroupBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Label3: TLabel;
    Label4: TLabel;
    procedure tmrMainThreadTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tmrSecondTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses udata , uinit , udisplay , utimers , ucan , uvisual , uexecute , ucontrlol_by_angle , usensor , ucustomization , usave;


//==============================================================================
procedure main_thread();
begin
  //----------------------------------------------------------------------------
  ptimers();
  //----------------------------------------------------------------------------
  pdisplay();
  //----------------------------------------------------------------------------
  pcustomization();
  //----------------------------------------------------------------------------
  can_reciave();
  //----------------------------------------------------------------------------
  can_transmiss();
  //----------------------------------------------------------------------------
  pexecute();
  //----------------------------------------------------------------------------
  pconstructor_graph();
  //----------------------------------------------------------------------------
  ptermination();


end;


procedure TfrmMain.tmrMainThreadTimer(Sender: TObject);
begin

  main_thread();
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  pinit();
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  frmMain.Close;
end;

procedure TfrmMain.tmrSecondTimer(Sender: TObject);
begin
  v.constructor_graph.time.second_event:= true;

  if (s.customization_opu.loaded = false) then s.customization_opu.loaded :=true;
end;

end.
