unit udisplay;

interface

uses umain , udata , Graphics , uvisual , ucontrlol_by_angle , usensor , ucustomization , usave ,
     urmd , urmd_customization , urmd_data , urmd_save;



procedure pdisplay;

implementation



procedure pdisplay;
begin
  //--------------- тип платформы ----------------------------------------------
  frmMain.RadioButton1.Color := clBtnFace;
  frmMain.RadioButton2.Color := clBtnFace;
  frmMain.RadioButton4.Color := clBtnFace;

  if frmMain.RadioButton1.Checked then begin
    d._PLATFORM_ := _UPN1_3_ ;
    frmMain.RadioButton1.Color := clBlue;
  end
  else if frmMain.RadioButton2.Checked then begin
    d._PLATFORM_ := _UPN1_4_;
    frmMain.RadioButton2.Color := clGreen;
  end else if frmMain.RadioButton3.Checked then begin
    d._PLATFORM_ := _UPN1_BUF_
  end else if frmMain.RadioButton4.Checked then begin
    frmMain.RadioButton4.Color := clBlack;
    d._PLATFORM_ := _UPN1_41_;
  end;

  //--------------- maraphone state --------------------------------------------
  if (d.system.open_maraphone = false) then begin
    frmMain.Label1.Font.Color := clMaroon;
    frmMain.tmrMainThread.Enabled := false;
  end else if (d.system.open_maraphone = true) then begin

  end;
  //--------------- connect ptu ------------------------------------------------
  if (v.constructor_graph.rx_data.cnt_vn > 0) then begin
      frmMain.Label2.Font.Color := clGreen;
      frmMain.Label2.Caption := 'OPEN';
    end
    else begin
      frmMain.Label2.Font.Color := clBlack;
      frmMain.Label2.Caption := 'CLOSE';
    end;


  
  if (v.constructor_graph.rx_data.cnt100_vn > 100) then v.constructor_graph.rx_data.cnt100_vn := 0;
  frmMain.ProgressBar1.Position := v.constructor_graph.rx_data.cnt100_vn;

  if (v.constructor_graph.rx_data.cnt100_gn > 100) then v.constructor_graph.rx_data.cnt100_gn := 0;
  frmMain.ProgressBar2.Position := v.constructor_graph.rx_data.cnt100_gn;

  //--------------- graph ------------------------------------------------------
  if frmMain.CheckBox1.Checked then frmVis.Visible := true else frmVis.Visible := false;

  if frmVis.Visible = true then begin
    //============================================================================ GRAPH
    frmVis.TrackBar2.Top  := frmVis.Chart1.Height - 12;
    frmVis.TrackBar2.Width:= frmVis.Chart1.Width -  frmVis.TrackBar1.Width;

    frmVis.TrackBar3.Top   := frmVis.TrackBar1.Top + trunc(frmVis.TrackBar1.Height/4);
    frmVis.TrackBar3.Height:= trunc(frmVis.TrackBar1.Height/2);
    frmVis.TrackBar3.Left  := frmVis.TrackBar1.Left - 32;

    frmVis.GroupBox3.Top  :=  frmVis.TrackBar2.Top - frmVis.TrackBar2.Height * 2;
    frmVis.GroupBox3.Left :=  frmVis.TrackBar2.Left + trunc(frmVis.TrackBar2.Width/2) - trunc(frmVis.GroupBox3.Width/2);

    v.constructor_graph.monotor_chacked := frmVis.Visible;
    if (   (v.constructor_graph.monotor_chacked     = true)
      and(v.constructor_graph.monotor_chacked_old = false)) then begin
      frmVis.Visible:= true;
      v.constructor_graph.exist_monotor := 1
    end
    else  if (   (v.constructor_graph.monotor_chacked     = false)
              and(v.constructor_graph.monotor_chacked_old = true)) then begin
      frmVis.Visible:= false;
      v.constructor_graph.exist_monotor := 0;
    end;

    v.constructor_graph.monotor_chacked_old := v.constructor_graph.monotor_chacked;
    //--------------------------
    if v.constructor_graph.sign_data_y = true then
      frmVis.Chart1.LeftAxis.SetMinMax(-10 * frmVis.TrackBar1.Position,10* frmVis.TrackBar1.Position)
    else begin

      if frmVis.RadioButton11.Checked then
        frmVis.Chart1.LeftAxis.SetMinMax(1 * frmVis.TrackBar3.Position,10* frmVis.TrackBar1.Position)
      else if frmVis.RadioButton12.Checked then
        frmVis.Chart1.LeftAxis.SetMinMax(10 * frmVis.TrackBar3.Position,10* frmVis.TrackBar1.Position)
      else if frmVis.RadioButton13.Checked then
        frmVis.Chart1.LeftAxis.SetMinMax(100 * frmVis.TrackBar3.Position,10* frmVis.TrackBar1.Position)

    end;
    //============================= repers =======================================
    if frmVis.CheckBox1.Checked then
      v.constructor_graph.repers.execute := true
    else
      v.constructor_graph.repers.execute := false;

    if frmVis.RadioButton1.Checked then
      v.constructor_graph.repers.rb.exec := true
    else
      v.constructor_graph.repers.rb.exec := false;

    if frmVis.RadioButton2.Checked then
      v.constructor_graph.repers.re.exec := true
    else
      v.constructor_graph.repers.re.exec := false;


     if ( v.constructor_graph.repers.execute = false) then begin
       v.constructor_graph.repers.rb.exec        := false;
       v.constructor_graph.repers.rb.exist       := false;

       frmVis.Label20.Left:= 0;
       frmVis.Label20.Top := frmVis.Chart1.Height;

       frmVis.RadioButton1.Checked := true;

       v.constructor_graph.repers.re.exec        := false;
       v.constructor_graph.repers.re.exist       := false;

       frmVis.Label21.Left:= 0;
       frmVis.Label21.Top := frmVis.Chart1.Height;
    end;


    if frmVis.RadioButton3.Checked then
      v.constructor_graph.sign_data_y := true
    else
      v.constructor_graph.sign_data_y := false;

    frmVis.GroupBox4.Left := frmVis.Chart1.Width - frmVis.GroupBox4.Width - 40;
    frmVis.GroupBox5.Left := frmVis.Chart1.Width - frmVis.GroupBox4.Width + 10;
    frmVis.GroupBox5.Top  := frmVis.GroupBox4.Top + frmVis.GroupBox4.Height + 8;

  end;

  //============================================================================  ANGLE CONTROL
  if frmMain.CheckBox2.Checked then frmControlByAngle.Visible:= true else frmControlByAngle.Visible:= false;

  p.tx.control.angle.vn                              := PTU_ANGLE_CODE_VN_MAX   - frmControlByAngle.TrackBar2.Position;
  p.tx.control.angle.gn                              := frmControlByAngle.TrackBar1.Position - trunc(PTU_ANGLE_CODE_GN_MAX/2);

  if (p.tx.control.angle.gn < 0) then
    p.tx.control.angle.gn :=  (PTU_ANGLE_CODE_GN_MAX -  ( trunc(PTU_ANGLE_CODE_GN_MAX/2) - frmControlByAngle.TrackBar1.Position ));

  //----------------------------------------------------------------------------  TX
  pangle_visual();
  //----------------------------------------------------------------------------
  //============================================================================  SENSORS
  //---------------------------------------------------------------------------- angle data
  if frmMain.CheckBox3.Checked then frmSens.Visible:= true else frmSens.Visible:= false;

  psensors();

  //============================================================================ CUSTOM TECH
  if frmMain.CheckBox4.Checked then
    p.tx.custom.cntr.execute := 1
  else
    p.tx.custom.cntr.execute := 0;

  if frmMain.CheckBox5.Checked then
    p.tx.custom.cntr.enable_vn := 1
  else
    p.tx.custom.cntr.enable_vn := 0;

  if frmMain.CheckBox6.Checked then
    p.tx.custom.cntr.enable_gn := 1
  else
    p.tx.custom.cntr.enable_gn := 0;


     //---------------------- colors ----------------------------------------------
  //--------- vn
  if (p.tx.custom.cntr.enable_vn = 1) then begin
    frmCust.GroupBox2.Color := clSkyBlue;

    if (p.tx.custom.cntr.mask.b00 = 1) then begin
      frmCust.GroupBox4.Color := clSkyBlue;
    end else begin
      frmCust.GroupBox4.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b01 = 1) then begin
      frmCust.GroupBox5.Color := clSkyBlue;
    end else begin
      frmCust.GroupBox5.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b02 = 1) then begin
      frmCust.GroupBox6.Color := clSkyBlue;
    end else begin
      frmCust.GroupBox6.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b03 = 1) then begin
      frmCust.GroupBox7.Color := clSkyBlue;
    end else begin
      frmCust.GroupBox7.Color := clBtnFace;
    end;




  end else begin
    frmCust.GroupBox2.Color := clBtnFace;

    frmCust.GroupBox4.Color := clBtnFace;
    frmCust.GroupBox5.Color := clBtnFace;
    frmCust.GroupBox6.Color := clBtnFace;
    frmCust.GroupBox7.Color := clBtnFace;


  end;





  //--------- gn
  if (p.tx.custom.cntr.enable_gn = 1) then begin
    frmCust.GroupBox3.Color  := clMoneyGreen;

    if (p.tx.custom.cntr.mask.b10 = 1) then begin
      frmCust.GroupBox8.Color := clMoneyGreen;
    end else begin
      frmCust.GroupBox8.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b11 = 1) then begin
      frmCust.GroupBox9.Color := clMoneyGreen;
    end else begin
      frmCust.GroupBox9.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b12 = 1) then begin
      frmCust.GroupBox10.Color := clMoneyGreen;
    end else begin
      frmCust.GroupBox10.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b13 = 1) then begin
      frmCust.GroupBox11.Color := clMoneyGreen;
    end else begin
      frmCust.GroupBox11.Color := clBtnFace;
    end;





  end else begin
    frmCust.GroupBox3.Color := clBtnFace;

    frmCust.GroupBox8.Color := clBtnFace;
    frmCust.GroupBox9.Color := clBtnFace;
    frmCust.GroupBox10.Color := clBtnFace;
    frmCust.GroupBox11.Color := clBtnFace;



  end;
  //----------------------------------------------------------------------------







  if (p.tx.custom.cntr.execute = 1) then frmCust.Visible:= true else frmCust.Visible:= false;



  if (d._PLATFORM_old <>  d._PLATFORM_) then begin
    s.customization_opu.loaded :=false;

    s_rmd.customization_opu.loaded :=false; //rmd



    pload_customization();

    prmd_load_customization();              //rmd



  end;

   d._PLATFORM_old :=  d._PLATFORM_;


  pcustomization_display();

  //============================================================================ RMD
  if  frmMain.CheckBox7.Checked then frmRmd.Visible:= true else frmRmd.Visible:= false;

   prmd_customization_display();






end;

end.
