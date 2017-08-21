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

unit ImagesLoad;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

procedure ProcImagesLoad;
procedure ProcKirish;
procedure ProcQiyom;
procedure ProcRuku;
procedure ProcQovma;
procedure ProcSajda;
procedure ProcJalsa;
procedure ProcSalom;
procedure ProcDuo;

implementation

uses
  Main;

procedure ProcImagesLoad;
begin
  case FormMain.PageControlMain.ActivePageIndex of
  0: case FormMain.PageControlBomdod.ActivePageIndex of
     0: case FormMain.PageControlB2S.ActivePage.Caption of
        'Кириш':ProcKirish;
        'Қиём': ProcQiyom;
        'Рукуъ': ProcRuku;
        'Қовма': ProcQovma;
        'Сажда': ProcSajda;
        'Жалса', 'Қаъда': ProcJalsa;
        'Салом':
          begin
            ProcSalom;
            FormMain.ButtonNext.Enabled:=false;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        end;
     1: case FormMain.PageControlB2F.ActivePage.Caption of
        'Кириш':ProcKirish;
        'Қиём': ProcQiyom;
        'Рукуъ': ProcRuku;
        'Қовма': ProcQovma;
        'Сажда': ProcSajda;
        'Жалса', 'Қаъда': ProcJalsa;
        'Салом': ProcSalom;
        'Дуо':
          begin
            ProcDuo;
            FormMain.ButtonNext.Enabled:=false;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        end;
     end;
  1: case FormMain.PageControlPeshin.ActivePageIndex of
     0: case FormMain.PageControlP4S.ActivePage.Caption of
        'Кириш':ProcKirish;
        'Қиём': ProcQiyom;
        'Рукуъ': ProcRuku;
        'Қовма': ProcQovma;
        'Сажда': ProcSajda;
        'Жалса', 'Қаъда': ProcJalsa;
        'Салом':
          begin
            ProcSalom;
            FormMain.ButtonNext.Enabled:=false;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        end;
     1: case FormMain.PageControlP4F.ActivePage.Caption of
        'Кириш':ProcKirish;
        'Қиём': ProcQiyom;
        'Рукуъ': ProcRuku;
        'Қовма': ProcQovma;
        'Сажда': ProcSajda;
        'Жалса', 'Қаъда': ProcJalsa;
        'Салом': ProcSalom;
        'Дуо':
          begin
            ProcDuo;
            FormMain.ButtonNext.Enabled:=false;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        end;
     2: case FormMain.PageControlP2S.ActivePage.Caption of
        'Кириш':ProcKirish;
        'Қиём': ProcQiyom;
        'Рукуъ': ProcRuku;
        'Қовма': ProcQovma;
        'Сажда': ProcSajda;
        'Жалса', 'Қаъда': ProcJalsa;
        'Салом': ProcSalom;
        'Дуо':
          begin
            ProcDuo;
            FormMain.ButtonNext.Enabled:=false;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        end;
     end;
  2: case FormMain.PageControlA4F.ActivePage.Caption of
        'Кириш':ProcKirish;
        'Қиём': ProcQiyom;
        'Рукуъ': ProcRuku;
        'Қовма': ProcQovma;
        'Сажда': ProcSajda;
        'Жалса', 'Қаъда': ProcJalsa;
        'Салом': ProcSalom;
        'Дуо':
          begin
            ProcDuo;
            FormMain.ButtonNext.Enabled:=false;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        end;
  3: case FormMain.PageControlShom.ActivePageIndex of
     0: case FormMain.PageControlSh3F.ActivePage.Caption of
        'Кириш':ProcKirish;
        'Қиём': ProcQiyom;
        'Рукуъ': ProcRuku;
        'Қовма': ProcQovma;
        'Сажда': ProcSajda;
        'Жалса', 'Қаъда': ProcJalsa;
        'Салом': ProcSalom;
        'Дуо':
          begin
            ProcDuo;
            FormMain.ButtonNext.Enabled:=false;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        end;
     1: case FormMain.PageControlSh2S.ActivePage.Caption of
        'Кириш':ProcKirish;
        'Қиём': ProcQiyom;
        'Рукуъ': ProcRuku;
        'Қовма': ProcQovma;
        'Сажда': ProcSajda;
        'Жалса', 'Қаъда': ProcJalsa;
        'Салом': ProcSalom;
        'Дуо':
          begin
            ProcDuo;
            FormMain.ButtonNext.Enabled:=false;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        end;
     end;
  4: case FormMain.PageControlXufton.ActivePageIndex of
     0: case FormMain.PageControlX4F.ActivePage.Caption of
        'Кириш':ProcKirish;
        'Қиём': ProcQiyom;
        'Рукуъ': ProcRuku;
        'Қовма': ProcQovma;
        'Сажда': ProcSajda;
        'Жалса', 'Қаъда': ProcJalsa;
        'Салом': ProcSalom;
        'Дуо':
          begin
            ProcDuo;
            FormMain.ButtonNext.Enabled:=false;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        end;
     1: case FormMain.PageControlX2S.ActivePage.Caption of
        'Кириш':ProcKirish;
        'Қиём': ProcQiyom;
        'Рукуъ': ProcRuku;
        'Қовма': ProcQovma;
        'Сажда': ProcSajda;
        'Жалса', 'Қаъда': ProcJalsa;
        'Салом':
          begin
            ProcSalom;
            FormMain.ButtonNext.Enabled:=false;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        end;
     2: case FormMain.PageControlV3V.ActivePage.Caption of
        'Кириш':ProcKirish;
        'Қиём': ProcQiyom;
        'Рукуъ': ProcRuku;
        'Қовма': ProcQovma;
        'Сажда': ProcSajda;
        'Жалса', 'Қаъда': ProcJalsa;
        'Салом': ProcSalom;
        'Дуо':
          begin
            ProcDuo;
            FormMain.ButtonNext.Enabled:=false;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        end;
     end;
  end;
