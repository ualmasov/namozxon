program Namozxon;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Main,
  Settings, About, Details, Translit, Actions, ImagesLoad, ShowDetails
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Namozxon';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormSettings, FormSettings);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.CreateForm(TFormDetails, FormDetails);
  Application.Run;
end.

