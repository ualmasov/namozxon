{
 ***************************************************************************
 *                                                                         *
 *   This source is free software; you can redistribute it and/or modify   *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 3 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This code is distributed in the hope that it will be useful, but      *
 *   WITHOUT ANY WARRANTY; without even the implied warranty of            *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU     *
 *   General Public License for more details.                              *
 *                                                                         *
 *   A copy of the GNU General Public License is available on the World    *
 *   Wide Web at <http://www.gnu.org/copyleft/gpl.html>. You can also      *
 *   obtain it by writing to the Free Software Foundation,                 *
 *   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.        *
 *                                                                         *
 ***************************************************************************
}
unit Details;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, LCLIntf, LCLType, ComCtrls, ExtCtrls, Buttons,
  StdCtrls, BASS;

type

  { TFormDetails }

  TFormDetails = class(TForm)
    LabelAlaAr, LabelAlaTrans, LabelAlaUz, LabelAlhamdulillahAr,
    LabelAlhamdulillahTrans, LabelAlhamdulillahUz, LabelDuoAr, LabelDuoTrans,
    LabelDuoUz, LabelAzonBomdodDesc, LabelAzonBomdodAr, LabelAzonBomdodTrans,
    LabelAzonBomdodUz, LabelAzonDesc, LabelAzonAr, LabelAzonTrans, LabelAzonUz,
    LabelAziymAr, LabelAziymTrans, LabelAziymUz, LabelAzonDuoAr,
    LabelAzonDuoTrans, LabelAzonDuoUz, LabelBasmalaAr, LabelBasmalaTrans,
    LabelBasmalaUz, LabelFotihaAr, LabelFotihaTrans, LabelFotihaUz, LabelFalaqAr,
    LabelFalaqTrans, LabelFalaqUz, LabelIqomatDesc, LabelIqomatAr,
    LabelIqomatTrans, LabelIqomatUz, LabelIxlosAr, LabelIxlosTrans, LabelIxlosUz,
    LabelKavsarAr, LabelKavsarTrans, LabelKavsarUz, LabelQunutAr,
    LabelQunutTrans, LabelQunutUz, LabelKursiAr, LabelKursiTrans, LabelKursiUz,
    LabelNasAr, LabelNasTrans, LabelNasUz, LabelHamdAr, LabelHamdTrans,
    LabelHamdUz, LabelRobbanaAr, LabelRobbanaTrans, LabelRobbanaUz,
    LabelSalavotAr, LabelSalavotTrans, LabelSalavotUz, LabelSalomAr,
    LabelSalomTrans, LabelSalomUz, LabelSamiallohAr, LabelSamiallohTrans,
    LabelSamiallohUz, LabelSanoAr, LabelSanoTrans, LabelSanoUz,
    LabelSubhanallohAr, LabelSubhanallohTrans, LabelSubhanallohUz,
    LabelTaavvuzAr, LabelTaavvuzTrans, LabelTaavvuzUz, LabelTakbirAr,
    LabelTakbirTrans, LabelTakbirUz, LabelTakbirAr1, LabelTakbirTrans1,
    LabelTakbirUz1, LabelTashahhudAr, LabelTashahhudTrans, LabelTashahhudUz,
    LabelTavhidAr, LabelTavhidTrans, LabelTavhidUz: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    ButtonPlay, ButtonPause, ButtonStop: TSpeedButton;
    PanelSubhanalloh, PanelAlhamdilillah, PanelTakbir: TPanel;
    TabSheetAzonBomdod, TabSheetKavsar, TabSheetIxlos, TabSheetFalaq,
    TabSheetNas, TabSheetAziym, TabSheetSamialloh, TabSheetHamd, TabSheetAla,
    TabSheetTashahhud, TabSheetSalavot, TabSheetAzon, TabSheetRobbana,
    TabSheetSalom, TabSheetQunut, TabSheetDuo, TabSheetTasbeh, TabSheetKursi,
    TabSheetAzonDuo, TabSheetIqomat, TabSheetTakbir, TabSheetSano,
    TabSheetTaavvuz, TabSheetBasmala, TabSheetFotiha: TTabSheet;
    Timer1: TTimer;
    procedure ButtonPlayClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure ButtonPauseClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ChannelPos;
  private
    str: HSTREAM;
    procedure Error(msg: string);
  public
    { public declarations }
  end;

var
  FormDetails: TFormDetails;

implementation

{$R *.lfm}

{ TFormDetails }

procedure TFormDetails.Error(msg: string);
var
  s: string;
begin
  s := msg + #13#10 + '(Хато коди: ' + IntToStr(BASS_ErrorGetCode) + ')';
  MessageBox(Handle, PChar(s), nil, 0);
end;

procedure TFormDetails.FormActivate(Sender: TObject);
var
  f: PChar;
