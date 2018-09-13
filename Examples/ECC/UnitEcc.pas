unit UnitEcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, CnECC, ExtCtrls, Buttons, TeEngine, Series, TeeProcs,
  Chart, CnPrimeNumber, CnBigNumber;

type
  TFormEcc = class(TForm)
    pgc1: TPageControl;
    tsSimpleECC: TTabSheet;
    grpSimpleECC: TGroupBox;
    btnTest1: TButton;
    btnTest0: TButton;
    btnTestOn: TButton;
    btnTestInverse: TButton;
    btnTest2P: TButton;
    btnTestMul: TButton;
    Bevel1: TBevel;
    lblPX: TLabel;
    lblPY: TLabel;
    edtPX: TEdit;
    edtPY: TEdit;
    lblAdd: TLabel;
    edtQX: TEdit;
    lblQY: TLabel;
    edtQY: TEdit;
    lblAddResult: TLabel;
    btnEqual: TButton;
    lblMPX: TLabel;
    edtMPX: TEdit;
    lblMPY: TLabel;
    edtMPY: TEdit;
    lblMul: TLabel;
    btnMEqual: TButton;
    edtMK: TEdit;
    lblMResult: TLabel;
    btnPOn: TSpeedButton;
    btnMPOn: TSpeedButton;
    btnQOn: TSpeedButton;
    chtE2311: TChart;
    pntsrsSeries1: TPointSeries;
    btnNewKey: TButton;
    lblPrivateKey: TLabel;
    edtPrivateKey: TEdit;
    edtPublicKey: TEdit;
    lblPublicKey: TLabel;
    lblData: TLabel;
    edtData: TEdit;
    btnEncrypt: TButton;
    edtEncrypted: TEdit;
    btnDecrypt: TButton;
    edtDecrypted: TEdit;
    btnBatchVerify: TButton;
    tsInt64ECC: TTabSheet;
    Bevel2: TBevel;
    lblECDH: TLabel;
    lblDHA: TLabel;
    lblDHB: TLabel;
    lblXb: TLabel;
    lblXA: TLabel;
    edtDHXa: TEdit;
    edtDHXb: TEdit;
    btnCalcYb: TButton;
    btnCalcXA: TButton;
    edtDHYa: TEdit;
    edtDHYb: TEdit;
    btnDHBCK: TButton;
    btnDHACKey: TButton;
    edtAKey: TEdit;
    edtBKey: TEdit;
    grpGenEcc: TGroupBox;
    btnGenEcc: TButton;
    lblEccY2: TLabel;
    edtEccA: TEdit;
    edtEccB: TEdit;
    edtEccP: TEdit;
    lblEccG: TLabel;
    edtEccGX: TEdit;
    edtEccGY: TEdit;
    lblEccOrder: TLabel;
    edtEccOrder: TEdit;
    btnCalcNG: TButton;
    Bevel3: TBevel;
    mmoGenECCPoints: TMemo;
    chtEccInt64: TChart;
    pntsrsSeries2: TPointSeries;
    btnLeRanDe: TButton;
    tsECC: TTabSheet;
    grpBNEcc: TGroupBox;
    lblBNEqu: TLabel;
    edtBNEccA: TEdit;
    edtBNEccB: TEdit;
    edtBNEccP: TEdit;
    lblBNGX: TLabel;
    edtBNEccGX: TEdit;
    edtBNEccGY: TEdit;
    lblBNGY: TLabel;
    lblBNEccOrder: TLabel;
    edtBNEccOrder: TEdit;
    Bevel4: TBevel;
    btnBNEccInverseG: TButton;
    edtBNEccResult: TEdit;
    btnBNEccInverseAdd: TButton;
    btnBNEccGx2: TButton;
    btnBNEccG2SubG: TButton;
    btnBNEccGAddG: TButton;
    btnBNEccGSubG: TButton;
    lblBNEccB: TLabel;
    lblBNEccMod: TLabel;
    btnBNEccNG: TButton;
    btnBNEcc4G: TButton;
    btnBNEccNewKey: TButton;
    lblBNEccPrivateKey: TLabel;
    edtBNEccPublicKey: TEdit;
    edtBNEccPrivateKey: TEdit;
    lblBNEccPublicKey: TLabel;
    lblBNEccDataPoint: TLabel;
    edtBNEccDataPoint: TEdit;
    btnBNEccCrypt: TButton;
    tsWrapData: TTabSheet;
    grpWrap: TGroupBox;
    lblWrapData: TLabel;
    edtWrapData: TEdit;
    btnWrapData: TButton;
    edtWrapPoint: TEdit;
    bvl1: TBevel;
    lblBNECDH: TLabel;
    lblBNECDHA: TLabel;
    lblBNECDHB: TLabel;
    lblBNECDHXb: TLabel;
    lblBNECDHXa: TLabel;
    edtBNECDHXa: TEdit;
    edtBNECDHXb: TEdit;
    btnBNECDHYb: TButton;
    btnBNECDHYa: TButton;
    edtBNECDHA: TEdit;
    edtBNECDHB: TEdit;
    btnBNECDHBkey: TButton;
    btnBNECDHAKey: TButton;
    edtBNECDHResA: TEdit;
    edtBNECDHResB: TEdit;
    btnTestECDH: TButton;
    procedure btnTest1Click(Sender: TObject);
    procedure btnTest0Click(Sender: TObject);
    procedure btnTestOnClick(Sender: TObject);
    procedure btnTestInverseClick(Sender: TObject);
    procedure btnTest2PClick(Sender: TObject);
    procedure btnTestMulClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
    procedure btnMEqualClick(Sender: TObject);
    procedure btnPOnClick(Sender: TObject);
    procedure btnQOnClick(Sender: TObject);
    procedure btnMPOnClick(Sender: TObject);
    procedure btnNewKeyClick(Sender: TObject);
    procedure btnEncryptClick(Sender: TObject);
    procedure btnDecryptClick(Sender: TObject);
    procedure btnBatchVerifyClick(Sender: TObject);
    procedure btnCalcXAClick(Sender: TObject);
    procedure btnCalcYbClick(Sender: TObject);
    procedure btnDHACKeyClick(Sender: TObject);
    procedure btnDHBCKClick(Sender: TObject);
    procedure btnGenEccClick(Sender: TObject);
    procedure btnCalcNGClick(Sender: TObject);
    procedure btnLeRanDeClick(Sender: TObject);
    procedure btnBNEccInverseGClick(Sender: TObject);
    procedure btnBNEccInverseAddClick(Sender: TObject);
    procedure btnBNEccGx2Click(Sender: TObject);
    procedure btnBNEccG2SubGClick(Sender: TObject);
    procedure btnBNEccGAddGClick(Sender: TObject);
    procedure btnBNEccGSubGClick(Sender: TObject);
    procedure btnBNEccNGClick(Sender: TObject);
    procedure btnBNEcc4GClick(Sender: TObject);
    procedure btnBNEccNewKeyClick(Sender: TObject);
    procedure lblBNEccDataPointClick(Sender: TObject);
    procedure btnBNEccCryptClick(Sender: TObject);
    procedure btnWrapDataClick(Sender: TObject);
    procedure btnBNECDHYaClick(Sender: TObject);
    procedure btnBNECDHYbClick(Sender: TObject);
    procedure btnBNECDHAKeyClick(Sender: TObject);
    procedure btnBNECDHBkeyClick(Sender: TObject);
    procedure btnTestECDHClick(Sender: TObject);
  private
    FEcc64E2311: TCnInt64Ecc;
    FEcc64E2311Points: array[0..23] of array [0..23] of Boolean;
    FEcc64PrivateKey: TCnInt64PrivateKey;
    FEcc64PublicKey: TCnInt64PublicKey;
    FEcc64Enc1, FEcc64Enc2: TCnInt64EccPoint;

    FBNEcc: TCnEcc;
    FBNEccPrivateKey: TCnEccPrivateKey;
    FBNEccPublicKey: TCnEccPublicKey;
    FBNEccDataPoint: TCnEccPoint;
    FBNECDHPrivKey1, FBNECDHPrivKey2: TCnEccPrivateKey;
    FBNECDHPubKey1, FBNECDHPubKey2: TCnEccPublicKey;
    procedure CalcE2311Points;
    procedure UpdateE2311Chart;
    procedure ShowBnEcc;
  public
    { Public declarations }
  end;

