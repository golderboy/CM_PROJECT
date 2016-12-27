unit whiledo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Twhild_f = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  whild_f: Twhild_f;

implementation

{$R *.dfm}

procedure Twhild_f.Button1Click(Sender: TObject);
begin
while length(edit1.Text)<5 do
  edit1.Text:='0'+edit1.Text;
end;

end.
