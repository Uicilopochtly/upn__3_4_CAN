unit ucan;

interface

uses umain , udata , can , Dialogs  , SysUtils , Forms;


procedure can_reciave();
procedure can_transmiss();

implementation

//==============================================================================
procedure CAN_Recive(var ID_: cardinal;var  Buf_: PArrB;var  ByteNum_: cardinal);
var
  i: integer;
begin
  case (ID_) of
    //--------------------------------------------------------------------------
    CAN_ID_PTU_SENSOR_VN: begin
      for i:= 0 to 7 do
        c.rx.pack00.data[i] := Buf_[i];

        inc(v.constructor_graph.rx_data.cnt_vn);
        inc(v.constructor_graph.rx_data.cnt100_vn);
    end;
    //--------------------------------------------------------------------------
    CAN_ID_PTU_SENSOR_GN: begin
      for i:= 0 to 7 do
        c.rx.pack01.data[i] := Buf_[i];

      inc(v.constructor_graph.rx_data.cnt_gn);
      inc(v.constructor_graph.rx_data.cnt100_gn);


    
    end;

  end;

end;


//==============================================================================
procedure CANRxCallBack(ID: cardinal; Buf: PArrB; ByteNum: cardinal); stdcall;
label
  Exit;
begin


  d.system.open_maraphone  := true;

 if (
        (ID <> CAN_ID_PTU_SENSOR_VN)
     and(ID <> CAN_ID_PTU_SENSOR_GN)
     ) then
   Goto Exit
 else begin
     Can_Recive(ID, Buf, ByteNum);
  end;
 Exit:

end;

//==============================================================================
procedure CANErrCallBack(Err: integer); stdcall;
begin


end;

//==============================================================================
procedure can_reciave();
begin
  if (CAN_Open(Nil, CANRxCallBack, CANErrCallBack) = 0) then begin
    d.system.open_maraphone := true;
  end
  else begin

   d.system.open_maraphone := false;
    
   MessageDlg('Can'+ '"'+ 't Open Can', mtInformation       , [mbOk], 0);

   CAN_Close();

  end;


end;

//============================================================================== CAN TX

//==============================================================================
function TX_EVENT_CONTROL_BY_ANGLE() : byte;
begin
  if(p.tx.control.angle.event) then
   result:= 1
  else
   result:= 0;


end;

//==============================================================================

procedure can_tx_control_protocol();
begin
  if (TX_EVENT_CONTROL_BY_ANGLE() = 1) then begin
      c.tx.pack00.buff[0] :=  ((p.tx.control.angle.vn and $000000FF) shr 0);
      c.tx.pack00.buff[1] :=  ((p.tx.control.angle.vn and $0000FF00) shr 8);

      c.tx.pack00.buff[2] :=  ((p.tx.control.angle.gn and $000000FF) shr 0);
      c.tx.pack00.buff[3] :=  ((p.tx.control.angle.gn and $0000FF00) shr 8);

      //--------------------------------------------------------------------------
      CAN_Write(  c.tx.pack00.id , @c.tx.pack00.buff, 4);

  end;


end;

