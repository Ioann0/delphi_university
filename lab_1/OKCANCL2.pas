unit OKCANCL2;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TOKRightDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKRightDlg: TOKRightDlg;

implementation

{$R *.dfm}

procedure TOKRightDlg.Label3Click(Sender: TObject);
begin
  label3.Caption:= 'матрица должна быть только квадратной!!!';
end;

end.
