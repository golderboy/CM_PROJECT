unit doung;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, StdCtrls, Buttons, cxTextEdit, cxMemo, cxLabel, ComCtrls,
  RzButton, ExtCtrls, JvExControls, JvNavigationPane;

type
  Tdoung_f = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ComboBox1: TComboBox;
    cxLabel1: TcxLabel;
    cxMemo1: TcxMemo;
    BitBtn1: TBitBtn;
    TabSheet2: TTabSheet;
    cxMemo2: TcxMemo;
    cxLabel2: TcxLabel;
    ComboBox2: TComboBox;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  doung_f: Tdoung_f;

implementation

{$R *.dfm}

procedure Tdoung_f.BitBtn1Click(Sender: TObject);
begin
cxmemo1.Visible := true;
cxmemo2.Visible := false;
  case ComboBox1.ItemIndex of
    0 : cxmemo1.Text := '1 �ͺ�繨ش�����ǹФس����դ�ʹ���С�֧�˹�֧�ѹ�Զ���÷���������ʹ㨡�Щع����ҷѹ��';
    1 : cxmemo1.Text := '2 �س���ҷ����ҡ��������͹����¡����繨ش�ٹ���ҧ㹡�þٴ�����·����� ���ҨѺ�������¡ѹ�վٴ�ѹ���繪�������������';
    3 : cxmemo1.Text := '4 �س�ͺ�繽��¿ѧ�����ҡ���ҷء���֧�ͺ�ٴ��¶֧�ѭ�ҵ�ҧ� ���ѧ������������ҧ�ա�÷���Ԩ�ó줹��蹵ç仵ç�ҡ��Ҩ����餹���ͺ �س��ҧ����͹�ѹ';
    2 : cxmemo1.Text := '3 �س�繤�ʹءʹҹ���Ҿٴ�ͺ�͡��ҷҧ��Сͺ��������͹�������Ф���µ��仴��´֧�ٴ����ʹ㨼�餹���';
   else
   begin
      showmessage('��������͡�������ʹ');
      cxmemo1.Visible  := false;
   end;
   end;
end;

procedure Tdoung_f.BitBtn2Click(Sender: TObject);
begin
cxmemo2.Visible := true;
cxmemo1.Visible := false;
  case ComboBox2.ItemIndex of
    0 : cxmemo2.Text := '1 ����ͷ��ҹ ��ԧ�ѧ �ͺ����͹ �ѡ������¹���';
    1 : cxmemo2.Text := '2 ��ҧ�ѹ �ѡ����š��觤����繨�ԧ����š��觤����ѹ �ջ���ҳ��Ǿ�Ժ��' ;
    2 : cxmemo2.Text := '3 ���ʹ��� �繷���ѡ�ͧ������ ������ ʧ��ʧ���� �֡�Ѻ ���͵ç ��������������� ���͡����';
    3 : cxmemo2.Text := '4 ��е������� ���ͺ��ش�������Ѻ��� ������索Ҵ ���Ѻ���͹���ҧ���������';
    4 : cxmemo2.Text := '5 ���ʹ֧ ��� ������� ������� �ç�٧��٧ �ø���� �����ʹ��� �ͺ�ӵ���繨شʹ�';
    5 : cxmemo2.Text := '6 �Դ��ó��� ��ǡ���˹�� ���͹�Ѻ��㨴� ���Ҿ �ٴ���� �դ����Դ���ҧ��ä��ҡ��� ��͹���';
    6 : cxmemo2.Text := '7 �����������ʹء �纤����Ѻ�� ���ҡ������Ҷ֧��ǵ�������ԧ ��º�����������õ����';
    7 : cxmemo2.Text := '8 �ͺ����ͧ�š ���ʹ��� ���Ҿ��͹�¹ ���㨤���� �����ҭ����¡������÷�����';
    8 : cxmemo2.Text := '9 ���Ҿ��͹�¹ ��йջ�й�� ���ѧ���� �ҧ��鹵͹���Ե���ҧ��ẺἹ �ͺ�͡��Өش��͹�����';
    9 : cxmemo2.Text := '10 �ѡ��þٴ����繪��Ե�Ե� �ѡ�ء������ѡ����ͧ �ѡ��������Ҷ֧�ش�ٹ���ҧ�ͧ����ͧ��ҧ�';
    10 : cxmemo2.Text := '11 �����Դ��ҹỴ������ �ҡ������Ҷ֧ �Դ��ó����˹�� ⴴ�� ����� ������Ъͺ�����й�';
    11 : cxmemo2.Text := '12 �����ѵ�������������������� ��е�������㹡���觢ѹ �ͺ����ջ������ѹ��Ѻ������ ���������դ���ʹ��';
   else
   begin
    showmessage('��������͡��͹�Դ');
    cxmemo2.Visible  := false;
   end;
   end;
end;

procedure Tdoung_f.FormShow(Sender: TObject);
begin
cxmemo1.Visible := false;
cxmemo2.Visible := false;
end;

procedure Tdoung_f.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
