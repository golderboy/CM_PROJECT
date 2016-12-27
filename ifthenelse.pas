unit ifthenelse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tifelse_f = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ifelse_f: Tifelse_f;

implementation

{$R *.dfm}

procedure Tifelse_f.Button1Click(Sender: TObject);
begin
if edit1.Text='5' then showmessage('��ҡѺ 5 ��ԧ') else showmessage('�����ҡѺ 5');

end;

procedure Tifelse_f.Button2Click(Sender: TObject);
begin
if (edit1.Text='5') and (edit2.Text='5') then showmessage('����ͧ ��ҡѺ 5 ') else showmessage('���������͹�');

end;

procedure Tifelse_f.Button3Click(Sender: TObject);
begin
if (edit1.Text='5') or (edit2.Text='5') then showmessage('��ҡѺ 5 ') else showmessage('���������͹�');

end;

procedure Tifelse_f.Edit1KeyPress(Sender: TObject; var Key: Char);
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

procedure Tifelse_f.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9', DecimalSeparator]) then begin
    ShowMessage('��سҡ�͡����Ţ : ' + Key);
    Key := #0;
  end
  else if (Key = DecimalSeparator) and
          (Pos(Key, Edit2.Text) > 0) then begin
    ShowMessage(' ��سҡ�͡����Ţ: twice ' + Key);
    Key := #0;
  end;
end;

end.
