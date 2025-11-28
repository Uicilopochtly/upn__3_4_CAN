unit uvisual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs , umain , uinit  , udata , StdCtrls, ExtCtrls, TeeProcs,
  TeEngine, Chart , Series, Menus, ComCtrls, Mask;

type
  TfrmVis = class(TForm)
    GroupBox1: TGroupBox;
    Chart1: TChart;
    PopupMenu1: TPopupMenu;
    View1: TMenuItem;
    gr01: TMenuItem;
    tag01: TMenuItem;
    tag02: TMenuItem;
    tag03: TMenuItem;
    Play1: TMenuItem;
    StartStop1: TMenuItem;
    Clear1: TMenuItem;
    TrackBar1: TTrackBar;
    UsiseX1: TMenuItem;
    UsiseY1: TMenuItem;
    UsiseX2: TMenuItem;
    UsiseY2: TMenuItem;
    UsiseX3: TMenuItem;
    UsiseY3: TMenuItem;
    UsiseX4: TMenuItem;
    UsiseY4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Close1: TMenuItem;
    N3: TMenuItem;
    STATE1: TMenuItem;
    N4: TMenuItem;
    STATE2: TMenuItem;
    N5: TMenuItem;
    STATE3: TMenuItem;
    N6: TMenuItem;
    STATE4: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RMD041: TMenuItem;
    RMD051: TMenuItem;
    RMD061: TMenuItem;
    RMD071: TMenuItem;
    RMD042: TMenuItem;
    RMD052: TMenuItem;
    RMD062: TMenuItem;
    RMD072: TMenuItem;
    RMD043: TMenuItem;
    RMD053: TMenuItem;
    RMD063: TMenuItem;
    RMD073: TMenuItem;
    RMD044: TMenuItem;
    RMD054: TMenuItem;
    RMD064: TMenuItem;
    RMD074: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    Marks1: TMenuItem;
    TrackBar2: TTrackBar;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    Label9: TLabel;
    GroupBox2: TGroupBox;
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
    Label10: TLabel;
    Label11: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    IME1: TMenuItem;
    GroupBox3: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    MarksProc1: TMenuItem;
    Series1: TFastLineSeries;
    GroupBox4: TGroupBox;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    TrackBar3: TTrackBar;
    GroupBox5: TGroupBox;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    procedure StartStop1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Marks1Click(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure MaskEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Chart1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label14Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure IME1Click(Sender: TObject);
    procedure MarksProc1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;




const
   RMD_ID0  = 1;
   RMD_ID1  = 2;
   RMD_ID2  = 3;
   RMD_ID3  = 4;



var
  frmVis: TfrmVis;


procedure pconstructor_graph();
procedure pcontain_graph();

procedure PCountersAccur();

implementation

{$R *.dfm}

uses udisplay;

procedure pconstructor_graph();
var
  Series0 : TLineSeries;
  Series1 , Series2 , Series3 , Series4 : TLineSeries;



begin

    //задание области значений
    if frmVis.RadioButton5.Checked then begin
      frmVis.TrackBar1.Max:= 1
    end
    else if frmVis.RadioButton6.Checked then begin
      frmVis.TrackBar1.Max:= 100
    end
    else if frmVis.RadioButton7.Checked then begin
      frmVis.TrackBar1.Max:= 100
    end
    else if frmVis.RadioButton8.Checked then begin
      frmVis.TrackBar1.Max:= 1000
    end
    else if frmVis.RadioButton9.Checked then begin
      frmVis.TrackBar1.Max:= 10000
    end
    else if frmVis.RadioButton10.Checked then begin
      frmVis.TrackBar1.Max:= 100000
    end;

    frmVis.TrackBar3.Max := frmVis.TrackBar1.Max - 1;


    if frmVis.Visible = true then begin
      PCountersAccur();
    end;

   //----------------------------------------------------------------------------
    if  (  (frmVis.PopupMenu1.Items[0].Items[0].Items[0].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[1].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[2].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[3].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[4].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[5].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[6].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[7].Checked)) then
     frmVis.PopupMenu1.Items[0].Items[1].Enabled := true
   else
     frmVis.PopupMenu1.Items[0].Items[1].Enabled := false;
  //----------------------------------------------------------------------------
  if  (  (frmVis.PopupMenu1.Items[0].Items[1].Items[0].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[1].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[2].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[3].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[4].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[5].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[6].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[7].Checked)) then
     frmVis.PopupMenu1.Items[0].Items[2].Enabled := true
   else
     frmVis.PopupMenu1.Items[0].Items[2].Enabled := false;
  //----------------------------------------------------------------------------
  if  (  (frmVis.PopupMenu1.Items[0].Items[2].Items[0].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[1].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[2].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[3].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[4].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[5].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[6].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[7].Checked)) then
     frmVis.PopupMenu1.Items[0].Items[3].Enabled := true
   else
     frmVis.PopupMenu1.Items[0].Items[3].Enabled := false;
  //----------------------------------------------------------------------------
  if (v.constructor_graph.graph.play.pause = false) then begin

    if (frmVis.PopupMenu1.Items[0].Items[0].Items[0].Checked = false) then begin
      v.constructor_graph.graph.play.f0 := false;

      frmVis.Label1.Color := clGray;
      frmVis.MaskEdit1.Color := clGray;


    end
    else begin
      v.constructor_graph.graph.play.f0 := true;
      frmVis.Label1.Color := clAqua;
      frmVis.MaskEdit1.Color := clAqua;
    end;

    if (frmVis.PopupMenu1.Items[0].Items[1].Items[1].Checked = false) then begin
      v.constructor_graph.graph.play.f1 := false;

      frmVis.Label3.Color := clGray;
      frmVis.MaskEdit2.Color := clGray;
    end
    else begin
      v.constructor_graph.graph.play.f1 := true;
      frmVis.Label3.Color :=  clYellow;
      frmVis.MaskEdit2.Color :=  clYellow;
    end;

    if (frmVis.PopupMenu1.Items[0].Items[2].Items[2].Checked = false) then begin
      v.constructor_graph.graph.play.f2 := false;

      frmVis.Label5.Color := clGray;
      frmVis.MaskEdit3.Color := clGray;

    end
    else begin
      v.constructor_graph.graph.play.f2 := true;

      frmVis.Label5.Color := clRed;
      frmVis.MaskEdit3.Color := clRed;
    end;

    if (frmVis.PopupMenu1.Items[0].Items[3].Items[3].Checked = false) then begin
      v.constructor_graph.graph.play.f3 := false;

      frmVis.Label7.Color := clGray;
      frmVis.MaskEdit4.Color := clGray;
    end
    else begin
      v.constructor_graph.graph.play.f3 := true;

      frmVis.Label7.Color := clFuchsia;
      frmVis.MaskEdit4.Color := clFuchsia;
    end;

  end
  else begin
    v.constructor_graph.graph.play.f0 := false;
    v.constructor_graph.graph.play.f1 := false;
    v.constructor_graph.graph.play.f2 := false;
    v.constructor_graph.graph.play.f3 := false;
  end;

  //========================= FILL =============================================
  //TAG0
  if       (frmVis.PopupMenu1.Items[0].Items[0].Items[0].Checked) then
    v.constructor_graph.graph.tag0 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[0].Items[1].Checked) then
    v.constructor_graph.graph.tag0 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[0].Items[2].Checked) then
    v.constructor_graph.graph.tag0 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[0].Items[3].Checked) then
    v.constructor_graph.graph.tag0 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[0].Items[4].Checked) then
    v.constructor_graph.graph.tag0 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[0].Items[5].Checked) then
    v.constructor_graph.graph.tag0 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[0].Items[6].Checked) then
    v.constructor_graph.graph.tag0 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[0].Items[7].Checked) then
    v.constructor_graph.graph.tag0 := c.rx.pack00.content[0];
  //TAG1
  if       (frmVis.PopupMenu1.Items[0].Items[1].Items[0].Checked) then
    v.constructor_graph.graph.tag1 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[1].Items[1].Checked) then
    v.constructor_graph.graph.tag1 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[1].Items[2].Checked) then
    v.constructor_graph.graph.tag1 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[1].Items[3].Checked) then
    v.constructor_graph.graph.tag1 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[1].Items[4].Checked) then
    v.constructor_graph.graph.tag1 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[1].Items[5].Checked) then
    v.constructor_graph.graph.tag1 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[1].Items[6].Checked) then
    v.constructor_graph.graph.tag1 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[1].Items[7].Checked) then
    v.constructor_graph.graph.tag1 := c.rx.pack01.content[0];
  //TAG2
  if       (frmVis.PopupMenu1.Items[0].Items[2].Items[0].Checked) then
    v.constructor_graph.graph.tag2 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[2].Items[1].Checked) then
    v.constructor_graph.graph.tag2 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[2].Items[2].Checked) then
    v.constructor_graph.graph.tag2 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[2].Items[3].Checked) then
    v.constructor_graph.graph.tag2 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[2].Items[4].Checked) then
    v.constructor_graph.graph.tag2 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[2].Items[5].Checked) then
    v.constructor_graph.graph.tag2 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[2].Items[6].Checked) then
    v.constructor_graph.graph.tag2 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[2].Items[7].Checked) then
    v.constructor_graph.graph.tag2 := c.rx.pack01.content[0] ;
  //TAG3
  if       (frmVis.PopupMenu1.Items[0].Items[3].Items[0].Checked) then
    v.constructor_graph.graph.tag3 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[3].Items[1].Checked) then
    v.constructor_graph.graph.tag3 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[3].Items[2].Checked) then
    v.constructor_graph.graph.tag3 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[3].Items[3].Checked) then
    v.constructor_graph.graph.tag3 := c.rx.pack00.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[3].Items[4].Checked) then
    v.constructor_graph.graph.tag3 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[3].Items[5].Checked) then
    v.constructor_graph.graph.tag3 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[3].Items[6].Checked) then
    v.constructor_graph.graph.tag3 := c.rx.pack01.content[0]
  else if  (frmVis.PopupMenu1.Items[0].Items[3].Items[7].Checked) then
    v.constructor_graph.graph.tag3 := c.rx.pack01.content[0];
  //============================================================================
  //----------------------------------------------------------------------------
  if  (  (frmVis.PopupMenu1.Items[0].Items[0].Items[0].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[1].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[2].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[3].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[4].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[5].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[6].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[0].Items[7].Checked)
      ) then
     v.constructor_graph.graph.exist.f0 := true

  else
    v.constructor_graph.graph.exist.f0 := false;

  //----------------------------------------------------------------------------
  if  (  (frmVis.PopupMenu1.Items[0].Items[1].Items[0].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[1].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[2].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[3].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[4].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[5].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[6].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[1].Items[7].Checked)
      ) then
    v.constructor_graph.graph.exist.f1 := true
  else
    v.constructor_graph.graph.exist.f1 := false;
  //----------------------------------------------------------------------------
   if (  (frmVis.PopupMenu1.Items[0].Items[2].Items[0].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[1].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[2].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[3].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[4].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[5].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[6].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[2].Items[7].Checked)
      ) then

    v.constructor_graph.graph.exist.f2 := true
  else
    v.constructor_graph.graph.exist.f2 := false;
  //----------------------------------------------------------------------------
   if (  (frmVis.PopupMenu1.Items[0].Items[3].Items[0].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[3].Items[1].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[3].Items[2].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[3].Items[3].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[3].Items[4].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[3].Items[5].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[3].Items[6].Checked)
       or(frmVis.PopupMenu1.Items[0].Items[3].Items[7].Checked)
      ) then

    v.constructor_graph.graph.exist.f3 := true
  else
    v.constructor_graph.graph.exist.f3 := false;

   //iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
   //================ 0
   //------------- 0 0 0 0 ----------------------------------------------------- 00
   if (    (v.constructor_graph.graph.exist.f0 = false)
        and(v.constructor_graph.graph.exist.f1 = false)
        and(v.constructor_graph.graph.exist.f2 = false)
        and(v.constructor_graph.graph.exist.f3 = false)) then begin
     v.constructor_graph.graph.sindex0 := 0;
     v.constructor_graph.graph.sindex1 := 0;
     v.constructor_graph.graph.sindex2 := 0;
     v.constructor_graph.graph.sindex3 := 0;
   end;
   //================ I
   //------------- 1 0 0 0 ----------------------------------------------------- 01
   if (    (v.constructor_graph.graph.exist.f0 = true)
        and(v.constructor_graph.graph.exist.f1 = false)
        and(v.constructor_graph.graph.exist.f2 = false)
        and(v.constructor_graph.graph.exist.f3 = false)) then begin
     v.constructor_graph.graph.sindex0 := 0;
     v.constructor_graph.graph.sindex1 := 0;
     v.constructor_graph.graph.sindex2 := 0;
     v.constructor_graph.graph.sindex3 := 0;
   end;
   //------------- 0 1 0 0 ----------------------------------------------------- 02
   if (    (v.constructor_graph.graph.exist.f0 = false)
        and(v.constructor_graph.graph.exist.f1 = true)
        and(v.constructor_graph.graph.exist.f2 = false)
        and(v.constructor_graph.graph.exist.f3 = false)) then begin
     v.constructor_graph.graph.sindex0 := 0;
     v.constructor_graph.graph.sindex1 := 0;
     v.constructor_graph.graph.sindex2 := 0;
     v.constructor_graph.graph.sindex3 := 0;
   end;
      //------------- 0 0 1 0 -------------------------------------------------- 03
   if (    (v.constructor_graph.graph.exist.f0 = false)
        and(v.constructor_graph.graph.exist.f1 = false)
        and(v.constructor_graph.graph.exist.f2 = true)
        and(v.constructor_graph.graph.exist.f3 = false)) then begin
     v.constructor_graph.graph.sindex0 := 00;
     v.constructor_graph.graph.sindex1 := 00;
     v.constructor_graph.graph.sindex2 := 0;
     v.constructor_graph.graph.sindex3 := 00;
   end;
   //------------- 0 0 0 1 -----------------------------------------------------  04
   if (    (v.constructor_graph.graph.exist.f0 = false)
        and(v.constructor_graph.graph.exist.f1 = false)
        and(v.constructor_graph.graph.exist.f2 = false)
        and(v.constructor_graph.graph.exist.f3 = true)) then begin
     v.constructor_graph.graph.sindex0 := 00;
     v.constructor_graph.graph.sindex1 := 00;
     v.constructor_graph.graph.sindex2 := 00;
     v.constructor_graph.graph.sindex3 := 0;
   end;
   //================ II
   //1
   //------------- 1 1 0 0 -----------------------------------------------------  05
   if (    (v.constructor_graph.graph.exist.f0 = true)
        and(v.constructor_graph.graph.exist.f1 = true)
        and(v.constructor_graph.graph.exist.f2 = false)
        and(v.constructor_graph.graph.exist.f3 = false)) then begin
     v.constructor_graph.graph.sindex0 := 0;
     v.constructor_graph.graph.sindex1 := 1;
     v.constructor_graph.graph.sindex2 := 00;
     v.constructor_graph.graph.sindex3 := 00;
   end;
      //------------- 1 0 1 0 --------------------------------------------------  06
   if (    (v.constructor_graph.graph.exist.f0 = true)
        and(v.constructor_graph.graph.exist.f1 = false)
        and(v.constructor_graph.graph.exist.f2 = true)
        and(v.constructor_graph.graph.exist.f3 = false)) then begin
     v.constructor_graph.graph.sindex0 := 0;
     v.constructor_graph.graph.sindex1 := 0;
     v.constructor_graph.graph.sindex2 := 1;
     v.constructor_graph.graph.sindex3 := 0;
   end;
   //------------- 1 0 0 1 -----------------------------------------------------  07
   if (    (v.constructor_graph.graph.exist.f0 = true)
        and(v.constructor_graph.graph.exist.f1 = false)
        and(v.constructor_graph.graph.exist.f2 = false)
        and(v.constructor_graph.graph.exist.f3 = true)) then begin
     v.constructor_graph.graph.sindex0 := 0;
     v.constructor_graph.graph.sindex1 := 00;
     v.constructor_graph.graph.sindex2 := 00;
     v.constructor_graph.graph.sindex3 := 1;
   end;
   //2
   //------------- 0 1 1 0 -----------------------------------------------------  08
   if (    (v.constructor_graph.graph.exist.f0 = false)
        and(v.constructor_graph.graph.exist.f1 = true)
        and(v.constructor_graph.graph.exist.f2 = true)
        and(v.constructor_graph.graph.exist.f3 = false)) then begin
     v.constructor_graph.graph.sindex0 := 00;
     v.constructor_graph.graph.sindex1 := 0;
     v.constructor_graph.graph.sindex2 := 1;
     v.constructor_graph.graph.sindex3 := 00;
   end;
   //------------- 0 1 0 1 -----------------------------------------------------  09
   if (    (v.constructor_graph.graph.exist.f0 = false)
        and(v.constructor_graph.graph.exist.f1 = true)
        and(v.constructor_graph.graph.exist.f2 = false)
        and(v.constructor_graph.graph.exist.f3 = true)) then begin
     v.constructor_graph.graph.sindex0 := 00;
     v.constructor_graph.graph.sindex1 := 0;
     v.constructor_graph.graph.sindex2 := 00;
     v.constructor_graph.graph.sindex3 := 1;
   end;
   //3
   //------------- 0 0 1 1 -----------------------------------------------------  10
   if (    (v.constructor_graph.graph.exist.f0 = false)
        and(v.constructor_graph.graph.exist.f1 = false)
        and(v.constructor_graph.graph.exist.f2 = true)
        and(v.constructor_graph.graph.exist.f3 = true)) then begin
     v.constructor_graph.graph.sindex0 := 00;
     v.constructor_graph.graph.sindex1 := 00;
     v.constructor_graph.graph.sindex2 := 0;
     v.constructor_graph.graph.sindex3 := 1;
   end;

    //================ III
   //1
   //------------- 1 1 1 0 -----------------------------------------------------  11
   if (    (v.constructor_graph.graph.exist.f0 = true)
        and(v.constructor_graph.graph.exist.f1 = true)
        and(v.constructor_graph.graph.exist.f2 = true)
        and(v.constructor_graph.graph.exist.f3 = false)) then begin
     v.constructor_graph.graph.sindex0 := 0;
     v.constructor_graph.graph.sindex1 := 1;
     v.constructor_graph.graph.sindex2 := 2;
     v.constructor_graph.graph.sindex3 := 00;
   end;
   //------------- 1 0 1 1 -----------------------------------------------------  12
   if (    (v.constructor_graph.graph.exist.f0 = true)
        and(v.constructor_graph.graph.exist.f1 = false)
        and(v.constructor_graph.graph.exist.f2 = true)
        and(v.constructor_graph.graph.exist.f3 = true)) then begin
     v.constructor_graph.graph.sindex0 := 0;
     v.constructor_graph.graph.sindex1 := 00;
     v.constructor_graph.graph.sindex2 := 1;
     v.constructor_graph.graph.sindex3 := 2;
   end;

   //------------- 1 1 0 1 -----------------------------------------------------  13
   if (    (v.constructor_graph.graph.exist.f0 = true)
        and(v.constructor_graph.graph.exist.f1 = false)
        and(v.constructor_graph.graph.exist.f2 = true)
        and(v.constructor_graph.graph.exist.f3 = true)) then begin
     v.constructor_graph.graph.sindex0 := 0;
     v.constructor_graph.graph.sindex1 := 00;
     v.constructor_graph.graph.sindex2 := 1;
     v.constructor_graph.graph.sindex3 := 2;
   end;

   //2
   //------------- 0 1 1 1 -----------------------------------------------------  14
   if (    (v.constructor_graph.graph.exist.f0 = false)
        and(v.constructor_graph.graph.exist.f1 = true)
        and(v.constructor_graph.graph.exist.f2 = true)
        and(v.constructor_graph.graph.exist.f3 = true)) then begin
     v.constructor_graph.graph.sindex0 := 00;
     v.constructor_graph.graph.sindex1 := 0;
     v.constructor_graph.graph.sindex2 := 1;
     v.constructor_graph.graph.sindex3 := 2;
   end;
    //================ IV
   //------------- 1 1 1 1 -----------------------------------------------------  15
   if (    (v.constructor_graph.graph.exist.f0 = true)
        and(v.constructor_graph.graph.exist.f1 = true)
        and(v.constructor_graph.graph.exist.f2 = true)
        and(v.constructor_graph.graph.exist.f3 = true)) then begin
     v.constructor_graph.graph.sindex0 := 0;
     v.constructor_graph.graph.sindex1 := 1;
     v.constructor_graph.graph.sindex2 := 2;
     v.constructor_graph.graph.sindex3 := 3;
   end;

   //iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
  //============================================================================
  if (    (v.constructor_graph.graph.exist.f0_old = false)
      and (v.constructor_graph.graph.exist.f0     = true) ) then begin

    Series0:=TLineSeries.Create(frmVis.Chart1);
    frmVis.Chart1.AddSeries(Series0);
    Series0.SeriesColor := clAqua;
    /////frmVis.Chart1.Series[sindex0].SeriesColor := clYellow;
    frmVis.Chart1.Series[RMD_ID0].SeriesColor := clAqua;
    with frmVis.Chart1 do begin
     View3D:=False;
     Visible:=True;
    end;

    //---------------------------------------------------------
    v.constructor_graph.graph.exist.been0 := true;
    //---------------------------------------------------------
    /////////////vis.constructor_graph.time.count20ms_accur := 0;
    //---------------------------------------------------------
    /////////////////frmVis.Clear1.Click;

  end else  if (    (v.constructor_graph.graph.exist.f0_old = true)
                and (v.constructor_graph.graph.exist.f0     = false) ) then begin

   end;
  //----------------------------------------------------------------------------
  if (    (v.constructor_graph.graph.exist.f0 = true)
       and(v.constructor_graph.graph.play.f0 = true)  )then begin

    with frmVis.Chart1.Series[RMD_ID0] do
     begin
       AddY(v.constructor_graph.graph.tag0, '');

       inc(v.constructor_graph.graph.exist.q0);
     end;

  end;
  //================================================


  if (    (v.constructor_graph.graph.exist.f1_old = false)
      and (v.constructor_graph.graph.exist.f1     = true) ) then begin

    Series1:=TLineSeries.Create(frmVis.Chart1);
    frmVis.Chart1.AddSeries(Series1);
    Series1.SeriesColor := clYellow;
    ////frmVis.Chart1.Series[sindex1].SeriesColor := clAqua;
    frmVis.Chart1.Series[RMD_ID1].SeriesColor := clYellow;
    with frmVis.Chart1 do begin
     View3D:=False;
     Visible:=True;
    end;

    //---------------------------------------------------------
    v.constructor_graph.graph.exist.been1 := true;


  end else  if (    (v.constructor_graph.graph.exist.f1_old = true)
                and (v.constructor_graph.graph.exist.f1     = false) ) then begin


   end;
  //----------------------------------------------------------------------------
  if (    (v.constructor_graph.graph.exist.f1 = true)
       and(v.constructor_graph.graph.play.f1 = true)  )then begin

     with frmVis.Chart1.Series[RMD_ID1] do

     begin
       AddY(v.constructor_graph.graph.tag1, '');
     end;

  end;
  //================================================

  if (    (v.constructor_graph.graph.exist.f2_old = false)
      and (v.constructor_graph.graph.exist.f2     = true) ) then begin

    Series2:=TLineSeries.Create(frmVis.Chart1);
    frmVis.Chart1.AddSeries(Series2);
    Series2.SeriesColor :=  clRed;

    frmVis.Chart1.Series[RMD_ID2].SeriesColor := clRed;
    with frmVis.Chart1 do begin
     View3D:=False;
     Visible:=True;
    end;

    //---------------------------------------------------------
    v.constructor_graph.graph.exist.been2 := true;


  end else  if (    (v.constructor_graph.graph.exist.f2_old = true)
                and (v.constructor_graph.graph.exist.f2     = false) ) then begin


   end;
  //----------------------------------------------------------------------------
   if (    (v.constructor_graph.graph.exist.f2 = true)
       and(v.constructor_graph.graph.play.f2 = true)  )then begin

     with frmVis.Chart1.Series[RMD_ID2] do
     begin
       AddY(v.constructor_graph.graph.tag2, '');
     end;

  end;
  //================================================

  if (    (v.constructor_graph.graph.exist.f3_old = false)
      and (v.constructor_graph.graph.exist.f3     = true) ) then begin

    Series3:=TLineSeries.Create(frmVis.Chart1);
    frmVis.Chart1.AddSeries(Series3);
    Series3.SeriesColor := clFuchsia;
    frmVis.Chart1.Series[RMD_ID3].SeriesColor := clFuchsia;
    with frmVis.Chart1 do begin
     View3D:=False;
     Visible:=True;
    end;

    //---------------------------------------------------------
    v.constructor_graph.graph.exist.been3 := true;

  end else  if (    (v.constructor_graph.graph.exist.f3_old = true)
                and (v.constructor_graph.graph.exist.f3     = false) ) then begin


   end;
  //----------------------------------------------------------------------------
   if (    (v.constructor_graph.graph.exist.f3 = true)
       and(v.constructor_graph.graph.play.f3 = true)  )then begin

     with frmVis.Chart1.Series[RMD_ID3] do
     begin
       AddY(v.constructor_graph.graph.tag3, '');
     end;

  end;







  //============================================================================



  //----------------------------------------------------------------------------
  //----------------------------------------------------------------------------
  v.constructor_graph.graph.exist.f0_old := v.constructor_graph.graph.exist.f0;
  v.constructor_graph.graph.exist.f1_old := v.constructor_graph.graph.exist.f1;
  v.constructor_graph.graph.exist.f2_old := v.constructor_graph.graph.exist.f2;
  v.constructor_graph.graph.exist.f3_old := v.constructor_graph.graph.exist.f3;



  //============================================================================
  frmVis.Label2.Caption := IntToStr(v.constructor_graph.graph.tag0);
  frmVis.Label4.Caption := IntToStr(v.constructor_graph.graph.tag1);
  frmVis.Label6.Caption := IntToStr(v.constructor_graph.graph.tag2);
  frmVis.Label8.Caption := IntToStr(v.constructor_graph.graph.tag3);


  //AutoClear
  frmVis.Caption := 'Visual' + ' ' + 'tact:' +IntToStr(v.constructor_graph.graph.exist.q0);

  if (v.constructor_graph.graph.exist.q0 > frmVis.TrackBar2.Position) then begin
    if (v.constructor_graph.graph.exist.been0 = true) then
      frmVis.Chart1.Series[RMD_ID0].Clear;
    if (v.constructor_graph.graph.exist.been1 = true) then
      frmVis.Chart1.Series[RMD_ID1].Clear;
    if (v.constructor_graph.graph.exist.been2 = true) then
      frmVis.Chart1.Series[RMD_ID2].Clear;
    if (v.constructor_graph.graph.exist.been3 = true) then
      frmVis.Chart1.Series[RMD_ID3].Clear;

    if (v.constructor_graph.exist_monotor = 1) then begin
      frmVis.Chart1.Series[0].Clear;
      v.constructor_graph.time.count20ms_accur := 0;
    end;


    v.constructor_graph.graph.exist.q0:= 0;
    frmVis.Chart1.Color := clWhite;
  end else begin

    if (v.constructor_graph.rx_data.cnt_vn > 0) then begin
      frmVis.Chart1.Color := clDefault
    end
    else begin
      frmVis.Chart1.Color := clGray;
    end;
  end;


  //----------------------Ось OX -----------------------------------------------

  if (   (v.constructor_graph.exist_monotor     = 1)
      and(v.constructor_graph.exist_monotor_old = 0)) then begin
    //-------------------------------------------------------------------------- OX 0
    Series4:=TLineSeries.Create(frmVis.Chart1);
    frmVis.Chart1.AddSeries(Series4);
    Series4.SeriesColor :=  clWhite;
    frmVis.Chart1.Series[0].SeriesColor := clWhite;
    with frmVis.Chart1 do begin
       View3D:=False;
       Visible:=True;
    end;

    //---------------------------------------------------------
    v.constructor_graph.graph.exist.been_tm := true;

   //========================================================================== MAIN STATE GRAPH
   {
    Series5:=TLineSeries.Create(frmVis.Chart1);
    frmVis.Chart1.AddSeries(Series5);
    Series5.SeriesColor :=  clBlue;
    frmVis.Chart1.Series[1].SeriesColor := clBlue;
    with frmVis.Chart1 do begin
       View3D:=False;
       Visible:=True;
    end;
    //c.rx.tech.pack02.data.main_state


   }
   end;

  if (v.constructor_graph.exist_monotor = 1) then begin

     //============================================================================ TIME
     if (v.constructor_graph.time.execute) then begin
       if (v.constructor_graph.time.second_event) then begin
       with frmVis.Chart1.Series[0] do
       begin

        AddXY(v.constructor_graph.time.count20ms_accur,0);
        AddXY(v.constructor_graph.time.count20ms_accur,10* frmVis.TrackBar1.Position);               //


        AddXY(v.constructor_graph.time.count20ms_accur,0);

        AddXY(v.constructor_graph.time.count20ms_accur,0);
        AddXY(v.constructor_graph.time.count20ms_accur,-10* frmVis.TrackBar1.Position);               //
        Active:=false;

        AddXY(v.constructor_graph.time.count20ms_accur,0);
        Active:=false;


        Active:=true;
       end;

       v.constructor_graph.time.second_event := false;

       end;
    end;   

  end;


  v.constructor_graph.exist_monotor_old := v.constructor_graph.exist_monotor;


  //========================================================================== MAIN STATE GRAPH
  {
  if (v.constructor_graph.graph.play.pause = false) then begin
    with frmVis.Chart1.Series[1] do
    begin
      AddY(c.rx.tech.pack02.data.main_state + frmVis.TrackBar3.Position , '');

    end;
  end;
   }


  //****************************************************************************

  if (v.constructor_graph.exist_monotor = 1) then
  if (frmVis.Chart1.Series[0].Count > frmVis.TrackBar2.Position) then begin
    frmVis.Chart1.BottomAxis.Minimum := frmVis.Chart1.Series[0].Count    - frmVis.TrackBar2.Position;
    frmVis.Chart1.BottomAxis.Maximum := frmVis.Chart1.BottomAxis.Minimum + frmVis.TrackBar2.Position;
    frmVis.Chart1.Series[0].Clear;
  end;

  {
  if (frmVis.Chart1.Series[1].Count > frmVis.TrackBar2.Position) then begin
    frmVis.Chart1.BottomAxis.Minimum := frmVis.Chart1.Series[1].Count    - frmVis.TrackBar2.Position;
    frmVis.Chart1.BottomAxis.Maximum := frmVis.Chart1.BottomAxis.Minimum + frmVis.TrackBar2.Position;
    frmVis.Chart1.Series[1].Clear;
  end;
  }


  //----------------------------------------------------------------------------
  if (v.constructor_graph.graph.exist.been0     = true) then
  if (frmVis.Chart1.Series[RMD_ID0].Count > frmVis.TrackBar2.Position) then begin
    frmVis.Chart1.BottomAxis.Minimum := frmVis.Chart1.Series[RMD_ID0].Count    - frmVis.TrackBar2.Position;
    frmVis.Chart1.BottomAxis.Maximum := frmVis.Chart1.BottomAxis.Minimum + frmVis.TrackBar2.Position;
    frmVis.Chart1.Series[RMD_ID0].Clear;
  end;
  //----------------------------------------------------------------------------
  if (v.constructor_graph.graph.exist.been1     = true) then
  if (frmVis.Chart1.Series[RMD_ID1].Count > frmVis.TrackBar2.Position) then begin
    frmVis.Chart1.BottomAxis.Minimum := frmVis.Chart1.Series[RMD_ID1].Count    - frmVis.TrackBar2.Position;
    frmVis.Chart1.BottomAxis.Maximum := frmVis.Chart1.BottomAxis.Minimum + frmVis.TrackBar2.Position;
    frmVis.Chart1.Series[RMD_ID1].Clear;
  end;
  //----------------------------------------------------------------------------
  if (v.constructor_graph.graph.exist.been2     = true) then
  if (frmVis.Chart1.Series[RMD_ID2].Count > frmVis.TrackBar2.Position) then begin
    frmVis.Chart1.BottomAxis.Minimum := frmVis.Chart1.Series[RMD_ID2].Count    - frmVis.TrackBar2.Position;
    frmVis.Chart1.BottomAxis.Maximum := frmVis.Chart1.BottomAxis.Minimum + frmVis.TrackBar2.Position;
    frmVis.Chart1.Series[RMD_ID2].Clear;
  end;
  //----------------------------------------------------------------------------
  if (v.constructor_graph.graph.exist.been3     = true) then
  if (frmVis.Chart1.Series[RMD_ID3].Count > frmVis.TrackBar2.Position) then begin
    frmVis.Chart1.BottomAxis.Minimum := frmVis.Chart1.Series[RMD_ID3].Count    - frmVis.TrackBar2.Position;
    frmVis.Chart1.BottomAxis.Maximum := frmVis.Chart1.BottomAxis.Minimum + frmVis.TrackBar2.Position;
    frmVis.Chart1.Series[RMD_ID3].Clear;
  end;


  //****************************************************************************


