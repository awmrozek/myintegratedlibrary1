unit GlowneOknoSklep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    TranzystoryShow2: TSpeedButton;
    TranzystoryShow1: TSpeedButton;
    procedure TranzystoryShow1Click(Sender: TObject);
    procedure TranzystoryShow2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.TranzystoryShow1Click(Sender: TObject);
begin
  Tranzystory.Show;
end;

procedure TForm1.TranzystoryShow2Click(Sender: TObject);
begin
  Tranzystory2.Show;
end;

end.
