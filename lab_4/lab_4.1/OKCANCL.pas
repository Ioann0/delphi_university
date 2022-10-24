unit OKCANCL;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TOKRightDlg1 = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKRightDlg1: TOKRightDlg1;

implementation

{$R *.dfm}

end.
