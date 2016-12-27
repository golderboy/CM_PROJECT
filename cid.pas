unit cid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ExtCtrls, cxTextEdit, StdCtrls, Buttons, cxLabel,
  RzButton, JvExControls, JvNavigationPane;

type
  Tcid_f = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    btn_chk: TBitBtn;
    cid_input: TcxTextEdit;
    cxLabel2: TcxLabel;
    panal1: TPanel;
    BitBtn2: TBitBtn;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure btn_chkClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cid_inputKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cid_f: Tcid_f;

implementation

{$R *.dfm}

procedure Tcid_f.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure Tcid_f.btn_chkClick(Sender: TObject);
   var chk1,chk2,sum1,sum2 : integer;
   var sum3 : string;
   arr1 :array[1..12]  of integer;
   arr2 :array[1..12]  of integer;
begin
while length(cid_input.Text) <=12 do
  begin
    cid_input.Text :='0'+cid_input.Text;
  end;

          for chk1 := 1 to 12 do
                //cxMemo1.Lines.Add(cid_input.Text[chk1])  ;
                arr1[chk1] :=  strtoint(cid_input.Text[chk1]);
          for chk2 := 1 to 12 do
                //cxMemo1.Lines.Add( inttostr(arr1[chk2])+ ' + '+inttostr(chk2) )  ;
                begin
                arr2[chk2] := (arr1[chk2]*(14-chk2) );
                //cxMemo1.Lines.Add( inttostr(arr1[chk2])+' * '+inttostr( (14-chk2) ) );
                //cxMemo1.Lines.Add(inttostr(arr2[chk2]));
                end;
                sum1 := 0;
          for chk2 := 1 to 12 do
                //cxMemo1.Lines.Add( inttostr(arr1[chk2])+ ' + '+inttostr(chk2) )  ;
                begin
                sum1 := sum1+(arr2[chk2]) ;
                //cxMemo1.Lines.Add( inttostr(arr1[chk2])+' * '+inttostr( (14-chk2) ) );
                //cxMemo1.Lines.Add(inttostr(arr2[chk2]));
                end;
                sum2 := (11 -(sum1 mod 11) );
                sum3 := Copy(inttostr(sum2),1,1);
                 // if strtoint(length(sum2)) > 1 then
                 //   begin
                 //     sum3 := inttostr(sum2);
                 //   end;
                //showmessage(inttostr(sum2));
                cxLabel2.Visible := true;
                cxLabel2.Caption := sum3;

end;

procedure Tcid_f.cid_inputKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9', DecimalSeparator]) then begin
    ShowMessage('��سҡ�͡����Ţ : ' + Key);
    cid_input.Clear;
    Key := #0;
  end
  else if (Key = DecimalSeparator) and
          (Pos(Key, cid_input.Text) > 0) then begin
    ShowMessage(' ��سҡ�͡����Ţ: twice ' + Key);
    cid_input.Clear;
    Key := #0;
  end;

  if length(cid_input.Text) > 12 then
    begin
    ShowMessage(' ��سҡ�͡����Ţ 12 ��ѡ ');
    cid_input.Clear;
    end;

end;

procedure Tcid_f.RzBitBtn1Click(Sender: TObject);
begin
cxLabel2.Visible := False;
cid_input.Clear;
end;

end.
