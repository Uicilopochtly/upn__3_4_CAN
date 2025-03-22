unit udata;

interface

uses umain , Windows;

const
   //===========================================================================
   //---------------------------------------------------------------------------
   CAN_ID_PTU_SENSOR_VN      =  $00003045;
   CAN_ID_PTU_SENSOR_GN      =  $00004046;

   //---------------------------------------------------------------------------
   CAN_ID_CONTROL_ANGLE      =  $00002101;
   //---------------------------------------------------------------------------
   CAN_ID0_CUST_PTU_CONTROL  =  $00009100;
   CAN_ID1_CUST_PTU_VN       =  $00009101;
   CAN_ID2_CUST_PTU_GN       =  $00009102;

   //===========================================================================




   //---------------------------------------------------------------------------
   PTU_AIMING_BY_ANGLE    =  0;
   PTU_AIMING_BY_SPEED    =  1;
   //---------------------------------------------------------------------------
   PTU_ANGLE_CODE_VN_MAX = 16384;
   PTU_ANGLE_CODE_GN_MAX = 65535;

   //---------------------------------------------------------------------------
   CMR                   = 0.0054932478828107;



type t_data = packed record
  system: record
    open_maraphone: boolean;
    open_ptu      : boolean;
  end;

  time: record
    counter20ms   : integer;

    event20ms     : boolean;
    event100ms    : boolean;

    thin_can100   : byte; 

  end;


end;


type t_save = packed record

   customization_opu : record
     myFile    : File;
     Len: LongInt;
     WriteData: array [0..7 ] of short;
     ReadData : array [0..7 ] of short;

     loaded   : boolean;
  end;




end;


type t_can = packed record
  rx : record
    pack00   : record
      id     : cardinal;
      data   : array [0..7] of byte;

      content:array [0..7] of integer;

    end;

    pack01   : record
      id     : cardinal;
      data   : array [0..7] of byte;

      content:array [0..7] of integer;
    end;

  end;

  tx : record
    pack00   : record  //BATTLE CONTROL_BY_ANGLE
      id     : cardinal;
      buff   : array [0..7] of byte;
    end;


    cust : record
      pack00   : record  //CUST CONTROL_CONTROL
        id     : cardinal;
        buff   : array [0..7] of byte;
      end;

      pack01   : record  //CUST CONTROL_VN
        id     : cardinal;
        buff   : array [0..7] of byte;
      end;

      pack02   : record  //CUST CONTROL_GN
        id     : cardinal;
        buff   : array [0..7] of byte;
      end;

    end;

  end;
end;



type t_visual = packed record
  constructor_graph : record

   sign_data_y : boolean;

   rx_data    :  record
     cnt_vn      : integer;
     cnt100_vn   : integer;

     cnt_gn      : integer;
     cnt100_gn   : integer;


   end;

   fq    : record
    data   : byte;
    reset  : boolean;
    counter: integer;
   end;

   exist_monotor     : byte;
   exist_monotor_old : byte;
   monotor_chacked   : boolean;
   monotor_chacked_old   : boolean;


   time  : record
     execute      : boolean;

     second_event : boolean;
     count20ms_accur   : integer;

     second_cntr       : byte;
   end;


   graph : record
     tag0 : integer;
     tag1 : integer;
     tag2 : integer;
     tag3 : integer;

     tag_tm : integer;

      sindex0 , sindex1 , sindex2 , sindex3 : byte;

     exist : record
       f0 : boolean;
       f1 : boolean;
       f2 : boolean;
       f3 : boolean;

       f_tm : boolean;
       f0_old : boolean;
       f1_old : boolean;
       f2_old : boolean;
       f3_old : boolean;

       f_tm_old : boolean;

       q0 : integer;
       q1 : integer;
       q2 : integer;
       q3 : integer;

       q_tm : integer;

       cnt_series : byte;


       been0 : boolean;
       been1 : boolean;
       been2 : boolean;
       been3 : boolean;

       been_tm : boolean;


     end;

     play : record
       f0 : boolean;
       f1 : boolean;
       f2 : boolean;
       f3 : boolean;
       f_tm : boolean;

       pause : boolean;
     end;

     reset : integer;

    end;

    repers : record
      execute: boolean;

      pos_get : record
        x : double;
       y : double;

    end;

    rb : record
      exec: boolean;
      pos_x : double;
      pos_y : double;

      exist: boolean;
    end;

    re : record
      exec: boolean;
      pos_x : double;
      pos_y : double;

      exist: boolean;
    end;

    res : record
      exec: boolean;
      dx : double;
      dy : double;

      T  : double;

    end;
   end;
  end;

end;



type t_ptu = packed record
  rx      : record
    sensors : record
      vn : record
        angle_control : integer;
        angle_current : integer;
        aiming        : byte;

        angle_control_data : record
          d360f : double;
          d360  : integer;
          d360_fract : double;
          d360_fract1000 : integer;
        end;

        angle_current_data : record
          d360f : double;
          d360  : integer;
          d360_fract : double;
          d360_fract1000 : integer;
        end;

      end;

      gn : record
        angle_control : integer;
        angle_current : integer;
        aiming        : byte;

        angle_control_data : record
          d360f : double;
          d360  : integer;
          d360_fract : double;
          d360_fract1000 : integer;
        end;

        angle_current_data : record
          d360f : double;
          d360  : integer;
          d360_fract : double;
          d360_fract1000 : integer;
        end;
        
      end;

    end;
  end;
  tx      : record
    control : record
      angle : record
        vn : integer;
        gn : integer;

        vn360f : double;
        gn360f : double;

        vn360  : integer;
        gn360  : integer;

        vn360_fract : double;
        gn360_fract : double;

        vn360_fract1000 : integer;
        gn360_fract1000 : integer;


        event : boolean;
      end;//angle

      speed : record
        vn : integer;
        gn : integer;

        event : boolean;
      end;//speed

    end;//control

    //--------------------------------------------------------------------------
    custom : record
      cntr : record
        execute   : byte;
        enable_vn : byte;
        enable_gn : byte;


        mask : record
          b00 : byte;
          b01 : byte;
          b02 : byte;
          b03 : byte;
          b10 : byte;
          b11 : byte;
          b12 : byte;
          b13 : byte;

        end;

      end;

      vn : record
        data00 : short;
        data01 : short;
        data02 : short;
        data03 : short;
      end;

      gn : record
        data10 : short;
        data11 : short;
        data12 : short;
        data13 : short;
      end;


    end;



  end;



end;



var
   d : t_data  ;
   v : t_visual;
   c : t_can   ;
   p : t_ptu   ;
   s : t_save  ;

implementation



end.
