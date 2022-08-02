unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    editip: TEdit;
    editport: TEdit;
    labelip: TLabel;
    labelport: TLabel;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  var   direct,eport,eip: String;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
begin
    if direct='' then
    begin
      showmessage('Вы не выбрали базу');
      Button3.Click ;
      exit;
    end
    else
    begin
      if (editport.Visible=True) then
      begin
        if editport.text='' then
        begin
          showmessage('Будет выбран Порт по умолчанию');
          if editip.text='' then
          begin
            showmessage('Укажите IP адрес');
            exit
          end
          else
          begin
             eport:=editport.text;
             eip:=editip.text;
             Form1.Visible:=False;
             ShowMessage('Теперь вы можете удалять')
          end;
        end

        else
        begin
          if editip.Text='' then
          begin
            showmessage('Укажите IP адрес');
            exit
          end
          else
          begin
             eport:=editport.text;
             eip:=editip.text;
             Form1.Visible:=False;
             ShowMessage('Теперь вы можете удалять')
          end;
        end;
      end
      else
      begin
        Form1.Visible:=False;
        ShowMessage('Теперь вы можете удалять')
      end;
    end;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    if(editport.Visible=false)  then
    begin
      editport.Visible:=True;
      editip.Visible:=True;
      labelport.Visible:=True;
      labelip.Visible:=True;
    end
    else
    begin
      editport.Visible:=False;
      editip.Visible:=False;
      labelport.Visible:=False;
      labelip.Visible:=False;
    end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    if OpenDialog1.Execute then
      direct:=OpenDialog1.FileName;
end;

end.
