program Project1;

uses
  Forms,
  Unit1 in '..\FTPclient\Unit1.pas' {FTPclient};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFTPclient, FTPclient);
  Application.Run;
end.
