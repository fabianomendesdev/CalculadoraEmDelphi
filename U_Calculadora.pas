unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TForm1 = class(TForm)
    caixa_botoes: TLayout;
    btn_ponto: TButton;
    btn_0: TButton;
    btn_igual: TButton;
    btn_dividir: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_multi: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_subtrair: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_somar: TButton;
    caixa_topo: TLayout;
    lb_operador: TLabel;
    lb_num1: TLabel;
    lb_num2: TLabel;
    btn_apagar: TButton;
    btn_ce: TButton;
    btn_c: TButton;
    procedure btn_subtrairClick(Sender: TObject);
    procedure btn_somarClick(Sender: TObject);
    procedure btn_multiClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_cClick(Sender: TObject);
    procedure btn_ceClick(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_0Click(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := lb_num1.Text + '0';
  end
  else
  begin
      lb_num2.Text := lb_num2.Text + '0';
  end;
end;

procedure TForm1.btn_1Click(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := lb_num1.Text + '1';
  end
  else
  begin
      lb_num2.Text := lb_num2.Text + '1';
  end;
end;

procedure TForm1.btn_2Click(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := lb_num1.Text + '2';
  end
  else
  begin
      lb_num2.Text := lb_num2.Text + '2';
  end;
end;

procedure TForm1.btn_3Click(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := lb_num1.Text + '3';
  end
  else
  begin
      lb_num2.Text := lb_num2.Text + '3';
  end;
end;

procedure TForm1.btn_4Click(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := lb_num1.Text + '4';
  end
  else
  begin
      lb_num2.Text := lb_num2.Text + '4';
  end;
end;

procedure TForm1.btn_5Click(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := lb_num1.Text + '5';
  end
  else
  begin
      lb_num2.Text := lb_num2.Text + '5';
  end;
end;

procedure TForm1.btn_6Click(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := lb_num1.Text + '6';
  end
  else
  begin
      lb_num2.Text := lb_num2.Text + '6';
  end;
end;

procedure TForm1.btn_7Click(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := lb_num1.Text + '7';
  end
  else
  begin
      lb_num2.Text := lb_num2.Text + '7';
  end;
end;

procedure TForm1.btn_8Click(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := lb_num1.Text + '8';
  end
  else
  begin
      lb_num2.Text := lb_num2.Text + '8';
  end;
end;

procedure TForm1.btn_9Click(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := lb_num1.Text + '9';
  end
  else
  begin
      lb_num2.Text := lb_num2.Text + '9';
  end;
end;

procedure TForm1.btn_apagarClick(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := copy(lb_num1.Text, 0, length(lb_num1.Text)-1);
  end
  else
  begin
    lb_num2.Text := copy(lb_num2.Text, 0, length(lb_num2.Text)-1);
  end;
end;

procedure TForm1.btn_cClick(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := '';
  end
  else
  begin
    lb_num2.Text := '';
  end;
end;

procedure TForm1.btn_ceClick(Sender: TObject);
begin
  lb_num1.Text := '';
  lb_num2.Text := '';
  lb_operador.Text := '.';
  btn_somar.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_multi.Enabled := true;
  btn_dividir.Enabled := true;
end;

procedure TForm1.btn_dividirClick(Sender: TObject);
begin
  lb_operador.Text := '/';
  btn_somar.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_multi.Enabled := true;
  btn_dividir.Enabled := false;
end;

procedure TForm1.btn_igualClick(Sender: TObject);
var n1, n2, resultado : double;
var op : char;
begin
  n1 := strToFloat(lb_num1.Text);
  n2 := strToFloat(lb_num2.Text);
  op := lb_operador.Text[1];

  // Efetuando a soma
  resultado := 0;
  {if(lb_operador.Text = '+') then
  begin
    resultado := n1 + n2;
  end

  // Efetuando a subtração
  else if (lb_operador.Text = '-') then
  begin
    resultado := n1 - n2;
  end

  // Efetuando a multiplicação
  else if (lb_operador.Text = 'x') then
  begin
    resultado := n1 * n2;
  end

  // Efetuando a divisão
  else if (lb_operador.Text = '/') then
  begin
    resultado := n1 / n2;
  end;}

  //Utilizando o switch

  case op of
    '+': begin
      resultado := n1 + n2;
    end;

    '-': begin
      resultado := n1 - n2;
    end;

    'x': begin
      resultado := n1 * n2;
    end;

    '/': begin
      resultado := n1 / n2;
    end;
  end;

  ShowMessage(floatToStr(resultado));
  lb_num1.Text := '';
  lb_num2.Text := '';
  lb_operador.Text := '.';
  btn_somar.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_multi.Enabled := true;
  btn_dividir.Enabled := true;
end;

procedure TForm1.btn_multiClick(Sender: TObject);
begin
  lb_operador.Text := 'x';
  btn_somar.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_multi.Enabled := false;
  btn_dividir.Enabled := true;
end;

procedure TForm1.btn_pontoClick(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
  begin
    lb_num1.Text := lb_num1.Text + ',';
  end
  else
  begin
      lb_num2.Text := lb_num2.Text + ',';
  end;
end;

procedure TForm1.btn_somarClick(Sender: TObject);
begin
  lb_operador.Text := '+';
  btn_somar.Enabled := false;
  btn_subtrair.Enabled := true;
  btn_multi.Enabled := true;
  btn_dividir.Enabled := true;
end;

procedure TForm1.btn_subtrairClick(Sender: TObject);
begin
  lb_operador.Text := '-';
  btn_somar.Enabled := true;
  btn_subtrair.Enabled := false;
  btn_multi.Enabled := true;
  btn_dividir.Enabled := true;
end;

end.
