program ProjektOpisTranzystorow;

uses
  Forms,
  GlowneOknoSklep in 'GlowneOknoSklep.pas' {Form1},
  OknoTranzystory1 in 'img\OknoTranzystory1.pas' {Tranzystory},
  OknoTranzystory2 in 'img\OknoTranzystory2.pas' {Tranzystory2},
  OknoInfoTranzystor in 'img\OknoInfoTranzystor.pas' {WindowInfoTransistor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TTranzystory, Tranzystory);
  Application.CreateForm(TTranzystory2, Tranzystory2);
  Application.CreateForm(TWindowInfoTransistor, WindowInfoTransistor);
  Application.Run;
end.