var
  FormEcc: TFormEcc;

implementation

{$R *.DFM}

procedure TFormEcc.btnTest1Click(Sender: TObject);
var
  P, Q: TCnInt64EccPoint;
begin
  P.X := 3; P.Y := 10;
  Q.X := 9; Q.Y := 7;

  FEcc64E2311.PointAddPoint(P, Q, P);
  ShowMessage(Format('3,10 + 9,7 = %d,%d',[P.X, P.Y]));
end;

procedure TFormEcc.btnTest0Click(Sender: TObject);
var
  P, Q: TCnInt64EccPoint;
begin
  P.X := 0; P.Y := 0;
  Q.X := StrToInt(edtPX.Text);
  Q.Y := StrToInt(edtPY.Text);

  FEcc64E2311.PointAddPoint(P, Q, P);
  ShowMessage(Format('0,0 + P = %d,%d',[P.X, P.Y]));
end;

procedure TFormEcc.btnTestOnClick(Sender: TObject);
var
  P: TCnInt64EccPoint;
begin
  P.X := StrToInt(edtPX.Text);
  P.Y := StrToInt(edtPY.Text);

  if FEcc64E2311.IsPointOnCurve(P) then
    ShowMessage('P is On Curve')
  else
    ShowMessage('P is NOT On Curve');
