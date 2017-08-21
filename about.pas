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
unit About;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, ComCtrls, StdCtrls, ExtCtrls, LCLIntf, Settings;

type

  { TFormAbout }

  TFormAbout = class(TForm)
    Image1: TImage;
    LabelBasmala, LabelQuron, LabelHadis, LabelDescription, LabelEmail,
    LabelCopyright, LabelName: TLabel;
    MemoLicense, MemoBASSLicense: TMemo;
    PageControl1: TPageControl;
    TabSheetNamozxon, TabSheetLicense, TabSheetBASSLicense: TTabSheet;
    procedure FormActivate(Sender: TObject);
    procedure LabelEmailClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.lfm}

{ TFormAbout }

procedure TFormAbout.FormActivate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  if FileExists ('license.txt') then
    MemoLicense.Lines.LoadFromFile('license.txt')
  else
    if FormSettings.ComboBoxTranslit.Text = 'Кирилл' then
      begin
        MemoLicense.Lines.Clear;
        MemoLicense.Lines.Add('Лицензия файли топилмади.');
      end
  else
    begin
      MemoLicense.Lines.Clear;
      MemoLicense.Lines.Add('Litsenziya fayli topilmadi.');
    end;

  if FileExists ('bass_license.txt') then
    MemoBASSLicense.Lines.LoadFromFile('bass_license.txt')
  else
    if FormSettings.ComboBoxTranslit.Text = 'Кирилл' then
      begin
         MemoBASSLicense.Lines.Clear;
         MemoBASSLicense.Lines.Add('Лицензия файли топилмади.');
      end
  else
    begin
      MemoBASSLicense.Lines.Clear;
      MemoBASSLicense.Lines.Add('Litsenziya fayli topilmadi.');
    end;
end;

procedure TFormAbout.LabelEmailClick(Sender: TObject);
begin
  OpenURL('mailto:umidjonalmasov@gmail.com');
end;

end.

