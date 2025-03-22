unit utimers;

interface

uses umain , udata  ;

procedure ptimers();

implementation

//------------------------------------------------------------------------------
procedure ptimers();
begin
  //-----------------------------------------
  inc(d.time.counter20ms);
  //-----------------------------------------
  d.time.event20ms                                := true;
  //-----------------------------------------
  if ((d.time.counter20ms mod 5) = 0) then
    d.time.event100ms                             := true;
  //-----------------------------------------
end;

end.