begin
  if (HIWORD(BASS_GetVersion) <> BASSVERSION) then
    begin
      MessageBox(0,'Юкланган BASS.DLL версияси нотўғри',nil,MB_ICONERROR);
      Halt;
    end;
  if not BASS_Init(-1, 44100, 0, Handle, nil) then
    Error('Овоз инициализацияси хатоси!');

  case PageControl1.ActivePageIndex of
  0: if FileExists ('ovozlar/azonbomdod.ogg') then
       begin
         f := PChar('ovozlar/azonbomdod.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  1: if FileExists ('ovozlar/azon.ogg') then
       begin
         f := PChar('ovozlar/azon.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  2: if FileExists ('ovozlar/azonduo.ogg') then
        begin
         f := PChar('ovozlar/azonduo.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  3: if FileExists ('ovozlar/iqomat.ogg') then
        begin
         f := PChar('ovozlar/iqomat.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  4: if FileExists ('ovozlar/takbir.ogg') then
        begin
         f := PChar('ovozlar/takbir.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  5: if FileExists ('ovozlar/sano.ogg') then
        begin
         f := PChar('ovozlar/sano.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  6: if FileExists ('ovozlar/taavvuz.ogg') then
        begin
         f := PChar('ovozlar/taavvuz.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  7:  if FileExists ('ovozlar/basmala.ogg') then
        begin
         f := PChar('ovozlar/basmala.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  8: if FileExists ('ovozlar/fotiha.ogg') then
        begin
         f := PChar('ovozlar/fotiha.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  9: if FileExists ('ovozlar/kavsar.ogg') then
        begin
         f := PChar('ovozlar/kavsar.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  10: if FileExists ('ovozlar/ixlos.ogg') then
        begin
         f := PChar('ovozlar/ixlos.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  11: if FileExists ('ovozlar/falaq.ogg') then
        begin
         f := PChar('ovozlar/falaq.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  12: if FileExists ('ovozlar/nas.ogg') then
        begin
         f := PChar('ovozlar/nas.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  13: if FileExists ('ovozlar/aziym.ogg') then
        begin
         f := PChar('ovozlar/aziym.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  14: if FileExists ('ovozlar/samialloh.ogg') then
        begin
         f := PChar('ovozlar/samialloh.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  15: if FileExists ('ovozlar/hamd.ogg') then
        begin
         f := PChar('ovozlar/hamd.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  16: if FileExists ('ovozlar/ala.ogg') then
        begin
         f := PChar('ovozlar/ala.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  17: if FileExists ('ovozlar/tashahhud.ogg') then
        begin
         f := PChar('ovozlar/tashahhud.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  18: if FileExists ('ovozlar/salavot.ogg') then
        begin
         f := PChar('ovozlar/salavot.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  19: if FileExists ('ovozlar/robbana.ogg') then
        begin
         f := PChar('ovozlar/robbana.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  20: if FileExists ('ovozlar/salom.ogg') then
        begin
         f := PChar('ovozlar/salom.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  21: if FileExists ('ovozlar/qunut.ogg') then
        begin
         f := PChar('ovozlar/qunut.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  22: if FileExists ('ovozlar/duo.ogg') then
        begin
         f := PChar('ovozlar/duo.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  23: if FileExists ('ovozlar/tasbeh.ogg') then
        begin
         f := PChar('ovozlar/tasbeh.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  24: if FileExists ('ovozlar/kursi.ogg') then
        begin
         f := PChar('ovozlar/kursi.ogg');
         ButtonPlay.Enabled:=true;
       end
      else
        ButtonPlay.Enabled:=false;
  end;
  str := BASS_StreamCreateFile(False, f, 0, 0, 0);
end;

procedure TFormDetails.ChannelPos;
begin
  Timer1.Interval:=Trunc(BASS_ChannelBytes2Seconds(str,(BASS_ChannelGetLength(
                             str, 0)) - BASS_ChannelGetPosition(str, 0)))*1000;
  Timer1.Enabled:=true;
end;

procedure TFormDetails.ButtonPlayClick(Sender: TObject);
begin
  BASS_ChannelPlay(str, true);
  ChannelPos;
  ButtonPlay.Enabled:=false;
  ButtonPause.Enabled:=true;
  ButtonStop.Enabled:=true;
end;

procedure TFormDetails.ButtonPauseClick(Sender: TObject);
begin
  if BASS_ChannelIsActive(str) = BASS_ACTIVE_PLAYING then
    begin
     BASS_ChannelPause(str);
     Timer1.Enabled:=false;
    end
  else
    begin
      BASS_ChannelPlay(str, false);
      ChannelPos;
    end;
  ButtonPlay.Enabled:=false;
  ButtonPause.Enabled:=true;
  ButtonStop.Enabled:=true;
end;

procedure TFormDetails.ButtonStopClick(Sender: TObject);
begin
  BASS_ChannelStop(str);
  ButtonPlay.Enabled:=true;
  ButtonPause.Enabled:=false;
  ButtonStop.Enabled:=false;
end;

procedure TFormDetails.Timer1Timer(Sender: TObject);
begin
  ButtonPlay.Enabled:=true;
  ButtonPause.Enabled:=false;
  ButtonStop.Enabled:=false;
end;

procedure TFormDetails.FormClose(Sender: TObject);
begin
  BASS_Free();
  ButtonPlay.Enabled:=true;
  ButtonPause.Enabled:=false;
  ButtonStop.Enabled:=false;
  Timer1.Enabled:=false;
end;

end.

