{Ahilles
 E-Mail: Ahilles1806@rambler.ru
}
{
  ZLibAdvTools
  ^^  ^  ^
  ZL  A  T

  ZLAT
}

unit ZLibAdvTools;

interface

uses gauges,zlib,forms;

function ZLATCompressFile(
                          sourcefile:string;
                          destinationfile:string;
                          compressRatio:integer;
                          refreshWnd:boolean;
                          needcreate:boolean;
                          progress:Pointer;
                          min_value:integer;
                          max_value:integer;
                          PositionPropName:string='Progress'
                          ):integer;
function ZLATdecompressfile(
                            sourcefile:string;
                            destinationfile:string;
                            refreshWnd:boolean;
                            needcreate:boolean;
                            progress:Pointer;
                            min_value:integer;
                            max_value:integer;
                            PositionPropName:string='Progress'
                            ):boolean;

implementation
uses classes,sysutils, TypInfo;

const
 buffer_size=1024;

function ZLATcompressfile;
var
 source,dest:TFileStream;
 CompresSstream:TCompressionStream;
 bytesread:integer;
 bytes_read_d:int64;
 mainbuffer:array[0..buffer_size-1] of char;
 zena_byta:real;
 interval:integer;
 needProgress:boolean;
begin
 needProgress:=false;
 source:=TFileStream.Create(sourcefile,fmOpenRead);
 if needcreate then
  dest:=TFileStream.Create(destinationfile,fmCreate)
               else
  dest:=TFileStream.Create(destinationfile,fmOpenWrite);
 if compressRatio=0 then
  CompresSstream:=TCompressionStream.Create(clDefault,dest);
 if compressRatio=1 then
  CompresSstream:=TCompressionStream.Create(clFastest,dest);
 if compressRatio=2 then
  CompresSstream:=TCompressionStream.Create(clMax,dest);
 if compressRatio>2 then
  CompresSstream:=TCompressionStream.Create(clDefault,dest);
 interval:=max_value-min_value;
 if source.Size<>0 then
 zena_byta:=interval/source.Size
                   else
 zena_byta:=interval;
 Bytes_read_d:=0;
 if progress<>nil then needProgress:=true;
 if needprogress then
  begin
   SetPropValue(TObject(progress^),PositionPropName,min_value);
  end;
  try
   repeat
    bytesread:=source.Read(mainbuffer,buffer_size);
    CompresSstream.Write(mainbuffer,bytesread);
    Bytes_read_d:=bytes_read_d+bytesread;
    if refreshWnd then
     Application.ProcessMessages;
    if needprogress then
     begin
       SetPropValue(TObject(progress^),PositionPropName,min_value+round(Bytes_read_d*zena_byta));
     end;
   until bytesread=0;
  except
   Result:=0;
   CompresSstream.free;
   source.Free;
   dest.Free;
   exit;
  end;
 CompresSstream.free;
 if source.Size<>0 then
 result:=round((100*dest.Size)/source.size)
                   else
 result:=dest.Size;
 source.Free;
 dest.Free;
end;

function ZLATdecompressfile;
var
  source,dest:TFileStream;
  decompressStream:TDecompressionStream;
  bytesread:integer;
  bytesread_d:int64;
  interval:integer;
  zena_byta:real;
  mainbuffer:array[0..buffer_size-1] of char;
  needProgress:boolean;
begin
 needprogress:=false;
 source:=TFileStream.Create(sourcefile,fmOpenRead);
 if needcreate then
  dest:=TFileStream.Create(destinationfile,fmCreate)
               else
  dest:=TFileStream.Create(destinationfile,fmOpenWrite);
 decompressStream:=TDecompressionStream.Create(source);
 result:=true;
 interval:=max_value-min_value;
 zena_byta:=interval/source.Size;
 bytesread_d:=0;
 if progress<>nil then needProgress:=true;
 if needprogress then
  begin
    SetPropValue(TObject(progress^),PositionPropName,min_value);
  end;
 try
  repeat
   bytesread:=decompressStream.Read(mainbuffer,buffer_size);
   dest.Write(mainbuffer,bytesread);
   bytesread_d:=bytesread_d+bytesread;
   if refreshWnd then
     Application.ProcessMessages;
   if needprogress then
    begin
     if bytesread_d>source.Size then
      begin
       zena_byta:=interval/bytesread_d;
      end;
     SetPropValue(TObject(progress^),PositionPropName,min_value+round(bytesread_d*zena_byta));
    end;
  until bytesread<buffer_size;
 except
  result:=false;
  decompressStream.Free;
  source.Free;
  dest.Free;
  exit;
 end;
 decompressStream.Free;
 source.Free;
 dest.Free;
end;

end.   
