unit can;

interface

uses StdCtrls;

type
  TArrB = array[0..7] of byte;
  PArrB = ^TArrB;

type
  TCANRxCallBack = procedure(ID: cardinal; Buf: PArrB; ByteNum: cardinal);stdcall;

type
  TCANErrCallBack = procedure(Err: integer);stdcall;


function CAN_Open(Log: TMemo; RxCallBack: TCANRxCallBack; CANErrCallBack: TCANErrCallBack): integer; stdcall;
function CAN_Write(ID: cardinal; Buf: PArrB; ByteNum: cardinal): integer; stdcall;
procedure CAN_Close(); stdcall;

implementation

function CAN_Open(Log: TMemo; RxCallBack: TCANRxCallBack;  CANErrCallBack: TCANErrCallBack):integer ; stdcall; external 'can.dll';
function CAN_Write(ID: cardinal; Buf: PArrB; ByteNum: cardinal):integer ; stdcall; external 'can.dll';
procedure CAN_Close(); stdcall; external 'can.dll';

end.
