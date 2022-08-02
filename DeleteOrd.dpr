program DeleteOrd;

uses
  Vcl.Forms,
  Login in 'Login.pas' {Form3},
  Delete in 'Delete.pas' {Form4},
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
