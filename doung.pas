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
    0 : cxmemo1.Text := '1 ชอบเป็นจุดเด่นเชียวนะคุณถ้ามีคนสนใจล่ะก็ถึงไหนถึงกันสิถ้าใครทำเป็นว่าไม่สนใจก็จะฉุนขึ้นมาทันที';
    1 : cxmemo1.Text := '2 คุณเม้าท์เก่งมากในหมู่เพื่อนๆเรียกว่าเป็นจุดศูนย์กลางในการพูดคุยเลยทีเดียว เวลาจับกลุ่มคุยกันทีพูดกันได้เป็นชั่วโมงเชียวล่ะ';
    3 : cxmemo1.Text := '4 คุณชอบเป็นฝ่ายฟังเสียมากกว่าทุกคนจึงชอบพูดคุยถึงปัญหาต่างๆ ให้ฟังอยู่เรื่อยแต่บางทีการที่วิจารณ์คนอื่นตรงไปตรงมาก็อาจทำให้คนไม่ชอบ คุณบ้างเหมือนกัน';
    2 : cxmemo1.Text := '3 คุณเป็นคนสนุกสนานเวลาพูดชอบออกท่าทางประกอบทำให้เพื่อนๆเข้าใจและคล้อยตามไปด้วยดึงดูดความสนใจผู้คนได้ดี';
   else
   begin
      showmessage('ไม่ได้เลือกกลุ๊ปเลือด');
      cxmemo1.Visible  := false;
   end;
   end;
end;

procedure Tdoung_f.BitBtn2Click(Sender: TObject);
begin
cxmemo2.Visible := true;
cxmemo1.Visible := false;
  case ComboBox2.ItemIndex of
    0 : cxmemo2.Text := '1 ทะเยอทะยาน จริงจัง ชอบสั่งสอน รักการเรียนรู้';
    1 : cxmemo2.Text := '2 ช่างฝัน รักทั้งโลกแห่งความเป็นจริงและโลกแห่งความฝัน มีปฎิภาณไหวพริบดี' ;
    2 : cxmemo2.Text := '3 มีเสน่ห์ เป็นที่รักของผู้อื่น ขี้อาย สงบเสงี่ยม ลึกลับ ซื่อตรง เอื้อเฟื้อเผื่อแผ่ เห็นอกเห็นใจ';
    3 : cxmemo2.Text := '4 กระตือรือร้น ไม่ชอบหยุดนิ่งอยู่กับที่ เข้มแข็งเด็ดขาด แต่กลับใจอ่อนอย่างไม่น่าเชื่อ';
    4 : cxmemo2.Text := '5 ดื้อดึง ใจแข็ง กล้าแกร่ง ตั้งใจมั่น แรงจูงใจสูง โกรธง่าย แต่มีเสน่ห์ ชอบทำตัวเป็นจุดสนใจ';
    5 : cxmemo2.Text := '6 คิดการณ์ไกล หัวก้าวหน้า ใจอ่อนกับคนใจดี สุภาพ พูดจาเบา มีความคิดสร้างสรรค์มากมาย อ่อนไหว';
    6 : cxmemo2.Text := '7 อยู่ด้วยแล้วสนุก เก็บความลับได้ แต่ยากที่จะเข้าถึงตัวตนที่แท้จริง เงียบถ้าไม่มีอะไรตื่นเต้น';
    7 : cxmemo2.Text := '8 ชอบเรื่องตลก มีเสน่ห์ สุภาพอ่อนโยน ใส่ใจคนอื่น กล้าหาญไม่เคยกลัวอะไรทั้งสิ้น';
    8 : cxmemo2.Text := '9 สุภาพอ่อนโยน ประนีประนอม ระวังตัวแจ วางขั้นตอนชีวิตอย่างมีแบบแผน ชอบตอกย้ำจุดอ่อนคนอื่น';
    9 : cxmemo2.Text := '10 รักการพูดคุยเป็นชีวิตจิตใจ รักทุกคนที่รักตัวเอง รักการเจาะเข้าถึงจุดศูนย์กลางของเรื่องต่างๆ';
    10 : cxmemo2.Text := '11 ความคิดล้านแปดเต็มหัว ยากที่จะเข้าถึง คิดการณ์ล้ำหน้า โดดเด่น หัวไว ใส่ใจและชอบให้คำแนะนำ';
    11 : cxmemo2.Text := '12 ซื่อสัตย์และเอื้อเฟื้อเผื่อแผ่ กระตือรือร้นในการแข่งขัน ชอบการมีปฎิสัมพันธ์กับผู้อื่น แต่ไม่ค่อยมีความอดทน';
   else
   begin
    showmessage('ไม่ได้เลือกเดือนเกิด');
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
