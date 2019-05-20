unit FrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, StrUtils;

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
    procedure BtnNumClick(Sender: TObject);
    procedure BtnOpClick(Sender: TObject);
    procedure BtnEqualClick(Sender: TObject);
  private
    firstVal: double;
    opSelec: string;
    deveZerar: Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function Calcula(num1: Double; num2: Double; op: string) : Double;
begin
  case AnsiIndexStr(op, ['/','*','+','-']) of
    0: begin
        if num2 = 0 then
        begin
          Result := 0;
        end
        else
        begin
          Result := num1 / num2;
        end;
      end;

    1: Result := num1 * num2;
    2: Result := num1 + num2;
    3: Result := num1 - num2;
  end;
end;

procedure TForm1.BtnClearClick(Sender: TObject);
begin
  EdtVisor.Text := '0';
end;

procedure TForm1.BtnEqualClick(Sender: TObject);
var
  num : double;
begin
  num := double.Parse(EdtVisor.Text);
  firstVal := Calcula(firstVal, num, opSelec);
  EdtVisor.Text := FloatToStr(firstVal);

  deveZerar := true;
end;

procedure TForm1.BtnNumClick(Sender: TObject);
var
  numClick :string;
  num : string;

begin
  if deveZerar then
  begin
    EdtVisor.Text := '0';
    deveZerar := false;
  end;

  num := EdtVisor.Text;

  if num = '0' then
  begin
    num := '';
  end;

  numClick := TEdit(Sender).Text;
  num := num + numClick;
  EdtVisor.Text := num;

end;

procedure TForm1.BtnOpClick(Sender: TObject);
var
  num : double;
begin
  if firstVal = 0 then
  begin
    firstVal := double.Parse(EdtVisor.Text);
  end
  else
  begin
    num := double.Parse(EdtVisor.Text);
    firstVal := Calcula(firstVal, num, opSelec);
    EdtVisor.Text := FloatToStr(firstVal);
  end;

  opSelec := TButton(Sender).Caption;
  deveZerar := true;
end;

end.
