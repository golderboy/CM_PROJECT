unit var_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses var_1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
showmessage(aaa);
showmessage(form1.bbb);
end;

procedure TForm2.Button2Click(Sender: TObject);
var aaa,bbb:string;
begin
aaa:='888';
bbb:='999';
showmessage(aaa);
showmessage(bbb);
showmessage(form1.bbb);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
showmessage(pi);
showmessage(form1.pp);
end;

end.