end;

procedure TfrmVis.StartStop1Click(Sender: TObject);
begin
  v.constructor_graph.graph.play.pause := not  v.constructor_graph.graph.play.pause;

  if (v.constructor_graph.exist_monotor = 1) then
    v.constructor_graph.exist_monotor := 0
  else if (v.constructor_graph.exist_monotor = 0) then
    v.constructor_graph.exist_monotor := 1;

end;



procedure pcontain_graph();
begin

end;

procedure TfrmVis.Close1Click(Sender: TObject);
begin
  frmVis.Close;
end;

procedure TfrmVis.Clear1Click(Sender: TObject);
begin
  if (v.constructor_graph.graph.exist.been0 = true) then
    frmVis.Chart1.Series[RMD_ID0].Clear;
  if (v.constructor_graph.graph.exist.been1 = true) then
    frmVis.Chart1.Series[RMD_ID1].Clear;
  if (v.constructor_graph.graph.exist.been2 = true) then
    frmVis.Chart1.Series[RMD_ID2].Clear;
  if (v.constructor_graph.graph.exist.been3 = true) then
    frmVis.Chart1.Series[RMD_ID3].Clear;


  frmVis.Chart1.Series[0].Clear;

  frmVis.Chart1.Series[1].Clear;

   v.constructor_graph.graph.exist.q0 := 2048;


   v.constructor_graph.time.count20ms_accur := 0;
