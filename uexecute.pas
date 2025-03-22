unit uexecute;

interface

uses umain , udata  ;

procedure pexecute();
procedure ptermination();

implementation

procedure pexecute();
begin
  //------------------------------ PTU SENSORS ---------------------------------
  p.rx.sensors.vn.angle_control                      :=  c.rx.pack00.data[0] or (c.rx.pack00.data[1] shl 8);
  p.rx.sensors.vn.angle_current                      :=  c.rx.pack00.data[2] or (c.rx.pack00.data[3] shl 8) or ((c.rx.pack00.data[4] and $03) shl 16);
  p.rx.sensors.vn.aiming                             := (c.rx.pack00.data[3] and $04) shr 3;

  p.rx.sensors.gn.angle_control                      :=  c.rx.pack01.data[0] or (c.rx.pack01.data[1] shl 8);
  p.rx.sensors.gn.angle_current                      :=  c.rx.pack01.data[2] or (c.rx.pack01.data[3] shl 8) or ((c.rx.pack01.data[4] and $03) shl 16);
  p.rx.sensors.gn.aiming                             := (c.rx.pack01.data[3] and $04) shr 3;
  //----------------------------------------------------------------------------
  //v.constructor_graph.graph.tag0                  :=  p.sensors.vn.angle_current;
  //v.constructor_graph.graph.tag1                  :=  p.sensors.gn.angle_current;

  c.rx.pack00.content[0]                           := p.rx.sensors.vn.angle_current;
  c.rx.pack01.content[0]                           := p.rx.sensors.gn.angle_current;

end;




procedure ptermination();
begin


  //----------------------------------------------------------------------------
  p.tx.control.angle.event:= false;
  //----------------------------------------------------------------------------
  d.time.event20ms                                := false;
  d.time.event100ms                               := false;
end;

end.
