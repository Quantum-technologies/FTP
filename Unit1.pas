unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Psock, NMFtp;

type
  TFTPclient = class(TForm)
    Label1: TLabel;
    ftpserver: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    name: TEdit;
    pass: TEdit;
    port: TEdit;
    Button1: TButton;
    Button2: TButton;
    status1: TMemo;
    del: TEdit;
    cd: TEdit;
    cmd: TEdit;
    md: TEdit;
    rd: TEdit;
    download: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Open1: TOpenDialog;
    Save1: TSaveDialog;
    ftp: TNMFTP;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ftpAuthenticationFailed(var Handled: Boolean);
    procedure ftpConnect(Sender: TObject);
    procedure ftpConnectionFailed(Sender: TObject);
    procedure ftpDisconnect(Sender: TObject);
    procedure ftpError(Sender: TComponent; Errno: Word; Errmsg: String);
    procedure ftpInvalidHost(var Handled: Boolean);
    procedure ftpStatus(Sender: TComponent; Status: String);
    procedure ftpSuccess(Trans_Type: TCmdType);
    procedure ftpTransactionStart(Sender: TObject);
    procedure ftpTransactionStop(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTPclient: TFTPclient;

implementation

{$R *.dfm}

procedure TFTPclient.Button1Click(Sender: TObject);
begin
 ftp.Host:= ftpserver.Text; //ftp-������
 ftp.UserID:= name.Text;//�����
 ftp.Password:= pass.Text;// ������
 ftp.Port:= StrToInt(port.Text); //���� ��� �����������
 //����������� � ��������
 if not ftp.Connected then ftp.Connect;
end;

procedure TFTPclient.Button2Click(Sender: TObject);
begin
if ftp.Connected then//���� ��������
  ftp.Disconnect;//����������� �� �������
end;

procedure TFTPclient.Button4Click(Sender: TObject);
begin
ftp.Delete(del.text); //������� ����
end;

procedure TFTPclient.Button5Click(Sender: TObject);
begin
 ftp.ChangeDir(cd.Text); //�������� �������
end;

procedure TFTPclient.Button6Click(Sender: TObject);
begin
ftp.DoCommand(cmd.Text); //���������� �������
end;

procedure TFTPclient.Button7Click(Sender: TObject);
begin
ftp.MakeDirectory(md.Text); //������� �������
end;

procedure TFTPclient.Button8Click(Sender: TObject);
begin
ftp.RemoveDir(rd.Text); //������� �������
end;

procedure TFTPclient.Button9Click(Sender: TObject);
begin
 //�������� ����������� ���� ���������� �����
 if Save1.Execute
 then //��������� ��������� ����
  ftp.Download(download.Text, save1.FileName)
 else ShowMessage('File not saved!'); {���� ������������ ��������� ��������� ����}
end;

procedure TFTPclient.Button3Click(Sender: TObject);
var
 i: integer;
 FName, temp: string; //��� ��������� ����� �����
begin
if not Open1.Execute then ShowMessage('���� �� ������!')
 else begin
 //������� ����������, ������� �������� ��� �����
 temp:= '';
 FName:= '';
 //�������� ��� �����
 for i := Length(Open1.FileName) downto 1 do
 begin
  if Open1.FileName[i] = '\' then break;
  temp:= temp+ Open1.FileName[i];
 end;
 for i:=length(temp) downto 1 do
  fname:= fname + temp[i];
  ftp.Upload(Open1.FileName, FName); //��������� ����
 end;
end;

procedure TFTPclient.ftpAuthenticationFailed(var Handled: Boolean);
begin
 status1.Lines.Add('�������� ��� ��� ������');
end;

procedure TFTPclient.ftpConnect(Sender: TObject);
begin
status1.Lines.Add('����������');
 //��������� ip-�����
 status1.Lines.Add('IP �������: ' + ftp.LocalIP);
 //��������� ip-�����
 status1.Lines.Add('IP�������: ' + ftp.RemoteIP);
end;

procedure TFTPclient.ftpConnectionFailed(Sender: TObject);
begin
status1.Lines.Add('He ������� ������������ � �������');
end;

procedure TFTPclient.ftpDisconnect(Sender: TObject);
begin
status1.Lines.Add('���������');
end;

procedure TFTPclient.ftpError(Sender: TComponent; Errno: Word; Errmsg: String);
begin
status1.Lines.Add('������: ' + errmsg);
end;

procedure TFTPclient.ftpInvalidHost(var Handled: Boolean);
begin
status1.Lines.Add('������ ��� ����������� � �������');
end;

procedure TFTPclient.ftpStatus(Sender: TComponent; Status: String);
begin
status1.Lines.Add(Status);
end;

procedure TFTPclient.ftpSuccess(Trans_Type: TCmdType);
begin
status1.Lines.Add('�������');
end;

procedure TFTPclient.ftpTransactionStart(Sender: TObject);
begin
status1.Lines.Add('������ �������� ������');
end;

procedure TFTPclient.ftpTransactionStop(Sender: TObject);
begin
status1.Lines.Add('����� �������� ������');
end;

end.