end;

procedure TfrmVis.FormCreate(Sender: TObject);
begin
   frmVis.Width  := 255;
   frmVis.Height := 255;

   frmVis.Chart1.BottomAxis.Automatic := false;
   frmVis.Chart1.BottomAxis.Minimum   := 0;
   frmVis.Chart1.BottomAxis.Maximum   := frmVis.TrackBar2.Position;


end;

procedure TfrmVis.Marks1Click(Sender: TObject);
begin


 if (v.constructor_graph.graph.exist.been0     = true) then
   frmVis.Chart1.Series[RMD_ID0].Marks.Visible := not frmVis.Chart1.Series[RMD_ID0].Marks.Visible;

 if (v.constructor_graph.graph.exist.been1     = true) then
   frmVis.Chart1.Series[RMD_ID1].Marks.Visible := not frmVis.Chart1.Series[RMD_ID1].Marks.Visible;

 if (v.constructor_graph.graph.exist.been2     = true) then
   frmVis.Chart1.Series[RMD_ID2].Marks.Visible := not frmVis.Chart1.Series[RMD_ID2].Marks.Visible;

 if (v.constructor_graph.graph.exist.been3     = true) then
   frmVis.Chart1.Series[RMD_ID3].Marks.Visible := not frmVis.Chart1.Series[RMD_ID3].Marks.Visible;

  frmVis.Chart1.Series[1].Marks.Visible := not frmVis.Chart1.Series[1].Marks.Visible;


