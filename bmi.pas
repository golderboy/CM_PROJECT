unit bmi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, jpeg, ExtCtrls, StdCtrls, Buttons, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxLabel, RzButton, JvExControls, JvNavigationPane;

type
  Tbmi_f = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    hi_t: TcxSpinEdit;
    btn1: TRzBitBtn;
    wi_t: TcxSpinEdit;
    chk_f: TRadioGroup;
    data_l: TcxLabel;
    panal1: TPanel;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure hi_tKeyPress(Sender: TObject; var Key: Char);
    procedure wi_tKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bmi_f: Tbmi_f;

implementation

{$R *.dfm}

procedure Tbmi_f.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure Tbmi_f.btn1Click(Sender: TObject);
var bmi : string;
begin
if hi_t.Value = 0.00 then
  begin
    hi_t.Value := 1.00;
  end;
if wi_t.Value = 00.00  then
  begin
    wi_t.Value := 1.00;
  end;
//begin
//btn1.Enabled := False;
//hi_t.Value := 1.00;
//wi_t.Value := 1.00;
//end;

    //�ӹǹ  ASIAN
    if inttostr(chk_f.ItemIndex) = '0' then
       begin
       bmi := formatfloat('0.##',wi_t.Value/(hi_t.Value*hi_t.Value ) );
if ( (bmi >= formatfloat('0.##',13.00)) OR (bmi <= formatfloat('0.##',18.50)) ) then
  data_l.Caption := ' ���Ѿ�� '+bmi+' ���仹��' ;
if ( (bmi >= formatfloat('0.##',18.50)) AND (bmi <= formatfloat('0.##',22.99)) ) then
  data_l.Caption := ' ���Ѿ�� '+bmi+' ����'  ;
if ( (bmi >= formatfloat('0.##',23.00)) AND (bmi <= formatfloat('0.##',24.99)) )then
  data_l.Caption := ' ���Ѿ�� '+bmi+' ��ǹ 1';
if ( (bmi >= formatfloat('0.##',25.00)) AND (bmi <= formatfloat('0.##',29.99)) )then
  data_l.Caption := ' ���Ѿ�� '+bmi+' ��ǹ 2' ;
if ( (bmi >= formatfloat('0.##',30.00)) AND (bmi <= formatfloat('0.##',39.99)) )then
  data_l.Caption := ' ���Ѿ�� '+bmi+' ��ǹ 3';
if ( (bmi >= formatfloat('0.##',40.00)) OR (bmi < formatfloat('0.##',13.00)) ) then
  data_l.Caption := ' ���Ѿ�� '+bmi+' �͡ࡳ��' ;
      end;
    if inttostr(chk_f.ItemIndex) = '1' then
       begin
       bmi := formatfloat('0.##',wi_t.Value/(hi_t.Value*hi_t.Value ) );
if ( (bmi >= formatfloat('0.##',13.00)) OR (bmi <= formatfloat('0.##',18.50)) ) then
  data_l.Caption := ' ���Ѿ�� '+bmi+' ���仹��' ;
if ( (bmi >= formatfloat('0.##',18.50)) AND (bmi <= formatfloat('0.##',24.99)) ) then
  data_l.Caption := ' ���Ѿ�� '+bmi+' ����'  ;
if ( (bmi >= formatfloat('0.##',25.00)) AND (bmi <= formatfloat('0.##',29.99)) )then
  data_l.Caption := ' ���Ѿ�� '+bmi+' ��ǹ 1';
if ( (bmi >= formatfloat('0.##',30.00)) AND (bmi <= formatfloat('0.##',34.99)) )then
  data_l.Caption := ' ���Ѿ�� '+bmi+' ��ǹ 2' ;
if ( (bmi >= formatfloat('0.##',35.00)) AND (bmi <= formatfloat('0.##',39.99)) )then
  data_l.Caption := ' ���Ѿ�� '+bmi+' ��ǹ 3';
if ( (bmi >= formatfloat('0.##',40.00)) OR (bmi < formatfloat('0.##',13.00)) ) then
  data_l.Caption := ' ���Ѿ�� '+bmi+' �͡ࡳ��' ;
      end;
end;

procedure Tbmi_f.hi_tKeyPress(Sender: TObject; var Key: Char);
begin
  if (hi_t.Value = 0.00) AND (hi_t.Value >= 10.00) then
  begin
      if not (Key in [#8, '0'..'9', DecimalSeparator]) then begin
      ShowMessage('��سҡ�͡����Ţ : ' + Key);
      Key := #0;
      end
      else if (Key = DecimalSeparator) and
              (Pos(Key, hi_t.Value) > 0) then begin
        ShowMessage(' ��سҡ�͡����Ţ: twice ' + Key);
        Key := #0;
      end;
  btn1.Enabled := False;
  end
  else
  begin
    btn1.Enabled := True;
  end;
end;

procedure Tbmi_f.RzBitBtn1Click(Sender: TObject);
begin
 hi_t.Clear;
 wi_t.Clear;
 btn1.Enabled := False;
end;

procedure Tbmi_f.wi_tKeyPress(Sender: TObject; var Key: Char);
begin
  if (wi_t.Value = 0.00) AND (wi_t.Value >= 250.00) then
  begin
      if not (Key in [#8, '0'..'9', DecimalSeparator]) then begin
      ShowMessage('��سҡ�͡����Ţ : ' + Key);
      Key := #0;
      end
      else if (Key = DecimalSeparator) and
              (Pos(Key, wi_t.Value) > 0) then begin
        ShowMessage(' ��سҡ�͡����Ţ: twice ' + Key);
        Key := #0;
      end;
  btn1.Enabled := False;
  end
  else
  begin
    btn1.Enabled := True;
  end;
end;

end.
