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

unit ShowDetails;

{$mode objfpc}{$H+}

interface

uses
  Classes;

procedure ProcAziym;
procedure ProcAla;
procedure ProcDuo;
procedure ProcAzonDuo;
procedure ProcAzon;
procedure ProcBasmala;
procedure ProcFalaq;
procedure ProcFotiha;
procedure ProcIqomat;
procedure ProcIxlos;
procedure ProcKavsar;
procedure ProcKursi;
procedure ProcNas;
procedure ProcRobbana;
procedure ProcHamd;
procedure ProcSalavot;
procedure ProcSalom;
procedure ProcSamialloh;
procedure ProcSano;
procedure ProcTaavvuz;
procedure ProcTakbir;
procedure ProcTasbeh;
procedure ProcTashahhud;

implementation

uses
  Details, Translit;

procedure ProcAziym;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure ProcAla;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure ProcDuo;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetDuo;
  FormDetails.Caption:=Duo;
  FormDetails.ShowModal;
end;

procedure ProcAzonDuo;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzonDuo;
  FormDetails.Caption:=AzonDuo;
  FormDetails.ShowModal;
end;

procedure ProcAzon;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzon;
  FormDetails.Caption:=Azon;
  FormDetails.ShowModal;
end;

procedure ProcBasmala;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure ProcFalaq;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFalaq;
  FormDetails.Caption:=Falaq;
  FormDetails.ShowModal;
end;

procedure ProcFotiha;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure ProcIqomat;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIqomat;
  FormDetails.Caption:=Iqomat;
  FormDetails.ShowModal;
end;

procedure ProcIxlos;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIxlos;
  FormDetails.Caption:=Ixlos;
  FormDetails.ShowModal;
end;

procedure ProcKavsar;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKavsar;
  FormDetails.Caption:=Kavsar;
  FormDetails.ShowModal;
end;

procedure ProcKursi;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKursi;
  FormDetails.Caption:=Kursi;
  FormDetails.ShowModal;
end;

procedure ProcNas;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetNas;
  FormDetails.Caption:=Nas;
  FormDetails.ShowModal;
end;

procedure ProcRobbana;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure ProcHamd;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure ProcSalavot;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure ProcSalom;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure ProcSamialloh;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure ProcSano;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure ProcTaavvuz;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure ProcTakbir;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure ProcTasbeh;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTasbeh;
  FormDetails.Caption:=Tasbeh;
  FormDetails.ShowModal;
end;

procedure ProcTashahhud;
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

end.