//==============================================================================
procedure can_tx_control_customiz();
begin
  case (d.time.thin_can100) of
  0:begin
      c.tx.cust.pack00.buff[0] := 0;
      c.tx.cust.pack00.buff[1] := 0;
      c.tx.cust.pack00.buff[2] := 0;
      c.tx.cust.pack00.buff[3] := 0;
      c.tx.cust.pack00.buff[4] := 0;
      c.tx.cust.pack00.buff[5] := 0;
      c.tx.cust.pack00.buff[6] := 0;
      c.tx.cust.pack00.buff[7] := 0;

      c.tx.cust.pack00.buff[0] :=   (p.tx.custom.cntr.execute   shl 0)
                                  or(p.tx.custom.cntr.enable_vn shl 1)
                                  or(p.tx.custom.cntr.enable_gn shl 2);
                                  
      c.tx.cust.pack00.buff[1] :=   (p.tx.custom.cntr.mask.b00 shl 0)
                                  or(p.tx.custom.cntr.mask.b01 shl 1)
                                  or(p.tx.custom.cntr.mask.b02 shl 2)
                                  or(p.tx.custom.cntr.mask.b03 shl 3)
                                  or(p.tx.custom.cntr.mask.b10 shl 4)
                                  or(p.tx.custom.cntr.mask.b11 shl 5)
                                  or(p.tx.custom.cntr.mask.b12 shl 6)
                                  or(p.tx.custom.cntr.mask.b13 shl 7);

       //------------------------- RMD ------------------------------------------
      c.tx.cust.pack00.buff[2] :=   (p.tx.custom.cntr.mask.b20 shl 0)
                                  or(p.tx.custom.cntr.mask.b21 shl 1)
                                  or(p.tx.custom.cntr.mask.b22 shl 2)
                                  or(p.tx.custom.cntr.mask.b23 shl 3)
                                  or(p.tx.custom.cntr.mask.b30 shl 4)
                                  or(p.tx.custom.cntr.mask.b31 shl 5)
                                  or(p.tx.custom.cntr.mask.b32 shl 6)
                                  or(p.tx.custom.cntr.mask.b33 shl 7);



      c.tx.cust.pack00.buff[3] := 0;
      c.tx.cust.pack00.buff[4] := 0;
      c.tx.cust.pack00.buff[5] := 0;
      c.tx.cust.pack00.buff[6] := 0;
      c.tx.cust.pack00.buff[7] := 0;
      //------------------------------------------------------------------------
      CAN_Write(  c.tx.cust.pack00.id , @c.tx.cust.pack00.buff, 8);
    end;
  1:begin
     c.tx.cust.pack01.buff[0] :=  ((p.tx.custom.vn.data00  and $00FF) shr 0);
     c.tx.cust.pack01.buff[1] :=  ((p.tx.custom.vn.data00  and $FF00) shr 8);

     c.tx.cust.pack01.buff[2] :=  ((p.tx.custom.vn.data01  and $00FF) shr 0);
     c.tx.cust.pack01.buff[3] :=  ((p.tx.custom.vn.data01  and $FF00) shr 8);

     c.tx.cust.pack01.buff[4] :=  ((p.tx.custom.vn.data02  and $00FF) shr 0);
     c.tx.cust.pack01.buff[5] :=  ((p.tx.custom.vn.data02  and $FF00) shr 8);

     c.tx.cust.pack01.buff[6] :=  ((p.tx.custom.vn.data03  and $00FF) shr 0);
     c.tx.cust.pack01.buff[7] :=  ((p.tx.custom.vn.data03  and $FF00) shr 8);

     //------------------------------------------------------------------------
     CAN_Write(  c.tx.cust.pack01.id , @c.tx.cust.pack01.buff, 8);
    end;
  2:begin
     c.tx.cust.pack02.buff[0] :=  ((p.tx.custom.gn.data10  and $00FF) shr 0);
     c.tx.cust.pack02.buff[1] :=  ((p.tx.custom.gn.data10  and $FF00) shr 8);

     c.tx.cust.pack02.buff[2] :=  ((p.tx.custom.gn.data11  and $00FF) shr 0);
     c.tx.cust.pack02.buff[3] :=  ((p.tx.custom.gn.data11  and $FF00) shr 8);

     c.tx.cust.pack02.buff[4] :=  ((p.tx.custom.gn.data12  and $00FF) shr 0);
     c.tx.cust.pack02.buff[5] :=  ((p.tx.custom.gn.data12  and $FF00) shr 8);

     c.tx.cust.pack02.buff[6] :=  ((p.tx.custom.gn.data13  and $00FF) shr 0);
     c.tx.cust.pack02.buff[7] :=  ((p.tx.custom.gn.data13  and $FF00) shr 8);

     //------------------------------------------------------------------------
     CAN_Write(  c.tx.cust.pack02.id , @c.tx.cust.pack02.buff, 8);
    end;
    //=============================== rmd ========================================
  3:begin
     c.tx.cust.pack03.buff[0] :=  ((p.tx.custom.vn.data20  and $00FF) shr 0);
     c.tx.cust.pack03.buff[1] :=  ((p.tx.custom.vn.data20  and $FF00) shr 8);

     c.tx.cust.pack03.buff[2] :=  ((p.tx.custom.vn.data21  and $00FF) shr 0);
     c.tx.cust.pack03.buff[3] :=  ((p.tx.custom.vn.data21  and $FF00) shr 8);

     c.tx.cust.pack03.buff[4] :=  ((p.tx.custom.vn.data22  and $00FF) shr 0);
     c.tx.cust.pack03.buff[5] :=  ((p.tx.custom.vn.data22  and $FF00) shr 8);

     c.tx.cust.pack03.buff[6] :=  ((p.tx.custom.vn.data23  and $00FF) shr 0);
     c.tx.cust.pack03.buff[7] :=  ((p.tx.custom.vn.data23  and $FF00) shr 8);

     //------------------------------------------------------------------------
     CAN_Write(  c.tx.cust.pack03.id , @c.tx.cust.pack03.buff, 8);
    end;
  4:begin
     c.tx.cust.pack04.buff[0] :=  ((p.tx.custom.gn.data30  and $00FF) shr 0);
     c.tx.cust.pack04.buff[1] :=  ((p.tx.custom.gn.data30  and $FF00) shr 8);

     c.tx.cust.pack04.buff[2] :=  ((p.tx.custom.gn.data31  and $00FF) shr 0);
     c.tx.cust.pack04.buff[3] :=  ((p.tx.custom.gn.data31  and $FF00) shr 8);

     c.tx.cust.pack04.buff[4] :=  ((p.tx.custom.gn.data32  and $00FF) shr 0);
     c.tx.cust.pack04.buff[5] :=  ((p.tx.custom.gn.data32  and $FF00) shr 8);

     c.tx.cust.pack04.buff[6] :=  ((p.tx.custom.gn.data33  and $00FF) shr 0);
     c.tx.cust.pack04.buff[7] :=  ((p.tx.custom.gn.data33  and $FF00) shr 8);

     //------------------------------------------------------------------------
     CAN_Write(  c.tx.cust.pack04.id , @c.tx.cust.pack04.buff, 8);
    end;

  end;
  //----------------------------------------------------------------------------
  if (d.time.thin_can100 < 4) then inc(d.time.thin_can100) else  d.time.thin_can100 := 0;

end;


//==============================================================================
procedure can_transmiss();
begin
   //---------------------------------------------------------------------------
  can_tx_control_protocol();
  //----------------------------------------------------------------------------
  if (p.tx.custom.cntr.execute = 1) then begin
    if (d.time.event100ms = true) then begin
      can_tx_control_customiz();
    end;
  end;
end;






end.
