unit mian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tmain_f = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main_f: Tmain_f;

implementation

uses bmi, doung, cid, caseof, fordo, ifthenelse, var_1, whiledo;

{$R *.dfm}

procedure Tmain_f.Button1Click(Sender: TObject);
begin
close;
end;

procedure Tmain_f.Button2Click(Sender: TObject);
begin
            bmi_f := Tbmi_f.Create(application);
            bmi_f.ShowModal;
end;

procedure Tmain_f.Button3Click(Sender: TObject);
begin
            cid_f := Tcid_f.Create(application);
            cid_f.ShowModal;
end;

procedure Tmain_f.Button4Click(Sender: TObject);
begin
            doung_f := Tdoung_f.Create(application);
            doung_f.ShowModal;
end;

procedure Tmain_f.Button5Click(Sender: TObject);
begin
            case_f := Tcase_f.Create(application);
            case_f.ShowModal;
end;

procedure Tmain_f.Button6Click(Sender: TObject);
begin
            for_f := Tfor_f.Create(application);
            for_f.ShowModal;
end;

procedure Tmain_f.Button7Click(Sender: TObject);
begin
            ifelse_f := Tifelse_f.Create(application);
            ifelse_f.ShowModal;
end;

procedure Tmain_f.Button8Click(Sender: TObject);
begin
            Form1 := TForm1.Create(application);
            Form1.ShowModal;
end;

procedure Tmain_f.Button9Click(Sender: TObject);
begin
            whild_f := Twhild_f.Create(application);
            whild_f.ShowModal;
end;

end.
