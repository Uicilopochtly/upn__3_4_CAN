unit urmd_display;

interface

uses umain , udata , urmd , urmd_customization , urmd_data , urmd_save , Graphics;

procedure prmd_display;

implementation

procedure prmd_display;
begin
//---------------------- colors ----------------------------------------------
  //--------- vn
  if (p.tx.custom.cntr.enable_vn = 1) then begin
    frmRmd.GroupBox2.Color := clBlue;

    if (p.tx.custom.cntr.mask.b20 = 1) then begin
      frmRmd.GroupBox4.Color := clBlue;
    end else begin
      frmRmd.GroupBox4.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b21 = 1) then begin
      frmRmd.GroupBox5.Color := clBlue;
    end else begin
      frmRmd.GroupBox5.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b22 = 1) then begin
      frmRmd.GroupBox6.Color := clBlue;
    end else begin
      frmRmd.GroupBox6.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b23 = 1) then begin
      frmRmd.GroupBox7.Color := clBlue;
    end else begin
      frmRmd.GroupBox7.Color := clBtnFace;
    end;




  end else begin
    frmRmd.GroupBox2.Color := clBtnFace;

    frmRmd.GroupBox4.Color := clBtnFace;
    frmRmd.GroupBox5.Color := clBtnFace;
    frmRmd.GroupBox6.Color := clBtnFace;
    frmRmd.GroupBox7.Color := clBtnFace;


  end;





  //--------- gn
  if (p.tx.custom.cntr.enable_gn = 1) then begin
    frmRmd.GroupBox3.Color  := clGreen;

    if (p.tx.custom.cntr.mask.b30 = 1) then begin
      frmRmd.GroupBox8.Color := clGreen;
    end else begin
      frmRmd.GroupBox8.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b31 = 1) then begin
      frmRmd.GroupBox9.Color := clGreen;
    end else begin
      frmRmd.GroupBox9.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b32 = 1) then begin
      frmRmd.GroupBox10.Color := clGreen;
    end else begin
      frmRmd.GroupBox10.Color := clBtnFace;
    end;

    if (p.tx.custom.cntr.mask.b33 = 1) then begin
      frmRmd.GroupBox11.Color := clGreen;
    end else begin
      frmRmd.GroupBox11.Color := clBtnFace;
    end;





  end else begin
    frmRmd.GroupBox3.Color := clBtnFace;

    frmRmd.GroupBox8.Color := clBtnFace;
    frmRmd.GroupBox9.Color := clBtnFace;
    frmRmd.GroupBox10.Color := clBtnFace;
    frmRmd.GroupBox11.Color := clBtnFace;



  end;
  //----------------------------------------------------------------------------

end;


end.
