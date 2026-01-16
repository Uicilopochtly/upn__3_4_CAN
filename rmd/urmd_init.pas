unit urmd_init;

interface

uses umain , urmd_data;

procedure prmd_init();

implementation

procedure prmd_init();
begin

  //----------------------------------------------------------------------------
  s_rmd.customization_opu.loaded := false;

end;

end.
