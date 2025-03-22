unit uinit;

interface

uses umain , udata;

procedure pinit();

implementation

procedure pinit();
var
  i :  integer;
begin
  //----------------------------------------------------------------------------
  d.system.open_maraphone                         := true;
  d.system.open_ptu                               := false;

  d.time.counter20ms                              := 0;
  d.time.event20ms                                := false;
  d.time.event100ms                               := false;
  d.time.thin_can100                              := 0;

  //----------------------------------------------------------------------------  RX
  c.rx.pack00.id                                  := CAN_ID_PTU_SENSOR_VN;
  for i:= 0 to 7 do begin
    c.rx.pack00.data[i]    := 0;
    c.rx.pack00.content[i] := 0;

  end;

  c.rx.pack01.id                                  := CAN_ID_PTU_SENSOR_VN;
  for i:= 0 to 7 do begin
    c.rx.pack01.data[i]    := 0;
    c.rx.pack01.content[i] := 0;
  end;
  //----------------------------------------------------------------------------  TX
  //--------------------------------------------------------------------- BUTTLE
  //----------------------------------------
  c.tx.pack00.id                                  := CAN_ID_CONTROL_ANGLE;
  for i:= 0 to 7 do begin
    c.tx.pack00.buff[i] := 0;

  end;
  //------------------------------------------------------------------ TECH CUST
  //---------------------------------------- control
  c.tx.cust.pack00.id                                  := CAN_ID0_CUST_PTU_CONTROL;
  for i:= 0 to 7 do begin
    c.tx.cust.pack00.buff[i] := 0;
  end;
  //---------------------------------------- vn
  c.tx.cust.pack01.id                                  := CAN_ID1_CUST_PTU_VN;
  for i:= 0 to 7 do begin
    c.tx.cust.pack01.buff[i] := 0;
  end;
  //---------------------------------------- gn
  c.tx.cust.pack02.id                                  := CAN_ID2_CUST_PTU_GN;
  for i:= 0 to 7 do begin
    c.tx.cust.pack02.buff[i] := 0;
  end;








  //----------------------------------------------------------------------------
  v.constructor_graph.sign_data_y                 := false;
  v.constructor_graph.rx_data.cnt_vn                 := 0;
  v.constructor_graph.rx_data.cnt100_vn              := 0;

  v.constructor_graph.rx_data.cnt_gn                 := 0;
  v.constructor_graph.rx_data.cnt100_gn              := 0;

  v.constructor_graph.fq.data                     := 0;
  v.constructor_graph.fq.reset                    := false;
  v.constructor_graph.fq.counter                  := 0;
  v.constructor_graph.exist_monotor               := 0;
  v.constructor_graph.exist_monotor_old           := 0;
  v.constructor_graph.monotor_chacked             := false;
  v.constructor_graph.monotor_chacked_old         := false;
  v.constructor_graph.time.execute                := true;
  v.constructor_graph.time.second_event           := false;
  v.constructor_graph.time.count20ms_accur        := 0;
  v.constructor_graph.time.second_cntr            := 0;
  v.constructor_graph.graph.tag0                  := 0;
  v.constructor_graph.graph.tag1                  := 0;
  v.constructor_graph.graph.tag2                  := 0;
  v.constructor_graph.graph.tag3                  := 0;
  v.constructor_graph.graph.tag_tm                := 0;
  v.constructor_graph.graph.sindex0               := 0;
  v.constructor_graph.graph.sindex1               := 0;
  v.constructor_graph.graph.sindex2               := 0;
  v.constructor_graph.graph.sindex3               := 0;
  v.constructor_graph.graph.exist.f0              := false;
  v.constructor_graph.graph.exist.f1              := false;
  v.constructor_graph.graph.exist.f2              := false;
  v.constructor_graph.graph.exist.f3              := false;
  v.constructor_graph.graph.exist.f_tm            := false;
  v.constructor_graph.graph.exist.f0_old          := false;
  v.constructor_graph.graph.exist.f1_old          := false;
  v.constructor_graph.graph.exist.f2_old          := false;
  v.constructor_graph.graph.exist.f3_old          := false;
  v.constructor_graph.graph.exist.f_tm_old        := false;
  v.constructor_graph.graph.exist.q0              := 0;
  v.constructor_graph.graph.exist.q1              := 0;
  v.constructor_graph.graph.exist.q2              := 0;
  v.constructor_graph.graph.exist.q3              := 0;
  v.constructor_graph.graph.exist.q_tm            := 0;
  v.constructor_graph.graph.exist.cnt_series      := 0;
  v.constructor_graph.graph.exist.been0           := false;
  v.constructor_graph.graph.exist.been1           := false;
  v.constructor_graph.graph.exist.been2           := false;
  v.constructor_graph.graph.exist.been3           := false;
  v.constructor_graph.graph.exist.been_tm         := false;
  //----------------------------------------------------------------------------
  p.rx.sensors.vn.angle_control                      := 0;
  p.rx.sensors.vn.angle_current                      := 0;
  p.rx.sensors.vn.aiming                             := PTU_AIMING_BY_ANGLE;

  p.rx.sensors.vn.angle_control_data.d360f           := 0.0;
  p.rx.sensors.vn.angle_control_data.d360            := 0;
  p.rx.sensors.vn.angle_control_data.d360_fract      := 0.0;
  p.rx.sensors.vn.angle_control_data.d360_fract1000  := 0;


  p.rx.sensors.vn.angle_current_data.d360f           := 0.0;
  p.rx.sensors.vn.angle_current_data.d360            := 0;
  p.rx.sensors.vn.angle_current_data.d360_fract      := 0.0;
  p.rx.sensors.vn.angle_current_data.d360_fract1000  := 0;


  p.rx.sensors.gn.angle_control                      := 0;
  p.rx.sensors.gn.angle_current                      := 0;
  p.rx.sensors.gn.aiming                             := PTU_AIMING_BY_ANGLE;

  p.rx.sensors.gn.angle_control_data.d360f           := 0.0;
  p.rx.sensors.gn.angle_control_data.d360            := 0;
  p.rx.sensors.gn.angle_control_data.d360_fract      := 0.0;
  p.rx.sensors.gn.angle_control_data.d360_fract1000  := 0;

  p.rx.sensors.gn.angle_current_data.d360f           := 0.0;
  p.rx.sensors.gn.angle_current_data.d360            := 0;
  p.rx.sensors.gn.angle_current_data.d360_fract      := 0.0;
  p.rx.sensors.gn.angle_current_data.d360_fract1000  := 0;


  //----------------------------------------
  p.tx.control.angle.vn                              := 0;
  p.tx.control.angle.gn                              := 0;
  p.tx.control.angle.event                           := false;

  p.tx.control.angle.vn360f                          := 0.0;
  p.tx.control.angle.vn360f                          := 0.0;

  p.tx.control.angle.vn360                           := 0;
  p.tx.control.angle.vn360                           := 0;

  p.tx.control.angle.vn360_fract                     := 0.0;
  p.tx.control.angle.gn360_fract                     := 0.0;

  p.tx.control.angle.vn360_fract1000                 := 0;
  p.tx.control.angle.gn360_fract1000                 := 0;


  p.tx.control.speed.vn                              := 0;
  p.tx.control.speed.gn                              := 0;
  p.tx.control.speed.event                           := false;

  //---------------------------------- custom tech -----------------------------
  //pack00
  p.tx.custom.cntr.execute         := 0;
  p.tx.custom.cntr.enable_vn       := 0;
  p.tx.custom.cntr.enable_gn       := 0;

  p.tx.custom.cntr.mask.b00        := 0;
  p.tx.custom.cntr.mask.b01        := 0;
  p.tx.custom.cntr.mask.b02        := 0;
  p.tx.custom.cntr.mask.b03        := 0;

  p.tx.custom.cntr.mask.b10        := 0;
  p.tx.custom.cntr.mask.b11        := 0;
  p.tx.custom.cntr.mask.b12        := 0;
  p.tx.custom.cntr.mask.b13        := 0;


  //pack01
  p.tx.custom.vn.data00            := 0;
  p.tx.custom.vn.data01            := 0;
  p.tx.custom.vn.data02            := 0;
  p.tx.custom.vn.data03            := 0;
  //pack02
  p.tx.custom.gn.data10            := 0;
  p.tx.custom.gn.data11            := 0;
  p.tx.custom.gn.data12            := 0;
  p.tx.custom.gn.data13            := 0;



  //----------------------------------------------------------------------------
  s.customization_opu.loaded := false;

end;

end.