end;

procedure TfrmVis.TrackBar2Change(Sender: TObject);
begin
   frmVis.Chart1.BottomAxis.Automatic := false;
   frmVis.Chart1.BottomAxis.Minimum   := 0;
   frmVis.Chart1.BottomAxis.Maximum   := frmVis.TrackBar2.Position;

   v.constructor_graph.time.count20ms_accur := 0;

   frmVis.Clear1.Click;
end;



//----------------------- COUNTERS ---------------------------------------------
procedure PCountersAccur();
begin
  inc(v.constructor_graph.time.count20ms_accur);
end;


procedure TfrmVis.MaskEdit5KeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in ['0'..'9', #8])then Key:=#0;
end;

procedure TfrmVis.Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if (v.constructor_graph.graph.exist.been_tm = true) then begin
    frmVis.Label12.Caption := FloatToStr(frmVis.Chart1.Series[0].XScreenToValue(x));
    frmVis.Label13.Caption := FloatToStr(frmVis.Chart1.Series[0].YScreenToValue(y));

    v.constructor_graph.repers.pos_get.x := frmVis.Chart1.Series[0].XScreenToValue(x);
    v.constructor_graph.repers.pos_get.y := frmVis.Chart1.Series[0].YScreenToValue(y);

  end;
end;

procedure TfrmVis.Chart1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if (v.constructor_graph.repers.execute = true) then begin
   if (v.constructor_graph.repers.rb.exec = true) then begin
     frmVis.Label20.Left:= X;
     frmVis.Label20.Top := Y;

     frmVis.Label16.Caption := FloatToStr(v.constructor_graph.repers.pos_get.x);
     frmVis.Label17.Caption := FloatToStr(v.constructor_graph.repers.pos_get.y);

     v.constructor_graph.repers.rb.pos_x:= v.constructor_graph.repers.pos_get.x;
     v.constructor_graph.repers.rb.pos_y:= v.constructor_graph.repers.pos_get.y;


     frmVis.Label21.Left:= 0;
     frmVis.Label21.Top := frmVis.Chart1.Height;

     v.constructor_graph.repers.rb.exist := true;

   end;

   if ((v.constructor_graph.repers.re.exec = true) and (v.constructor_graph.repers.rb.exist = true)) then begin
     frmVis.Label21.Left:= X;
     frmVis.Label21.Top := Y;

     frmVis.Label18.Caption := FloatToStr(v.constructor_graph.repers.pos_get.x);
     frmVis.Label19.Caption := FloatToStr(v.constructor_graph.repers.pos_get.y);

     v.constructor_graph.repers.re.pos_x:= v.constructor_graph.repers.pos_get.x;
     v.constructor_graph.repers.re.pos_y:= v.constructor_graph.repers.pos_get.y;

     v.constructor_graph.repers.re.exist := true;

     //-------------------- результ --------------------------------------------
     v.constructor_graph.repers.res.dx   := v.constructor_graph.repers.re.pos_x - v.constructor_graph.repers.rb.pos_x;
     v.constructor_graph.repers.res.dy   := v.constructor_graph.repers.re.pos_y - v.constructor_graph.repers.rb.pos_y;

     frmVis.Label10.Caption := FloatToStr(v.constructor_graph.repers.res.dx);
     frmVis.Label11.Caption := FloatToStr(v.constructor_graph.repers.res.dy);

     //------------------- время

     if (v.constructor_graph.fq.data <> 0) then
        v.constructor_graph.repers.res.T := ( v.constructor_graph.repers.res.dx/v.constructor_graph.fq.data) * 1000.0;

     frmVis.Label23.Caption := FloatToStr(v.constructor_graph.repers.res.T);
     frmVis.Label24.Caption := FloatToStr(v.constructor_graph.repers.res.dy);
   end;
 end
 else begin
   frmVis.Label20.Left:= 0;
   frmVis.Label20.Top := frmVis.Chart1.Height;

   frmVis.Label21.Left:= 0;
   frmVis.Label21.Top := frmVis.Chart1.Height;


 end;


 if (v.constructor_graph.graph.exist.been_tm = true) then begin




 end;
end;

procedure TfrmVis.Label14Click(Sender: TObject);
begin
  frmVis.RadioButton1.Checked := true;
end;

procedure TfrmVis.Label15Click(Sender: TObject);
begin
  frmVis.RadioButton2.Checked := true;
end;

procedure TfrmVis.IME1Click(Sender: TObject);
begin
  if  v.constructor_graph.time.execute = true then  v.constructor_graph.time.execute := false
  else if v.constructor_graph.time.execute = false then  v.constructor_graph.time.execute := true;

  //---------------------------------------------------------
  frmVis.Clear1.Click;
end;

procedure TfrmVis.MarksProc1Click(Sender: TObject);
begin
 
 frmVis.Chart1.Series[1].Marks.Visible := not frmVis.Chart1.Series[1].Marks.Visible;

end;

end.






