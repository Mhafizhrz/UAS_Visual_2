unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    cbb1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    Label9: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure edt7Change(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;

implementation

uses
  Unit2, Unit3;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
btn6.Enabled:= False;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('insert into kustomer values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+cbb1.Text+'")');
DataModule2.zqry1.ExecSQL ;

DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('select * from kustomer');
DataModule2.zqry1.Open;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('update kustomer set nik="'+edt1.Text+'",nama="'+edt2.Text+'",telp="'+edt3.Text+'",email="'+edt4.Text+'",alamat="'+edt5.Text+'",member="'+cbb1.Text+'" where id= "'+a+'"');
DataModule2.zqry1.ExecSQL ;

DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('select * from kustomer');
DataModule2.zqry1.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('delete from kustomer where id= "'+a+'"');
DataModule2.zqry1.ExecSQL ;

DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('select * from kustomer');
DataModule2.zqry1.Open;
ShowMessage('Data Berhasil Dihapus!');
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
cbb1.Clear;
btn1.Enabled:= True;
btn2.Enabled:= True;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
btn6.Enabled:= True;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
  if cbb1.Text = 'yes' then
  begin
    edt6.Text:= '10';
  end else
  if cbb1.Text = 'no' then
  begin
    edt6.Text:= '5';
  end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule2.zqry1.Fields[1].AsString;
edt2.Text:= DataModule2.zqry1.Fields[2].AsString;
edt3.Text:= DataModule2.zqry1.Fields[3].AsString;
edt4.Text:= DataModule2.zqry1.Fields[4].AsString;
edt5.Text:= DataModule2.zqry1.Fields[5].AsString;
cbb1.Text:= DataModule2.zqry1.Fields[6].AsString;
a:= DataModule2.zqry1.Fields[0].AsString;
end;

procedure TForm1.edt7Change(Sender: TObject);
begin
  with DataModule2.zqry1 do
  begin
    SQL.Clear;
    SQL.Add('select * from kustomer where nama like "%'+edt7.Text+'%"');
    Open;
  end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
Form3.QuickRep1.Preview;
end;

end.
