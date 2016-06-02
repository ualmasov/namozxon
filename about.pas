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
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  StdCtrls, ExtCtrls, LCLIntf;

type

  { TFormAbout }

  TFormAbout = class(TForm)
    Image1: TImage;
    LabelQuron: TLabel;
    LabelHadis: TLabel;
    LabelDescription: TLabel;
    LabelEmail: TLabel;
    LabelCopyright: TLabel;
    LabelName: TLabel;
    LabelBasmala: TLabel;
    MemoBASSLicense: TMemo;
    MemoLicense: TMemo;
    PageControl1: TPageControl;
    TabSheetBASSLicense: TTabSheet;
    TabSheetNamozxon: TTabSheet;
    TabSheetLicense: TTabSheet;
    procedure FormCreate(Sender: TObject);
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

procedure TFormAbout.FormCreate(Sender: TObject);
begin
  if FileExists ('license.txt') then
    MemoLicense.Lines.LoadFromFile('license.txt')
  else
    MemoLicense.Lines.Add('Лицензия файли топилмади.');
  if FileExists ('bass_license.txt') then
    MemoBASSLicense.Lines.LoadFromFile('bass_license.txt')
  else
    MemoBASSLicense.Lines.Add('Лицензия файли топилмади.')
end;

procedure TFormAbout.LabelEmailClick(Sender: TObject);
begin
  OpenURL('mailto:u.almasov@gmail.com');
end;

end.

