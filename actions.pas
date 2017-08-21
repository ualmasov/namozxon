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

unit Actions;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

procedure Amallar;

var
  StringListAmallar: TStringList;

implementation

uses
  Main, Settings;

procedure Amallar;
var
  i, j: integer;
begin
  if FormSettings.CheckBox1.Checked = true then
  begin
    StringListAmallar:= TStringList.Create;
    Randomize;
    i:=Random(11);
    if FormSettings.ComboBoxTranslit.Text = 'Кирилл' then
    begin
      case i of
      0:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozning_shartlari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozning_shartlari.txt')
          else StringListAmallar.Add('namozning_shartlari.txt файли топилмади');
          FormMain.TrayIcon1.BalloonTitle:='НАМОЗНИНГ ШАРТЛАРИ';
        end;
      1:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namoz_ruknlari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namoz_ruknlari.txt')
          else StringListAmallar.Add('namoz_ruknlari.txt файли топилмади');
          FormMain.TrayIcon1.BalloonTitle:='НАМОЗ РУКНЛАРИ';
        end;
      2:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozning_vojiblari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozning_vojiblari.txt')
          else StringListAmallar.Add('namozning_vojiblari.txt файли топилмади');
          FormMain.TrayIcon1.BalloonTitle:='НАМОЗНИНГ ВОЖИБЛАРИ';
        end;
      3:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozning_sunnatlari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozning_sunnatlari.txt')
          else StringListAmallar.Add('namozning_sunnatlari.txt файли топилмади');
          FormMain.TrayIcon1.BalloonTitle:='НАМОЗНИНГ СУННАТЛАРИ';
        end;
      4:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozning_mustahablari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozning_mustahablari.txt')
          else StringListAmallar.Add('namozning_mustahablari.txt файли топилмади');
          FormMain.TrayIcon1.BalloonTitle:='НАМОЗНИНГ МУСТАҲАБЛАРИ';
        end;
      5:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozdagi_harom_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozdagi_harom_amallar.txt')
          else StringListAmallar.Add('namozdagi_harom_amallar.txt файли топилмади');
          FormMain.TrayIcon1.BalloonTitle:='НАМОЗДАГИ ҲАРОМ АМАЛЛАР';
        end;
      6:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozning_mubohlari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozning_mubohlari.txt')
          else StringListAmallar.Add('namozning_mubohlari.txt файли топилмади');
          FormMain.TrayIcon1.BalloonTitle:='НАМОЗНИНГ МУБОҲЛАРИ (РУХСАТ ЭТИЛГАНЛАРИ)';
        end;
      7:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozni_buzuvchi_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozni_buzuvchi_amallar.txt')
          else StringListAmallar.Add('namozni_buzuvchi_amallar.txt файли топилмади');
          FormMain.TrayIcon1.BalloonTitle:='НАМОЗНИ БУЗУВЧИ АМАЛЛАР';
        end;
      8:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozdagi_makruh_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozdagi_makruh_amallar.txt')
          else StringListAmallar.Add('namozdagi_makruh_amallar.txt файли топилмади');
          FormMain.TrayIcon1.BalloonTitle:='НАМОЗДАГИ МАКРУҲ АМАЛЛАР';
        end;
      9:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/makruh_bolmagan_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/makruh_bolmagan_amallar.txt')
          else StringListAmallar.Add('makruh_bolmagan_amallar.txt файли топилмади');
          FormMain.TrayIcon1.BalloonTitle:='МАКРУҲ БЎЛМАГАН АМАЛЛАР';
        end;
      10:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozning_odoblari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozning_odoblari.txt')
          else StringListAmallar.Add('namozning_odoblari.txt файли топилмади');
          FormMain.TrayIcon1.BalloonTitle:='НАМОЗНИНГ ОДОБЛАРИ';
        end;
      end;
    end
    else
      begin
      case i of
      0:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozning_shartlari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozning_shartlari.txt')
          else StringListAmallar.Add('namozning_shartlari.txt fayli topilmadi');
          FormMain.TrayIcon1.BalloonTitle:='NAMOZNING SHARTLARI';
        end;
      1:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namoz_ruknlari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namoz_ruknlari.txt')
          else StringListAmallar.Add('namoz_ruknlari.txt fayli topilmadi');
          FormMain.TrayIcon1.BalloonTitle:='NAMOZ RUKNLARI';
        end;
      2:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozning_vojiblari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozning_vojiblari.txt')
          else StringListAmallar.Add('namozning_vojiblari.txt fayli topilmadi');
          FormMain.TrayIcon1.BalloonTitle:='NAMOZNING VOJIBLARI';
        end;
      3:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozning_sunnatlari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozning_sunnatlari.txt')
          else StringListAmallar.Add('namozning_sunnatlari.txt fayli topilmadi');
          FormMain.TrayIcon1.BalloonTitle:='NAMOZNING SUNNATLARI';
        end;
      4:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozning_mustahablari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozning_mustahablari.txt')
          else StringListAmallar.Add('namozning_mustahablari.txt fayli topilmadi');
          FormMain.TrayIcon1.BalloonTitle:='NAMOZNING MUSTAHABLARI';
        end;
      5:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozdagi_harom_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozdagi_harom_amallar.txt')
          else StringListAmallar.Add('namozdagi_harom_amallar.txt fayli topilmadi');
          FormMain.TrayIcon1.BalloonTitle:='NAMOZDAGI HAROM AMALLAR';
        end;
      6:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozning_mubohlari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozning_mubohlari.txt')
          else StringListAmallar.Add('namozning_mubohlari.txt fayli topilmadi');
          FormMain.TrayIcon1.BalloonTitle:='NAMOZNING MUBOHLARI (RUXSAT ETILGANLARI)';
        end;
      7:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozni_buzuvchi_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozni_buzuvchi_amallar.txt')
          else StringListAmallar.Add('namozni_buzuvchi_amallar.txt fayli topilmadi');
          FormMain.TrayIcon1.BalloonTitle:='NAMOZNI BUZUVCHI AMALLAR';
        end;
      8:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozdagi_makruh_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozdagi_makruh_amallar.txt')
          else StringListAmallar.Add('namozdagi_makruh_amallar.txt fayli topilmadi');
          FormMain.TrayIcon1.BalloonTitle:='NAMOZDAGI MAKRUH AMALLAR';
        end;
      9:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/makruh_bolmagan_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/makruh_bolmagan_amallar.txt')
          else StringListAmallar.Add('makruh_bolmagan_amallar.txt fayli topilmadi');
          FormMain.TrayIcon1.BalloonTitle:='MAKRUH BO''LMAGAN AMALLAR';
        end;
      10:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozning_odoblari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozning_odoblari.txt')
          else StringListAmallar.Add('namozning_odoblari.txt fayli topilmadi');
          FormMain.TrayIcon1.BalloonTitle:='NAMOZNING ODOBLARI';
        end;
      end;
    end;
    j:=Random(StringListAmallar.Count);
    FormMain.TrayIcon1.BalloonHint:=StringListAmallar[j];
    FormMain.TrayIcon1.Visible:=true;
    FormMain.Trayicon1.ShowBalloonHint;
    FormMain.Timer1.Enabled:=true;
  end
  else
  begin
    FormMain.TrayIcon1.Visible:=false;
    FormMain.Timer1.Enabled:=false;
  end;
end;

end.

