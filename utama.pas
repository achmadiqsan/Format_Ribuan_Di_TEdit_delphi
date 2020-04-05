unit utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    edtotal: TEdit;
    Label1: TLabel;
    edbayar: TEdit;
    edkembali: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    procedure edtotalChange(Sender: TObject);
    procedure edkembaliChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Function Ribuan(Edit : TEdit):String;
var
  NilaiRupiah: string;
  AngkaRupiah: Currency;
begin
if Edit.Text='' then Exit;
  NilaiRupiah := Edit.text;
  NilaiRupiah := StringReplace(NilaiRupiah,',','',[rfReplaceAll,rfIgnoreCase]);
  NilaiRupiah := StringReplace(NilaiRupiah,'.','',[rfReplaceAll,rfIgnoreCase]);
  AngkaRupiah := StrToCurrDef(NilaiRupiah,0);
  Edit.Text := FormatCurr('#,###',AngkaRupiah);
  Edit.SelStart := length(Edit.text);
end;

Function HapusFormat(Nilai:TEdit):Integer;
var
  Hasil:String;
begin
  Hasil:=Nilai.Text;
  Hasil:=StringReplace(Hasil,',','',[rfReplaceAll,rfIgnoreCase]);
  Hasil:=StringReplace(Hasil,'.','',[rfReplaceAll,rfIgnoreCase]);
  Result:=StrToInt(Hasil);
end;

procedure TForm1.edtotalChange(Sender: TObject);
var total, bayar, kembali :integer;
begin
Ribuan(edtotal);
Ribuan(edbayar);

if (edbayar.Text='') or (edtotal.Text='') then Exit;

total:=HapusFormat(edtotal);
bayar:=HapusFormat(edbayar);
kembali:=bayar-total;

edkembali.Text:=IntToStr(kembali);
end;

procedure TForm1.edkembaliChange(Sender: TObject);
begin
Ribuan(edkembali);
end;

end.
