unit urmd_data;

interface
uses umain , Windows;

type t_save_rmd = packed record

  customization_opu : record
    myFile    : File;
    Len: LongInt;
    WriteData: array [0..7 ] of short;
    ReadData : array [0..7 ] of short;
    loaded   : boolean;
  end;
end;

var
  s_rmd : t_save_rmd;

implementation





end.
