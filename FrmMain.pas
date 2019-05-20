unit FrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    EdtVisor: TEdit;
    BtnNum2: TButton;
    BtnNum1: TButton;
    BtnNum4: TButton;
    BtnNum3: TButton;
    BtnNum5: TButton;
    BtnNum6: TButton;
    BtnNum7: TButton;
    BtnNum8: TButton;
    BtnNum9: TButton;
    BtnNum0: TButton;
    BtnEqual: TButton;
    BtnSub: TButton;
    BtnMult: TButton;
    BtnDiv: TButton;
    BtnSom: TButton;
    BtnClear: TButton;
    procedure BtnClearClick(Sender: TObject);
    procedure BtnNum1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnClearClick(Sender: TObject);
begin
  EdtVisor.Text := '0';
end;

procedure TForm1.BtnNum1Click(Sender: TObject);
var
  numClick :string;
  num : string;
begin
  num := EdtVisor.Text;

  if num = '0' then
  begin
    num := '';
  end;

  numClick := TEdit(Sender).Text;
  num := num + numClick;
  EdtVisor.Text := num;

end;

end.