end;

procedure ProcKirish;
begin
  if FileExists ('tasvirlar/kirish-erkak.jpg') then
  FormMain.ImageErkak.Picture.LoadFromFile('tasvirlar/kirish-erkak.jpg')
  else FormMain.ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/kirish-ayol.jpg') then
  FormMain.ImageAyol.Picture.LoadFromFile('tasvirlar/kirish-ayol.jpg')
  else FormMain.ImageAyol.Picture.Clear;
  FormMain.ButtonPrevious.Enabled:=false;
  FormMain.ButtonNext.Enabled:=true;
end;

procedure ProcQiyom;
begin
  if FileExists ('tasvirlar/qiyom-erkak.jpg') then
  FormMain.ImageErkak.Picture.LoadFromFile('tasvirlar/qiyom-erkak.jpg')
  else FormMain.ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/qiyom-ayol.jpg') then
  FormMain.ImageAyol.Picture.LoadFromFile('tasvirlar/qiyom-ayol.jpg')
  else FormMain.ImageAyol.Picture.Clear;
  FormMain.ButtonPrevious.Enabled:=true;
  FormMain.ButtonNext.Enabled:=true;
end;

procedure ProcRuku;
begin
  if FileExists ('tasvirlar/ruku-erkak.jpg') then
  FormMain.ImageErkak.Picture.LoadFromFile('tasvirlar/ruku-erkak.jpg')
  else FormMain.ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/ruku-ayol.jpg') then
  FormMain.ImageAyol.Picture.LoadFromFile('tasvirlar/ruku-ayol.jpg')
  else FormMain.ImageAyol.Picture.Clear;
  FormMain.ButtonPrevious.Enabled:=true;
  FormMain.ButtonNext.Enabled:=true;
end;

procedure ProcQovma;
begin
  if FileExists ('tasvirlar/qovma-erkak.jpg') then
  FormMain.ImageErkak.Picture.LoadFromFile('tasvirlar/qovma-erkak.jpg')
  else FormMain.ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/qovma-ayol.jpg') then
  FormMain.ImageAyol.Picture.LoadFromFile('tasvirlar/qovma-ayol.jpg')
  else FormMain.ImageAyol.Picture.Clear;
  FormMain.ButtonPrevious.Enabled:=true;
  FormMain.ButtonNext.Enabled:=true;
end;

procedure ProcSajda;
begin
  if FileExists ('tasvirlar/sajda-erkak.jpg') then
  FormMain.ImageErkak.Picture.LoadFromFile('tasvirlar/sajda-erkak.jpg')
  else FormMain.ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/sajda-ayol.jpg') then
  FormMain.ImageAyol.Picture.LoadFromFile('tasvirlar/sajda-ayol.jpg')
  else FormMain.ImageAyol.Picture.Clear;
  FormMain.ButtonPrevious.Enabled:=true;
  FormMain.ButtonNext.Enabled:=true;
end;

procedure ProcJalsa;
begin
  if FileExists ('tasvirlar/jalsa-erkak.jpg') then
  FormMain.ImageErkak.Picture.LoadFromFile('tasvirlar/jalsa-erkak.jpg')
  else FormMain.ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/jalsa-ayol.jpg') then
  FormMain.ImageAyol.Picture.LoadFromFile('tasvirlar/jalsa-ayol.jpg')
  else FormMain.ImageAyol.Picture.Clear;
  FormMain.ButtonPrevious.Enabled:=true;
  FormMain.ButtonNext.Enabled:=true;
end;

procedure ProcSalom;
begin
  if FileExists ('tasvirlar/salom-erkak.jpg') then
  FormMain.ImageErkak.Picture.LoadFromFile('tasvirlar/salom-erkak.jpg')
  else FormMain.ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/salom-ayol.jpg') then
  FormMain.ImageAyol.Picture.LoadFromFile('tasvirlar/salom-ayol.jpg')
  else FormMain.ImageAyol.Picture.Clear;
end;

procedure ProcDuo;
begin
  if FileExists ('tasvirlar/duo-erkak.jpg') then
  FormMain.ImageErkak.Picture.LoadFromFile('tasvirlar/duo-erkak.jpg')
  else FormMain.ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/duo-ayol.jpg') then
  FormMain.ImageAyol.Picture.LoadFromFile('tasvirlar/duo-ayol.jpg')
  else FormMain.ImageAyol.Picture.Clear;
end;

end.

