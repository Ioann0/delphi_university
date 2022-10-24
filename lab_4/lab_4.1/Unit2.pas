unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, OKCANCL2, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TOKRightDlg2 = class(TOKRightDlg)
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKRightDlg2: TOKRightDlg2;

implementation

{$R *.dfm}

end.
