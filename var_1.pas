unit var_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    ccc:string;               // ����੾���form �����ҹ��
  public
    { Public declarations }
    bbb:string;         // ����ء form ��� use unite ������¡���ͧ��ҧ ����form
    const
    pp='1.5';
  end;

var
  Form1: TForm1;
  aaa:string;    // ����ء form ��� use unit ���¡�����

const
  pi='3.5';

implementation

uses var_2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
aaa:='111';
bbb:='222';
ccc:='333';
showmessage(aaa);
showmessage(bbb);
showmessage(ccc);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form2.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
showmessage(pi);
end;

end.
