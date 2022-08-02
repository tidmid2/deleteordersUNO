unit Delete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, IniFiles,
  FireDAC.DApt.Intf, FireDAC.Comp.Client, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, DateUtils,ShellApi ;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    FDConnection1: TFDConnection;
    FDCommand1: TFDCommand;
    Timer1: TTimer;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
   uses login,unit1;
{$R *.dfm}

  var
  //ini: TIniFile;
  Safe: String;
  //s: string;
  mydate: TDateTime;
procedure TForm4.Button1Click(Sender: TObject);
begin
  if Form1.direct='' then
        begin
          Showmessage('Сначала выберите базу') ;
           Button2.Click;
        end
  else
  begin
  if MessageDlg('Вы точно уверены что хотите удалить продажи? Удаленные данные не вернуть!',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
        myDate:=now;
        Safe:= FormatDateTime('dd-mm-yyyy-hh_mm', myDate);

        {if OpenDialog1.Execute then
        direct:=OpenDialog1.FileName;  }


       //s:=  'C:\UNO\Database\'+Safe+'.AKS';
       //showmessage(s);
        ShellExecute( 0,'OPEN',PWideChar('C:\UNO\Firebird\gbak.exe'),
              PWideChar('-b -g -se 127.0.0.1:service_mgr '+FORM1.DIRECT+' '+ExtractFilePath(FORM1.DIRECT)+Safe+'.fdb'+' -user SYSDBA -pass masterkey'),nil,SW_SHOWNORMAL);


       // WinExec(PAnsiChar(' cd C:\UNO_4\Firebird && gbak -b -g -se 127.0.0.1:service_mgr '+FORM1.DIRECT+' '+ExtractFilePath(FORM1.DIRECT)+Safe+'.fdb'+' -user SYSDBA -pass masterkey'),0);
       // WinExec(PAnsiChar('cmd /c gbak -b -g -se 127.0.0.1:service_mgr '+FORM1.DIRECT+' '+ExtractFilePath(FORM1.DIRECT)+Safe+'.fdb'+' -user SYSDBA -pass masterkey'),0);

       //просто копирование файла
        {if CopyFile(PChar(Form1.direct),PChar(s),true) then
        begin
          ShowMessage('Файл успешно скопирован!');
        end
        else
        begin
          ShowMessage('Подождите минуту перед тем как делать второе удаление');
          Timer1.Enabled:=True;
        end;  }
        //Включение коннекта и данных затем запуска процесса удаления и таймер для завершения
        if Form1.eip<>'' then
           FDConnection1.Params.Add('Server='+Form1.eip+'');
         //  FDConnection1.Params.Protocol:=iptcpip;
        if Form1.eport<>'' then
           FDConnection1.Params.Add('port:='+Form1.eport+'');

        FDConnection1.Params.Database:=Form1.direct;
        FDConnection1.Connected:=True;
        FDCommand1.Execute;
        Timer1.Enabled:=True;

      //ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
   end;
  end;

end;
procedure TForm4.Button2Click(Sender: TObject);
begin
    Form1.Visible:=True;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
    //Form3.Close();
    //Form4.Close();
    Application.Terminate;
end;



end.
