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
unit Settings;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ButtonPanel,
  IniPropStorage, StdCtrls, ComCtrls, ExtCtrls;

type

  { TFormSettings }

  TFormSettings = class(TForm)
    ButtonPanel1: TButtonPanel;
    CheckBox1: TCheckBox;
    ComboBoxTranslit: TComboBox;
    GroupBox1: TGroupBox;
    GroupBoxInterface: TGroupBox;
    GroupBoxTray: TGroupBox;
    IniPropStorage1: TIniPropStorage;
    LabelTranslit: TLabel;
    LabelTimeout: TLabel;
    LabelTimeoutValue: TLabel;
    LabelInterval: TLabel;
    LabelIntervalValue: TLabel;
    RadioButton0: TRadioButton;
    RadioButton1: TRadioButton;
    TrackBarTimeout: TTrackBar;
    TrackBarInterval: TTrackBar;
    procedure CancelButtonClick(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormSettings: TFormSettings;

implementation
uses
  Main;

{$R *.lfm}

{ TFormSettings }

// Созламалар файли жойлашувини белгилаш
procedure TFormSettings.FormCreate(Sender: TObject);
begin
  IniPropStorage1.IniFileName:=GetAppConfigDir(false)+'namozxon.ini';
end;

procedure TFormSettings.CheckBox1Change(Sender: TObject);
begin
  if CheckBox1.Checked = true then
    begin
      LabelTimeout.Enabled:=true;
      TrackBarTimeout.Enabled:=true;
      LabelTimeoutValue.Enabled:=true;
      LabelInterval.Enabled:=true;
      TrackBarInterval.Enabled:=true;
      LabelIntervalValue.Enabled:=true;
    end
  else
    begin
      LabelTimeout.Enabled:=false;
      TrackBarTimeout.Enabled:=false;
      LabelTimeoutValue.Enabled:=false;
      LabelInterval.Enabled:=false;
      TrackBarInterval.Enabled:=false;
      LabelIntervalValue.Enabled:=false;
    end;
end;

procedure TFormSettings.FormActivate(Sender: TObject);
begin
  FormMain.IniPropStorage1.Save;
  IniPropStorage1.Save;
end;

procedure TFormSettings.FormClose(Sender: TObject);
begin
  IniPropStorage1.Restore;// Созламаларни тиклаш
end;

procedure TFormSettings.OKButtonClick(Sender: TObject);
begin
  FormMain.TrayIcon1.BalloonTimeout:=TrackBarTimeout.Position*1000;
  FormMain.Timer1.Interval:=TrackBarInterval.Position*60000;
  FormMain.ProcedureAmallar;
  if ComboBoxTranslit.Text = 'Кирилл' then FormMain.ProcedureInterfaceKirill
  else
    FormMain.ProcedureInterfaceLotin;
  FormMain.IniPropStorage1.Save;
  IniPropStorage1.Save;
end;

procedure TFormSettings.CancelButtonClick(Sender: TObject);
begin
  IniPropStorage1.Restore;// Созламаларни тиклаш
end;

end.