end;

procedure TFormEcc.btnTestInverseClick(Sender: TObject);
var
  P: TCnInt64EccPoint;
begin
  P.X := StrToInt(edtPX.Text);
  P.Y := StrToInt(edtPY.Text);

  FEcc64E2311.PointInverse(P);
  ShowMessage('P Inverse to ' + IntToStr(P.X) + ',' + IntToStr(P.Y));
end;

procedure TFormEcc.btnTest2PClick(Sender: TObject);
var
  P: TCnInt64EccPoint;
begin
  P.X := StrToInt(edtPX.Text);
  P.Y := StrToInt(edtPY.Text);

  FEcc64E2311.MultiplePoint(2, P);
  ShowMessage('P Multiple 2 is ' + IntToStr(P.X) + ',' + IntToStr(P.Y));
end;

procedure TFormEcc.btnTestMulClick(Sender: TObject);
var
  P: TCnInt64EccPoint;
  I: Integer;
  List: TStringList;
begin
  List := TStringList.Create;

  for I := 0 to 30 do
  begin
    P.X := StrToInt(edtPX.Text);
    P.Y := StrToInt(edtPY.Text);
    FEcc64E2311.MultiplePoint(I, P);

    List.Add(IntToStr(I) + '*: ' + IntToStr(P.X) + ',' + IntToStr(P.Y));
    if FEcc64E2311.IsPointOnCurve(P) then
      List[List.Count - 1] := List[List.Count - 1] + ' On Curve.'
    else
      List[List.Count - 1] := List[List.Count - 1] + ' NOT On Curve.'
  end;

  ShowMessage('P Multiple is '#13#10#13#10 + List.Text);
  List.Free;
end;

procedure TFormEcc.FormCreate(Sender: TObject);
begin
  pgc1.ActivePageIndex := 0;

  FEcc64E2311 := TCnInt64Ecc.Create(1, 1, 23, 5, 4, 7);
  // 9,7 Ϊ���㣬28 �Ǹ����ߵĽף�ѡ�������� 7 ��Ϊ����Ľף�����Ϊ 5,4
  CalcE2311Points;
  UpdateE2311Chart;

  FBNEcc := TCnEcc.Create(ctSecp256k1);
  FBNEccPrivateKey := TCnEccPrivateKey.Create;
  FBNEccPublicKey := TCnEccPublicKey.Create;
  FBNEccDataPoint := TCnEccPoint.Create;

  FBNECDHPrivKey1 := TCnEccPrivateKey.Create;
  FBNECDHPrivKey2 := TCnEccPrivateKey.Create;
  FBNECDHPubKey1 := TCnEccPublicKey.Create;
  FBNECDHPubKey2 := TCnEccPublicKey.Create;
  ShowBnEcc;

  lblBNEccDataPoint.OnClick(lblBNEccDataPoint);
end;

procedure TFormEcc.FormDestroy(Sender: TObject);
begin
  FBNECDHPrivKey1.Free;
  FBNECDHPrivKey2.Free;
  FBNECDHPubKey1.Free;
  FBNECDHPubKey2.Free;
  FBNEccDataPoint.Free;
  FBNEccPrivateKey.Free;
  FBNEccPublicKey.Free;
  FBNEcc.Free;
  FEcc64E2311.Free;
end;

procedure TFormEcc.btnEqualClick(Sender: TObject);
var
  P, Q: TCnInt64EccPoint;
begin
  P.X := StrToInt(edtPX.Text);
  P.Y := StrToInt(edtPY.Text);
  Q.X := StrToInt(edtQX.Text);
  Q.Y := StrToInt(edtQY.Text);
  FEcc64E2311.PointAddPoint(P, Q, P);
  lblAddResult.Caption := IntToStr(P.X) + ',' + IntToStr(P.Y);
end;

procedure TFormEcc.btnMEqualClick(Sender: TObject);
var
  K: Integer;
  P: TCnInt64EccPoint;
begin
  P.X := StrToInt(edtMPX.Text);
  P.Y := StrToInt(edtMPY.Text);
  K := StrToInt(edtMK.Text);
  FEcc64E2311.MultiplePoint(K, P);
  lblMResult.Caption := IntToStr(P.X) + ',' + IntToStr(P.Y);
end;

procedure TFormEcc.btnPOnClick(Sender: TObject);
var
  P: TCnInt64EccPoint;
begin
  P.X := StrToInt(edtPX.Text);
  P.Y := StrToInt(edtPY.Text);
  if FEcc64E2311.IsPointOnCurve(P) then
    ShowMessage(Format('%d,%d is On Curve.', [P.X, P.Y]));
end;

procedure TFormEcc.btnQOnClick(Sender: TObject);
var
  P: TCnInt64EccPoint;
begin
  P.X := StrToInt(edtQX.Text);
  P.Y := StrToInt(edtQY.Text);
  if FEcc64E2311.IsPointOnCurve(P) then
    ShowMessage(Format('%d,%d is On Curve.', [P.X, P.Y]));
end;

procedure TFormEcc.btnMPOnClick(Sender: TObject);
var
  P: TCnInt64EccPoint;
begin
  P.X := StrToInt(edtMPX.Text);
  P.Y := StrToInt(edtMPY.Text);
  if FEcc64E2311.IsPointOnCurve(P) then
    ShowMessage(Format('%d,%d is On Curve.', [P.X, P.Y]));
end;

procedure TFormEcc.CalcE2311Points;
var
  I, J: Integer;
  P: TCnInt64EccPoint;
begin
  for I := 0 to 22 do
  begin
    for J := 0 to 22 do
    begin
      P.X := I;
      P.Y := J;
      FEcc64E2311Points[I][J] := FEcc64E2311.IsPointOnCurve(P);
    end;
  end;
end;

procedure TFormEcc.UpdateE2311Chart;
var
  I, J: Integer;
begin
  for I := 0 to 23 do
  begin
    for J := 0 to 23 do
    begin
      if FEcc64E2311Points[I][J] then
        chtE2311.SeriesList.Series[0].AddXY(I, J);
    end;
  end;

end;

procedure TFormEcc.btnNewKeyClick(Sender: TObject);
begin
  FEcc64E2311.GenerateKeys(FEcc64PrivateKey, FEcc64PublicKey);
  edtPrivateKey.Text := IntToStr(FEcc64PrivateKey);
  edtPublicKey.Text := IntToStr(FEcc64PublicKey.X) + ',' + IntToStr(FEcc64PublicKey.Y);
end;

procedure TFormEcc.btnEncryptClick(Sender: TObject);
var
  P: TCnInt64EccPoint;
begin
  if FEcc64E2311.PlainToPoint(StrToInt(edtData.Text), P) then
  begin
    ShowMessage(edtData.Text + ' Convert to ' + CnInt64EccPointToString(P));
    FEcc64E2311.Encrypt(P, FEcc64PublicKey, FEcc64Enc1, FEcc64Enc2);
    edtEncrypted.Text := CnInt64EccPointToString(FEcc64Enc1) + '  ' + CnInt64EccPointToString(FEcc64Enc2);
  end
  else
    ShowMessage('Can NOT Convert Data to Point.');
end;

procedure TFormEcc.btnDecryptClick(Sender: TObject);
var
  P: TCnInt64EccPoint;
begin
  FEcc64E2311.Decrypt(FEcc64Enc1, FEcc64Enc2, FEcc64PrivateKey, P);
  ShowMessage('Decrypt to ' + CnInt64EccPointToString(P));
  edtDecrypted.Text := IntToStr(P.X);
end;

procedure TFormEcc.btnBatchVerifyClick(Sender: TObject);
var
  I: Integer;
  P, Q: TCnInt64EccPoint;
begin
  for I := 1 to 27 do
  begin
    FEcc64E2311.PlainToPoint(StrToInt(edtData.Text), P);
    FEcc64E2311.Encrypt(P, FEcc64PublicKey, FEcc64Enc1, FEcc64Enc2, I);
    FEcc64E2311.Decrypt(FEcc64Enc1, FEcc64Enc2, FEcc64PrivateKey, Q);
    if (P.X <> Q.X) or (P.Y <> Q.Y) then
      ShowMessage('Error: ' + IntToStr(I) + ' ' + CnInt64EccPointToString(Q));
  end;
end;

var
  FAOutPub: TCnInt64PublicKey;
  FBOutPub: TCnInt64PublicKey;

procedure TFormEcc.btnCalcXAClick(Sender: TObject);
var
  InPriv: TCnInt64PrivateKey;
begin
  InPriv := StrToInt(edtDHXa.Text);
  CnInt64EccDiffieHellmanGenerateOutKey(FEcc64E2311, InPriv, FAOutPub);
  edtDHYa.Text := CnInt64EccPointToString(FAOutPub);
end;

procedure TFormEcc.btnCalcYbClick(Sender: TObject);
var
  InPriv: TCnInt64PrivateKey;
begin
  InPriv := StrToInt(edtDHXb.Text);
  CnInt64EccDiffieHellmanGenerateOutKey(FEcc64E2311, InPriv, FBOutPub);
  edtDHYb.Text := CnInt64EccPointToString(FBOutPub);
end;

procedure TFormEcc.btnDHACKeyClick(Sender: TObject);
var
  InPriv: TCnInt64PrivateKey;
  Sec: TCnInt64PublicKey;
begin
  InPriv := StrToInt(edtDHXa.Text);
  CnInt64EccDiffieHellmanComputeKey(FEcc64E2311, InPriv, FBOutPub, Sec);
  edtAKey.Text := CnInt64EccPointToString(Sec);
end;

procedure TFormEcc.btnDHBCKClick(Sender: TObject);
var
  InPriv: TCnInt64PrivateKey;
  Sec: TCnInt64PublicKey;
begin
  InPriv := StrToInt(edtDHXb.Text);
  CnInt64EccDiffieHellmanComputeKey(FEcc64E2311, InPriv, FAOutPub, Sec);
  edtBKey.Text := CnInt64EccPointToString(Sec);
end;

procedure TFormEcc.btnGenEccClick(Sender: TObject);
var
  P, A, B, X, Y, N: Int64;
begin
  if CnInt64EccGenerateParams(P, A, B, X, Y, N) then
  begin
    edtEccA.Text := IntToStr(A);
    edtEccB.Text := IntToStr(B);
    edtEccGX.Text := IntToStr(X);
    edtEccGY.Text := IntToStr(Y);
    edtEccP.Text := IntToStr(P);
    edtEccOrder.Text := IntToStr(N);
  end;
end;

procedure TFormEcc.btnCalcNGClick(Sender: TObject);
var
  P, A, B, X, Y, N: Int64;
  Ecc: TCnInt64Ecc;
  I: Integer;
  Q: TCnInt64EccPoint;
  List: TStrings;
begin
  A := StrToInt(edtEccA.Text);
  B := StrToInt(edtEccB.Text);
  X := StrToInt(edtEccGX.Text);
  Y := StrToInt(edtEccGY.Text);
  P := StrToInt(edtEccP.Text);
  N := StrToInt(edtEccOrder.Text);

  Ecc := TCnInt64Ecc.Create(A, B, P, X, Y, N);
  mmoGenECCPoints.Lines.Clear;
  chtEccInt64.SeriesList[0].Clear;
  chtEccInt64.BottomAxis.Maximum := P - 1;
  chtEccInt64.LeftAxis.Maximum := P - 1;

  List := TStringList.Create;
  for I := 0 to N + 1 do
  begin
    Q.X := X;
    Q.Y := Y;
    Ecc.MultiplePoint(I, Q);
    if (Q.X = 0) and (Q.Y = 0) then
      List.Add(Format('***%d: (%d,%d)***', [I, Q.X, Q.Y]))
    else
      List.Add(Format('%d: (%d,%d)', [I, Q.X, Q.Y]));
    chtEccInt64.SeriesList[0].AddXY(Q.X, Q.Y);
  end;
  mmoGenECCPoints.Lines.Assign(List);
  List.Free;
  Ecc.Free;
end;

// �������õ·��� ( A / P) ��ֵ
function CalcLegendre(A, P: Int64): Integer;
begin
  // ���������P ������ A ʱ���� 0����������ʱ����� A ����ȫƽ�����ͷ��� 1�����򷵻� -1
  if A mod P = 0 then
    Result := 0
  else if MontgomeryPowerMod(A, (P - 1) shr 1, P) = 1 then // ŷ���б�
    Result := 1
  else
    Result := -1;
end;

procedure TFormEcc.btnLeRanDeClick(Sender: TObject);
var
  I: Integer;
begin
  I := 1297;
  CalcLegendre(I * I * I + 225, 21893);
  CalcLegendre(Int64(I) * Int64(I) * Int64(I) + 225, 21893);
end;

procedure TFormEcc.ShowBnEcc;
begin
  edtBNEccA.Text := FBNEcc.CoefficientA.ToDec;
  edtBNEccB.Text := FBNEcc.CoefficientB.ToDec;
  edtBNEccP.Text := FBNEcc.FiniteFieldSize.ToDec;
  edtBNEccGX.Text := FBNEcc.Generator.X.ToDec;
  edtBNEccGY.Text := FBNEcc.Generator.Y.ToDec;
  edtBNEccOrder.Text := FBNEcc.Order.ToDec;

  edtBNEccA.Hint := FBNEcc.CoefficientA.ToHex;
  edtBNEccB.Hint := FBNEcc.CoefficientB.ToHex;
  edtBNEccP.Hint := FBNEcc.FiniteFieldSize.ToHex;
  edtBNEccGX.Hint := FBNEcc.Generator.X.ToHex;
  edtBNEccGY.Hint := FBNEcc.Generator.Y.ToHex;
  edtBNEccOrder.Hint := FBNEcc.Order.ToHex;

  if FBNEcc.IsPointOnCurve(FBNEcc.Generator) then
  begin
    lblBNGX.Hint := 'G is on Curve.';
    lblBNGY.Hint := 'G is on Curve.';
  end;
end;

procedure TFormEcc.btnBNEccInverseGClick(Sender: TObject);
var
  P: TCnEccPoint;
begin
  P := TCnEccPoint.Create;
  P.Assign(FBNEcc.Generator);
  FBNEcc.PointInverse(P);
  edtBNEccResult.Text := CnEccPointToString(P);
  if not FBNEcc.IsPointOnCurve(P) then
    ShowMessage('Error');
  P.Free;
end;

procedure TFormEcc.btnBNEccInverseAddClick(Sender: TObject);
var
  P: TCnEccPoint;
begin
  P := TCnEccPoint.Create;
  P.Assign(FBNEcc.Generator);
  FBNEcc.PointInverse(P);
  FBNEcc.PointAddPoint(FBNEcc.Generator, P, P);
  edtBNEccResult.Text := CnEccPointToString(P);
  if not FBNEcc.IsPointOnCurve(P) then
    ShowMessage('Error');
  P.Free;
end;

procedure TFormEcc.btnBNEccGx2Click(Sender: TObject);
var
  P: TCnEccPoint;
begin
  P := TCnEccPoint.Create;
  P.Assign(FBNEcc.Generator);
  FBNEcc.PointAddPoint(FBNEcc.Generator, P, P);
  edtBNEccResult.Text := CnEccPointToString(P);
  if not FBNEcc.IsPointOnCurve(P) then
    ShowMessage('Error');
  P.Free;
end;

procedure TFormEcc.btnBNEccG2SubGClick(Sender: TObject);
var
  P: TCnEccPoint;
begin
  P := TCnEccPoint.Create;
  P.Assign(FBNEcc.Generator);
  FBNEcc.PointAddPoint(FBNEcc.Generator, P, P);
  FBNEcc.PointSubPoint(P, FBNEcc.Generator, P);
  edtBNEccResult.Text := CnEccPointToString(P);
  if not FBNEcc.IsPointOnCurve(P) then
    ShowMessage('Error');
  P.Free;
end;

procedure TFormEcc.btnBNEccGAddGClick(Sender: TObject);
var
  P: TCnEccPoint;
  K: TCnBigNumber;
begin
  P := TCnEccPoint.Create;
  P.Assign(FBNEcc.Generator);
  K := TCnBigNumber.Create;
  K.SetDec('2');
  FBNEcc.MultiplePoint(K, P);
  edtBNEccResult.Text := CnEccPointToString(P);
  if not FBNEcc.IsPointOnCurve(P) then
    ShowMessage('Error');
  P.Free;
  K.Free;
end;

procedure TFormEcc.btnBNEccGSubGClick(Sender: TObject);
var
  P: TCnEccPoint;
begin
  P := TCnEccPoint.Create;
  P.Assign(FBNEcc.Generator);
  FBNEcc.PointSubPoint(P, FBNEcc.Generator, P);
  edtBNEccResult.Text := CnEccPointToString(P);
  P.Free;
end;

procedure TFormEcc.btnBNEccNGClick(Sender: TObject);
var
  P: TCnEccPoint;
  K: TCnBigNumber;
begin
  P := TCnEccPoint.Create;
  P.Assign(FBNEcc.Generator);
  K := TCnBigNumber.Create;
  K.SetDec(edtBNEccOrder.Text);
  FBNEcc.MultiplePoint(K, P);
  edtBNEccResult.Text := CnEccPointToString(P);
  P.Free;
  K.Free;
end;

procedure TFormEcc.btnBNEcc4GClick(Sender: TObject);
var
  P, Q: TCnEccPoint;
  K: TCnBigNumber;
begin
  P := TCnEccPoint.Create;
  Q := TCnEccPoint.Create;
  P.Assign(FBNEcc.Generator);
  Q.Assign(FBNEcc.Generator);

  K := TCnBigNumber.Create;
  K.SetDec('2');
  FBNEcc.MultiplePoint(K, P);
  if not FBNEcc.IsPointOnCurve(P) then
    ShowMessage('Error * 2');
  FBNEcc.MultiplePoint(K, P);
  if not FBNEcc.IsPointOnCurve(P) then
    ShowMessage('Error * 4');
  edtBNEccResult.Text := CnEccPointToString(P);

  FBNEcc.PointAddPoint(Q, FBNEcc.Generator, Q);
  if not FBNEcc.IsPointOnCurve(Q) then
    ShowMessage('Error G + G');
  FBNEcc.PointAddPoint(Q, FBNEcc.Generator, Q); // ǰ������λ�þͻ������
  if not FBNEcc.IsPointOnCurve(Q) then
    ShowMessage('Error G + G + G');
  FBNEcc.PointAddPoint(Q, FBNEcc.Generator, Q);
  if not FBNEcc.IsPointOnCurve(Q) then
    ShowMessage('Error G + G + G + G');

  if CnEccPointsEqual(P, Q) then
    ShowMessage('Equal');
  P.Free;
  K.Free;
end;

procedure TFormEcc.btnBNEccNewKeyClick(Sender: TObject);
begin
  FBNEcc.GenerateKeys(FBNEccPrivateKey, FBNEccPublicKey);
  edtBNEccPrivateKey.Text := FBNEccPrivateKey.ToDec;
  edtBNEccPublicKey.Text := CnEccPointToString(FBNEccPublicKey);
end;

procedure TFormEcc.lblBNEccDataPointClick(Sender: TObject);
var
  I: Integer;
  K: TCnBigNumber;
begin
  Randomize;
  I := Trunc(Random * 65537) + 1;
  K := TCnBigNumber.Create;
  K.SetWord(I);
  FBNEccDataPoint.Assign(FBNEcc.Generator);
  FBNEcc.MultiplePoint(K, FBNEccDataPoint);
  K.Free;
  edtBNEccDataPoint.Text := CnEccPointToString(FBNEccDataPoint);
end;

procedure TFormEcc.btnBNEccCryptClick(Sender: TObject);
var
  Data1, Data2, Plain: TCnEccPoint;
begin
  Data1 := TCnEccPoint.Create;
  Data2 := TCnEccPoint.Create;
  Plain := TCnEccPoint.Create;
  FBNEcc.Encrypt(FBNEccDataPoint, FBNEccPublicKey, Data1, Data2);
  ShowMessage('Encrypted to' + #13#10 + CnEccPointToString(Data1) + #13#10 + CnEccPointToString(Data2));

  FBNEcc.Decrypt(Data1, Data2, FBNEccPrivateKey, Plain);
  ShowMessage('Decrypted back to' + #13#10 + CnEccPointToString(Plain));

  Plain.Free;
  Data1.Free;
  Data2.Free;
end;

procedure TFormEcc.btnWrapDataClick(Sender: TObject);
var
  P: TCnBigNumber;
  Pt: TCnEccPoint;
begin
  P := TCnBigNumber.Create;
  Pt := TCnEccPoint.Create;
  P.SetDec(edtWrapData.Text);

  if FBNEcc.PlainToPoint(P, Pt) then
  begin
    edtWrapPoint.Text := CnEccPointToString(Pt);
    P.SetZero;
    FBNEcc.PointToPlain(Pt, P);
    edtWrapData.Text := P.ToDec;
  end
  else
    ShowMessage('Can NOT Convert Data to Point');

  P.Free;
  Pt.Free;
end;

procedure TFormEcc.btnBNECDHYaClick(Sender: TObject);
begin
  FBNECDHPrivKey1.SetDec(edtBNECDHXa.Text);
  CnEccDiffieHellmanGenerateOutKey(FBNEcc, FBNECDHPrivKey1, FBNECDHPubKey1);
  edtBNECDHA.Text := CnEccPointToString(FBNECDHPubKey1);
end;

procedure TFormEcc.btnBNECDHYbClick(Sender: TObject);
begin
  FBNECDHPrivKey2.SetDec(edtBNECDHXb.Text);
  CnEccDiffieHellmanGenerateOutKey(FBNEcc, FBNECDHPrivKey2, FBNECDHPubKey2);
  edtBNECDHB.Text := CnEccPointToString(FBNECDHPubKey2);
end;

procedure TFormEcc.btnBNECDHAKeyClick(Sender: TObject);
var
  Sec: TCnEccPublicKey;
begin
  Sec := TCnEccPublicKey.Create;
  CnEccDiffieHellmanComputeKey(FBNEcc, FBNECDHPrivKey1, FBNECDHPubKey2, Sec);
  edtBNECDHResA.Text := CnEccPointToString(Sec);
  Sec.Free;
end;

procedure TFormEcc.btnBNECDHBkeyClick(Sender: TObject);
var
  Sec: TCnEccPublicKey;
begin
  Sec := TCnEccPublicKey.Create;
  CnEccDiffieHellmanComputeKey(FBNEcc, FBNECDHPrivKey2, FBNECDHPubKey1, Sec);
  edtBNECDHResB.Text := CnEccPointToString(Sec);
  Sec.Free;
end;

procedure TFormEcc.btnTestECDHClick(Sender: TObject);
var
  Priv1, Priv2: TCnEccPrivateKey;
  Pub1, Pub2: TCnEccPublicKey;
  Sec: TCnEccPoint;
begin
  Priv1 := TCnEccPrivateKey.FromHex('E32868331FA8EF0138DE0DE85478346AEC5E3912B6029AE71691C384237A3EEB');
  Priv2 := TCnEccPrivateKey.FromHex('CEF147652AA90162E1FFF9CF07F2605EA05529CA215A04350A98ECC24AA34342');

  Pub1 := TCnEccPublicKey.Create;
  Pub2 := TCnEccPublicKey.Create;

  CnEccDiffieHellmanGenerateOutKey(FBNEcc, Priv1, Pub1);
  CnEccDiffieHellmanGenerateOutKey(FBNEcc, Priv2, Pub2);

  ShowMessage('Pub1 is:' + #13#10 + Pub1.X.ToHex + #13#10 + Pub1.Y.ToHex);
  // 86B1AA5120F079594348C67647679E7AC4C365B2C01330DB782B0BA611C1D677, 5F4376A23EED633657A90F385BA21068ED7E29859A7FAB09E953CC5B3E89BEBA

  ShowMessage('Pub2 is:' + #13#10 + Pub2.X.ToHex + #13#10 + Pub2.Y.ToHex);
  // 4034127647BB7FDAB7F1526C7D10BE8B28174E2BBA35B06FFD8A26FC2C20134A, 9E773199EDC1EA792B150270EA3317689286C9FE239DD5B9C5CFD9E81B4B632

  Sec := TCnEccPoint.Create;
  CnEccDiffieHellmanComputeKey(FBNEcc, Priv1, Pub2, Sec);
  ShowMessage('A Compute Key is:' + #13#10 + Sec.X.ToHex + #13#10 + Sec.Y.ToHex);
  CnEccDiffieHellmanComputeKey(FBNEcc, Priv2, Pub1, Sec);
  ShowMessage('B Compute Key is:' + #13#10 + Sec.X.ToHex + #13#10 + Sec.Y.ToHex);
  // 3E2FFBC3AA8A2836C1689E55CD169BA638B58A3A18803FCF7DE153525B28C3CD, 43CA148C92AF58EBDB525542488A4FE6397809200FE8C61B41A105449507083

  Sec.Free;
  Pub1.Free;
  Pub2.Free;
  Priv1.Free;
  Priv2.Free;
end;

end.