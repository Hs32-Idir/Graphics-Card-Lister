program GraphicsCard;

{$APPTYPE CONSOLE}

{
  Hello EveryBody,
   In This simple delphi source i wanna show you how to make a simple procedure
   to generate the list of installed graphic cards in your PC.

   Visite at : http://WwW.Hs32-Idir.Tk
}

uses Windows;

function IntToStr(Int:integer):String;
begin
  Str(Int,Result);
end;

var 
  lpDisplayDevice : TDisplayDevice;
  dwFlags : DWORD;
  iDevNum : DWORD;
begin
  WriteLn('Graphics Card Lister : ');
  WriteLn('http://wWw.Hs32-Idir.Tk');
  WriteLn('');
  lpDisplayDevice.cb := SizeOf(lpDisplayDevice);
  dwFlags := 0;
  iDevNum := 0;
  
  while EnumDisplayDevices(nil, iDevNum, lpDisplayDevice , dwFlags) do
  begin
    Inc(iDevNum);
    WriteLn(lpDisplayDevice.DeviceName + ' * Under Flag : ' + IntToStr(lpDisplayDevice.StateFlags));
    WriteLn('* Card Description : ' + lpDisplayDevice.DeviceString); 
  end;
  Readln;

end.