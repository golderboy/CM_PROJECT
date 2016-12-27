unit fordo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfor_f = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  for_f: Tfor_f;

implementation

{$R *.dfm}

procedure Tfor_f.Button1Click(Sender: TObject);
var ifor:integer;
begin
 for ifor := 0 to 5 do
 memo1.Lines.Add('number'+inttostr(ifor));
end;

procedure Tfor_f.Button2Click(Sender: TObject);
begin
memo1.Clear;
end;

procedure Tfor_f.Button3Click(Sender: TObject);
var ifor:integer;
begin
IF edit1.Text <> '' then
    begin
      for ifor := 0 to strtoint(edit1.Text) do
     memo1.Lines.Add('number'+inttostr(ifor));
    end
    else
    begin
    showmessage('��عҡ�͡�����š�͹');
    edit1.setfocus;
    end;

end;

procedure Tfor_f.Button4Click(Sender: TObject);
var ifor:integer;
begin
 for ifor := 5 downto 0 do
 memo1.Lines.Add('number'+inttostr(ifor));
end;

procedure Tfor_f.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9', DecimalSeparator]) then begin
    ShowMessage('��سҡ�͡����Ţ : ' + Key);
    Key := #0;
  end
  else if (Key = DecimalSeparator) and
          (Pos(Key, Edit1.Text) > 0) then begin
    ShowMessage(' ��سҡ�͡����Ţ: twice ' + Key);
    Key := #0;
  end;
end;

end.
