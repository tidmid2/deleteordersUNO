unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
   uses delete;
{$R *.dfm}

procedure TForm3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then
Button1.Click; // или Button1Click(Self);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
    //keybd_event(VK_RETURN, 0, 0, 0);
    //keybd_event(VK_RETURN, 0, KEYEVENTF_KEYUP, 0);
     if (Edit1.Text='aksau') and (Edit2.Text='3142951') then
     begin
         Form4.Visible:=True;
         Form3.Visible:=False;
     end
     else
     begin
       ShowMessage('Неправильный логин или пароль!')
     end;

end;

end.
