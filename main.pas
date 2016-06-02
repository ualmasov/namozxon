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
unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, StdCtrls, Buttons, Menus, IniPropStorage, Settings, About, Details;

type

  { TFormMain }

  TFormMain = class(TForm)
    ButtonAla1_1V3V: TSpeedButton;
    ButtonAla1_1X2S: TSpeedButton;
    ButtonAla1_1X4F: TSpeedButton;
    ButtonAla1_1Sh2S: TSpeedButton;
    ButtonAla1_1Sh3F: TSpeedButton;
    ButtonAla1_1B2F: TSpeedButton;
    ButtonAla1_1P2S: TSpeedButton;
    ButtonAla1_1A4F: TSpeedButton;
    ButtonAla1_1P4S: TSpeedButton;
    ButtonAla1_1P4F: TSpeedButton;
    ButtonAla1_2V3V: TSpeedButton;
    ButtonAla1_2X2S: TSpeedButton;
    ButtonAla1_2X4F: TSpeedButton;
    ButtonAla1_2Sh2S: TSpeedButton;
    ButtonAla1_2Sh3F: TSpeedButton;
    ButtonAla1_2B2S: TSpeedButton;
    ButtonAla1_2B2F: TSpeedButton;
    ButtonAla1_2P2S: TSpeedButton;
    ButtonAla1_2A4F: TSpeedButton;
    ButtonAla1_2P4S: TSpeedButton;
    ButtonAla1_2P4F: TSpeedButton;
    ButtonAla2_1V3V: TSpeedButton;
    ButtonAla2_1X2S: TSpeedButton;
    ButtonAla2_1X4F: TSpeedButton;
    ButtonAla2_1Sh2S: TSpeedButton;
    ButtonAla2_1Sh3F: TSpeedButton;
    ButtonAla2_1B2S: TSpeedButton;
    ButtonAla2_1B2F: TSpeedButton;
    ButtonAla2_1P2S: TSpeedButton;
    ButtonAla2_1A4F: TSpeedButton;
    ButtonAla2_1P4S: TSpeedButton;
    ButtonAla2_1P4F: TSpeedButton;
    ButtonAla2_2V3V: TSpeedButton;
    ButtonAla2_2X2S: TSpeedButton;
    ButtonAla2_2X4F: TSpeedButton;
    ButtonAla2_2Sh2S: TSpeedButton;
    ButtonAla2_2Sh3F: TSpeedButton;
    ButtonAla2_2P2S: TSpeedButton;
    ButtonAla2_2P4F: TSpeedButton;
    ButtonAla2_2A4F: TSpeedButton;
    ButtonAla3_1A4F: TSpeedButton;
    ButtonAla3_1V3V: TSpeedButton;
    ButtonAla3_1X4F: TSpeedButton;
    ButtonAla3_1Sh3F: TSpeedButton;
    ButtonAla3_1P4S: TSpeedButton;
    ButtonAla2_2B2S: TSpeedButton;
    ButtonAla2_2B2F: TSpeedButton;
    ButtonAla2_2P4S: TSpeedButton;
    ButtonAla3_2A4F: TSpeedButton;
    ButtonAla3_2V3V: TSpeedButton;
    ButtonAla3_2X4F: TSpeedButton;
    ButtonAla3_2Sh3F: TSpeedButton;
    ButtonAla3_2P4S: TSpeedButton;
    ButtonAla3_1P4F: TSpeedButton;
    ButtonAla3_2P4F: TSpeedButton;
    ButtonAla4_1A4F: TSpeedButton;
    ButtonAla4_1X4F: TSpeedButton;
    ButtonAla4_1P4S: TSpeedButton;
    ButtonAla4_1P4F: TSpeedButton;
    ButtonAla4_2A4F: TSpeedButton;
    ButtonAla4_2X4F: TSpeedButton;
    ButtonAla4_2P4S: TSpeedButton;
    ButtonAla4_2P4F: TSpeedButton;
    ButtonDuoX4F: TSpeedButton;
    ButtonDuoSh3F: TSpeedButton;
    ButtonDuoP4F: TSpeedButton;
    ButtonDuoA4F: TSpeedButton;
    ButtonAziym1V3V: TSpeedButton;
    ButtonAziym1X2S: TSpeedButton;
    ButtonAziym1X4F: TSpeedButton;
    ButtonAziym1Sh2S: TSpeedButton;
    ButtonAziym1Sh3F: TSpeedButton;
    ButtonAziym1P2S: TSpeedButton;
    ButtonAziym1A4F: TSpeedButton;
    ButtonAziym1P4S: TSpeedButton;
    ButtonAziym1P4F: TSpeedButton;
    ButtonAziym2V3V: TSpeedButton;
    ButtonAziym2X2S: TSpeedButton;
    ButtonAziym2X4F: TSpeedButton;
    ButtonAziym2Sh2S: TSpeedButton;
    ButtonAziym2Sh3F: TSpeedButton;
    ButtonAziym2P2S: TSpeedButton;
    ButtonAziym2A4F: TSpeedButton;
    ButtonAziym2P4S: TSpeedButton;
    ButtonAziym2P4F: TSpeedButton;
    ButtonAziym3A4F: TSpeedButton;
    ButtonAziym3V3V: TSpeedButton;
    ButtonAziym3X4F: TSpeedButton;
    ButtonAziym3Sh3F: TSpeedButton;
    ButtonAziym3P4S: TSpeedButton;
    ButtonAziym3P4F: TSpeedButton;
    ButtonAziym4A4F: TSpeedButton;
    ButtonAziym4X4F: TSpeedButton;
    ButtonAziym4P4S: TSpeedButton;
    ButtonAziym4P4F: TSpeedButton;
    ButtonAzonA4F: TSpeedButton;
    ButtonAzonDuoSh3F: TSpeedButton;
    ButtonAzonDuoX4F: TSpeedButton;
    ButtonAzonX4F: TSpeedButton;
    ButtonAzonSh3F: TSpeedButton;
    ButtonAzonP4S: TSpeedButton;
    ButtonAzonDuoP4S: TSpeedButton;
    ButtonBasmala1V3V: TSpeedButton;
    ButtonBasmala1X2S: TSpeedButton;
    ButtonBasmala1X4F: TSpeedButton;
    ButtonBasmala1Sh2S: TSpeedButton;
    ButtonBasmala1Sh3F: TSpeedButton;
    ButtonBasmala1P2S: TSpeedButton;
    ButtonBasmala1A4F: TSpeedButton;
    ButtonBasmala2V3V: TSpeedButton;
    ButtonBasmala2X2S: TSpeedButton;
    ButtonBasmala2X4F: TSpeedButton;
    ButtonBasmala2Sh2S: TSpeedButton;
    ButtonBasmala2Sh3F: TSpeedButton;
    ButtonBasmala2P2S: TSpeedButton;
    ButtonBasmala2A4F: TSpeedButton;
    ButtonBasmala3A4F: TSpeedButton;
    ButtonBasmala3V3V: TSpeedButton;
    ButtonBasmala3X4F: TSpeedButton;
    ButtonBasmala3Sh3F: TSpeedButton;
    ButtonBasmala4A4F: TSpeedButton;
    ButtonBasmala4X4F: TSpeedButton;
    ButtonFalaqSh2S: TSpeedButton;
    ButtonKursiV3V: TSpeedButton;
    ButtonNasV3V: TSpeedButton;
    ButtonFalaqX2S: TSpeedButton;
    ButtonFotiha1A4F1: TSpeedButton;
    ButtonFotiha1Sh2S: TSpeedButton;
    ButtonFotiha1V3V: TSpeedButton;
    ButtonFotiha1X2S: TSpeedButton;
    ButtonFotiha1Sh3F: TSpeedButton;
    ButtonFotiha1P2S: TSpeedButton;
    ButtonFotiha1A4F: TSpeedButton;
    ButtonFotiha2V3V: TSpeedButton;
    ButtonFotiha2X2S: TSpeedButton;
    ButtonFotiha2X4F: TSpeedButton;
    ButtonFotiha2Sh2S: TSpeedButton;
    ButtonFotiha2Sh3F: TSpeedButton;
    ButtonFotiha2P2S: TSpeedButton;
    ButtonFotiha2A4F: TSpeedButton;
    ButtonFotiha3A4F: TSpeedButton;
    ButtonFotiha3V3V: TSpeedButton;
    ButtonFotiha3X4F: TSpeedButton;
    ButtonFotiha3Sh3F: TSpeedButton;
    ButtonFotiha4A4F: TSpeedButton;
    ButtonFotiha4X4F: TSpeedButton;
    ButtonIqomatX4F: TSpeedButton;
    ButtonIqomatSh3F: TSpeedButton;
    ButtonIqomatP4F: TSpeedButton;
    ButtonBasmala1P4S: TSpeedButton;
    ButtonBasmala1P4F: TSpeedButton;
    ButtonBasmala2P4S: TSpeedButton;
    ButtonBasmala2P4F: TSpeedButton;
    ButtonBasmala3P4S: TSpeedButton;
    ButtonBasmala3P4F: TSpeedButton;
    ButtonBasmala4P4S: TSpeedButton;
    ButtonBasmala4P4F: TSpeedButton;
    ButtonFotiha1P4F: TSpeedButton;
    ButtonFotiha2P4F: TSpeedButton;
    ButtonFotiha3P4F: TSpeedButton;
    ButtonFotiha4P4F: TSpeedButton;
    ButtonIqomatA4F: TSpeedButton;
    ButtonIxlosA4F: TSpeedButton;
    ButtonFalaqV3V: TSpeedButton;
    ButtonIxlosX4F: TSpeedButton;
    ButtonIxlosSh3F: TSpeedButton;
    ButtonKavsarA4F: TSpeedButton;
    ButtonIxlosV3V: TSpeedButton;
    ButtonKavsarX4F: TSpeedButton;
    ButtonKavsarSh3F: TSpeedButton;
    ButtonKursiA4F: TSpeedButton;
    ButtonKursiP2S: TSpeedButton;
    ButtonKursiSh2S: TSpeedButton;
    ButtonNasP2S: TSpeedButton;
    ButtonIxlosP4F: TSpeedButton;
    ButtonFalaqP2S: TSpeedButton;
    ButtonKavsarP4F: TSpeedButton;
    ButtonNasSh2S: TSpeedButton;
    ButtonNasP4S: TSpeedButton;
    ButtonFotiha1P4S: TSpeedButton;
    ButtonFotiha2P4S: TSpeedButton;
    ButtonFotiha3P4S: TSpeedButton;
    ButtonFotiha4P4S: TSpeedButton;
    ButtonIxlosP4S: TSpeedButton;
    ButtonFalaqP4S: TSpeedButton;
    ButtonKavsarP4S: TSpeedButton;
    ButtonNasX2S: TSpeedButton;
    ButtonNext: TSpeedButton;
    ButtonPrevious: TSpeedButton;
    ButtonRobbanaV3V: TSpeedButton;
    ButtonRobbanaX2S: TSpeedButton;
    ButtonRobbanaX4F: TSpeedButton;
    ButtonRobbanaSh2S: TSpeedButton;
    ButtonRobbanaSh3F: TSpeedButton;
    ButtonRobbanaP2S: TSpeedButton;
    ButtonRobbanaA4F: TSpeedButton;
    ButtonRobbanaP4S: TSpeedButton;
    ButtonRobbanaP4F: TSpeedButton;
    ButtonHamd1V3V: TSpeedButton;
    ButtonHamd1X2S: TSpeedButton;
    ButtonHamd1X4F: TSpeedButton;
    ButtonHamd1Sh2S: TSpeedButton;
    ButtonHamd1Sh3F: TSpeedButton;
    ButtonHamd1P2S: TSpeedButton;
    ButtonHamd1A4F: TSpeedButton;
    ButtonHamd1P4S: TSpeedButton;
    ButtonHamd1P4F: TSpeedButton;
    ButtonHamd2V3V: TSpeedButton;
    ButtonHamd2X2S: TSpeedButton;
    ButtonHamd2X4F: TSpeedButton;
    ButtonHamd2Sh2S: TSpeedButton;
    ButtonHamd2Sh3F: TSpeedButton;
    ButtonHamd2P2S: TSpeedButton;
    ButtonHamd2A4F: TSpeedButton;
    ButtonHamd2P4S: TSpeedButton;
    ButtonHamd2P4F: TSpeedButton;
    ButtonHamd3A4F: TSpeedButton;
    ButtonHamd3V3V: TSpeedButton;
    ButtonHamd3X4F: TSpeedButton;
    ButtonHamd3Sh3F: TSpeedButton;
    ButtonHamd3P4S: TSpeedButton;
    ButtonHamd3P4F: TSpeedButton;
    ButtonHamd4A4F: TSpeedButton;
    ButtonHamd4X4F: TSpeedButton;
    ButtonHamd4P4S: TSpeedButton;
    ButtonHamd4P4F: TSpeedButton;
    ButtonSalavotV3V: TSpeedButton;
    ButtonSalavotX2S: TSpeedButton;
    ButtonSalavotX4F: TSpeedButton;
    ButtonSalavotSh2S: TSpeedButton;
    ButtonSalavotSh3F: TSpeedButton;
    ButtonSalavotP2S: TSpeedButton;
    ButtonSalavotA4F: TSpeedButton;
    ButtonSalavotP4S: TSpeedButton;
    ButtonSalavotP4F: TSpeedButton;
    ButtonSalomV3V: TSpeedButton;
    ButtonSalomX2S: TSpeedButton;
    ButtonSalomX4F: TSpeedButton;
    ButtonSalomSh2S: TSpeedButton;
    ButtonSalomSh3F: TSpeedButton;
    ButtonSalomP2S: TSpeedButton;
    ButtonSalomA4F: TSpeedButton;
    ButtonSalomP4S: TSpeedButton;
    ButtonSalomP4F: TSpeedButton;
    ButtonSamialloh1V3V: TSpeedButton;
    ButtonSamialloh1X2S: TSpeedButton;
    ButtonSamialloh1X4F: TSpeedButton;
    ButtonSamialloh1Sh2S: TSpeedButton;
    ButtonSamialloh1Sh3F: TSpeedButton;
    ButtonSamialloh1P2S: TSpeedButton;
    ButtonSamialloh1A4F: TSpeedButton;
    ButtonSamialloh1P4S: TSpeedButton;
    ButtonSamialloh1P4F: TSpeedButton;
    ButtonSamialloh2V3V: TSpeedButton;
    ButtonSamialloh2X2S: TSpeedButton;
    ButtonSamialloh2X4F: TSpeedButton;
    ButtonSamialloh2Sh2S: TSpeedButton;
    ButtonSamialloh2Sh3F: TSpeedButton;
    ButtonSamialloh2P2S: TSpeedButton;
    ButtonSamialloh2A4F: TSpeedButton;
    ButtonSamialloh2P4S: TSpeedButton;
    ButtonSamialloh2P4F: TSpeedButton;
    ButtonSamialloh3A4F: TSpeedButton;
    ButtonSamialloh3V3V: TSpeedButton;
    ButtonSamialloh3X4F: TSpeedButton;
    ButtonSamialloh3Sh3F: TSpeedButton;
    ButtonSamialloh3P4S: TSpeedButton;
    ButtonSamialloh3P4F: TSpeedButton;
    ButtonSamialloh4A4F: TSpeedButton;
    ButtonSamialloh4X4F: TSpeedButton;
    ButtonSamialloh4P4S: TSpeedButton;
    ButtonSamialloh4P4F: TSpeedButton;
    ButtonSanoV3V: TSpeedButton;
    ButtonSanoX2S: TSpeedButton;
    ButtonSanoX4F: TSpeedButton;
    ButtonSanoSh2S: TSpeedButton;
    ButtonSanoSh3F: TSpeedButton;
    ButtonSanoP2S: TSpeedButton;
    ButtonSanoA4F: TSpeedButton;
    ButtonSanoP4S: TSpeedButton;
    ButtonSanoP4F: TSpeedButton;
    ButtonTaavvuzV3V: TSpeedButton;
    ButtonTaavvuzX2S: TSpeedButton;
    ButtonTaavvuzX4F: TSpeedButton;
    ButtonTaavvuzSh2S: TSpeedButton;
    ButtonTaavvuzSh3F: TSpeedButton;
    ButtonTaavvuzP2S: TSpeedButton;
    ButtonTaavvuzA4F: TSpeedButton;
    ButtonTaavvuzP4S: TSpeedButton;
    ButtonTaavvuzP4F: TSpeedButton;
    ButtonTakbirJalsa1V3V: TSpeedButton;
    ButtonTakbirJalsa1X2S: TSpeedButton;
    ButtonTakbirJalsa1X4F: TSpeedButton;
    ButtonTakbirJalsa1Sh2S: TSpeedButton;
    ButtonTakbirJalsa1Sh3F: TSpeedButton;
    ButtonTakbirJalsa1P2S: TSpeedButton;
    ButtonTakbirJalsa1A4F: TSpeedButton;
    ButtonTakbirJalsa1P4S: TSpeedButton;
    ButtonTakbirJalsa1P4F: TSpeedButton;
    ButtonTakbirJalsa2V3V: TSpeedButton;
    ButtonTakbirJalsa2X2S: TSpeedButton;
    ButtonTakbirJalsa2X4F: TSpeedButton;
    ButtonTakbirJalsa2Sh2S: TSpeedButton;
    ButtonTakbirJalsa2Sh3F: TSpeedButton;
    ButtonTakbirJalsa2P2S: TSpeedButton;
    ButtonTakbirJalsa2A4F: TSpeedButton;
    ButtonTakbirJalsa2P4S: TSpeedButton;
    ButtonTakbirJalsa2P4F: TSpeedButton;
    ButtonTakbirJalsa3A4F: TSpeedButton;
    ButtonTakbirJalsa3V3V: TSpeedButton;
    ButtonTakbirJalsa3X4F: TSpeedButton;
    ButtonTakbirJalsa3Sh3F: TSpeedButton;
    ButtonTakbirJalsa3P4S: TSpeedButton;
    ButtonTakbirJalsa3P4F: TSpeedButton;
    ButtonTakbirJalsa4A4F: TSpeedButton;
    ButtonTakbirJalsa4X4F: TSpeedButton;
    ButtonTakbirJalsa4P4S: TSpeedButton;
    ButtonTakbirJalsa4P4F: TSpeedButton;
    ButtonTakbirKirishV3V: TSpeedButton;
    ButtonTakbirKirishX2S: TSpeedButton;
    ButtonTakbirKirishX4F: TSpeedButton;
    ButtonTakbirKirishSh2S: TSpeedButton;
    ButtonTakbirKirishSh3F: TSpeedButton;
    ButtonTakbirKirishP2S: TSpeedButton;
    ButtonTakbirKirishA4F: TSpeedButton;
    ButtonTakbirKirishP4S: TSpeedButton;
    ButtonTakbirKirishP4F: TSpeedButton;
    ButtonTakbirQada1V3V: TSpeedButton;
    ButtonTakbirQada1X4F: TSpeedButton;
    ButtonTakbirQada1Sh3F: TSpeedButton;
    ButtonTakbirQada1P4F: TSpeedButton;
    ButtonTakbirQada1A4F: TSpeedButton;
    ButtonTakbirQada2A4F: TSpeedButton;
    ButtonTakbirQada2V3V: TSpeedButton;
    ButtonTakbirQada2X4F: TSpeedButton;
    ButtonTakbirQada2Sh3F: TSpeedButton;
    ButtonTakbirQada2P4S: TSpeedButton;
    ButtonTakbirQada1P4S: TSpeedButton;
    ButtonTakbirQada2P4F: TSpeedButton;
    ButtonTakbirQadaP2S: TSpeedButton;
    ButtonTakbirQadaSh2S: TSpeedButton;
    ButtonTakbirQadaX2S: TSpeedButton;
    ButtonTakbirQiyom2V3V: TSpeedButton;
    ButtonTakbirQiyom2X2S: TSpeedButton;
    ButtonTakbirQiyom2X4F: TSpeedButton;
    ButtonTakbirQiyom2Sh2S: TSpeedButton;
    ButtonTakbirQiyom2Sh3F: TSpeedButton;
    ButtonTakbirQiyom2P2S: TSpeedButton;
    ButtonTakbirQiyom2A4F: TSpeedButton;
    ButtonTakbirQiyom2P4S: TSpeedButton;
    ButtonTakbirQiyom2P4F: TSpeedButton;
    ButtonTakbirQiyom3A4F: TSpeedButton;
    ButtonTakbirQiyom3V3V: TSpeedButton;
    ButtonTakbirQiyom3X4F: TSpeedButton;
    ButtonTakbirQiyom3Sh3F: TSpeedButton;
    ButtonTakbirQiyom3P4S: TSpeedButton;
    ButtonTakbirQiyom3P4F: TSpeedButton;
    ButtonTakbirQiyom4A4F: TSpeedButton;
    ButtonTakbirQiyom4X4F: TSpeedButton;
    ButtonTakbirQiyom4P4S: TSpeedButton;
    ButtonTakbirQiyom4P4F: TSpeedButton;
    ButtonTakbirRuku1V3V: TSpeedButton;
    ButtonTakbirRuku1X2S: TSpeedButton;
    ButtonTakbirRuku1X4F: TSpeedButton;
    ButtonTakbirRuku1Sh2S: TSpeedButton;
    ButtonTakbirRuku1Sh3F: TSpeedButton;
    ButtonTakbirRuku1P2S: TSpeedButton;
    ButtonTakbirRuku1A4F: TSpeedButton;
    ButtonTakbirRuku1P4S: TSpeedButton;
    ButtonTakbirRuku1P4F: TSpeedButton;
    ButtonTakbirRuku2V3V: TSpeedButton;
    ButtonTakbirRuku2X2S: TSpeedButton;
    ButtonTakbirRuku2X4F: TSpeedButton;
    ButtonTakbirRuku2Sh2S: TSpeedButton;
    ButtonTakbirRuku2Sh3F: TSpeedButton;
    ButtonTakbirRuku2P2S: TSpeedButton;
    ButtonTakbirRuku2A4F: TSpeedButton;
    ButtonTakbirRuku2P4S: TSpeedButton;
    ButtonTakbirRuku2P4F: TSpeedButton;
    ButtonTakbirRuku3A4F: TSpeedButton;
    ButtonTakbirRuku3V3V: TSpeedButton;
    ButtonTakbirRuku3X4F: TSpeedButton;
    ButtonTakbirRuku3Sh3F: TSpeedButton;
    ButtonTakbirRuku3P4S: TSpeedButton;
    ButtonTakbirRuku3P4F: TSpeedButton;
    ButtonTakbirRuku4A4F: TSpeedButton;
    ButtonTakbirRuku4X4F: TSpeedButton;
    ButtonTakbirRuku4P4S: TSpeedButton;
    ButtonTakbirRuku4P4F: TSpeedButton;
    ButtonTakbirSajda1_1V3V: TSpeedButton;
    ButtonTakbirSajda1_1X2S: TSpeedButton;
    ButtonTakbirSajda1_1X4F: TSpeedButton;
    ButtonTakbirSajda1_1Sh2S: TSpeedButton;
    ButtonTakbirSajda1_1Sh3F: TSpeedButton;
    ButtonTakbirSajda1_1P2S: TSpeedButton;
    ButtonTakbirSajda1_1A4F: TSpeedButton;
    ButtonTakbirSajda1_1P4S: TSpeedButton;
    ButtonTakbirSajda1_1P4F: TSpeedButton;
    ButtonTakbirSajda1_2V3V: TSpeedButton;
    ButtonTakbirSajda1_2X2S: TSpeedButton;
    ButtonTakbirSajda1_2X4F: TSpeedButton;
    ButtonTakbirSajda1_2Sh2S: TSpeedButton;
    ButtonTakbirSajda1_2Sh3F: TSpeedButton;
    ButtonTakbirSajda1_2P2S: TSpeedButton;
    ButtonTakbirSajda1_2A4F: TSpeedButton;
    ButtonTakbirSajda1_2P4S: TSpeedButton;
    ButtonTakbirSajda1_2P4F: TSpeedButton;
    ButtonTakbirSajda2_1V3V: TSpeedButton;
    ButtonTakbirSajda2_1X2S: TSpeedButton;
    ButtonTakbirSajda2_1X4F: TSpeedButton;
    ButtonTakbirSajda2_1Sh2S: TSpeedButton;
    ButtonTakbirSajda2_1Sh3F: TSpeedButton;
    ButtonTakbirSajda2_1P2S: TSpeedButton;
    ButtonTakbirSajda2_1A4F: TSpeedButton;
    ButtonTakbirSajda2_1P4S: TSpeedButton;
    ButtonTakbirSajda2_1P4F: TSpeedButton;
    ButtonTakbirSajda2_2V3V: TSpeedButton;
    ButtonTakbirSajda2_2X2S: TSpeedButton;
    ButtonTakbirSajda2_2X4F: TSpeedButton;
    ButtonTakbirSajda2_2Sh2S: TSpeedButton;
    ButtonTakbirSajda2_2Sh3F: TSpeedButton;
    ButtonTakbirSajda2_2P2S: TSpeedButton;
    ButtonTakbirSajda2_2P4F: TSpeedButton;
    ButtonTakbirSajda2_2A4F: TSpeedButton;
    ButtonTakbirSajda3_1A4F: TSpeedButton;
    ButtonTakbirSajda3_1V3V: TSpeedButton;
    ButtonTakbirSajda3_1X4F: TSpeedButton;
    ButtonTakbirSajda3_1Sh3F: TSpeedButton;
    ButtonTakbirSajda3_1P4S: TSpeedButton;
    ButtonTakbirSajda2_2P4S: TSpeedButton;
    ButtonTakbirSajda3_2A4F: TSpeedButton;
    ButtonTakbirSajda3_2V3V: TSpeedButton;
    ButtonTakbirSajda3_2X4F: TSpeedButton;
    ButtonTakbirSajda3_2Sh3F: TSpeedButton;
    ButtonTakbirSajda3_2P4S: TSpeedButton;
    ButtonTakbirSajda3_1P4F: TSpeedButton;
    ButtonTakbirSajda3_2P4F: TSpeedButton;
    ButtonTakbirSajda4_1A4F: TSpeedButton;
    ButtonTakbirSajda4_1X4F: TSpeedButton;
    ButtonTakbirSajda4_1P4S: TSpeedButton;
    ButtonTakbirSajda4_1P4F: TSpeedButton;
    ButtonTakbirSajda4_2A4F: TSpeedButton;
    ButtonTakbirSajda4_2X4F: TSpeedButton;
    ButtonTakbirSajda4_2P4S: TSpeedButton;
    ButtonTakbirSajda4_2P4F: TSpeedButton;
    ButtonTasbehB2F: TSpeedButton;
    ButtonAziym1B2F: TSpeedButton;
    ButtonAziym2B2S: TSpeedButton;
    ButtonAziym2B2F: TSpeedButton;
    ButtonIqomatB2F: TSpeedButton;
    ButtonBasmala1B2F: TSpeedButton;
    ButtonBasmala2B2F: TSpeedButton;
    ButtonFotiha1B2F: TSpeedButton;
    ButtonFotiha2B2S: TSpeedButton;
    ButtonFotiha2B2F: TSpeedButton;
    ButtonIxlosB2S: TSpeedButton;
    ButtonNasB2F: TSpeedButton;
    ButtonFalaqB2F: TSpeedButton;
    ButtonDuoB2F: TSpeedButton;
    ButtonRobbanaB2F: TSpeedButton;
    ButtonHamd1B2F: TSpeedButton;
    ButtonHamd2B2F: TSpeedButton;
    ButtonHamd2B2S: TSpeedButton;
    ButtonSalavotB2F: TSpeedButton;
    ButtonSalomB2F: TSpeedButton;
    ButtonSalomB2F1: TSpeedButton;
    ButtonSalomPreviousB2F1: TSpeedButton;
    ButtonSamialloh1B2S: TSpeedButton;
    ButtonHamd1B2S: TSpeedButton;
    ButtonSamialloh1B2F: TSpeedButton;
    ButtonSamialloh2B2S: TSpeedButton;
    ButtonSamialloh2B2F: TSpeedButton;
    ButtonSanoB2F: TSpeedButton;
    ButtonTaavvuzB2F: TSpeedButton;
    ButtonTakbirJalsa1B2F: TSpeedButton;
    ButtonTakbirJalsa2B2S: TSpeedButton;
    ButtonTakbirJalsa2B2F: TSpeedButton;
    ButtonTakbirKirishB2F: TSpeedButton;
    ButtonTakbirQadaB2S: TSpeedButton;
    ButtonSalomB2S: TSpeedButton;
    ButtonTakbirQadaB2F: TSpeedButton;
    ButtonTakbirQiyom2B2F: TSpeedButton;
    ButtonTakbirRuku1B2F: TSpeedButton;
    ButtonTakbirRuku2B2F: TSpeedButton;
    ButtonTakbirSajda1_1B2F: TSpeedButton;
    ButtonTakbirSajda1_2B2F: TSpeedButton;
    ButtonTakbirSajda2_1B2F: TSpeedButton;
    ButtonTakbirSajda2_2B2F: TSpeedButton;
    ButtonKursiB2F: TSpeedButton;
    ButtonTasbehA4F: TSpeedButton;
    ButtonTasbehP2S: TSpeedButton;
    ButtonTasbehSh2S: TSpeedButton;
    ButtonTasbehV3V: TSpeedButton;
    ButtonTashahhud1V3V: TSpeedButton;
    ButtonTashahhud1X4F: TSpeedButton;
    ButtonTashahhud1Sh3F: TSpeedButton;
    ButtonTashahhud1P4F: TSpeedButton;
    ButtonTashahhud1A4F: TSpeedButton;
    ButtonTashahhud2A4F: TSpeedButton;
    ButtonTashahhud2V3V: TSpeedButton;
    ButtonTashahhud2X4F: TSpeedButton;
    ButtonTashahhud2Sh3F: TSpeedButton;
    ButtonTashahhudB2S: TSpeedButton;
    ButtonSalavotB2S: TSpeedButton;
    ButtonRobbanaB2S: TSpeedButton;
    ButtonTakbirQiyom2B2S: TSpeedButton;
    ButtonBasmala2B2S: TSpeedButton;
    ButtonTakbirRuku2B2S: TSpeedButton;
    ButtonTakbirSajda1_1B2S: TSpeedButton;
    ButtonAla1_1B2S: TSpeedButton;
    ButtonTakbirJalsa1B2S: TSpeedButton;
    ButtonTakbirSajda1_2B2S: TSpeedButton;
    ButtonTakbirSajda2_1B2S: TSpeedButton;
    ButtonTakbirSajda2_2B2S: TSpeedButton;
    ButtonTashahhudB2F: TSpeedButton;
    ButtonTashahhud2P4S: TSpeedButton;
    ButtonTashahhud1P4S: TSpeedButton;
    ButtonTashahhud2P4F: TSpeedButton;
    ButtonTashahhudP2S: TSpeedButton;
    ButtonTashahhudSh2S: TSpeedButton;
    ButtonTashahhudX2S: TSpeedButton;
    ImageAyol: TImage;
    ImageErkak: TImage;
    ImageSalomAyolB2F1: TImage;
    ImageSalomErkakB2F1: TImage;
    IniPropStorage1: TIniPropStorage;
    LabelTakbirQunut: TLabel;
    LabelQunut: TLabel;
    LabelAzonDuoA4F: TLabel;
    LabelAzonDuoSh3F: TLabel;
    LabelAla1_1V3V: TLabel;
    LabelAla1_1X2S: TLabel;
    LabelAla1_1X4F: TLabel;
    LabelAla1_1Sh2S: TLabel;
    LabelAla1_1Sh3F: TLabel;
    LabelAla1_1P2S: TLabel;
    LabelAla1_1A4F: TLabel;
    LabelAla1_2V3V: TLabel;
    LabelAla1_2X2S: TLabel;
    LabelAla1_2X4F: TLabel;
    LabelAla1_2Sh2S: TLabel;
    LabelAla1_2Sh3F: TLabel;
    LabelAla1_2P2S: TLabel;
    LabelAla1_2A4F: TLabel;
    LabelAla2_1V3V: TLabel;
    LabelAla2_1X2S: TLabel;
    LabelAla2_1X4F: TLabel;
    LabelAla2_1Sh2S: TLabel;
    LabelAla2_1Sh3F: TLabel;
    LabelAla2_1P2S: TLabel;
    LabelAla2_1A4F: TLabel;
    LabelAla2_2V3V: TLabel;
    LabelAla2_2X2S: TLabel;
    LabelAla2_2X4F: TLabel;
    LabelAla2_2Sh2S: TLabel;
    LabelAla2_2Sh3F: TLabel;
    LabelAla2_2P2S: TLabel;
    LabelAla2_2A4F: TLabel;
    LabelAla3_1A4F: TLabel;
    LabelAla3_1V3V: TLabel;
    LabelAla3_1X4F: TLabel;
    LabelAla3_1Sh3F: TLabel;
    LabelAla3_2A4F: TLabel;
    LabelAla3_2V3V: TLabel;
    LabelAla3_2X4F: TLabel;
    LabelAla3_2Sh3F: TLabel;
    LabelAla4_1A4F: TLabel;
    LabelAla4_1X4F: TLabel;
    LabelAla4_2A4F: TLabel;
    LabelAla4_2X4F: TLabel;
    LabelDuoX4F: TLabel;
    LabelDuoSh3F: TLabel;
    LabelDuoB2F: TLabel;
    LabelDuoA4F: TLabel;
    LabelAziym1V3V: TLabel;
    LabelAziym1X2S: TLabel;
    LabelAziym1X4F: TLabel;
    LabelAziym1Sh2S: TLabel;
    LabelAziym1Sh3F: TLabel;
    LabelAziym1P2S: TLabel;
    LabelAziym1A4F: TLabel;
    LabelAzonA4F: TLabel;
    LabelAzonDuoX4F: TLabel;
    LabelAzonX4F: TLabel;
    LabelAzonSh3F: TLabel;
    LabelAzyim2V3V: TLabel;
    LabelAzyim2X2S: TLabel;
    LabelAzyim2X4F: TLabel;
    LabelAzyim2Sh2S: TLabel;
    LabelAzyim2Sh3F: TLabel;
    LabelAzyim2P2S: TLabel;
    LabelAzyim2A4F: TLabel;
    LabelAzyim3A4F: TLabel;
    LabelAzyim3V3V: TLabel;
    LabelAzyim3X4F: TLabel;
    LabelAzyim3Sh3F: TLabel;
    LabelAzyim4A4F: TLabel;
    LabelAzyim4X4F: TLabel;
    LabelBasmala1V3V: TLabel;
    LabelBasmala1X2S: TLabel;
    LabelBasmala1X4F: TLabel;
    LabelBasmala1Sh2S: TLabel;
    LabelBasmala1Sh3F: TLabel;
    LabelBasmala1P2S: TLabel;
    LabelBasmala1A4F: TLabel;
    LabelBasmala2V3V: TLabel;
    LabelBasmala2X2S: TLabel;
    LabelBasmala2X4F: TLabel;
    LabelBasmala2Sh2S: TLabel;
    LabelBasmala2Sh3F: TLabel;
    LabelBasmala2P2S: TLabel;
    LabelBasmala2A4F: TLabel;
    LabelBasmala3A4F: TLabel;
    LabelBasmala3V3V: TLabel;
    LabelBasmala3X4F: TLabel;
    LabelBasmala3Sh3F: TLabel;
    LabelBasmala4A4F: TLabel;
    LabelBasmala4X4F: TLabel;
    LabelFalaqSh2S: TLabel;
    LabelKursiV3V: TLabel;
    LabelNasV3V: TLabel;
    LabelFalaqX2S: TLabel;
    LabelFotiha1V3V: TLabel;
    LabelFotiha1X2S: TLabel;
    LabelFotiha1X4F: TLabel;
    LabelFotiha1Sh2S: TLabel;
    LabelFotiha1Sh3F: TLabel;
    LabelFotiha1P2S: TLabel;
    LabelFotiha1A4F: TLabel;
    LabelFotiha2V3V: TLabel;
    LabelFotiha2X2S: TLabel;
    LabelFotiha2X4F: TLabel;
    LabelFotiha2Sh2S: TLabel;
    LabelFotiha2Sh3F: TLabel;
    LabelFotiha2P2S: TLabel;
    LabelFotiha2A4F: TLabel;
    LabelFotiha3A4F: TLabel;
    LabelFotiha3V3V: TLabel;
    LabelFotiha3X4F: TLabel;
    LabelFotiha3Sh3F: TLabel;
    LabelFotiha4A4F: TLabel;
    LabelFotiha4X4F: TLabel;
    LabelIqomatA4F: TLabel;
    LabelIqomatX4F: TLabel;
    LabelIqomatSh3F: TLabel;
    LabelIxlosA4F: TLabel;
    LabelFalaqV3V: TLabel;
    LabelIxlosX4F: TLabel;
    LabelIxlosSh3F: TLabel;
    LabelKavsarA4F: TLabel;
    LabelIxlosV3V: TLabel;
    LabelKavsarX4F: TLabel;
    LabelKavsarSh3F: TLabel;
    LabelKursiA4F: TLabel;
    LabelKursiP2S: TLabel;
    LabelKursiSh2S: TLabel;
    LabelNasP2S: TLabel;
    LabelFalaqP2S: TLabel;
    LabelKursiB2F: TLabel;
    LabelDuoP4F: TLabel;
    LabelAla1_1P4S: TLabel;
    LabelAla1_1P4F: TLabel;
    LabelAla1_2P4S: TLabel;
    LabelAla1_2P4F: TLabel;
    LabelAla2_1P4S: TLabel;
    LabelAla2_1P4F: TLabel;
    LabelAla2_2P4F: TLabel;
    LabelAla3_1P4S: TLabel;
    LabelAla2_2P4S: TLabel;
    LabelAla3_2P4S: TLabel;
    LabelAla3_1P4F: TLabel;
    LabelAla3_2P4F: TLabel;
    LabelAla4_1P4S: TLabel;
    LabelAla4_1P4F: TLabel;
    LabelAla4_2P4S: TLabel;
    LabelAla4_2P4F: TLabel;
    LabelAziym1P4S: TLabel;
    LabelAziym1P4F: TLabel;
    LabelAzonP4S: TLabel;
    LabelAzonDuoP4S: TLabel;
    LabelIqomatP4F: TLabel;
    LabelAzyim2P4S: TLabel;
    LabelAzyim2P4F: TLabel;
    LabelAzyim3P4S: TLabel;
    LabelAzyim3P4F: TLabel;
    LabelAzyim4P4S: TLabel;
    LabelAzyim4P4F: TLabel;
    LabelBasmala1P4S: TLabel;
    LabelBasmala1P4F: TLabel;
    LabelBasmala2P4S: TLabel;
    LabelBasmala2P4F: TLabel;
    LabelBasmala3P4S: TLabel;
    LabelBasmala3P4F: TLabel;
    LabelBasmala4P4S: TLabel;
    LabelBasmala4P4F: TLabel;
    LabelFotiha1P4F: TLabel;
    LabelFotiha2P4F: TLabel;
    LabelFotiha3P4F: TLabel;
    LabelFotiha4P4F: TLabel;
    LabelIxlosP4F: TLabel;
    LabelKavsarP4F: TLabel;
    LabelNasSh2S: TLabel;
    LabelNasP4S: TLabel;
    LabelFotiha1P4S: TLabel;
    LabelFotiha2P4S: TLabel;
    LabelFotiha3P4S: TLabel;
    LabelFotiha4P4S: TLabel;
    LabelIxlosP4S: TLabel;
    LabelFalaqP4S: TLabel;
    LabelKavsarP4S: TLabel;
    LabelNasX2S: TLabel;
    LabelNiyatV3V: TLabel;
    LabelNiyatX2S: TLabel;
    LabelNiyatX4F: TLabel;
    LabelNiyatSh2S: TLabel;
    LabelNiyatSh3F: TLabel;
    LabelNiyatP2S: TLabel;
    LabelNiyatA4F: TLabel;
    LabelNiyatP4S: TLabel;
    LabelNiyatP4F: TLabel;
    LabelHamd1V3V: TLabel;
    LabelHamd1X2S: TLabel;
    LabelHamd1X4F: TLabel;
    LabelHamd1Sh2S: TLabel;
    LabelHamd1Sh3F: TLabel;
    LabelHamd1P2S: TLabel;
    LabelHamd1A4F: TLabel;
    LabelHamd1P4S: TLabel;
    LabelHamd1P4F: TLabel;
    LabelRobbanaV3V: TLabel;
    LabelRobbanaX2S: TLabel;
    LabelRobbanaX4F: TLabel;
    LabelRobbanaSh2S: TLabel;
    LabelRobbanaSh3F: TLabel;
    LabelRobbanaP2S: TLabel;
    LabelRobbanaA4F: TLabel;
    LabelRobbanaP4S: TLabel;
    LabelRobbanaP4F: TLabel;
    LabelHamd2V3V: TLabel;
    LabelHamd2X2S: TLabel;
    LabelHamd2X4F: TLabel;
    LabelHamd2Sh2S: TLabel;
    LabelHamd2Sh3F: TLabel;
    LabelHamd2P2S: TLabel;
    LabelHamd2A4F: TLabel;
    LabelHamd2P4S: TLabel;
    LabelHamd2P4F: TLabel;
    LabelHamd3A4F: TLabel;
    LabelHamd3V3V: TLabel;
    LabelHamd3X4F: TLabel;
    LabelHamd3Sh3F: TLabel;
    LabelHamd3P4S: TLabel;
    LabelHamd3P4F: TLabel;
    LabelHamd4A4F: TLabel;
    LabelHamd4X4F: TLabel;
    LabelHamd4P4S: TLabel;
    LabelHamd4P4F: TLabel;
    LabelSajda1_2V3V: TLabel;
    LabelSajda1_2X2S: TLabel;
    LabelSajda1_2X4F: TLabel;
    LabelSajda1_2Sh2S: TLabel;
    LabelSajda1_2Sh3F: TLabel;
    LabelSajda1_2P2S: TLabel;
    LabelSajda1_2A4F: TLabel;
    LabelSajda1_2P4S: TLabel;
    LabelSajda1_2P4F: TLabel;
    LabelSalavotV3V: TLabel;
    LabelSalavotX2S: TLabel;
    LabelSalavotX4F: TLabel;
    LabelSalavotSh2S: TLabel;
    LabelSalavotSh3F: TLabel;
    LabelSalavotP2S: TLabel;
    LabelSalavotA4F: TLabel;
    LabelSalavotP4S: TLabel;
    LabelSalavotP4F: TLabel;
    LabelSalomV3V: TLabel;
    LabelSalomX2S: TLabel;
    LabelSalomX4F: TLabel;
    LabelSalomSh2S: TLabel;
    LabelSalomSh3F: TLabel;
    LabelSalomP2S: TLabel;
    LabelSalomA4F: TLabel;
    LabelSalomP4S: TLabel;
    LabelSalomP4F: TLabel;
    LabelSamialloh1V3V: TLabel;
    LabelSamialloh1X2S: TLabel;
    LabelSamialloh1X4F: TLabel;
    LabelSamialloh1Sh2S: TLabel;
    LabelSamialloh1Sh3F: TLabel;
    LabelSamialloh1P2S: TLabel;
    LabelSamialloh1A4F: TLabel;
    LabelSamialloh1P4S: TLabel;
    LabelSamialloh1P4F: TLabel;
    LabelSamialloh2V3V: TLabel;
    LabelSamialloh2X2S: TLabel;
    LabelSamialloh2X4F: TLabel;
    LabelSamialloh2Sh2S: TLabel;
    LabelSamialloh2Sh3F: TLabel;
    LabelSamialloh2P2S: TLabel;
    LabelSamialloh2A4F: TLabel;
    LabelSamialloh2P4S: TLabel;
    LabelSamialloh2P4F: TLabel;
    LabelSamialloh3A4F: TLabel;
    LabelSamialloh3V3V: TLabel;
    LabelSamialloh3X4F: TLabel;
    LabelSamialloh3Sh3F: TLabel;
    LabelSamialloh3P4S: TLabel;
    LabelSamialloh3P4F: TLabel;
    LabelSamialloh4A4F: TLabel;
    LabelSamialloh4X4F: TLabel;
    LabelSamialloh4P4S: TLabel;
    LabelSamialloh4P4F: TLabel;
    LabelSanoV3V: TLabel;
    LabelSanoX2S: TLabel;
    LabelSanoX4F: TLabel;
    LabelSanoSh2S: TLabel;
    LabelSanoSh3F: TLabel;
    LabelSanoP2S: TLabel;
    LabelSanoA4F: TLabel;
    LabelSanoP4S: TLabel;
    LabelSanoP4F: TLabel;
    LabelTaavvuzV3V: TLabel;
    LabelTaavvuzX2S: TLabel;
    LabelTaavvuzX4F: TLabel;
    LabelTaavvuzSh2S: TLabel;
    LabelTaavvuzSh3F: TLabel;
    LabelTaavvuzP2S: TLabel;
    LabelTaavvuzA4F: TLabel;
    LabelTaavvuzP4S: TLabel;
    LabelTaavvuzP4F: TLabel;
    LabelTakbirJalsa1V3V: TLabel;
    LabelTakbirJalsa1X2S: TLabel;
    LabelTakbirJalsa1X4F: TLabel;
    LabelTakbirJalsa1Sh2S: TLabel;
    LabelTakbirJalsa1Sh3F: TLabel;
    LabelTakbirJalsa1P2S: TLabel;
    LabelTakbirJalsa1A4F: TLabel;
    LabelTakbirJalsa1P4S: TLabel;
    LabelTakbirJalsa1P4F: TLabel;
    LabelTakbirJalsa2V3V: TLabel;
    LabelTakbirJalsa2X2S: TLabel;
    LabelTakbirJalsa2X4F: TLabel;
    LabelTakbirJalsa2Sh2S: TLabel;
    LabelTakbirJalsa2Sh3F: TLabel;
    LabelTakbirJalsa2P2S: TLabel;
    LabelTakbirJalsa2A4F: TLabel;
    LabelTakbirJalsa2P4S: TLabel;
    LabelTakbirJalsa2P4F: TLabel;
    LabelTakbirJalsa3A4F: TLabel;
    LabelTakbirJalsa3V3V: TLabel;
    LabelTakbirJalsa3X4F: TLabel;
    LabelTakbirJalsa3Sh3F: TLabel;
    LabelTakbirJalsa3P4S: TLabel;
    LabelTakbirJalsa3P4F: TLabel;
    LabelTakbirJalsa4A4F: TLabel;
    LabelTakbirJalsa4X4F: TLabel;
    LabelTakbirJalsa4P4S: TLabel;
    LabelTakbirJalsa4P4F: TLabel;
    LabelTakbirKirishV3V: TLabel;
    LabelTakbirKirishX2S: TLabel;
    LabelTakbirKirishX4F: TLabel;
    LabelTakbirKirishSh2S: TLabel;
    LabelTakbirKirishSh3F: TLabel;
    LabelTakbirKirishP2S: TLabel;
    LabelTakbirKirishA4F: TLabel;
    LabelTakbirKirishP4S: TLabel;
    LabelTakbirKirishP4F: TLabel;
    LabelTakbirQada1V3V: TLabel;
    LabelTakbirQada1X4F: TLabel;
    LabelTakbirQada1Sh3F: TLabel;
    LabelTakbirQada1P4F: TLabel;
    LabelTakbirQada1A4F: TLabel;
    LabelTakbirQada2A4F: TLabel;
    LabelTakbirQada2V3V: TLabel;
    LabelTakbirQada2X4F: TLabel;
    LabelTakbirQada2Sh3F: TLabel;
    LabelTakbirQada2P4S: TLabel;
    LabelTakbirQada1P4S: TLabel;
    LabelTakbirQada2P4F: TLabel;
    LabelTakbirQadaP2S: TLabel;
    LabelTakbirQadaSh2S: TLabel;
    LabelTakbirQadaX2S: TLabel;
    LabelTakbirQiyom2V3V: TLabel;
    LabelTakbirQiyom2X2S: TLabel;
    LabelTakbirQiyom2X4F: TLabel;
    LabelTakbirQiyom2Sh2S: TLabel;
    LabelTakbirQiyom2Sh3F: TLabel;
    LabelTakbirQiyom2P2S: TLabel;
    LabelTakbirQiyom2A4F: TLabel;
    LabelTakbirQiyom2P4S: TLabel;
    LabelTakbirQiyom2P4F: TLabel;
    LabelTakbirQiyom3A4F: TLabel;
    LabelTakbirQiyom3V3V: TLabel;
    LabelTakbirQiyom3X4F: TLabel;
    LabelTakbirQiyom3Sh3F: TLabel;
    LabelTakbirQiyom3P4S: TLabel;
    LabelTakbirQiyom3P4F: TLabel;
    LabelTakbirQiyom4A4F: TLabel;
    LabelTakbirQiyom4X4F: TLabel;
    LabelTakbirQiyom4P4S: TLabel;
    LabelTakbirQiyom4P4F: TLabel;
    LabelTakbirRuku1V3V: TLabel;
    LabelTakbirRuku1X2S: TLabel;
    LabelTakbirRuku1X4F: TLabel;
    LabelTakbirRuku1Sh2S: TLabel;
    LabelTakbirRuku1Sh3F: TLabel;
    LabelTakbirRuku1P2S: TLabel;
    LabelTakbirRuku1A4F: TLabel;
    LabelTakbirRuku1P4S: TLabel;
    LabelTakbirRuku1P4F: TLabel;
    LabelTakbirRuku2V3V: TLabel;
    LabelTakbirRuku2X2S: TLabel;
    LabelTakbirRuku2X4F: TLabel;
    LabelTakbirRuku2Sh2S: TLabel;
    LabelTakbirRuku2Sh3F: TLabel;
    LabelTakbirRuku2P2S: TLabel;
    LabelTakbirRuku2A4F: TLabel;
    LabelTakbirRuku2P4S: TLabel;
    LabelTakbirRuku2P4F: TLabel;
    LabelTakbirRuku3A4F: TLabel;
    LabelTakbirRuku3V3V: TLabel;
    LabelTakbirRuku3X4F: TLabel;
    LabelTakbirRuku3Sh3F: TLabel;
    LabelTakbirRuku3P4S: TLabel;
    LabelTakbirRuku3P4F: TLabel;
    LabelTakbirRuku4A4F: TLabel;
    LabelTakbirRuku4X4F: TLabel;
    LabelTakbirRuku4P4S: TLabel;
    LabelTakbirRuku4P4F: TLabel;
    LabelTakbirSajda1_1V3V: TLabel;
    LabelTakbirSajda1_1X2S: TLabel;
    LabelTakbirSajda1_1X4F: TLabel;
    LabelTakbirSajda1_1Sh2S: TLabel;
    LabelTakbirSajda1_1Sh3F: TLabel;
    LabelTakbirSajda1_1P2S: TLabel;
    LabelTakbirSajda1_1A4F: TLabel;
    LabelTakbirSajda1_1P4S: TLabel;
    LabelTakbirSajda1_1P4F: TLabel;
    LabelTakbirSajda2_1V3V: TLabel;
    LabelTakbirSajda2_1X2S: TLabel;
    LabelTakbirSajda2_1X4F: TLabel;
    LabelTakbirSajda2_1Sh2S: TLabel;
    LabelTakbirSajda2_1Sh3F: TLabel;
    LabelTakbirSajda2_1P2S: TLabel;
    LabelTakbirSajda2_1A4F: TLabel;
    LabelTakbirSajda2_1P4S: TLabel;
    LabelTakbirSajda2_1P4F: TLabel;
    LabelTakbirSajda2_2V3V: TLabel;
    LabelTakbirSajda2_2X2S: TLabel;
    LabelTakbirSajda2_2X4F: TLabel;
    LabelTakbirSajda2_2Sh2S: TLabel;
    LabelTakbirSajda2_2Sh3F: TLabel;
    LabelTakbirSajda2_2P2S: TLabel;
    LabelTakbirSajda2_2P4F: TLabel;
    LabelTakbirSajda2_2A4F: TLabel;
    LabelTakbirSajda3_1A4F: TLabel;
    LabelTakbirSajda3_1V3V: TLabel;
    LabelTakbirSajda3_1X4F: TLabel;
    LabelTakbirSajda3_1Sh3F: TLabel;
    LabelTakbirSajda3_1P4S: TLabel;
    LabelTakbirSajda2_2P4S: TLabel;
    LabelTakbirSajda3_2A4F: TLabel;
    LabelTakbirSajda3_2V3V: TLabel;
    LabelTakbirSajda3_2X4F: TLabel;
    LabelTakbirSajda3_2Sh3F: TLabel;
    LabelTakbirSajda3_2P4S: TLabel;
    LabelTakbirSajda3_1P4F: TLabel;
    LabelTakbirSajda3_2P4F: TLabel;
    LabelTakbirSajda4_1A4F: TLabel;
    LabelTakbirSajda4_1X4F: TLabel;
    LabelTakbirSajda4_1P4S: TLabel;
    LabelTakbirSajda4_1P4F: TLabel;
    LabelTakbirSajda4_2A4F: TLabel;
    LabelTakbirSajda4_2X4F: TLabel;
    LabelTakbirSajda4_2P4S: TLabel;
    LabelTakbirSajda4_2P4F: TLabel;
    LabelTasbehB2F: TLabel;
    LabelAla1_1B2F: TLabel;
    LabelAla1_2B2F: TLabel;
    LabelAla2_1B2F: TLabel;
    LabelAla2_2B2F: TLabel;
    LabelAziym1B2F: TLabel;
    LabelIqomatB2F: TLabel;
    LabelAzyim2B2F: TLabel;
    LabelBasmala1B2F: TLabel;
    LabelBasmala2B2F: TLabel;
    LabelFotiha1B2F: TLabel;
    LabelFotiha2B2F: TLabel;
    LabelNasB2F: TLabel;
    LabelFalaqB2F: TLabel;
    LabelNiyatB2S: TLabel;
    LabelNiyatB2F: TLabel;
    LabelHamd1B2F: TLabel;
    LabelRobbanaB2F: TLabel;
    LabelHamd2B2F: TLabel;
    LabelSajda1_2B2F: TLabel;
    LabelSalavotB2F: TLabel;
    LabelSalomB2F: TLabel;
    LabelSalomB2F1: TLabel;
    LabelSamialloh1B2S: TLabel;
    LabelHamd1B2S: TLabel;
    LabelSamialloh1B2F: TLabel;
    LabelSamialloh2B2F: TLabel;
    LabelSanoB2F: TLabel;
    LabelTaavvuzB2F: TLabel;
    LabelTakbirJalsa1B2F: TLabel;
    LabelTakbirJalsa2B2F: TLabel;
    LabelTakbirKirishB2F: TLabel;
    LabelTakbirQadaB2F: TLabel;
    LabelTakbirQiyom2B2F: TLabel;
    LabelTakbirRuku1B2F: TLabel;
    LabelTakbirRuku2B2F: TLabel;
    LabelTakbirSajda1_1B2S: TLabel;
    LabelAla1_1B2S: TLabel;
    LabelTakbirJalsa1B2S: TLabel;
    LabelSajda1_2B2S: TLabel;
    LabelAla1_2B2S: TLabel;
    LabelTakbirQiyom2B2S: TLabel;
    LabelBasmala2B2S: TLabel;
    LabelFotiha2B2S: TLabel;
    LabelTakbirKirishB2S: TLabel;
    LabelIxlosB2S: TLabel;
    LabelTakbirRuku2B2S: TLabel;
    LabelAzyim2B2S: TLabel;
    LabelSamialloh2B2S: TLabel;
    LabelHamd2B2S: TLabel;
    LabelTakbirSajda1_1B2F: TLabel;
    LabelTakbirSajda2_1B2S: TLabel;
    LabelAla2_1B2S: TLabel;
    LabelTakbirJalsa2B2S: TLabel;
    LabelTakbirSajda2_1B2F: TLabel;
    LabelTakbirSajda2_2B2S: TLabel;
    LabelAla2_2B2S: TLabel;
    LabelSanoB2S: TLabel;
    LabelTakbirQadaB2S: TLabel;
    LabelTakbirSajda2_2B2F: TLabel;
    LabelTasbehA4F: TLabel;
    LabelTasbehP2S: TLabel;
    LabelTasbehSh2S: TLabel;
    LabelTasbehV3V: TLabel;
    LabelTashahhud1V3V: TLabel;
    LabelTashahhud1X4F: TLabel;
    LabelTashahhud1Sh3F: TLabel;
    LabelTashahhud1P4F: TLabel;
    LabelTashahhud1A4F: TLabel;
    LabelTashahhud2A4F: TLabel;
    LabelTashahhud2V3V: TLabel;
    LabelTashahhud2X4F: TLabel;
    LabelTashahhud2Sh3F: TLabel;
    LabelTashahhudB2S: TLabel;
    LabelSalavotB2S: TLabel;
    LabelRobbanaB2S: TLabel;
    LabelSalomB2S: TLabel;
    LabelAzonB2S: TLabel;
    LabelAzonDuoB2S: TLabel;
    LabelTaavvuzB2S: TLabel;
    LabelBasmala1B2S: TLabel;
    LabelFotiha1B2S: TLabel;
    LabelKavsarB2S: TLabel;
    LabelTakbirRuku1B2S: TLabel;
    LabelAziym1B2S: TLabel;
    LabelBomdod: TLabel;
    LabelPeshin: TLabel;
    LabelAsr: TLabel;
    LabelShom: TLabel;
    LabelTashahhudB2F: TLabel;
    LabelTashahhud2P4S: TLabel;
    LabelTashahhud1P4S: TLabel;
    LabelTashahhud2P4F: TLabel;
    LabelTashahhudP2S: TLabel;
    LabelTashahhudSh2S: TLabel;
    LabelTashahhudX2S: TLabel;
    LabelXufton: TLabel;
    MainMenu1: TMainMenu;
    MenuItemSettings: TMenuItem;
    MenuItemExit: TMenuItem;
    MenuItemAbout: TMenuItem;
    MenuItemFile: TMenuItem;
    MenuItemTools: TMenuItem;
    MenuItemHelp: TMenuItem;
    PageControlMain: TPageControl;
    PageControlV3V: TPageControl;
    PageControlX2S: TPageControl;
    PageControlX4F: TPageControl;
    PageControlSh2S: TPageControl;
    PageControlSh3F: TPageControl;
    PageControlB2S: TPageControl;
    PageControlB2F: TPageControl;
    PageControlP2S: TPageControl;
    PageControlA4F: TPageControl;
    PageControlP4S: TPageControl;
    PageControlP4F: TPageControl;
    PageControlXufton: TPageControl;
    PageControlShom: TPageControl;
    PageControlAsr: TPageControl;
    PageControlPeshin: TPageControl;
    PageControlBomdod: TPageControl;
    ButtonKavsarB2S: TSpeedButton;
    ButtonFotiha1B2S: TSpeedButton;
    ButtonBasmala1B2S: TSpeedButton;
    ButtonTaavvuzB2S: TSpeedButton;
    ButtonSanoB2S: TSpeedButton;
    ButtonTakbirKirishB2S: TSpeedButton;
    ButtonAzonDuoB2S: TSpeedButton;
    ButtonAzonB2S: TSpeedButton;
    ButtonTakbirRuku1B2S: TSpeedButton;
    ButtonAziym1B2S: TSpeedButton;
    PanelBottom: TPanel;
    PanelMain: TPanel;
    PanelRight: TPanel;
    PanelLeft: TPanel;
    ButtonAzonDuoA4F: TSpeedButton;
    ButtonQunut: TSpeedButton;
    ButtonTakbirQunut: TSpeedButton;
    TabSheetDuoV3V: TTabSheet;
    TabSheetDuoX4F: TTabSheet;
    TabSheetDuoSh2S: TTabSheet;
    TabSheetDuoSh3F: TTabSheet;
    TabSheetDuoP2S: TTabSheet;
    TabSheetDuoP4F: TTabSheet;
    TabSheetDuoA4F: TTabSheet;
    TabSheetJalsa1V3V: TTabSheet;
    TabSheetJalsa1X2S: TTabSheet;
    TabSheetJalsa1X4F: TTabSheet;
    TabSheetJalsa1Sh2S: TTabSheet;
    TabSheetJalsa1Sh3F: TTabSheet;
    TabSheetJalsa1P2S: TTabSheet;
    TabSheetJalsa1P4F: TTabSheet;
    TabSheetJalsa1A4F: TTabSheet;
    TabSheetJalsa2V3V: TTabSheet;
    TabSheetJalsa2X2S: TTabSheet;
    TabSheetJalsa2X4F: TTabSheet;
    TabSheetJalsa2Sh2S: TTabSheet;
    TabSheetJalsa2Sh3F: TTabSheet;
    TabSheetJalsa2P2S: TTabSheet;
    TabSheetJalsa2P4F: TTabSheet;
    TabSheetJalsa2A4F: TTabSheet;
    TabSheetJalsa3V3V: TTabSheet;
    TabSheetJalsa3X4F: TTabSheet;
    TabSheetJalsa3Sh3F: TTabSheet;
    TabSheetJalsa3P4F: TTabSheet;
    TabSheetJalsa3A4F: TTabSheet;
    TabSheetJalsa4X4F: TTabSheet;
    TabSheetJalsa4P4F: TTabSheet;
    TabSheetJalsa4A4F: TTabSheet;
    TabSheetKirishV3V: TTabSheet;
    TabSheetKirishX2S: TTabSheet;
    TabSheetKirishX4F: TTabSheet;
    TabSheetKirishSh2S: TTabSheet;
    TabSheetKirishSh3F: TTabSheet;
    TabSheetKirishP2S: TTabSheet;
    TabSheetKirishP4F: TTabSheet;
    TabSheetKirishA4F: TTabSheet;
    TabSheetQada1V3V: TTabSheet;
    TabSheetQada1X4F: TTabSheet;
    TabSheetQada1Sh3F: TTabSheet;
    TabSheetQada1P4F: TTabSheet;
    TabSheetQada1A4F: TTabSheet;
    TabSheetQada2V3V: TTabSheet;
    TabSheetQada2X4F: TTabSheet;
    TabSheetQada2Sh3F: TTabSheet;
    TabSheetQada2P4F: TTabSheet;
    TabSheetQada2A4F: TTabSheet;
    TabSheetQadaP2S: TTabSheet;
    TabSheetQadaSh2S: TTabSheet;
    TabSheetQadaX2S: TTabSheet;
    TabSheetQiyom1V3V: TTabSheet;
    TabSheetQiyom1X2S: TTabSheet;
    TabSheetQiyom1X4F: TTabSheet;
    TabSheetQiyom1Sh2S: TTabSheet;
    TabSheetQiyom1Sh3F: TTabSheet;
    TabSheetQiyom1P2S: TTabSheet;
    TabSheetQiyom1P4F: TTabSheet;
    TabSheetQiyom1A4F: TTabSheet;
    TabSheetQiyom2V3V: TTabSheet;
    TabSheetQiyom2X2S: TTabSheet;
    TabSheetQiyom2X4F: TTabSheet;
    TabSheetQiyom2Sh2S: TTabSheet;
    TabSheetQiyom2Sh3F: TTabSheet;
    TabSheetQiyom2P2S: TTabSheet;
    TabSheetQiyom2P4F: TTabSheet;
    TabSheetQiyom2A4F: TTabSheet;
    TabSheetQiyom3V3V: TTabSheet;
    TabSheetQiyom3X4F: TTabSheet;
    TabSheetQiyom3Sh3F: TTabSheet;
    TabSheetQiyom3P4F: TTabSheet;
    TabSheetQiyom3A4F: TTabSheet;
    TabSheetQiyom4X4F: TTabSheet;
    TabSheetQiyom4P4F: TTabSheet;
    TabSheetQiyom4A4F: TTabSheet;
    TabSheetQovma1V3V: TTabSheet;
    TabSheetQovma1X2S: TTabSheet;
    TabSheetQovma1X4F: TTabSheet;
    TabSheetQovma1Sh2S: TTabSheet;
    TabSheetQovma1Sh3F: TTabSheet;
    TabSheetQovma1P2S: TTabSheet;
    TabSheetQovma1P4F: TTabSheet;
    TabSheetQovma1A4F: TTabSheet;
    TabSheetQovma2V3V: TTabSheet;
    TabSheetQovma2X2S: TTabSheet;
    TabSheetQovma2X4F: TTabSheet;
    TabSheetQovma2Sh2S: TTabSheet;
    TabSheetQovma2Sh3F: TTabSheet;
    TabSheetQovma2P2S: TTabSheet;
    TabSheetQovma2P4F: TTabSheet;
    TabSheetQovma2A4F: TTabSheet;
    TabSheetQovma3V3V: TTabSheet;
    TabSheetQovma3X4F: TTabSheet;
    TabSheetQovma3Sh3F: TTabSheet;
    TabSheetQovma3P4F: TTabSheet;
    TabSheetQovma3A4F: TTabSheet;
    TabSheetQovma4X4F: TTabSheet;
    TabSheetQovma4P4F: TTabSheet;
    TabSheetQovma4A4F: TTabSheet;
    TabSheetRuku1V3V: TTabSheet;
    TabSheetRuku1X2S: TTabSheet;
    TabSheetRuku1X4F: TTabSheet;
    TabSheetRuku1Sh2S: TTabSheet;
    TabSheetRuku1Sh3F: TTabSheet;
    TabSheetRuku1P2S: TTabSheet;
    TabSheetRuku1P4F: TTabSheet;
    TabSheetRuku1A4F: TTabSheet;
    TabSheetRuku2V3V: TTabSheet;
    TabSheetRuku2X2S: TTabSheet;
    TabSheetRuku2X4F: TTabSheet;
    TabSheetRuku2Sh2S: TTabSheet;
    TabSheetRuku2Sh3F: TTabSheet;
    TabSheetRuku2P2S: TTabSheet;
    TabSheetRuku2P4F: TTabSheet;
    TabSheetRuku2A4F: TTabSheet;
    TabSheetRuku3V3V: TTabSheet;
    TabSheetRuku3X4F: TTabSheet;
    TabSheetRuku3Sh3F: TTabSheet;
    TabSheetRuku3P4F: TTabSheet;
    TabSheetRuku3A4F: TTabSheet;
    TabSheetRuku4X4F: TTabSheet;
    TabSheetRuku4P4F: TTabSheet;
    TabSheetRuku4A4F: TTabSheet;
    TabSheetSajda1_1V3V: TTabSheet;
    TabSheetSajda1_1X2S: TTabSheet;
    TabSheetSajda1_1X4F: TTabSheet;
    TabSheetSajda1_1Sh2S: TTabSheet;
    TabSheetSajda1_1Sh3F: TTabSheet;
    TabSheetSajda1_1P2S: TTabSheet;
    TabSheetSajda1_1P4F: TTabSheet;
    TabSheetSajda1_1A4F: TTabSheet;
    TabSheetSajda1_2V3V: TTabSheet;
    TabSheetSajda1_2X2S: TTabSheet;
    TabSheetSajda1_2X4F: TTabSheet;
    TabSheetSajda1_2Sh2S: TTabSheet;
    TabSheetSajda1_2Sh3F: TTabSheet;
    TabSheetSajda1_2P2S: TTabSheet;
    TabSheetSajda1_2P4F: TTabSheet;
    TabSheetSajda1_2A4F: TTabSheet;
    TabSheetSajda2_1V3V: TTabSheet;
    TabSheetSajda2_1X2S: TTabSheet;
    TabSheetSajda2_1X4F: TTabSheet;
    TabSheetSajda2_1Sh2S: TTabSheet;
    TabSheetSajda2_1Sh3F: TTabSheet;
    TabSheetSajda2_1P2S: TTabSheet;
    TabSheetSajda2_1P4F: TTabSheet;
    TabSheetSajda2_1A4F: TTabSheet;
    TabSheetSajda2_2V3V: TTabSheet;
    TabSheetSajda2_2X2S: TTabSheet;
    TabSheetSajda2_2X4F: TTabSheet;
    TabSheetSajda2_2Sh2S: TTabSheet;
    TabSheetSajda2_2Sh3F: TTabSheet;
    TabSheetSajda2_2P2S: TTabSheet;
    TabSheetSajda2_2P4F: TTabSheet;
    TabSheetSajda2_2A4F: TTabSheet;
    TabSheetSajda3_1V3V: TTabSheet;
    TabSheetSajda3_1X4F: TTabSheet;
    TabSheetSajda3_1Sh3F: TTabSheet;
    TabSheetSajda3_1P4F: TTabSheet;
    TabSheetSajda3_1A4F: TTabSheet;
    TabSheetSajda3_2V3V: TTabSheet;
    TabSheetSajda3_2X4F: TTabSheet;
    TabSheetSajda3_2Sh3F: TTabSheet;
    TabSheetSajda3_2P4F: TTabSheet;
    TabSheetSajda3_2A4F: TTabSheet;
    TabSheetSajda4_1X4F: TTabSheet;
    TabSheetSajda4_1P4F: TTabSheet;
    TabSheetSajda4_1A4F: TTabSheet;
    TabSheetSajda4_2A4F: TTabSheet;
    TabSheetSajda4_2X4F: TTabSheet;
    TabSheetSajda4_2P4S: TTabSheet;
    TabSheetJalsa4P4S: TTabSheet;
    TabSheetSajda4_1P4S: TTabSheet;
    TabSheetQovma4P4S: TTabSheet;
    TabSheetRuku4P4S: TTabSheet;
    TabSheetQiyom4P4S: TTabSheet;
    TabSheetSajda3_2P4S: TTabSheet;
    TabSheetJalsa3P4S: TTabSheet;
    TabSheetSajda3_1P4S: TTabSheet;
    TabSheetQovma3P4S: TTabSheet;
    TabSheetRuku3P4S: TTabSheet;
    TabSheetQiyom3P4S: TTabSheet;
    TabSheetQada1P4S: TTabSheet;
    TabSheetDuoB2F: TTabSheet;
    TabSheetJalsa1B2F: TTabSheet;
    TabSheetJalsa1P4S: TTabSheet;
    TabSheetJalsa2B2F: TTabSheet;
    TabSheetJalsa2P4S: TTabSheet;
    TabSheetKirishB2F: TTabSheet;
    TabSheetKirishP4S: TTabSheet;
    TabSheetQadaB2F: TTabSheet;
    TabSheetQada2P4S: TTabSheet;
    TabSheetQiyom1B2F: TTabSheet;
    TabSheetQiyom1P4S: TTabSheet;
    TabSheetQiyom2B2F: TTabSheet;
    TabSheetQiyom2P4S: TTabSheet;
    TabSheetQovma1B2F: TTabSheet;
    TabSheetQovma1P4S: TTabSheet;
    TabSheetQovma2B2F: TTabSheet;
    TabSheetQovma2P4S: TTabSheet;
    TabSheetRuku1B2F: TTabSheet;
    TabSheetRuku1P4S: TTabSheet;
    TabSheetRuku2B2F: TTabSheet;
    TabSheetRuku2P4S: TTabSheet;
    TabSheetSajda1_1B2F: TTabSheet;
    TabSheetSajda1_1P4S: TTabSheet;
    TabSheetSajda1_2B2F: TTabSheet;
    TabSheetSajda1_2P4S: TTabSheet;
    TabSheetSajda2_1B2F: TTabSheet;
    TabSheetSajda2_1P4S: TTabSheet;
    TabSheetSajda2_2B2F: TTabSheet;
    TabSheetSajda2_2P4S: TTabSheet;
    TabSheetSajda4_2P4F: TTabSheet;
    TabSheetSalomV3V: TTabSheet;
    TabSheetSalomX2S: TTabSheet;
    TabSheetSalomX4F: TTabSheet;
    TabSheetSalomSh2S: TTabSheet;
    TabSheetSalomSh3F: TTabSheet;
    TabSheetSalomB2F1: TTabSheet;
    TabSheetSalomB2S: TTabSheet;
    TabSheetQadaB2S: TTabSheet;
    TabSheetSajda2_2B2S: TTabSheet;
    TabSheetJalsa2B2S: TTabSheet;
    TabSheetSajda2_1B2S: TTabSheet;
    TabSheetQovma2B2S: TTabSheet;
    TabSheetRuku2B2S: TTabSheet;
    TabSheetKirishB2S: TTabSheet;
    TabSheetQiyom1B2S: TTabSheet;
    TabSheetRuku1B2S: TTabSheet;
    TabSheetQovma1B2S: TTabSheet;
    TabSheetSajda1_1B2S: TTabSheet;
    TabSheetJalsa1B2S: TTabSheet;
    TabSheetSajda1_2B2S: TTabSheet;
    TabSheetQiyom2B2S: TTabSheet;
    TabSheetB2S: TTabSheet;
    TabSheetSalomB2F: TTabSheet;
    TabSheetSalomP2S: TTabSheet;
    TabSheetSalomA4F: TTabSheet;
    TabSheetSalomP4S: TTabSheet;
    TabSheetSalomP4F: TTabSheet;
    TabSheetX2S: TTabSheet;
    TabSheetV3V: TTabSheet;
    TabSheetB2F: TTabSheet;
    TabSheetP4S: TTabSheet;
    TabSheetP4F: TTabSheet;
    TabSheetP2S: TTabSheet;
    TabSheetA4F: TTabSheet;
    TabSheetSh3F: TTabSheet;
    TabSheetSh2S: TTabSheet;
    TabSheetX4F: TTabSheet;
    TabSheetBomdod: TTabSheet;
    TabSheetPeshin: TTabSheet;
    TabSheetAsr: TTabSheet;
    TabSheetShom: TTabSheet;
    TabSheetXufton: TTabSheet;
    Timer1: TTimer;
    TrayIcon1: TTrayIcon;
    procedure ButtonAla1_1A4FClick(Sender: TObject);
    procedure ButtonAla1_1B2FClick(Sender: TObject);
    procedure ButtonAla1_1B2SClick(Sender: TObject);
    procedure ButtonAla1_1P2SClick(Sender: TObject);
    procedure ButtonAla1_1P4FClick(Sender: TObject);
    procedure ButtonAla1_1P4SClick(Sender: TObject);
    procedure ButtonAla1_1Sh2SClick(Sender: TObject);
    procedure ButtonAla1_1Sh3FClick(Sender: TObject);
    procedure ButtonAla1_1V3VClick(Sender: TObject);
    procedure ButtonAla1_1X2SClick(Sender: TObject);
    procedure ButtonAla1_1X4FClick(Sender: TObject);
    procedure ButtonAla1_2A4FClick(Sender: TObject);
    procedure ButtonAla1_2B2FClick(Sender: TObject);
    procedure ButtonAla1_2B2SClick(Sender: TObject);
    procedure ButtonAla1_2P2SClick(Sender: TObject);
    procedure ButtonAla1_2P4FClick(Sender: TObject);
    procedure ButtonAla1_2P4SClick(Sender: TObject);
    procedure ButtonAla1_2Sh2SClick(Sender: TObject);
    procedure ButtonAla1_2Sh3FClick(Sender: TObject);
    procedure ButtonAla1_2V3VClick(Sender: TObject);
    procedure ButtonAla1_2X2SClick(Sender: TObject);
    procedure ButtonAla1_2X4FClick(Sender: TObject);
    procedure ButtonAla2_1A4FClick(Sender: TObject);
    procedure ButtonAla2_1B2FClick(Sender: TObject);
    procedure ButtonAla2_1B2SClick(Sender: TObject);
    procedure ButtonAla2_1P2SClick(Sender: TObject);
    procedure ButtonAla2_1P4FClick(Sender: TObject);
    procedure ButtonAla2_1P4SClick(Sender: TObject);
    procedure ButtonAla2_1Sh2SClick(Sender: TObject);
    procedure ButtonAla2_1Sh3FClick(Sender: TObject);
    procedure ButtonAla2_1V3VClick(Sender: TObject);
    procedure ButtonAla2_1X2SClick(Sender: TObject);
    procedure ButtonAla2_1X4FClick(Sender: TObject);
    procedure ButtonAla2_2A4FClick(Sender: TObject);
    procedure ButtonAla2_2B2FClick(Sender: TObject);
    procedure ButtonAla2_2B2SClick(Sender: TObject);
    procedure ButtonAla2_2P2SClick(Sender: TObject);
    procedure ButtonAla2_2P4FClick(Sender: TObject);
    procedure ButtonAla2_2P4SClick(Sender: TObject);
    procedure ButtonAla2_2Sh2SClick(Sender: TObject);
    procedure ButtonAla2_2Sh3FClick(Sender: TObject);
    procedure ButtonAla2_2V3VClick(Sender: TObject);
    procedure ButtonAla2_2X2SClick(Sender: TObject);
    procedure ButtonAla2_2X4FClick(Sender: TObject);
    procedure ButtonAla3_1A4FClick(Sender: TObject);
    procedure ButtonAla3_1P4FClick(Sender: TObject);
    procedure ButtonAla3_1P4SClick(Sender: TObject);
    procedure ButtonAla3_1Sh3FClick(Sender: TObject);
    procedure ButtonAla3_1V3VClick(Sender: TObject);
    procedure ButtonAla3_1X4FClick(Sender: TObject);
    procedure ButtonAla3_2A4FClick(Sender: TObject);
    procedure ButtonAla3_2P4FClick(Sender: TObject);
    procedure ButtonAla3_2P4SClick(Sender: TObject);
    procedure ButtonAla3_2Sh3FClick(Sender: TObject);
    procedure ButtonAla3_2V3VClick(Sender: TObject);
    procedure ButtonAla3_2X4FClick(Sender: TObject);
    procedure ButtonAla4_1A4FClick(Sender: TObject);
    procedure ButtonAla4_1P4FClick(Sender: TObject);
    procedure ButtonAla4_1P4SClick(Sender: TObject);
    procedure ButtonAla4_1X4FClick(Sender: TObject);
    procedure ButtonAla4_2A4FClick(Sender: TObject);
    procedure ButtonAla4_2P4FClick(Sender: TObject);
    procedure ButtonAla4_2P4SClick(Sender: TObject);
    procedure ButtonAla4_2X4FClick(Sender: TObject);
    procedure ButtonDuoA4FClick(Sender: TObject);
    procedure ButtonDuoB2FClick(Sender: TObject);
    procedure ButtonDuoP4FClick(Sender: TObject);
    procedure ButtonDuoSh3FClick(Sender: TObject);
    procedure ButtonAntassalamV3VClick(Sender: TObject);
    procedure ButtonDuoX4FClick(Sender: TObject);
    procedure ButtonAziym1A4FClick(Sender: TObject);
    procedure ButtonAziym1B2FClick(Sender: TObject);
    procedure ButtonAziym1B2SClick(Sender: TObject);
    procedure ButtonAziym1P2SClick(Sender: TObject);
    procedure ButtonAziym1P4SClick(Sender: TObject);
    procedure ButtonAziym1Sh2SClick(Sender: TObject);
    procedure ButtonAziym1Sh3FClick(Sender: TObject);
    procedure ButtonAziym1V3VClick(Sender: TObject);
    procedure ButtonAziym1X2SClick(Sender: TObject);
    procedure ButtonAziym1X4FClick(Sender: TObject);
    procedure ButtonAziym2A4FClick(Sender: TObject);
    procedure ButtonAziym2B2FClick(Sender: TObject);
    procedure ButtonAziym2B2SClick(Sender: TObject);
    procedure ButtonAziym2P2SClick(Sender: TObject);
    procedure ButtonAziym2P4FClick(Sender: TObject);
    procedure ButtonAziym2P4SClick(Sender: TObject);
    procedure ButtonAziym2Sh2SClick(Sender: TObject);
    procedure ButtonAziym2Sh3FClick(Sender: TObject);
    procedure ButtonAziym2V3VClick(Sender: TObject);
    procedure ButtonAziym2X2SClick(Sender: TObject);
    procedure ButtonAziym2X4FClick(Sender: TObject);
    procedure ButtonAziym3A4FClick(Sender: TObject);
    procedure ButtonAziym3P4FClick(Sender: TObject);
    procedure ButtonAziym3P4SClick(Sender: TObject);
    procedure ButtonAziym3Sh3FClick(Sender: TObject);
    procedure ButtonAziym3V3VClick(Sender: TObject);
    procedure ButtonAziym3X4FClick(Sender: TObject);
    procedure ButtonAziym4A4FClick(Sender: TObject);
    procedure ButtonAziym4P4FClick(Sender: TObject);
    procedure ButtonAziym4P4SClick(Sender: TObject);
    procedure ButtonAziym4X4FClick(Sender: TObject);
    procedure ButtonAzonA4FClick(Sender: TObject);
    procedure ButtonAzonB2SClick(Sender: TObject);
    procedure ButtonAzonDuoA4FClick(Sender: TObject);
    procedure ButtonAzonDuoB2SClick(Sender: TObject);
    procedure ButtonAzonDuoP4SClick(Sender: TObject);
    procedure ButtonAzonDuoSh3FClick(Sender: TObject);
    procedure ButtonAzonDuoX4FClick(Sender: TObject);
    procedure ButtonAzonP4SClick(Sender: TObject);
    procedure ButtonAzonSh3FClick(Sender: TObject);
    procedure ButtonAzonX4FClick(Sender: TObject);
    procedure ButtonBasmala1A4FClick(Sender: TObject);
    procedure ButtonBasmala1B2FClick(Sender: TObject);
    procedure ButtonBasmala1B2SClick(Sender: TObject);
    procedure ButtonBasmala1P2SClick(Sender: TObject);
    procedure ButtonBasmala1P4FClick(Sender: TObject);
    procedure ButtonBasmala1P4SClick(Sender: TObject);
    procedure ButtonBasmala1Sh2SClick(Sender: TObject);
    procedure ButtonBasmala1Sh3FClick(Sender: TObject);
    procedure ButtonBasmala1V3VClick(Sender: TObject);
    procedure ButtonBasmala1X2SClick(Sender: TObject);
    procedure ButtonBasmala1X4FClick(Sender: TObject);
    procedure ButtonBasmala2A4FClick(Sender: TObject);
    procedure ButtonBasmala2B2FClick(Sender: TObject);
    procedure ButtonBasmala2B2SClick(Sender: TObject);
    procedure ButtonBasmala2P2SClick(Sender: TObject);
    procedure ButtonBasmala2P4FClick(Sender: TObject);
    procedure ButtonBasmala2P4SClick(Sender: TObject);
    procedure ButtonBasmala2Sh2SClick(Sender: TObject);
    procedure ButtonBasmala2Sh3FClick(Sender: TObject);
    procedure ButtonBasmala2V3VClick(Sender: TObject);
    procedure ButtonBasmala2X2SClick(Sender: TObject);
    procedure ButtonBasmala2X4FClick(Sender: TObject);
    procedure ButtonBasmala3A4FClick(Sender: TObject);
    procedure ButtonBasmala3P4FClick(Sender: TObject);
    procedure ButtonBasmala3P4SClick(Sender: TObject);
    procedure ButtonBasmala3Sh3FClick(Sender: TObject);
    procedure ButtonBasmala3V3VClick(Sender: TObject);
    procedure ButtonBasmala3X4FClick(Sender: TObject);
    procedure ButtonBasmala4A4FClick(Sender: TObject);
    procedure ButtonBasmala4P4FClick(Sender: TObject);
    procedure ButtonBasmala4P4SClick(Sender: TObject);
    procedure ButtonBasmala4X4FClick(Sender: TObject);
    procedure ButtonFalaqB2FClick(Sender: TObject);
    procedure ButtonFalaqP2SClick(Sender: TObject);
    procedure ButtonFalaqP4SClick(Sender: TObject);
    procedure ButtonFalaqSh2SClick(Sender: TObject);
    procedure ButtonFalaqV3VClick(Sender: TObject);
    procedure ButtonFalaqX2SClick(Sender: TObject);
    procedure ButtonFotiha1A4F1Click(Sender: TObject);
    procedure ButtonFotiha1A4FClick(Sender: TObject);
    procedure ButtonFotiha1B2FClick(Sender: TObject);
    procedure ButtonFotiha1B2SClick(Sender: TObject);
    procedure ButtonFotiha1P2SClick(Sender: TObject);
    procedure ButtonFotiha1P4FClick(Sender: TObject);
    procedure ButtonFotiha1P4SClick(Sender: TObject);
    procedure ButtonFotiha1Sh2SClick(Sender: TObject);
    procedure ButtonFotiha1Sh3FClick(Sender: TObject);
    procedure ButtonFotiha1V3VClick(Sender: TObject);
    procedure ButtonFotiha1X2SClick(Sender: TObject);
    procedure ButtonFotiha2A4FClick(Sender: TObject);
    procedure ButtonFotiha2B2FClick(Sender: TObject);
    procedure ButtonFotiha2B2SClick(Sender: TObject);
    procedure ButtonFotiha2P2SClick(Sender: TObject);
    procedure ButtonFotiha2P4FClick(Sender: TObject);
    procedure ButtonFotiha2P4SClick(Sender: TObject);
    procedure ButtonFotiha2Sh2SClick(Sender: TObject);
    procedure ButtonFotiha2Sh3FClick(Sender: TObject);
    procedure ButtonFotiha2V3VClick(Sender: TObject);
    procedure ButtonFotiha2X2SClick(Sender: TObject);
    procedure ButtonFotiha2X4FClick(Sender: TObject);
    procedure ButtonFotiha3A4FClick(Sender: TObject);
    procedure ButtonFotiha3P4FClick(Sender: TObject);
    procedure ButtonFotiha3P4SClick(Sender: TObject);
    procedure ButtonFotiha3Sh3FClick(Sender: TObject);
    procedure ButtonFotiha3V3VClick(Sender: TObject);
    procedure ButtonFotiha3X4FClick(Sender: TObject);
    procedure ButtonFotiha4A4FClick(Sender: TObject);
    procedure ButtonFotiha4P4FClick(Sender: TObject);
    procedure ButtonFotiha4P4SClick(Sender: TObject);
    procedure ButtonFotiha4X4FClick(Sender: TObject);
    procedure ButtonIqomatA4FClick(Sender: TObject);
    procedure ButtonIqomatB2FClick(Sender: TObject);
    procedure ButtonIqomatP4FClick(Sender: TObject);
    procedure ButtonIqomatSh3FClick(Sender: TObject);
    procedure ButtonIqomatX4FClick(Sender: TObject);
    procedure ButtonIxlosA4FClick(Sender: TObject);
    procedure ButtonIxlosB2SClick(Sender: TObject);
    procedure ButtonIxlosP4FClick(Sender: TObject);
    procedure ButtonIxlosP4SClick(Sender: TObject);
    procedure ButtonIxlosSh3FClick(Sender: TObject);
    procedure ButtonIxlosV3VClick(Sender: TObject);
    procedure ButtonIxlosX4FClick(Sender: TObject);
    procedure ButtonKavsarA4FClick(Sender: TObject);
    procedure ButtonKavsarB2SClick(Sender: TObject);
    procedure ButtonKavsarP4FClick(Sender: TObject);
    procedure ButtonKavsarP4SClick(Sender: TObject);
    procedure ButtonKavsarSh3FClick(Sender: TObject);
    procedure ButtonKavsarX4FClick(Sender: TObject);
    procedure ButtonKursiA4FClick(Sender: TObject);
    procedure ButtonKursiB2FClick(Sender: TObject);
    procedure ButtonKursiP2SClick(Sender: TObject);
    procedure ButtonKursiSh2SClick(Sender: TObject);
    procedure ButtonKursiV3VClick(Sender: TObject);
    procedure ButtonNasB2FClick(Sender: TObject);
    procedure ButtonNasP2SClick(Sender: TObject);
    procedure ButtonNasP4SClick(Sender: TObject);
    procedure ButtonNasSh2SClick(Sender: TObject);
    procedure ButtonNasV3VClick(Sender: TObject);
    procedure ButtonNasX2SClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonQunutClick(Sender: TObject);
    procedure ButtonRobbanaA4FClick(Sender: TObject);
    procedure ButtonRobbanaB2FClick(Sender: TObject);
    procedure ButtonRobbanaB2SClick(Sender: TObject);
    procedure ButtonRobbanaP2SClick(Sender: TObject);
    procedure ButtonRobbanaP4FClick(Sender: TObject);
    procedure ButtonRobbanaP4SClick(Sender: TObject);
    procedure ButtonRobbanaSh2SClick(Sender: TObject);
    procedure ButtonRobbanaSh3FClick(Sender: TObject);
    procedure ButtonRobbanaV3VClick(Sender: TObject);
    procedure ButtonRobbanaX2SClick(Sender: TObject);
    procedure ButtonRobbanaX4FClick(Sender: TObject);
    procedure ButtonHamd1A4FClick(Sender: TObject);
    procedure ButtonHamd1B2FClick(Sender: TObject);
    procedure ButtonHamd1B2SClick(Sender: TObject);
    procedure ButtonHamd1P2SClick(Sender: TObject);
    procedure ButtonHamd1P4SClick(Sender: TObject);
    procedure ButtonHamd1Sh2SClick(Sender: TObject);
    procedure ButtonHamd1Sh3FClick(Sender: TObject);
    procedure ButtonHamd1V3VClick(Sender: TObject);
    procedure ButtonHamd1X2SClick(Sender: TObject);
    procedure ButtonHamd1X4FClick(Sender: TObject);
    procedure ButtonHamd2A4FClick(Sender: TObject);
    procedure ButtonHamd2B2FClick(Sender: TObject);
    procedure ButtonHamd2B2SClick(Sender: TObject);
    procedure ButtonHamd2P2SClick(Sender: TObject);
    procedure ButtonHamd2P4FClick(Sender: TObject);
    procedure ButtonHamd2P4SClick(Sender: TObject);
    procedure ButtonHamd2Sh2SClick(Sender: TObject);
    procedure ButtonHamd2Sh3FClick(Sender: TObject);
    procedure ButtonHamd2V3VClick(Sender: TObject);
    procedure ButtonHamd2X2SClick(Sender: TObject);
    procedure ButtonHamd2X4FClick(Sender: TObject);
    procedure ButtonHamd3A4FClick(Sender: TObject);
    procedure ButtonHamd3P4FClick(Sender: TObject);
    procedure ButtonHamd3P4SClick(Sender: TObject);
    procedure ButtonHamd3Sh3FClick(Sender: TObject);
    procedure ButtonHamd3V3VClick(Sender: TObject);
    procedure ButtonHamd3X4FClick(Sender: TObject);
    procedure ButtonHamd4A4FClick(Sender: TObject);
    procedure ButtonHamd4P4FClick(Sender: TObject);
    procedure ButtonHamd4P4SClick(Sender: TObject);
    procedure ButtonHamd4X4FClick(Sender: TObject);
    procedure ButtonSalavotA4FClick(Sender: TObject);
    procedure ButtonSalavotB2FClick(Sender: TObject);
    procedure ButtonSalavotB2SClick(Sender: TObject);
    procedure ButtonSalavotP2SClick(Sender: TObject);
    procedure ButtonSalavotP4FClick(Sender: TObject);
    procedure ButtonSalavotP4SClick(Sender: TObject);
    procedure ButtonSalavotSh2SClick(Sender: TObject);
    procedure ButtonSalavotSh3FClick(Sender: TObject);
    procedure ButtonSalavotV3VClick(Sender: TObject);
    procedure ButtonSalavotX2SClick(Sender: TObject);
    procedure ButtonSalavotX4FClick(Sender: TObject);
    procedure ButtonSalomA4FClick(Sender: TObject);
    procedure ButtonSalomB2FClick(Sender: TObject);
    procedure ButtonSalomB2SClick(Sender: TObject);
    procedure ButtonSalomP2SClick(Sender: TObject);
    procedure ButtonSalomP4FClick(Sender: TObject);
    procedure ButtonSalomP4SClick(Sender: TObject);
    procedure ButtonSalomSh2SClick(Sender: TObject);
    procedure ButtonSalomSh3FClick(Sender: TObject);
    procedure ButtonSalomV3VClick(Sender: TObject);
    procedure ButtonSalomX2SClick(Sender: TObject);
    procedure ButtonSalomX4FClick(Sender: TObject);
    procedure ButtonSamialloh1A4FClick(Sender: TObject);
    procedure ButtonSamialloh1B2FClick(Sender: TObject);
    procedure ButtonSamialloh1B2SClick(Sender: TObject);
    procedure ButtonSamialloh1P2SClick(Sender: TObject);
    procedure ButtonSamialloh1P4SClick(Sender: TObject);
    procedure ButtonSamialloh1Sh2SClick(Sender: TObject);
    procedure ButtonSamialloh1Sh3FClick(Sender: TObject);
    procedure ButtonSamialloh1V3VClick(Sender: TObject);
    procedure ButtonSamialloh1X2SClick(Sender: TObject);
    procedure ButtonSamialloh1X4FClick(Sender: TObject);
    procedure ButtonSamialloh2A4FClick(Sender: TObject);
    procedure ButtonSamialloh2B2FClick(Sender: TObject);
    procedure ButtonSamialloh2B2SClick(Sender: TObject);
    procedure ButtonSamialloh2P2SClick(Sender: TObject);
    procedure ButtonSamialloh2P4FClick(Sender: TObject);
    procedure ButtonSamialloh2P4SClick(Sender: TObject);
    procedure ButtonSamialloh2Sh2SClick(Sender: TObject);
    procedure ButtonSamialloh2Sh3FClick(Sender: TObject);
    procedure ButtonSamialloh2V3VClick(Sender: TObject);
    procedure ButtonSamialloh2X2SClick(Sender: TObject);
    procedure ButtonSamialloh2X4FClick(Sender: TObject);
    procedure ButtonSamialloh3A4FClick(Sender: TObject);
    procedure ButtonSamialloh3P4FClick(Sender: TObject);
    procedure ButtonSamialloh3P4SClick(Sender: TObject);
    procedure ButtonSamialloh3Sh3FClick(Sender: TObject);
    procedure ButtonSamialloh3V3VClick(Sender: TObject);
    procedure ButtonSamialloh3X4FClick(Sender: TObject);
    procedure ButtonSamialloh4A4FClick(Sender: TObject);
    procedure ButtonSamialloh4P4FClick(Sender: TObject);
    procedure ButtonSamialloh4P4SClick(Sender: TObject);
    procedure ButtonSamialloh4X4FClick(Sender: TObject);
    procedure ButtonSanoA4FClick(Sender: TObject);
    procedure ButtonSanoB2FClick(Sender: TObject);
    procedure ButtonSanoB2SClick(Sender: TObject);
    procedure ButtonSanoP2SClick(Sender: TObject);
    procedure ButtonSanoP4FClick(Sender: TObject);
    procedure ButtonSanoP4SClick(Sender: TObject);
    procedure ButtonSanoSh2SClick(Sender: TObject);
    procedure ButtonSanoSh3FClick(Sender: TObject);
    procedure ButtonSanoV3VClick(Sender: TObject);
    procedure ButtonSanoX2SClick(Sender: TObject);
    procedure ButtonSanoX4FClick(Sender: TObject);
    procedure ButtonTaavvuzA4FClick(Sender: TObject);
    procedure ButtonTaavvuzB2FClick(Sender: TObject);
    procedure ButtonTaavvuzB2SClick(Sender: TObject);
    procedure ButtonTaavvuzP2SClick(Sender: TObject);
    procedure ButtonTaavvuzP4FClick(Sender: TObject);
    procedure ButtonTaavvuzP4SClick(Sender: TObject);
    procedure ButtonTaavvuzSh2SClick(Sender: TObject);
    procedure ButtonTaavvuzSh3FClick(Sender: TObject);
    procedure ButtonTaavvuzV3VClick(Sender: TObject);
    procedure ButtonTaavvuzX2SClick(Sender: TObject);
    procedure ButtonTaavvuzX4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa1A4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa1B2FClick(Sender: TObject);
    procedure ButtonTakbirJalsa1B2SClick(Sender: TObject);
    procedure ButtonTakbirJalsa1P2SClick(Sender: TObject);
    procedure ButtonTakbirJalsa1P4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa1P4SClick(Sender: TObject);
    procedure ButtonTakbirJalsa1Sh2SClick(Sender: TObject);
    procedure ButtonTakbirJalsa1Sh3FClick(Sender: TObject);
    procedure ButtonTakbirJalsa1V3VClick(Sender: TObject);
    procedure ButtonTakbirJalsa1X2SClick(Sender: TObject);
    procedure ButtonTakbirJalsa1X4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa2A4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa2B2FClick(Sender: TObject);
    procedure ButtonTakbirJalsa2B2SClick(Sender: TObject);
    procedure ButtonTakbirJalsa2P2SClick(Sender: TObject);
    procedure ButtonTakbirJalsa2P4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa2P4SClick(Sender: TObject);
    procedure ButtonTakbirJalsa2Sh2SClick(Sender: TObject);
    procedure ButtonTakbirJalsa2Sh3FClick(Sender: TObject);
    procedure ButtonTakbirJalsa2V3VClick(Sender: TObject);
    procedure ButtonTakbirJalsa2X2SClick(Sender: TObject);
    procedure ButtonTakbirJalsa2X4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa3A4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa3P4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa3P4SClick(Sender: TObject);
    procedure ButtonTakbirJalsa3Sh3FClick(Sender: TObject);
    procedure ButtonTakbirJalsa3V3VClick(Sender: TObject);
    procedure ButtonTakbirJalsa3X4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa4A4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa4P4FClick(Sender: TObject);
    procedure ButtonTakbirJalsa4P4SClick(Sender: TObject);
    procedure ButtonTakbirJalsa4X4FClick(Sender: TObject);
    procedure ButtonTakbirKirishA4FClick(Sender: TObject);
    procedure ButtonTakbirKirishB2FClick(Sender: TObject);
    procedure ButtonTakbirKirishB2SClick(Sender: TObject);
    procedure ButtonTakbirKirishP2SClick(Sender: TObject);
    procedure ButtonTakbirKirishP4FClick(Sender: TObject);
    procedure ButtonTakbirKirishP4SClick(Sender: TObject);
    procedure ButtonTakbirKirishSh2SClick(Sender: TObject);
    procedure ButtonTakbirKirishSh3FClick(Sender: TObject);
    procedure ButtonTakbirKirishV3VClick(Sender: TObject);
    procedure ButtonTakbirKirishX2SClick(Sender: TObject);
    procedure ButtonTakbirKirishX4FClick(Sender: TObject);
    procedure ButtonTakbirQada1A4FClick(Sender: TObject);
    procedure ButtonTakbirQada1P4FClick(Sender: TObject);
    procedure ButtonTakbirQada1P4SClick(Sender: TObject);
    procedure ButtonTakbirQada1Sh3FClick(Sender: TObject);
    procedure ButtonTakbirQada1V3VClick(Sender: TObject);
    procedure ButtonTakbirQada1X4FClick(Sender: TObject);
    procedure ButtonTakbirQada2A4FClick(Sender: TObject);
    procedure ButtonTakbirQada2P4FClick(Sender: TObject);
    procedure ButtonTakbirQada2P4SClick(Sender: TObject);
    procedure ButtonTakbirQada2Sh3FClick(Sender: TObject);
    procedure ButtonTakbirQada2V3VClick(Sender: TObject);
    procedure ButtonTakbirQada2X4FClick(Sender: TObject);
    procedure ButtonTakbirQadaB2FClick(Sender: TObject);
    procedure ButtonTakbirQadaB2SClick(Sender: TObject);
    procedure ButtonTakbirQadaP2SClick(Sender: TObject);
    procedure ButtonTakbirQadaSh2SClick(Sender: TObject);
    procedure ButtonTakbirQadaX2SClick(Sender: TObject);
    procedure ButtonTakbirQiyom2A4FClick(Sender: TObject);
    procedure ButtonTakbirQiyom2B2FClick(Sender: TObject);
    procedure ButtonTakbirQiyom2B2SClick(Sender: TObject);
    procedure ButtonTakbirQiyom2P2SClick(Sender: TObject);
    procedure ButtonTakbirQiyom2P4FClick(Sender: TObject);
    procedure ButtonTakbirQiyom2P4SClick(Sender: TObject);
    procedure ButtonTakbirQiyom2Sh2SClick(Sender: TObject);
    procedure ButtonTakbirQiyom2Sh3FClick(Sender: TObject);
    procedure ButtonTakbirQiyom2V3VClick(Sender: TObject);
    procedure ButtonTakbirQiyom2X2SClick(Sender: TObject);
    procedure ButtonTakbirQiyom2X4FClick(Sender: TObject);
    procedure ButtonTakbirQiyom3A4FClick(Sender: TObject);
    procedure ButtonTakbirQiyom3P4FClick(Sender: TObject);
    procedure ButtonTakbirQiyom3P4SClick(Sender: TObject);
    procedure ButtonTakbirQiyom3Sh3FClick(Sender: TObject);
    procedure ButtonTakbirQiyom3V3VClick(Sender: TObject);
    procedure ButtonTakbirQiyom3X4FClick(Sender: TObject);
    procedure ButtonTakbirQiyom4A4FClick(Sender: TObject);
    procedure ButtonTakbirQiyom4P4FClick(Sender: TObject);
    procedure ButtonTakbirQiyom4P4SClick(Sender: TObject);
    procedure ButtonTakbirQiyom4X4FClick(Sender: TObject);
    procedure ButtonTakbirQunutClick(Sender: TObject);
    procedure ButtonTakbirRuku1A4FClick(Sender: TObject);
    procedure ButtonTakbirRuku1B2FClick(Sender: TObject);
    procedure ButtonTakbirRuku1B2SClick(Sender: TObject);
    procedure ButtonTakbirRuku1P2SClick(Sender: TObject);
    procedure ButtonTakbirRuku1P4SClick(Sender: TObject);
    procedure ButtonTakbirRuku1Sh2SClick(Sender: TObject);
    procedure ButtonTakbirRuku1Sh3FClick(Sender: TObject);
    procedure ButtonTakbirRuku1V3VClick(Sender: TObject);
    procedure ButtonTakbirRuku1X2SClick(Sender: TObject);
    procedure ButtonTakbirRuku1X4FClick(Sender: TObject);
    procedure ButtonTakbirRuku2A4FClick(Sender: TObject);
    procedure ButtonTakbirRuku2B2FClick(Sender: TObject);
    procedure ButtonTakbirRuku2B2SClick(Sender: TObject);
    procedure ButtonTakbirRuku2P2SClick(Sender: TObject);
    procedure ButtonTakbirRuku2P4FClick(Sender: TObject);
    procedure ButtonTakbirRuku2P4SClick(Sender: TObject);
    procedure ButtonTakbirRuku2Sh2SClick(Sender: TObject);
    procedure ButtonTakbirRuku2Sh3FClick(Sender: TObject);
    procedure ButtonTakbirRuku2V3VClick(Sender: TObject);
    procedure ButtonTakbirRuku2X2SClick(Sender: TObject);
    procedure ButtonTakbirRuku2X4FClick(Sender: TObject);
    procedure ButtonTakbirRuku3A4FClick(Sender: TObject);
    procedure ButtonTakbirRuku3P4FClick(Sender: TObject);
    procedure ButtonTakbirRuku3P4SClick(Sender: TObject);
    procedure ButtonTakbirRuku3Sh3FClick(Sender: TObject);
    procedure ButtonTakbirRuku3V3VClick(Sender: TObject);
    procedure ButtonTakbirRuku3X4FClick(Sender: TObject);
    procedure ButtonTakbirRuku4A4FClick(Sender: TObject);
    procedure ButtonTakbirRuku4P4FClick(Sender: TObject);
    procedure ButtonTakbirRuku4P4SClick(Sender: TObject);
    procedure ButtonTakbirRuku4X4FClick(Sender: TObject);
    procedure ButtonTakbirSajda1_1A4FClick(Sender: TObject);
    procedure ButtonTakbirSajda1_1B2FClick(Sender: TObject);
    procedure ButtonTakbirSajda1_1B2SClick(Sender: TObject);
    procedure ButtonTakbirSajda1_1P2SClick(Sender: TObject);
    procedure ButtonTakbirSajda1_1P4FClick(Sender: TObject);
    procedure ButtonTakbirSajda1_1P4SClick(Sender: TObject);
    procedure ButtonTakbirSajda1_1Sh2SClick(Sender: TObject);
    procedure ButtonTakbirSajda1_1Sh3FClick(Sender: TObject);
    procedure ButtonTakbirSajda1_1V3VClick(Sender: TObject);
    procedure ButtonTakbirSajda1_1X2SClick(Sender: TObject);
    procedure ButtonTakbirSajda1_1X4FClick(Sender: TObject);
    procedure ButtonTakbirSajda1_2A4FClick(Sender: TObject);
    procedure ButtonTakbirSajda1_2B2FClick(Sender: TObject);
    procedure ButtonTakbirSajda1_2B2SClick(Sender: TObject);
    procedure ButtonTakbirSajda1_2P2SClick(Sender: TObject);
    procedure ButtonTakbirSajda1_2P4FClick(Sender: TObject);
    procedure ButtonTakbirSajda1_2P4SClick(Sender: TObject);
    procedure ButtonTakbirSajda1_2Sh2SClick(Sender: TObject);
    procedure ButtonTakbirSajda1_2Sh3FClick(Sender: TObject);
    procedure ButtonTakbirSajda1_2V3VClick(Sender: TObject);
    procedure ButtonTakbirSajda1_2X2SClick(Sender: TObject);
    procedure ButtonTakbirSajda1_2X4FClick(Sender: TObject);
    procedure ButtonTakbirSajda2_1A4FClick(Sender: TObject);
    procedure ButtonTakbirSajda2_1B2FClick(Sender: TObject);
    procedure ButtonTakbirSajda2_1B2SClick(Sender: TObject);
    procedure ButtonTakbirSajda2_1P2SClick(Sender: TObject);
    procedure ButtonTakbirSajda2_1P4FClick(Sender: TObject);
    procedure ButtonTakbirSajda2_1P4SClick(Sender: TObject);
    procedure ButtonTakbirSajda2_1Sh2SClick(Sender: TObject);
    procedure ButtonTakbirSajda2_1Sh3FClick(Sender: TObject);
    procedure ButtonTakbirSajda2_1V3VClick(Sender: TObject);
    procedure ButtonTakbirSajda2_1X2SClick(Sender: TObject);
    procedure ButtonTakbirSajda2_1X4FClick(Sender: TObject);
    procedure ButtonTakbirSajda2_2A4FClick(Sender: TObject);
    procedure ButtonTakbirSajda2_2B2FClick(Sender: TObject);
    procedure ButtonTakbirSajda2_2B2SClick(Sender: TObject);
    procedure ButtonTakbirSajda2_2P2SClick(Sender: TObject);
    procedure ButtonTakbirSajda2_2P4FClick(Sender: TObject);
    procedure ButtonTakbirSajda2_2P4SClick(Sender: TObject);
    procedure ButtonTakbirSajda2_2Sh2SClick(Sender: TObject);
    procedure ButtonTakbirSajda2_2Sh3FClick(Sender: TObject);
    procedure ButtonTakbirSajda2_2V3VClick(Sender: TObject);
    procedure ButtonTakbirSajda2_2X2SClick(Sender: TObject);
    procedure ButtonTakbirSajda2_2X4FClick(Sender: TObject);
    procedure ButtonTakbirSajda3_1A4FClick(Sender: TObject);
    procedure ButtonTakbirSajda3_1P4FClick(Sender: TObject);
    procedure ButtonTakbirSajda3_1P4SClick(Sender: TObject);
    procedure ButtonTakbirSajda3_1Sh3FClick(Sender: TObject);
    procedure ButtonTakbirSajda3_1V3VClick(Sender: TObject);
    procedure ButtonTakbirSajda3_1X4FClick(Sender: TObject);
    procedure ButtonTakbirSajda3_2A4FClick(Sender: TObject);
    procedure ButtonTakbirSajda3_2P4FClick(Sender: TObject);
    procedure ButtonTakbirSajda3_2P4SClick(Sender: TObject);
    procedure ButtonTakbirSajda3_2Sh3FClick(Sender: TObject);
    procedure ButtonTakbirSajda3_2V3VClick(Sender: TObject);
    procedure ButtonTakbirSajda3_2X4FClick(Sender: TObject);
    procedure ButtonTakbirSajda4_1A4FClick(Sender: TObject);
    procedure ButtonTakbirSajda4_1P4FClick(Sender: TObject);
    procedure ButtonTakbirSajda4_1P4SClick(Sender: TObject);
    procedure ButtonTakbirSajda4_1X4FClick(Sender: TObject);
    procedure ButtonTakbirSajda4_2A4FClick(Sender: TObject);
    procedure ButtonTakbirSajda4_2P4FClick(Sender: TObject);
    procedure ButtonTakbirSajda4_2P4SClick(Sender: TObject);
    procedure ButtonTakbirSajda4_2X4FClick(Sender: TObject);
    procedure ButtonTasbehA4FClick(Sender: TObject);
    procedure ButtonTasbehB2FClick(Sender: TObject);
    procedure ButtonTasbehP2SClick(Sender: TObject);
    procedure ButtonTasbehSh2SClick(Sender: TObject);
    procedure ButtonTasbehV3VClick(Sender: TObject);
    procedure ButtonTashahhud1A4FClick(Sender: TObject);
    procedure ButtonTashahhud1P4SClick(Sender: TObject);
    procedure ButtonTashahhud1Sh3FClick(Sender: TObject);
    procedure ButtonTashahhud1V3VClick(Sender: TObject);
    procedure ButtonTashahhud1X4FClick(Sender: TObject);
    procedure ButtonTashahhud2A4FClick(Sender: TObject);
    procedure ButtonTashahhud2P4FClick(Sender: TObject);
    procedure ButtonTashahhud2P4SClick(Sender: TObject);
    procedure ButtonTashahhud2Sh3FClick(Sender: TObject);
    procedure ButtonTashahhud2V3VClick(Sender: TObject);
    procedure ButtonTashahhud2X4FClick(Sender: TObject);
    procedure ButtonTashahhudB2FClick(Sender: TObject);
    procedure ButtonTashahhudB2SClick(Sender: TObject);
    procedure ButtonTashahhudP2SClick(Sender: TObject);
    procedure ButtonTashahhudSh2SClick(Sender: TObject);
    procedure ButtonTashahhudX2SClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItemAboutClick(Sender: TObject);
    procedure MenuItemExitClick(Sender: TObject);
    procedure MenuItemSettingsClick(Sender: TObject);
    procedure PageControlA4FChange(Sender: TObject);
    procedure PageControlB2FChange(Sender: TObject);
    procedure PageControlB2SChange(Sender: TObject);
    procedure PageControlBomdodChange(Sender: TObject);
    procedure PageControlMainChange(Sender: TObject);
    procedure PageControlP2SChange(Sender: TObject);
    procedure PageControlP4FChange(Sender: TObject);
    procedure PageControlP4SChange(Sender: TObject);
    procedure PageControlPeshinChange(Sender: TObject);
    procedure PageControlSh2SChange(Sender: TObject);
    procedure PageControlSh3FChange(Sender: TObject);
    procedure PageControlShomChange(Sender: TObject);
    procedure PageControlV3VChange(Sender: TObject);
    procedure PageControlX2SChange(Sender: TObject);
    procedure PageControlX4FChange(Sender: TObject);
    procedure PageControlXuftonChange(Sender: TObject);
    procedure ProcedureImagesChange;
    procedure ProcedureKirish;
    procedure ProcedureQiyom;
    procedure ProcedureRuku;
    procedure ProcedureQovma;
    procedure ProcedureSajda;
    procedure ProcedureJalsa;
    procedure ProcedureSalom;
    procedure ProcedureDuo;
    procedure ProcedureAmallar;
    procedure ProcedureInterfaceKirill;
    procedure ProcedureInterfaceLotin;
    procedure Timer1Timer(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormMain: TFormMain;
  StringListAmallar: TStringList;
  Azon, AzonDuo, Iqomat, Takbir, Sano, Taavvuz, Basmala, Fotiha, Kavsar, Ixlos, Falaq, Nas, Aziym, Samialloh, Hamd, Ala, Tashahhud, Salavot, Robbana, Salom, Qunut, Duo, Tasbeh, Kursi: string;
  i, j: integer;

implementation

{$R *.lfm}

{ TFormMain }

// Созламалар файли жойлашувини белгилаш
procedure TFormMain.FormCreate(Sender: TObject);
begin
  IniPropStorage1.IniFileName:=GetAppConfigDir(false)+'Namozxon.ini';
end;

procedure TFormMain.ProcedureInterfaceKirill;
begin
  FormMain.CAPTION:='Намозхон';
  FormMain.TABSHEETBOMDOD.CAPTION:='БОМДОД';
  FormMain.TABSHEETB2S.CAPTION:='2 РАКЪАТ СУННАТ';
  FormMain.LABELNIYATB2S.CAPTION:='Каъба томонга юзланиб «Бомдод намозининг икки ракъат суннатини холис Аллоҳ учун ўқишга ният қилдим» мазмунида ният қилинади.';
  FormMain.LABELTAKBIRKIRISHB2S.CAPTION:='Икки қўл кафтини қиблага қарата кўтариб, бош бармоқ қулоқ юмшоғига теккизилади ва «Аллоҳу акбар» дея такбир айтиш билан намоз бошланади. Аёллар қўлларини елкалари бараваригача кўтарадилар.';
  FormMain.LABELAZONB2S.CAPTION:='Аввал Азон ўқилади.';
  FormMain.LABELAZONDUOB2S.CAPTION:='Сўнг Азон дуоси ўқилади.';
  FormMain.BUTTONAZONB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZONDUOB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAKBIRKIRISHB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSANOB2S.CAPTION:='Қўлларни қовуштирган ҳолда киндик остида тутиб «Сано» («Субҳанакаллоҳумма...») ўқилади. Аёллар қўлларини боғлаб кўкраклари устида ушлаб турадилар.';
  FormMain.LABELTAAVVUZB2S.CAPTION:='Таъаввуз («Аъузу биллаҳи...») ўқилади.';
  FormMain.LABELBASMALA1B2S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA1B2S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELKAVSARB2S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONSANOB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAAVVUZB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA1B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA1B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONKAVSARB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU1B2S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади. Рукуъда эркаклар тиззаларини букмасдан тик ҳолатда турсалар, аёллар эса тиззаларини озроқ букиб турадилар. Эркаклар тиззаларига таянганда бармоқлари ораси бироз очиқ ҳолатда бўладилар, аёллар эса бармоқлари орасини очмасдан тизза тўпиғини ушлаб турадилар.';
  FormMain.LABELAZIYM1B2S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU1B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM1B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH1B2S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD1B2S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH1B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD1B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA1_1B2S.CAPTION:='«Аллоҳу акбар» деб ерга аввал тиззалар, кейин кафтлар, сўнг бурун ва пешона қўйилиб, сажда қилинади. Бунда тирсаклар ерга ва биқинларга теккизилмайди, барча аъзолар, хусусан, оёқ бармоқлари иложи борича қиблага юзлантирилади. Аёллар аксинча тирсакларини ерга ва биқинларига теккизиб, қоринларини сонларига ёпиштириб, йиғинлинқираб сажда қиладилар.';
  FormMain.LABELALA1_1B2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_1B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_1B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA1B2S.CAPTION:='«Аллоҳу акбар», деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA1B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAJDA1_2B2S.CAPTION:='«Аллоҳу акбар» деб иккинчи марта сажда қилинади.';
  FormMain.LABELALA1_2B2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM2B2S.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай иккинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.LABELBASMALA2B2S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA2B2S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELIXLOSB2S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONTAKBIRQIYOM2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONIXLOSB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU2B2S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.LABELAZYIM2B2S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH2B2S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD2B2S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_1B2S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_1B2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_1B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_1B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA2B2S.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_2B2S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_2B2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_2B2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADAB2S.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.LABELTASHAHHUDB2S.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.LABELSALAVOTB2S.CAPTION:='Икки салавот («Аллоҳумма! Солли ъала...» ва «Аллоҳумма! Барик ъала...») ўқилади.';
  FormMain.LABELROBBANAB2S.CAPTION:='Дуо («Роббана...») ўқилади.';
  FormMain.BUTTONTAKBIRQADAB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTASHAHHUDB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONSALAVOTB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONROBBANAB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMB2S.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMB2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.TABSHEETB2F.CAPTION:='2 РАКЪАТ ФАРЗ';
  FormMain.LABELNIYATB2F.CAPTION:='Каъба томонга юзланиб «Бомдод намозининг икки ракъат фарзини холис Аллоҳ учун ўқишга ният қилдим» мазмунида ният қилинади.';
  FormMain.LABELTAKBIRKIRISHB2F.CAPTION:='Икки қўл кафтини қиблага қарата кўтариб, бош бармоқ қулоқ юмшоғига теккизилади ва «Аллоҳу акбар» дея такбир айтиш билан намоз бошланади. Аёллар қўлларини елкалари бараваригача кўтарадилар.';
  FormMain.LABELIQOMATB2F.CAPTION:='Иқомат ўқилади.';
  FormMain.BUTTONIQOMATB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAKBIRKIRISHB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSANOB2F.CAPTION:='Қўлларни қовуштирган ҳолда киндик остида тутиб «Сано» («Субҳанакаллоҳумма...») ўқилади. Аёллар қўлларини боғлаб кўкраклари устида ушлаб турадилар.';
  FormMain.LABELTAAVVUZB2F.CAPTION:='Таъаввуз («Аъузу биллаҳи...») ўқилади.';
  FormMain.LABELBASMALA1B2F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA1B2F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELFALAQB2F.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONSANOB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAAVVUZB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA1B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA1B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFALAQB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU1B2F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади. Рукуъда эркаклар тиззаларини букмасдан тик ҳолатда турсалар, аёллар эса тиззаларини озроқ букиб турадилар. Эркаклар тиззаларига таянганда бармоқлари ораси бироз очиқ ҳолатда бўладилар, аёллар эса бармоқлари орасини очмасдан тизза тўпиғини ушлаб турадилар.';
  FormMain.LABELAZIYM1B2F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU1B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM1B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH1B2F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD1B2F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH1B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD1B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA1_1B2F.CAPTION:='«Аллоҳу акбар» деб ерга аввал тиззалар, кейин кафтлар, сўнг бурун ва пешона қўйилиб, сажда қилинади. Бунда тирсаклар ерга ва биқинларга теккизилмайди, барча аъзолар, хусусан, оёқ бармоқлари иложи борича қиблага юзлантирилади. Аёллар аксинча тирсакларини ерга ва биқинларига теккизиб, қоринларини сонларига ёпиштириб, йиғинлинқираб сажда қиладилар.';
  FormMain.LABELALA1_1B2F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_1B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_1B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA1B2F.CAPTION:='«Аллоҳу акбар», деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA1B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAJDA1_2B2F.CAPTION:='«Аллоҳу акбар» деб иккинчи марта сажда қилинади.';
  FormMain.LABELALA1_2B2F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM2B2F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай иккинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.LABELBASMALA2B2F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA2B2F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELNASB2F.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONTAKBIRQIYOM2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONNASB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU2B2F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.LABELAZYIM2B2F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH2B2F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD2B2F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_1B2F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_1B2F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_1B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_1B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA2B2F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_2B2F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_2B2F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_2B2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADAB2F.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.LABELTASHAHHUDB2F.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.LABELSALAVOTB2F.CAPTION:='Икки салавот («Аллоҳумма! Солли ъала...» ва «Аллоҳумма! Барик ъала...») ўқилади.';
  FormMain.LABELROBBANAB2F.CAPTION:='Дуо («Роббана...») ўқилади.';
  FormMain.BUTTONTAKBIRQADAB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTASHAHHUDB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONSALAVOTB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONROBBANAB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMB2F.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMB2F1.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMB2F1.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONDUOB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELDUOB2F.CAPTION:='Фарз намозларидан кейин дуони ўқиш суннатдир.';
  FormMain.BUTTONTASBEHB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTASBEHB2F.CAPTION:='Ҳар вақт намозни тугатгандан сўнг тасбеҳот қилинса савоби улуғ бўлади.';
  FormMain.BUTTONKURSIB2F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELKURSIB2F.CAPTION:='Намоздан кейин Курсий оятини (Оятал Курсий) ўқиш ҳам савобли.';
  FormMain.LABELBOMDOD.CAPTION:='Бомдод намозининг вақти – субҳи содиқдан (чин тонг отгандан) кун чиққунчадир. Бомдод намозини тонг ёришганда ўқиш мустаҳаб, аълороқдир. Соат бўйича ҳисобланса, бомдодни кун чиқишидан 40 дақиқача илгари ўқиш мустаҳаб вақтига мувофиқ бўлади.';
  FormMain.TABSHEETPESHIN.CAPTION:='ПЕШИН';
  FormMain.TABSHEETP4S.CAPTION:='4 РАКЪАТ СУННАТ';
  FormMain.LABELNIYATP4S.CAPTION:='Каъба томонга юзланиб «Пешин намозининг тўрт ракъат суннатини холис Аллоҳ учун ўқишга ният қилдим» мазмунида ният қилинади.';
  FormMain.LABELTAKBIRKIRISHP4S.CAPTION:='Икки қўл кафтини қиблага қарата кўтариб, бош бармоқ қулоқ юмшоғига теккизилади ва «Аллоҳу акбар» дея такбир айтиш билан намоз бошланади. Аёллар қўлларини елкалари бараваригача кўтарадилар.';
  FormMain.LABELAZONP4S.CAPTION:='Аввал Азон ўқилади.';
  FormMain.LABELAZONDUOP4S.CAPTION:='Сўнг Азон дуоси ўқилади.';
  FormMain.BUTTONAZONP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZONDUOP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAKBIRKIRISHP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSANOP4S.CAPTION:='Қўлларни қовуштирган ҳолда киндик остида тутиб «Сано» («Субҳанакаллоҳумма...») ўқилади. Аёллар қўлларини боғлаб кўкраклари устида ушлаб турадилар.';
  FormMain.LABELTAAVVUZP4S.CAPTION:='Таъаввуз («Аъузу биллаҳи...») ўқилади.';
  FormMain.LABELBASMALA1P4S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA1P4S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELKAVSARP4S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONSANOP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAAVVUZP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONKAVSARP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU1P4S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади. Рукуъда эркаклар тиззаларини букмасдан тик ҳолатда турсалар, аёллар эса тиззаларини озроқ букиб турадилар. Эркаклар тиззаларига таянганда бармоқлари ораси бироз очиқ ҳолатда бўладилар, аёллар эса бармоқлари орасини очмасдан тизза тўпиғини ушлаб турадилар.';
  FormMain.LABELAZIYM1P4S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH1P4S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD1P4S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA1_1P4S.CAPTION:='«Аллоҳу акбар» деб ерга аввал тиззалар, кейин кафтлар, сўнг бурун ва пешона қўйилиб, сажда қилинади. Бунда тирсаклар ерга ва биқинларга теккизилмайди, барча аъзолар, хусусан, оёқ бармоқлари иложи борича қиблага юзлантирилади. Аёллар аксинча тирсакларини ерга ва биқинларига теккизиб, қоринларини сонларига ёпиштириб, йиғинлинқираб сажда қиладилар.';
  FormMain.LABELALA1_1P4S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA1P4S.CAPTION:='«Аллоҳу акбар», деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAJDA1_2P4S.CAPTION:='«Аллоҳу акбар» деб иккинчи марта сажда қилинади.';
  FormMain.LABELALA1_2P4S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM2P4S.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай иккинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.LABELBASMALA2P4S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA2P4S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELIXLOSP4S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONTAKBIRQIYOM2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONIXLOSP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU2P4S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.LABELAZYIM2P4S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH2P4S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD2P4S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_1P4S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_1P4S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA2P4S.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_2P4S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_2P4S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA1P4S.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.BUTTONTAKBIRQADA1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTASHAHHUD1P4S.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.BUTTONTASHAHHUD1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM3P4S.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай учинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.BUTTONTAKBIRQIYOM3P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELBASMALA3P4S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.BUTTONBASMALA3P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELFOTIHA3P4S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.BUTTONFOTIHA3P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELFALAQP4S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONFALAQP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU3P4S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.BUTTONAZIYM3P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZYIM3P4S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU3P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH3P4S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.BUTTONSAMIALLOH3P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELHAMD3P4S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONHAMD3P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_1P4S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_1P4S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA3P4S.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA3P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_2P4S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_2P4S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM4P4S.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай тўртинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.BUTTONTAKBIRQIYOM4P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELBASMALA4P4S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.BUTTONBASMALA4P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELFOTIHA4P4S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.BUTTONFOTIHA4P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELNASP4S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONNASP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU4P4S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.BUTTONAZIYM4P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZYIM4P4S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU4P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH4P4S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.BUTTONSAMIALLOH4P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELHAMD4P4S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONHAMD4P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA4_1P4S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA4_1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA4_1P4S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA4_1P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA4P4S.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA4P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA4_2P4S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA4_2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA4_2P4S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA4_2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA2P4S.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.LABELTASHAHHUD2P4S.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.LABELSALAVOTP4S.CAPTION:='Икки салавот («Аллоҳумма! Солли ъала...» ва «Аллоҳумма! Барик ъала...») ўқилади.';
  FormMain.LABELROBBANAP4S.CAPTION:='Дуо («Роббана...») ўқилади.';
  FormMain.BUTTONTAKBIRQADA2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTASHAHHUD2P4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONSALAVOTP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONROBBANAP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMP4S.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMP4S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.TABSHEETP4F.CAPTION:='4 РАКЪАТ ФАРЗ';
  FormMain.LABELNIYATP4F.CAPTION:='Каъба томонга юзланиб «Пешин намозининг тўрт ракъат фарзини холис Аллоҳ учун ўқишга ният қилдим» мазмунида ният қилинади.';
  FormMain.LABELTAKBIRKIRISHP4F.CAPTION:='Икки қўл кафтини қиблага қарата кўтариб, бош бармоқ қулоқ юмшоғига теккизилади ва «Аллоҳу акбар» дея такбир айтиш билан намоз бошланади. Аёллар қўлларини елкалари бараваригача кўтарадилар.';
  FormMain.LABELIQOMATP4F.CAPTION:='Иқомат ўқилади.';
  FormMain.BUTTONIQOMATP4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAKBIRKIRISHP4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSANOP4F.CAPTION:='Қўлларни қовуштирган ҳолда киндик остида тутиб «Сано» («Субҳанакаллоҳумма...») ўқилади. Аёллар қўлларини боғлаб кўкраклари устида ушлаб турадилар.';
  FormMain.LABELTAAVVUZP4F.CAPTION:='Таъаввуз («Аъузу биллаҳи...») ўқилади.';
  FormMain.LABELBASMALA1P4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA1P4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELKAVSARP4F.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONSANOP4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAAVVUZP4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONKAVSARP4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU1P4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади. Рукуъда эркаклар тиззаларини букмасдан тик ҳолатда турсалар, аёллар эса тиззаларини озроқ букиб турадилар. Эркаклар тиззаларига таянганда бармоқлари ораси бироз очиқ ҳолатда бўладилар, аёллар эса бармоқлари орасини очмасдан тизза тўпиғини ушлаб турадилар.';
  FormMain.LABELAZIYM1P4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH1P4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD1P4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA1_1P4F.CAPTION:='«Аллоҳу акбар» деб ерга аввал тиззалар, кейин кафтлар, сўнг бурун ва пешона қўйилиб, сажда қилинади. Бунда тирсаклар ерга ва биқинларга теккизилмайди, барча аъзолар, хусусан, оёқ бармоқлари иложи борича қиблага юзлантирилади. Аёллар аксинча тирсакларини ерга ва биқинларига теккизиб, қоринларини сонларига ёпиштириб, йиғинлинқираб сажда қиладилар.';
  FormMain.LABELALA1_1P4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA1P4F.CAPTION:='«Аллоҳу акбар», деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAJDA1_2P4F.CAPTION:='«Аллоҳу акбар» деб иккинчи марта сажда қилинади.';
  FormMain.LABELALA1_2P4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM2P4F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай иккинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.LABELBASMALA2P4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA2P4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELIXLOSP4F.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONTAKBIRQIYOM2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONIXLOSP4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU2P4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.LABELAZYIM2P4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH2P4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD2P4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_1P4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_1P4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA2P4F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_2P4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_2P4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA1P4F.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.BUTTONTAKBIRQADA1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTASHAHHUD1P4F.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.BUTTONTASHAHHUD1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM3P4F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай учинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.BUTTONTAKBIRQIYOM3P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELBASMALA3P4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.BUTTONBASMALA3P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELFOTIHA3P4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.BUTTONFOTIHA3P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU3P4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.BUTTONAZIYM3P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZYIM3P4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU3P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH3P4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.BUTTONSAMIALLOH3P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELHAMD3P4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONHAMD3P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_1P4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_1P4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA3P4F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA3P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_2P4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_2P4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM4P4F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай тўртинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.BUTTONTAKBIRQIYOM4P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELBASMALA4P4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.BUTTONBASMALA4P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELFOTIHA4P4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.BUTTONFOTIHA4P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU4P4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.BUTTONAZIYM4P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZYIM4P4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU4P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH4P4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.BUTTONSAMIALLOH4P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELHAMD4P4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONHAMD4P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA4_1P4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA4_1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA4_1P4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA4_1P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA4P4F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA4P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA4_2P4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA4_2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA4_2P4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA4_2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA2P4F.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.LABELTASHAHHUD2P4F.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.LABELSALAVOTP4F.CAPTION:='Икки салавот («Аллоҳумма! Солли ъала...» ва «Аллоҳумма! Барик ъала...») ўқилади.';
  FormMain.LABELROBBANAP4F.CAPTION:='Дуо («Роббана...») ўқилади.';
  FormMain.BUTTONTAKBIRQADA2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTASHAHHUD2P4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONSALAVOTP4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONROBBANAP4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMP4F.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMP4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELDUOP4F.CAPTION:='Фарз намозларидан кейин дуони ўқиш суннатдир.';
  FormMain.BUTTONDUOP4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.TABSHEETP2S.CAPTION:='2 РАКЪАТ СУННАТ';
  FormMain.LABELNIYATP2S.CAPTION:='Каъба томонга юзланиб «Пешин намозининг икки ракъат суннатини холис Аллоҳ учун ўқишга ният қилдим» мазмунида ният қилинади.';
  FormMain.LABELTAKBIRKIRISHP2S.CAPTION:='Икки қўл кафтини қиблага қарата кўтариб, бош бармоқ қулоқ юмшоғига теккизилади ва «Аллоҳу акбар» дея такбир айтиш билан намоз бошланади. Аёллар қўлларини елкалари бараваригача кўтарадилар.';
  FormMain.BUTTONTAKBIRKIRISHP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSANOP2S.CAPTION:='Қўлларни қовуштирган ҳолда киндик остида тутиб «Сано» («Субҳанакаллоҳумма...») ўқилади. Аёллар қўлларини боғлаб кўкраклари устида ушлаб турадилар.';
  FormMain.LABELTAAVVUZP2S.CAPTION:='Таъаввуз («Аъузу биллаҳи...») ўқилади.';
  FormMain.LABELBASMALA1P2S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA1P2S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELFALAQP2S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONSANOP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAAVVUZP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA1P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA1P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFALAQP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU1P2S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади. Рукуъда эркаклар тиззаларини букмасдан тик ҳолатда турсалар, аёллар эса тиззаларини озроқ букиб турадилар. Эркаклар тиззаларига таянганда бармоқлари ораси бироз очиқ ҳолатда бўладилар, аёллар эса бармоқлари орасини очмасдан тизза тўпиғини ушлаб турадилар.';
  FormMain.LABELAZIYM1P2S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU1P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM1P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH1P2S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD1P2S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH1P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD1P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA1_1P2S.CAPTION:='«Аллоҳу акбар» деб ерга аввал тиззалар, кейин кафтлар, сўнг бурун ва пешона қўйилиб, сажда қилинади. Бунда тирсаклар ерга ва биқинларга теккизилмайди, барча аъзолар, хусусан, оёқ бармоқлари иложи борича қиблага юзлантирилади. Аёллар аксинча тирсакларини ерга ва биқинларига теккизиб, қоринларини сонларига ёпиштириб, йиғинлинқираб сажда қиладилар.';
  FormMain.LABELALA1_1P2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_1P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_1P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA1P2S.CAPTION:='«Аллоҳу акбар», деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA1P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAJDA1_2P2S.CAPTION:='«Аллоҳу акбар» деб иккинчи марта сажда қилинади.';
  FormMain.LABELALA1_2P2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM2P2S.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай иккинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.LABELBASMALA2P2S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA2P2S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELNASP2S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONTAKBIRQIYOM2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONNASP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU2P2S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.LABELAZYIM2P2S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH2P2S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD2P2S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_1P2S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_1P2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_1P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_1P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA2P2S.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_2P2S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_2P2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_2P2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADAP2S.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.LABELTASHAHHUDP2S.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.LABELSALAVOTP2S.CAPTION:='Икки салавот («Аллоҳумма! Солли ъала...» ва «Аллоҳумма! Барик ъала...») ўқилади.';
  FormMain.LABELROBBANAP2S.CAPTION:='Дуо («Роббана...») ўқилади.';
  FormMain.BUTTONTAKBIRQADAP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTASHAHHUDP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONSALAVOTP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONROBBANAP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMP2S.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTASBEHP2S.CAPTION:='Ҳар вақт намозни тугатгандан сўнг тасбеҳот қилинса савоби улуғ бўлади.';
  FormMain.BUTTONTASBEHP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELKURSIP2S.CAPTION:='Намоздан кейин Курсий оятини (Оятал Курсий) ўқиш ҳам савобли.';
  FormMain.BUTTONKURSIP2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELPESHIN.CAPTION:='Пешин намозининг вақти – қуёш заволга (оғишга) кетганидан сўнг то нарсаларнинг сояси ўз узунлигига нисбатан икки баравар ортгунига қадар. Пешин намозини ёз фаслида бир оз кечиктириб, қиш фаслида эса вақти кириши билан ўқиш мустаҳабдир.';
  FormMain.TABSHEETASR.CAPTION:='АСР';
  FormMain.TABSHEETA4F.CAPTION:='4 РАКЪАТ ФАРЗ';
  FormMain.LABELNIYATA4F.CAPTION:='Каъба томонга юзланиб «Аср намозининг тўрт ракъат фарзини холис Аллоҳ учун ўқишга ният қилдим» мазмунида ният қилинади.';
  FormMain.LABELTAKBIRKIRISHA4F.CAPTION:='Икки қўл кафтини қиблага қарата кўтариб, бош бармоқ қулоқ юмшоғига теккизилади ва «Аллоҳу акбар» дея такбир айтиш билан намоз бошланади. Аёллар қўлларини елкалари бараваригача кўтарадилар.';
  FormMain.LABELIQOMATA4F.CAPTION:='Иқомат ўқилади.';
  FormMain.BUTTONIQOMATA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAKBIRKIRISHA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZONA4F.CAPTION:='Аввал Азон ўқилади.';
  FormMain.BUTTONAZONA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZONDUOA4F.CAPTION:='Сўнг Азон дуоси ўқилади.';
  FormMain.BUTTONAZONDUOA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSANOA4F.CAPTION:='Қўлларни қовуштирган ҳолда киндик остида тутиб «Сано» («Субҳанакаллоҳумма...») ўқилади. Аёллар қўлларини боғлаб кўкраклари устида ушлаб турадилар.';
  FormMain.LABELTAAVVUZA4F.CAPTION:='Таъаввуз («Аъузу биллаҳи...») ўқилади.';
  FormMain.LABELBASMALA1A4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA1A4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELKAVSARA4F.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONSANOA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAAVVUZA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONKAVSARA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU1A4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади. Рукуъда эркаклар тиззаларини букмасдан тик ҳолатда турсалар, аёллар эса тиззаларини озроқ букиб турадилар. Эркаклар тиззаларига таянганда бармоқлари ораси бироз очиқ ҳолатда бўладилар, аёллар эса бармоқлари орасини очмасдан тизза тўпиғини ушлаб турадилар.';
  FormMain.LABELAZIYM1A4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH1A4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD1A4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA1_1A4F.CAPTION:='«Аллоҳу акбар» деб ерга аввал тиззалар, кейин кафтлар, сўнг бурун ва пешона қўйилиб, сажда қилинади. Бунда тирсаклар ерга ва биқинларга теккизилмайди, барча аъзолар, хусусан, оёқ бармоқлари иложи борича қиблага юзлантирилади. Аёллар аксинча тирсакларини ерга ва биқинларига теккизиб, қоринларини сонларига ёпиштириб, йиғинлинқираб сажда қиладилар.';
  FormMain.LABELALA1_1A4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA1A4F.CAPTION:='«Аллоҳу акбар», деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAJDA1_2A4F.CAPTION:='«Аллоҳу акбар» деб иккинчи марта сажда қилинади.';
  FormMain.LABELALA1_2A4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM2A4F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай иккинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.LABELBASMALA2A4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA2A4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELIXLOSA4F.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONTAKBIRQIYOM2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONIXLOSA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU2A4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.LABELAZYIM2A4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH2A4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD2A4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_1A4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_1A4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA2A4F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_2A4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_2A4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA1A4F.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.BUTTONTAKBIRQADA1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTASHAHHUD1A4F.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.BUTTONTASHAHHUD1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM3A4F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай учинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.BUTTONTAKBIRQIYOM3A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELBASMALA3A4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.BUTTONBASMALA3A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELFOTIHA3A4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.BUTTONFOTIHA3A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU3A4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.BUTTONAZIYM3A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZYIM3A4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU3A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH3A4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.BUTTONSAMIALLOH3A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELHAMD3A4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONHAMD3A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_1A4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_1A4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA3A4F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA3A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_2A4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_2A4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM4A4F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай тўртинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.BUTTONTAKBIRQIYOM4A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELBASMALA4A4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.BUTTONBASMALA4A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELFOTIHA4A4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.BUTTONFOTIHA4A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU4A4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.BUTTONAZIYM4A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZYIM4A4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU4A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH4A4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.BUTTONSAMIALLOH4A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELHAMD4A4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONHAMD4A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA4_1A4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA4_1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA4_1A4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA4_1A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA4A4F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA4A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA4_2A4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA4_2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA4_2A4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA4_2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA2A4F.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.LABELTASHAHHUD2A4F.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.LABELSALAVOTA4F.CAPTION:='Икки салавот («Аллоҳумма! Солли ъала...» ва «Аллоҳумма! Барик ъала...») ўқилади.';
  FormMain.LABELROBBANAA4F.CAPTION:='Дуо («Роббана...») ўқилади.';
  FormMain.BUTTONTAKBIRQADA2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTASHAHHUD2A4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONSALAVOTA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONROBBANAA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMA4F.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELDUOA4F.CAPTION:='Фарз намозларидан кейин дуони ўқиш суннатдир.';
  FormMain.BUTTONDUOA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTASBEHA4F.CAPTION:='Ҳар вақт намозни тугатгандан сўнг тасбеҳот қилинса савоби улуғ бўлади.';
  FormMain.BUTTONTASBEHA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELKURSIA4F.CAPTION:='Намоздан кейин Курсий оятини (Оятал Курсий) ўқиш ҳам савобли.';
  FormMain.BUTTONKURSIA4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELASR.CAPTION:='Аср намозининг вақти – ҳар бир нарсанинг сояси ўзига нисбатан икки баравар ортганидан бошлаб қуёш ботгунчадир. Аср намозини қуёш тиғини ўзгартирмай, нурсиз ҳолатга киришидан олдинроқ ўқиш мустаҳабдир.';
  FormMain.TABSHEETSHOM.CAPTION:='ШОМ';
  FormMain.TABSHEETSH3F.CAPTION:='3 РАКЪАТ ФАРЗ';
  FormMain.LABELNIYATSH3F.CAPTION:='Каъба томонга юзланиб «Шом намозининг уч ракъат фарзини холис Аллоҳ учун ўқишга ният қилдим» мазмунида ният қилинади.';
  FormMain.LABELTAKBIRKIRISHSH3F.CAPTION:='Икки қўл кафтини қиблага қарата кўтариб, бош бармоқ қулоқ юмшоғига теккизилади ва «Аллоҳу акбар» дея такбир айтиш билан намоз бошланади. Аёллар қўлларини елкалари бараваригача кўтарадилар.';
  FormMain.LABELIQOMATSH3F.CAPTION:='Иқомат ўқилади.';
  FormMain.BUTTONIQOMATSH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAKBIRKIRISHSH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZONSH3F.CAPTION:='Аввал Азон ўқилади.';
  FormMain.BUTTONAZONSH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZONDUOSH3F.CAPTION:='Сўнг Азон дуоси ўқилади.';
  FormMain.BUTTONAZONDUOSH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSANOSH3F.CAPTION:='Қўлларни қовуштирган ҳолда киндик остида тутиб «Сано» («Субҳанакаллоҳумма...») ўқилади. Аёллар қўлларини боғлаб кўкраклари устида ушлаб турадилар.';
  FormMain.LABELTAAVVUZSH3F.CAPTION:='Таъаввуз («Аъузу биллаҳи...») ўқилади.';
  FormMain.LABELBASMALA1SH3F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA1SH3F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELKAVSARSH3F.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONSANOSH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAAVVUZSH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONKAVSARSH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU1SH3F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади. Рукуъда эркаклар тиззаларини букмасдан тик ҳолатда турсалар, аёллар эса тиззаларини озроқ букиб турадилар. Эркаклар тиззаларига таянганда бармоқлари ораси бироз очиқ ҳолатда бўладилар, аёллар эса бармоқлари орасини очмасдан тизза тўпиғини ушлаб турадилар.';
  FormMain.LABELAZIYM1SH3F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH1SH3F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD1SH3F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA1_1SH3F.CAPTION:='«Аллоҳу акбар» деб ерга аввал тиззалар, кейин кафтлар, сўнг бурун ва пешона қўйилиб, сажда қилинади. Бунда тирсаклар ерга ва биқинларга теккизилмайди, барча аъзолар, хусусан, оёқ бармоқлари иложи борича қиблага юзлантирилади. Аёллар аксинча тирсакларини ерга ва биқинларига теккизиб, қоринларини сонларига ёпиштириб, йиғинлинқираб сажда қиладилар.';
  FormMain.LABELALA1_1SH3F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA1SH3F.CAPTION:='«Аллоҳу акбар», деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAJDA1_2SH3F.CAPTION:='«Аллоҳу акбар» деб иккинчи марта сажда қилинади.';
  FormMain.LABELALA1_2SH3F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM2SH3F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай иккинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.LABELBASMALA2SH3F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA2SH3F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELIXLOSSH3F.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONTAKBIRQIYOM2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONIXLOSSH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU2SH3F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.LABELAZYIM2SH3F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH2SH3F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD2SH3F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_1SH3F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_1SH3F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA2SH3F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_2SH3F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_2SH3F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA1SH3F.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.BUTTONTAKBIRQADA1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTASHAHHUD1SH3F.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.BUTTONTASHAHHUD1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM3SH3F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай учинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.BUTTONTAKBIRQIYOM3SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELBASMALA3SH3F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.BUTTONBASMALA3SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELFOTIHA3SH3F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.BUTTONFOTIHA3SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU3SH3F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.BUTTONAZIYM3SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZYIM3SH3F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU3SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH3SH3F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.BUTTONSAMIALLOH3SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELHAMD3SH3F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONHAMD3SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_1SH3F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_1SH3F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_1SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA3SH3F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA3SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_2SH3F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_2SH3F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA2SH3F.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.LABELTASHAHHUD2SH3F.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.LABELSALAVOTSH3F.CAPTION:='Икки салавот («Аллоҳумма! Солли ъала...» ва «Аллоҳумма! Барик ъала...») ўқилади.';
  FormMain.LABELROBBANASH3F.CAPTION:='Дуо («Роббана...») ўқилади.';
  FormMain.BUTTONTAKBIRQADA2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTASHAHHUD2SH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONSALAVOTSH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONROBBANASH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMSH3F.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMSH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELDUOSH3F.CAPTION:='Фарз намозларидан кейин дуони ўқиш суннатдир.';
  FormMain.BUTTONDUOSH3F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.TABSHEETSH2S.CAPTION:='2 РАКЪАТ СУННАТ';
  FormMain.LABELNIYATSH2S.CAPTION:='Каъба томонга юзланиб «Шом намозининг икки ракъат суннатини холис Аллоҳ учун ўқишга ният қилдим» мазмунида ният қилинади.';
  FormMain.LABELTAKBIRKIRISHSH2S.CAPTION:='Икки қўл кафтини қиблага қарата кўтариб, бош бармоқ қулоқ юмшоғига теккизилади ва «Аллоҳу акбар» дея такбир айтиш билан намоз бошланади. Аёллар қўлларини елкалари бараваригача кўтарадилар.';
  FormMain.BUTTONTAKBIRKIRISHSH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSANOSH2S.CAPTION:='Қўлларни қовуштирган ҳолда киндик остида тутиб «Сано» («Субҳанакаллоҳумма...») ўқилади. Аёллар қўлларини боғлаб кўкраклари устида ушлаб турадилар.';
  FormMain.LABELTAAVVUZSH2S.CAPTION:='Таъаввуз («Аъузу биллаҳи...») ўқилади.';
  FormMain.LABELBASMALA1SH2S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA1SH2S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELFALAQSH2S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONSANOSH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAAVVUZSH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA1SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA1SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFALAQSH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU1SH2S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади. Рукуъда эркаклар тиззаларини букмасдан тик ҳолатда турсалар, аёллар эса тиззаларини озроқ букиб турадилар. Эркаклар тиззаларига таянганда бармоқлари ораси бироз очиқ ҳолатда бўладилар, аёллар эса бармоқлари орасини очмасдан тизза тўпиғини ушлаб турадилар.';
  FormMain.LABELAZIYM1SH2S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU1SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM1SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH1SH2S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD1SH2S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH1SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD1SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA1_1SH2S.CAPTION:='«Аллоҳу акбар» деб ерга аввал тиззалар, кейин кафтлар, сўнг бурун ва пешона қўйилиб, сажда қилинади. Бунда тирсаклар ерга ва биқинларга теккизилмайди, барча аъзолар, хусусан, оёқ бармоқлари иложи борича қиблага юзлантирилади. Аёллар аксинча тирсакларини ерга ва биқинларига теккизиб, қоринларини сонларига ёпиштириб, йиғинлинқираб сажда қиладилар.';
  FormMain.LABELALA1_1SH2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_1SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_1SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA1SH2S.CAPTION:='«Аллоҳу акбар», деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA1SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAJDA1_2SH2S.CAPTION:='«Аллоҳу акбар» деб иккинчи марта сажда қилинади.';
  FormMain.LABELALA1_2SH2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM2SH2S.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай иккинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.LABELBASMALA2SH2S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA2SH2S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELNASSH2S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONTAKBIRQIYOM2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONNASSH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU2SH2S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.LABELAZYIM2SH2S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH2SH2S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD2SH2S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_1SH2S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_1SH2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_1SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_1SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA2SH2S.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_2SH2S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_2SH2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_2SH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADASH2S.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.LABELTASHAHHUDSH2S.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.LABELSALAVOTSH2S.CAPTION:='Икки салавот («Аллоҳумма! Солли ъала...» ва «Аллоҳумма! Барик ъала...») ўқилади.';
  FormMain.LABELROBBANASH2S.CAPTION:='Дуо («Роббана...») ўқилади.';
  FormMain.BUTTONTAKBIRQADASH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTASHAHHUDSH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONSALAVOTSH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONROBBANASH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMSH2S.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMSH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTASBEHSH2S.CAPTION:='Ҳар вақт намозни тугатгандан сўнг тасбеҳот қилинса савоби улуғ бўлади.';
  FormMain.BUTTONTASBEHSH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELKURSISH2S.CAPTION:='Намоздан кейин Курсий оятини (Оятал Курсий) ўқиш ҳам савобли.';
  FormMain.BUTTONKURSISH2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSHOM.CAPTION:='Шом намозининг вақти – кун ботган пайтдан бошлаб кун ботар томонда шафақ (қизғиш нурлар) ғойиб бўлгунчадир. Шом намозини доимо қуёш ботиши билан ўқиш мустаҳабдир.';
  FormMain.TABSHEETXUFTON.CAPTION:='ХУФТОН';
  FormMain.TABSHEETX4F.CAPTION:='4 РАКЪАТ ФАРЗ';
  FormMain.LABELNIYATX4F.CAPTION:='Каъба томонга юзланиб «Аср намозининг тўрт ракъат фарзини холис Аллоҳ учун ўқишга ният қилдим» мазмунида ният қилинади.';
  FormMain.LABELTAKBIRKIRISHX4F.CAPTION:='Икки қўл кафтини қиблага қарата кўтариб, бош бармоқ қулоқ юмшоғига теккизилади ва «Аллоҳу акбар» дея такбир айтиш билан намоз бошланади. Аёллар қўлларини елкалари бараваригача кўтарадилар.';
  FormMain.LABELIQOMATX4F.CAPTION:='Иқомат ўқилади.';
  FormMain.BUTTONIQOMATX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAKBIRKIRISHX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZONX4F.CAPTION:='Аввал Азон ўқилади.';
  FormMain.BUTTONAZONX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZONDUOX4F.CAPTION:='Сўнг Азон дуоси ўқилади.';
  FormMain.BUTTONAZONDUOX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSANOX4F.CAPTION:='Қўлларни қовуштирган ҳолда киндик остида тутиб «Сано» («Субҳанакаллоҳумма...») ўқилади. Аёллар қўлларини боғлаб кўкраклари устида ушлаб турадилар.';
  FormMain.LABELTAAVVUZX4F.CAPTION:='Таъаввуз («Аъузу биллаҳи...») ўқилади.';
  FormMain.LABELBASMALA1X4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA1X4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELKAVSARX4F.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONSANOX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAAVVUZX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA1A4F1.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONKAVSARX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU1X4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади. Рукуъда эркаклар тиззаларини букмасдан тик ҳолатда турсалар, аёллар эса тиззаларини озроқ букиб турадилар. Эркаклар тиззаларига таянганда бармоқлари ораси бироз очиқ ҳолатда бўладилар, аёллар эса бармоқлари орасини очмасдан тизза тўпиғини ушлаб турадилар.';
  FormMain.LABELAZIYM1X4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH1X4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD1X4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA1_1X4F.CAPTION:='«Аллоҳу акбар» деб ерга аввал тиззалар, кейин кафтлар, сўнг бурун ва пешона қўйилиб, сажда қилинади. Бунда тирсаклар ерга ва биқинларга теккизилмайди, барча аъзолар, хусусан, оёқ бармоқлари иложи борича қиблага юзлантирилади. Аёллар аксинча тирсакларини ерга ва биқинларига теккизиб, қоринларини сонларига ёпиштириб, йиғинлинқираб сажда қиладилар.';
  FormMain.LABELALA1_1X4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA1X4F.CAPTION:='«Аллоҳу акбар», деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAJDA1_2X4F.CAPTION:='«Аллоҳу акбар» деб иккинчи марта сажда қилинади.';
  FormMain.LABELALA1_2X4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM2X4F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай иккинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.LABELBASMALA2X4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA2X4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELIXLOSX4F.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONTAKBIRQIYOM2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONIXLOSX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU2X4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.LABELAZYIM2X4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH2X4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD2X4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_1X4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_1X4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA2X4F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_2X4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_2X4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA1X4F.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.BUTTONTAKBIRQADA1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTASHAHHUD1X4F.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.BUTTONTASHAHHUD1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM3X4F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай учинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.BUTTONTAKBIRQIYOM3X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELBASMALA3X4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.BUTTONBASMALA3X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELFOTIHA3X4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.BUTTONFOTIHA3X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU3X4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.BUTTONAZIYM3X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZYIM3X4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU3X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH3X4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.BUTTONSAMIALLOH3X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELHAMD3X4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONHAMD3X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_1X4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_1X4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA3X4F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA3X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_2X4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_2X4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM4X4F.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай тўртинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.BUTTONTAKBIRQIYOM4X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELBASMALA4X4F.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.BUTTONBASMALA4X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELFOTIHA4X4F.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.BUTTONFOTIHA4X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU4X4F.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.BUTTONAZIYM4X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZYIM4X4F.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU4X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH4X4F.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.BUTTONSAMIALLOH4X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELHAMD4X4F.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONHAMD4X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA4_1X4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA4_1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA4_1X4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA4_1X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA4X4F.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA4X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA4_2X4F.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA4_2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA4_2X4F.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA4_2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA2X4F.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.LABELTASHAHHUD2X4F.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.LABELSALAVOTX4F.CAPTION:='Икки салавот («Аллоҳумма! Солли ъала...» ва «Аллоҳумма! Барик ъала...») ўқилади.';
  FormMain.LABELROBBANAX4F.CAPTION:='Дуо («Роббана...») ўқилади.';
  FormMain.BUTTONTAKBIRQADA2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTASHAHHUD2X4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONSALAVOTX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONROBBANAX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMX4F.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELDUOX4F.CAPTION:='Фарз намозларидан кейин дуони ўқиш суннатдир.';
  FormMain.BUTTONDUOX4F.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.TABSHEETX2S.CAPTION:='2 РАКЪАТ СУННАТ';
  FormMain.LABELNIYATX2S.CAPTION:='Каъба томонга юзланиб «Шом намозининг икки ракъат суннатини холис Аллоҳ учун ўқишга ният қилдим» мазмунида ният қилинади.';
  FormMain.LABELTAKBIRKIRISHX2S.CAPTION:='Икки қўл кафтини қиблага қарата кўтариб, бош бармоқ қулоқ юмшоғига теккизилади ва «Аллоҳу акбар» дея такбир айтиш билан намоз бошланади. Аёллар қўлларини елкалари бараваригача кўтарадилар.';
  FormMain.BUTTONTAKBIRKIRISHX2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSANOX2S.CAPTION:='Қўлларни қовуштирган ҳолда киндик остида тутиб «Сано» («Субҳанакаллоҳумма...») ўқилади. Аёллар қўлларини боғлаб кўкраклари устида ушлаб турадилар.';
  FormMain.LABELTAAVVUZX2S.CAPTION:='Таъаввуз («Аъузу биллаҳи...») ўқилади.';
  FormMain.LABELBASMALA1X2S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA1X2S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELFALAQX2S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONSANOX2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAAVVUZX2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA1X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA1X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFALAQX2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU1X2S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади. Рукуъда эркаклар тиззаларини букмасдан тик ҳолатда турсалар, аёллар эса тиззаларини озроқ букиб турадилар. Эркаклар тиззаларига таянганда бармоқлари ораси бироз очиқ ҳолатда бўладилар, аёллар эса бармоқлари орасини очмасдан тизза тўпиғини ушлаб турадилар.';
  FormMain.LABELAZIYM1X2S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU1X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM1X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH1X2S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD1X2S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH1X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD1X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA1_1X2S.CAPTION:='«Аллоҳу акбар» деб ерга аввал тиззалар, кейин кафтлар, сўнг бурун ва пешона қўйилиб, сажда қилинади. Бунда тирсаклар ерга ва биқинларга теккизилмайди, барча аъзолар, хусусан, оёқ бармоқлари иложи борича қиблага юзлантирилади. Аёллар аксинча тирсакларини ерга ва биқинларига теккизиб, қоринларини сонларига ёпиштириб, йиғинлинқираб сажда қиладилар.';
  FormMain.LABELALA1_1X2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_1X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_1X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA1X2S.CAPTION:='«Аллоҳу акбар», деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA1X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAJDA1_2X2S.CAPTION:='«Аллоҳу акбар» деб иккинчи марта сажда қилинади.';
  FormMain.LABELALA1_2X2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM2X2S.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай иккинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.LABELBASMALA2X2S.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA2X2S.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELNASX2S.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONTAKBIRQIYOM2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONNASX2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU2X2S.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.LABELAZYIM2X2S.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH2X2S.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD2X2S.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_1X2S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_1X2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_1X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_1X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA2X2S.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_2X2S.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_2X2S.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_2X2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADAX2S.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.LABELTASHAHHUDX2S.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.LABELSALAVOTX2S.CAPTION:='Икки салавот («Аллоҳумма! Солли ъала...» ва «Аллоҳумма! Барик ъала...») ўқилади.';
  FormMain.LABELROBBANAX2S.CAPTION:='Дуо («Роббана...») ўқилади.';
  FormMain.BUTTONTAKBIRQADAX2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTASHAHHUDX2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONSALAVOTX2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONROBBANAX2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMX2S.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMX2S.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.TABSHEETV3V.CAPTION:='3 РАКЪАТ ВИТР ВОЖИБ';
  FormMain.LABELNIYATV3V.CAPTION:='Каъба томонга юзланиб «Витр вожиб намозини холис Аллоҳ учун ўқишга ният қилдим» мазмунида ният қилинади.';
  FormMain.LABELTAKBIRKIRISHV3V.CAPTION:='Икки қўл кафтини қиблага қарата кўтариб, бош бармоқ қулоқ юмшоғига теккизилади ва «Аллоҳу акбар» дея такбир айтиш билан намоз бошланади. Аёллар қўлларини елкалари бараваригача кўтарадилар.';
  FormMain.BUTTONTAKBIRKIRISHV3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSANOV3V.CAPTION:='Қўлларни қовуштирган ҳолда киндик остида тутиб «Сано» («Субҳанакаллоҳумма...») ўқилади. Аёллар қўлларини боғлаб кўкраклари устида ушлаб турадилар.';
  FormMain.LABELTAAVVUZV3V.CAPTION:='Таъаввуз («Аъузу биллаҳи...») ўқилади.';
  FormMain.LABELBASMALA1V3V.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA1V3V.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELIXLOSV3V.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONSANOV3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTAAVVUZV3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONIXLOSV3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU1V3V.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади. Рукуъда эркаклар тиззаларини букмасдан тик ҳолатда турсалар, аёллар эса тиззаларини озроқ букиб турадилар. Эркаклар тиззаларига таянганда бармоқлари ораси бироз очиқ ҳолатда бўладилар, аёллар эса бармоқлари орасини очмасдан тизза тўпиғини ушлаб турадилар.';
  FormMain.LABELAZIYM1V3V.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH1V3V.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD1V3V.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA1_1V3V.CAPTION:='«Аллоҳу акбар» деб ерга аввал тиззалар, кейин кафтлар, сўнг бурун ва пешона қўйилиб, сажда қилинади. Бунда тирсаклар ерга ва биқинларга теккизилмайди, барча аъзолар, хусусан, оёқ бармоқлари иложи борича қиблага юзлантирилади. Аёллар аксинча тирсакларини ерга ва биқинларига теккизиб, қоринларини сонларига ёпиштириб, йиғинлинқираб сажда қиладилар.';
  FormMain.LABELALA1_1V3V.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA1V3V.CAPTION:='«Аллоҳу акбар», деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAJDA1_2V3V.CAPTION:='«Аллоҳу акбар» деб иккинчи марта сажда қилинади.';
  FormMain.LABELALA1_2V3V.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA1_2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA1_2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM2V3V.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай иккинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.LABELBASMALA2V3V.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.LABELFOTIHA2V3V.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.LABELFALAQV3V.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONTAKBIRQIYOM2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONBASMALA2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFOTIHA2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONFALAQV3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU2V3V.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.LABELAZYIM2V3V.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONAZIYM2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH2V3V.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.LABELHAMD2V3V.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONSAMIALLOH2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONHAMD2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_1V3V.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_1V3V.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA2V3V.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA2_2V3V.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.LABELALA2_2V3V.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONTAKBIRSAJDA2_2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONALA2_2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA1V3V.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.BUTTONTAKBIRQADA1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTASHAHHUD1V3V.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.BUTTONTASHAHHUD1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQIYOM3V3V.CAPTION:='«Аллоҳу акбар» деб ҳеч нарсага суянмай учинчи ракъатни ўқиш учун ўриндан турилади.';
  FormMain.BUTTONTAKBIRQIYOM3V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELBASMALA3V3V.CAPTION:='Басмала («Бисмиллаҳ...») ўқилади.';
  FormMain.BUTTONBASMALA3V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELFOTIHA3V3V.CAPTION:='Фотиҳа сураси ўқилади. Фотиҳа сураси тугагач, махфий тарзда «Омин» дейилади.';
  FormMain.BUTTONFOTIHA3V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELNASV3V.CAPTION:='Зам сура ўқилади.';
  FormMain.BUTTONNASV3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELQUNUT.CAPTION:='Қунут дуоси ўқилади.';
  FormMain.BUTTONQUNUT.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQUNUT.CAPTION:='«Аллоҳу акбар» деб, қўллар қулоқлар тўғрисигача кўтарилиб, яна киндик остига қўйилади.';
  FormMain.BUTTONTAKBIRQUNUT.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRRUKU3V3V.CAPTION:='«Аллоҳу акбар» деб эгилиб рукуъга борилади.';
  FormMain.BUTTONAZIYM3V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELAZYIM3V3V.CAPTION:='Уч марта «Субҳана Роббийал ъазийм» дейилади.';
  FormMain.BUTTONTAKBIRRUKU3V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSAMIALLOH3V3V.CAPTION:='Белни тиклаётиб «Самиъаллоҳу лиман ҳамидаҳ» дейилади.';
  FormMain.BUTTONSAMIALLOH3V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELHAMD3V3V.CAPTION:='Тўла тикланиб бўлгач «Роббана лакал ҳамд» дейилади.';
  FormMain.BUTTONHAMD3V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_1V3V.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_1V3V.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_1V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRJALSA3V3V.CAPTION:='«Аллоҳу акбар» деб саждадан бош кўтарилади ва чап оёқни тўшаб, ўнг оёқ кифтини тик қилиб, бармоқлар қиблага юзлантирилган, икки қўлнинг кафти учи тизза баробарига қўйилган ҳолда ўтирилади.';
  FormMain.BUTTONTAKBIRJALSA3V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRSAJDA3_2V3V.CAPTION:='«Аллоҳу акбар» деб сажда қилинади.';
  FormMain.BUTTONTAKBIRSAJDA3_2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELALA3_2V3V.CAPTION:='Саждада уч марта «Субҳана Роббийал ъала» дейилади.';
  FormMain.BUTTONALA3_2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTAKBIRQADA2V3V.CAPTION:='«Аллоҳу акбар» деб cаждадан сўнг ўнг оёғини тиклаб, чап оёғи устига ўтирилади. Аёллар икки оёқларини ўнг тарафга қаратиб, чап думбалари устига ўтирадилар.';
  FormMain.LABELTASHAHHUD2V3V.CAPTION:='«Ташаҳҳуд» («Аттаҳиййат...») ўқилади.';
  FormMain.LABELSALAVOTV3V.CAPTION:='Икки салавот («Аллоҳумма! Солли ъала...» ва «Аллоҳумма! Барик ъала...») ўқилади.';
  FormMain.LABELROBBANAV3V.CAPTION:='Дуо («Роббана...») ўқилади.';
  FormMain.BUTTONTAKBIRQADA2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONTASHAHHUD2V3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONSALAVOTV3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.BUTTONROBBANAV3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELSALOMV3V.CAPTION:='Сўнгра аввал ўнг елкага, кейин чап елкага «Ассалому алайкум ва раҳматуллоҳ», деб салом беради. Шу билан икки ракъат намоз якунланади.';
  FormMain.BUTTONSALOMV3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELTASBEHV3V.CAPTION:='Ҳар вақт намозни тугатгандан сўнг тасбеҳот қилинса савоби улуғ бўлади.';
  FormMain.BUTTONTASBEHV3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELKURSIV3V.CAPTION:='Намоздан кейин Курсий оятини (Оятал Курсий) ўқиш ҳам савобли.';
  FormMain.BUTTONKURSIV3V.CAPTION:='Батафсил (ўқиш ва эшитиш)';
  FormMain.LABELXUFTON.CAPTION:='Хуфтон намозининг вақти – шафақ батамом йўқолгандан кейин киради. Витр намози вақти эса хуфтон ўқилгандан кейингина киради. Хуфтон ва витр намозларини субҳи содиққача ўқиса бўлади. Хуфтон намозини кечанинг учдан бирига олиб бориб ўқиш афзал ва ниҳоятда аъло бўлади. Витр намозини эса тун охирида уйғонишга қодир бўлган кишилар субҳ олдидан ўқисалар, мустаҳаб амал қилган бўлишади.';
  FormMain.BUTTONPREVIOUS.HINT:='Олдинги';
  FormMain.BUTTONNEXT.HINT:='Кейинги';
  FormMain.MENUITEMFILE.CAPTION:='Файл';
  FormMain.MENUITEMEXIT.CAPTION:='Чиқиш';
  FormMain.MENUITEMTOOLS.CAPTION:='Асбоблар';
  FormMain.MENUITEMSETTINGS.CAPTION:='Созламалар';
  FormMain.MENUITEMHELP.CAPTION:='Ёрдам';
  FormMain.MENUITEMABOUT.CAPTION:='Дастур ҳақида';
  FormDetails.LABELAZONBOMDODDESC.CAPTION:=#13#10'Азон намоз вақти кирганидан огоҳлантирувчи, намозга чорловчи чақириқдир. Кундалик беш вақт намоз ва жума намозлари учун азон айтиш таъкидланган суннатдир. Азон намоз вақти киргач, таҳорат билан қиблага юзланиб, тик турган ҳолда икки қўлнинг кўрсаткич бармоқларини қулоқ ичига қўйиб, баланд овозда, дона-дона қилиб айтилади. Муаззин «Ҳаййа ълас-солаҳ» калимасида бошини ўнг тарафга, «Ҳаййа ъалал-фалаҳ» калимасида чап тарафга буради. Азонни эшитган киши ишдан, масжиддан бошқа томонга юришдан, сўзлашдан тўхтайди. Муаззиннинг ортидан азон калималарини айтиб туради. Муаззин «Ҳаййа ъалас-солаҳ», деганида «Лаа ҳавла ва лаа қуввата иллаа биллаҳил ъалиййил-аъзийм», дейди, «Ҳаййа ъалал фалаҳ», деганида эса «Маа ша Аллоҳу каана вама алам йашаъ лам якун», дейди. Сафарда ва жомеъ масжидларида азонни тарк қилиш макруҳ, бироқ шаҳар ичидаги хонадонларда уни тарк этиш макруҳ эмас. Жунуб, ақлдан озган, фосиқ, маст, таҳоратсиз кишилар, ақлсиз болалар ва аёлларнинг азон айтишлари макруҳдир. Қазо намозлари учун азон айтилади. Ҳайит намозлари ҳамда жаноза намозига азон айтилмайди.';
  FormDetails.LABELAZONBOMDODTRANS.CAPTION:=#13#10'Аллоҳу акбар Аллоҳу акбар'#13#10'Аллоҳу акбар Аллоҳу акбар'#13#10'Ашҳаду аллаа илааҳа иллаллоҳ'#13#10'Ашҳаду аллаа илааҳа иллаллоҳ'#13#10'Ашҳаду анна Муҳаммадар расуулуллоҳ'#13#10'Ашҳаду анна Муҳаммадар расуулуллоҳ'#13#10'Ҳаййа ълас-солааҳ'#13#10'Ҳаййа ълас-солааҳ'#13#10'Ҳаййа ъалал-фалааҳ'#13#10'Ҳаййа ъалал-фалааҳ'#13#10'Ас-солату хойрум минан-навм'#13#10'Ас-солату хойрум минан-навм'#13#10'Аллоҳу акбар Аллоҳу акбар'#13#10'Лаа илааҳа иллаллоҳ';
  FormDetails.LABELAZONBOMDODUZ.CAPTION:='Маъноси:'#13#10'Аллоҳ улуғдир Аллоҳ улуғдир'#13#10'Аллоҳ улуғдир Аллоҳ улуғдир'#13#10'Гувоҳлик бераманки, Аллоҳдан бошқа илоҳ йўқ'#13#10'Гувоҳлик бераманки, Аллоҳдан бошқа илоҳ йўқ'#13#10'Гувоҳлик бераманки, Муҳаммад Аллоҳнинг пайғамбаридир'#13#10'Гувоҳлик бераманки, Муҳаммад Аллоҳнинг пайғамбаридир'#13#10'Намозга келингиз'#13#10'Намозга келингиз'#13#10'Нажотга келингиз'#13#10'Нажотга келингиз'#13#10'Намоз уйқудан афзал'#13#10'Намоз уйқудан афзал'#13#10'Аллоҳ улуғдир Аллоҳ улуғдир'#13#10'Аллоҳдан ўзга илоҳ йўқ';
  FormDetails.LABELAZONDESC.CAPTION:='Азон намоз вақти кирганидан огоҳлантирувчи, намозга чорловчи чақириқдир. Кундалик беш вақт намоз ва жума намозлари учун азон айтиш таъкидланган суннатдир. Азон намоз вақти киргач, таҳорат билан қиблага юзланиб, тик турган ҳолда икки қўлнинг кўрсаткич бармоқларини қулоқ ичига қўйиб, баланд овозда, дона-дона қилиб айтилади. Муаззин «Ҳаййа ълас-солаҳ» калимасида бошини ўнг тарафга, «Ҳаййа ъалал-фалаҳ» калимасида чап тарафга буради. Азонни эшитган киши ишдан, масжиддан бошқа томонга юришдан, сўзлашдан тўхтайди. Муаззиннинг ортидан азон калималарини айтиб туради. Муаззин «Ҳаййа ъалас-солаҳ», деганида «Лаа ҳавла ва лаа қуввата иллаа биллаҳил ъалиййил-аъзийм», дейди, «Ҳаййа ъалал фалаҳ», деганида эса «Маа ша Аллоҳу каана вама алам йашаъ лам якун», дейди. Сафарда ва жомеъ масжидларида азонни тарк қилиш макруҳ, бироқ шаҳар ичидаги хонадонларда уни тарк этиш макруҳ эмас. Жунуб, ақлдан озган, фосиқ, маст, таҳоратсиз кишилар, ақлсиз болалар ва аёлларнинг азон айтишлари макруҳдир. Қазо намозлари учун азон айтилади. Ҳайит намозлари ҳамда жаноза намозига азон айтилмайди.';
  FormDetails.LABELAZONTRANS.CAPTION:=#13#10'Аллоҳу акбар Аллоҳу акбар'#13#10'Аллоҳу акбар Аллоҳу акбар'#13#10'Ашҳаду аллаа илааҳа иллаллоҳ'#13#10'Ашҳаду аллаа илааҳа иллаллоҳ'#13#10'Ашҳаду анна Муҳаммадар расуулуллоҳ'#13#10'Ашҳаду анна Муҳаммадар расуулуллоҳ'#13#10'Ҳаййа ълас-солааҳ'#13#10'Ҳаййа ълас-солааҳ'#13#10'Ҳаййа ъалал-фалааҳ'#13#10'Ҳаййа ъалал-фалааҳ'#13#10'Аллоҳу акбар Аллоҳу акбар'#13#10'Лаа илааҳа иллаллоҳ';
  FormDetails.LABELAZONUZ.CAPTION:='Маъноси:'#13#10'Аллоҳ улуғдир Аллоҳ улуғдир'#13#10'Аллоҳ улуғдир Аллоҳ улуғдир'#13#10'Гувоҳлик бераманки, Аллоҳдан бошқа илоҳ йўқ'#13#10'Гувоҳлик бераманки, Аллоҳдан бошқа илоҳ йўқ'#13#10'Гувоҳлик бераманки, Муҳаммад Аллоҳнинг пайғамбаридир'#13#10'Гувоҳлик бераманки, Муҳаммад Аллоҳнинг пайғамбаридир'#13#10'Намозга келингиз'#13#10'Намозга келингиз'#13#10'Нажотга келингиз'#13#10'Нажотга келингиз'#13#10'Аллоҳ улуғдир Аллоҳ улуғдир'#13#10'Аллоҳдан ўзга илоҳ йўқ';
  FormDetails.LABELAZONDUOTRANS.CAPTION:='Аллоҳумма! Робба ҳазиҳид-даъватит таммаҳ. Вассолатил қоимаҳ, ати Муҳаммаданил васийлата вал фазийлаҳ. Вабъасҳу мақомам маҳмуданиллазий ваъадтаҳ. Варзуқна шафаъатаҳу явмал қиёмаҳ. Иннака лаа тухлифул мийъад.';
  FormDetails.LABELAZONDUOUZ.CAPTION:='Маъноси:'#13#10'Эй ушбу мукаммал дуо ва ҳамда абадий салавот Парвардигори. Муҳаммад алайҳиссаломнинг мартабаларини улуғ қилиб, неъматларингни унга бисёр қилгайсан, ул зотга Ўзинг ваъда қилган макоми маҳмудни (жаннатдаги ўринни) ато этгайсан. Қиёматда бизга унинг шафоатини насиб этгайсан. Сен зинҳор ваъдага хилоф қилмайсан.';
  FormDetails.LABELIQOMATDESC.CAPTION:='Кундалик беш вақт намоз ва жума намозлари учун иқомат айтиш таъкидланган суннатдир. Сафарда ва жомеъ масжидларида иқоматни тарк қилиш макруҳ, бироқ шаҳар ичидаги хонадонларда уни тарк этиш макруҳ эмас. Жунуб кишининг иқомат айтиши макруҳдир. Иқомат фарз намозлари олдидан айтилади. Қазо намозлари учун иқомат айтилади. Ҳайит намозлари ҳамда жаноза намозига иқомат айтилмайди.';
  FormDetails.LABELIQOMATTRANS.CAPTION:=#13#10'Аллоҳу акбар Аллоҳу акбар'#13#10'Аллоҳу акбар Аллоҳу акбар'#13#10'Ашҳаду аллаа илааҳа иллаллоҳ'#13#10'Ашҳаду аллаа илааҳа иллаллоҳ'#13#10'Ашҳаду анна Муҳаммадар расуулуллоҳ'#13#10'Ашҳаду анна Муҳаммадар расуулуллоҳ'#13#10'Ҳаййа ълас-солааҳ'#13#10'Ҳаййа ълас-солааҳ'#13#10'Ҳаййа ъалал-фалааҳ'#13#10'Ҳаййа ъалал-фалааҳ'#13#10'Қод қоматис-солаҳ Қод қоматис-солаҳ'#13#10'Аллоҳу акбар Аллоҳу акбар'#13#10'Лаа илааҳа иллаллоҳ';
  FormDetails.LABELIQOMATUZ.CAPTION:='Маъноси:'#13#10'Аллоҳ улуғдир Аллоҳ улуғдир'#13#10'Аллоҳ улуғдир Аллоҳ улуғдир'#13#10'Гувоҳлик бераманки, Аллоҳдан бошқа илоҳ йўқ'#13#10'Гувоҳлик бераманки, Аллоҳдан бошқа илоҳ йўқ'#13#10'Гувоҳлик бераманки, Муҳаммад Аллоҳнинг пайғамбаридир'#13#10'Гувоҳлик бераманки, Муҳаммад Аллоҳнинг пайғамбаридир'#13#10'Намозга келингиз'#13#10'Намозга келингиз'#13#10'Нажотга келингиз'#13#10'Нажотга келингиз'#13#10'Намоз бошланиб қолди Намоз бошланиб қолди'#13#10'Аллоҳ улуғдир Аллоҳ улуғдир'#13#10'Аллоҳдан ўзга илоҳ йўқ';
  FormDetails.LABELTAKBIRTRANS.CAPTION:='Аллоҳу акбар';
  FormDetails.LABELTAKBIRUZ.CAPTION:='Маъноси:'#13#10'Аллоҳ улуғдир';
  FormDetails.LABELSANOTRANS.CAPTION:='Субҳанакаллоҳумма ва биҳамдика ва табарокасмука ва таъала жаддука ва ла илаҳа ғойрук';
  FormDetails.LABELSANOUZ.CAPTION:='Маъноси:'#13#10'Аллоҳим! Сени пок Зот деб ёд килурман. Сенинг исминг муборакдир. Мартабанг улуғдир. Сендан ўзга илоҳ йўқдир.';
  FormDetails.LABELTAAVVUZTRANS.CAPTION:='Аъузу биллаҳи минаш шайтонир рожийм';
  FormDetails.LABELTAAVVUZUZ.CAPTION:='Маъноси:'#13#10'Аллоҳнинг даргоҳидан қувилган шайтон ёмонлигидан Аллоҳнинг паноҳига қочаман';
  FormDetails.LABELBASMALATRANS.CAPTION:='Бисмиллаҳир роҳманир роҳийм';
  FormDetails.LABELBASMALAUZ.CAPTION:='Маъноси:'#13#10'Меҳрибон ва раҳмли Аллоҳ номи билан (бошлайман)';
  FormDetails.LABELFOTIHATRANS.CAPTION:=#13#10'Алҳамду лиллаҳи роббил ъаламийн'#13#10'Ар-роҳманир-роҳийм'#13#10'Малики явмиддийн'#13#10'Иййака наъбуду ва иййака настаъин'#13#10'Иҳдинас сиротол мустақийм'#13#10'Cиротол-лазийна анъамта ъалайҳим'#13#10'Ғойрил мағзуби ъалайҳим валаззоллийн';
  FormDetails.LABELFOTIHAUZ.CAPTION:='Маъноси:'#13#10'Барча мақтов, шукрлар оламларнинг Робби Аллоҳга бўлсин'#13#10'У Роҳман ва Раҳиймдир'#13#10'У қиёмат кунининг эгаси'#13#10'Фақат сенгагина ибодат қиламиз ва фақат сендангина ёрдам сўраймиз'#13#10'Бизни тўғри йўлга бошлагин'#13#10'Ўзинг неъмат берганларнинг йўлига (бошлагин),'#13#10'Ғазабга дучор бўлганларнинг йўлига эмас, адашганларникига ҳам эмас';
  FormDetails.LABELKAVSARUZ.CAPTION:=#13#10'Иннаа аътойнакал кавсар'#13#10'Фасолли лироббика ванҳар'#13#10'Инна шаниака ҳувал абтар';
  FormDetails.LABELKAVSARTRANS.CAPTION:='Маъноси:'#13#10'Албатта, Биз сенга Кавсарни бердик'#13#10'Бас, Роббингга намоз ўқи ва жонлик сўй'#13#10'Албатта, сени ёмон кўриб, айбловчининг орқаси кесикдир';
  FormDetails.LABELIXLOSTRANS.CAPTION:=#13#10'Қул ҳуваллоҳу аҳад'#13#10'Аллоҳус-сомад'#13#10'Лам йалид ва лам йулад'#13#10'Ва лам якуллаҳу куфуван аҳад';
  FormDetails.LABELIXLOSUZ.CAPTION:='Маъноси:'#13#10'Айт: «У Аллоҳ ягонадир»'#13#10'Аллоҳ сомаддир'#13#10'У туғмаган ва туғилмаган'#13#10'Ва Унга ҳеч ким тенг бўлмаган';
  FormDetails.LABELFALAQTRANS.CAPTION:=#13#10'Қул аъузу бироббил фалақ'#13#10'Мин шарри ма холақ'#13#10'Ва мин шарри ғосиқин иза вақоб'#13#10'Ва мин шаррин наффасати фил ъуқод'#13#10'Ва мин шарри ҳасидин иза ҳасад';
  FormDetails.LABELFALAQUZ.CAPTION:='Маъноси:'#13#10'Тонг Роббисидан паноҳ сўрайман'#13#10'У яратган нарсалар ёмонлигидан'#13#10'Ва кириб келган қоронғулик ёмонлигидан'#13#10'Ва тугунларга дам солувчилар ёмонлигидан'#13#10'Ва ҳасад қилган ҳасадчининг ёмонлигидан, деб айт';
  FormDetails.LABELNASTRANS.CAPTION:=#13#10'Қул аъузу бирробин-нас'#13#10'Маликин-нас'#13#10'Илаҳин-наас'#13#10'Мин шаррил-васвасил хоннас'#13#10'Аллази йувасвисуфи судурин-нас'#13#10'Минал жиннати ван-нас';
  FormDetails.LABELNASUZ.CAPTION:='Маъноси:'#13#10'Одамлар Роббисидан'#13#10'Одамлар Подшоҳидан'#13#10'Одамлар Илоҳидан паноҳ сўрайман'#13#10'Беркиниб, кўриниб турувчи васвоснинг'#13#10'Одамлар қалбига васваса соладиганнинг'#13#10'Жинлардан ва одамлардан бўлганнинг ёмонлигидан, деб айт';
  FormDetails.LABELAZIYMTRANS.CAPTION:='Субҳана Роббийал ъазийм';
  FormDetails.LABELAZIYMUZ.CAPTION:='Маъноси:'#13#10'Улуғ Роббим покдир';
  FormDetails.LABELSAMIALLOHTRANS.CAPTION:='Самиъаллоҳу лиман ҳамидаҳ';
  FormDetails.LABELSAMIALLOHUZ.CAPTION:='Маъноси:'#13#10'Аллоҳ Ўзига ҳамд айтган кишини эшитади';
  FormDetails.LABELHAMDTRANS.CAPTION:='Роббана лакал ҳамд';
  FormDetails.LABELHAMDUZ.CAPTION:='Маъноси:'#13#10'Роббимиз! Мақтов Сенгадир';
  FormDetails.LABELALATRANS.CAPTION:='Субҳана Роббийал ъала';
  FormDetails.LABELALAUZ.CAPTION:='Маъноси:'#13#10'Олий Роббим покдир';
  FormDetails.LABELTASHAHHUDTRANS.CAPTION:='Ат-таҳиййату лиллаҳи вас-солавату ват-тоййибат. Ассаламу ъалайка аййуҳан-набиййу ва роҳматуллоҳи ва барокатуҳ. Ассаламу ъалайна ва аъла ъибадиллаҳис солиҳийн. Ашҳаду алла илаҳа иллаллоҳу ва ашҳаду анна Муҳаммадан ъабдуҳу ва росулуҳу.';
  FormDetails.LABELTASHAHHUDUZ.CAPTION:='Маъноси:'#13#10'Барокатли табриклар ва покиза салавотлар Аллоҳ учундир. Эй Набий! Сенга салом, Аллоҳнинг раҳмати ва баракаси бўлсин. Бизларга ва Аллоҳнинг солиҳ бандаларига салом бўлсин. Аллоҳдан ўзга илоҳ йўқ деб гувоҳлик бераман ва албатта, Муҳаммад – Аллоҳнинг Расули деб гувоҳлик бераман.';
  FormDetails.LABELSALAVOTTRANS.CAPTION:='Аллоҳумма! Солли ъала Муҳаммадив ва ъала али Муҳаммад. Кама соллайта ъала Иброҳима ва ъала али Иброҳим. Иннака ҳамидум мажийд. Аллоҳумма! Барик ъала Муҳаммадив ва ъала али Муҳаммад. Кама барокта ъала Иброҳима ва ъала али Иброҳим. Иннака ҳамидум мажийд.';
  FormDetails.LABELSALAVOTUZ.CAPTION:='Маъноси:'#13#10'Аллоҳим! Иброҳимга ва Иброҳимнинг аҳли байтларига Ўз раҳматингни нозил қилганингдек, Муҳаммадга ва Муҳаммаднинг оила аъзоларига Ўзингнинг зиёда раҳматларингни нозил қилгин! Албатта, Сен мақталган, улуғланган Зотсан! Аллоҳим! Иброҳимга ва Иброҳимнинг аҳли байтларига Ўз баракангни нозил қилганингдек, Муҳаммадга ва Муҳаммаднинг оила аъзоларига Ўз баракангни нозил қилгин! Албатта, Сен мақталган, улуғланган Зотсан!';
  FormDetails.LABELROBBANATRANS.CAPTION:='Роббана! Атина фид дунйа ҳасанатав ва фил ахироти ҳасанатав-ва қина ъазабан нар';
  FormDetails.LABELROBBANAUZ.CAPTION:='Маъноси:'#13#10'Роббимиз! Бизларга дунёда ҳам, охиратда ҳам яхшилик бер ва дўзах азобидан асра';
  FormDetails.LABELSALOMTRANS.CAPTION:='Ассалому алайкум ва раҳматуллоҳ';
  FormDetails.LABELSALOMUZ.CAPTION:='Маъноси:'#13#10'Сизларга Аллоҳнинг саломи ва раҳмати бўлсин';
  FormDetails.LABELQUNUTTRANS.CAPTION:='Аллоҳумма! Иннаа настаъийнука ва настағфирук.'#13#10'Ва нуъмину бика ва натаваккалу ъалайка ва нусний ъалайкал хойр.'#13#10'Нашкурука ва ла накфурук.'#13#10'Ва нахлаъу ва натруку ман йафжурук.'#13#10'Аллоҳумма! Иййака наъбуду ва лака нусоллий ва насжуду,'#13#10'ва илайка насъа ва наҳфиду, наржу роҳматака ва нахша ъазабака,'#13#10'инна ъазабака бил куффари мулҳиқ';
  FormDetails.LABELQUNUTUZ.CAPTION:='Маъноси:'#13#10'Аллоҳим! Албатта, Сендан ёрдам сўраймиз, Сендан ҳидоят сўраймиз,'#13#10'Сенга истиғфор айтамиз ва Сенга тавба қиламиз.'#13#10'Сенга иймон келтирамиз ва Сенга таваккал қиламиз.'#13#10'Сенга шукр қиламиз, куфр келтирмаймиз.'#13#10'Ва ким Сенга фожирлик қилса, уни ажратамиз ва тарк қиламиз.'#13#10'Аллоҳим! Сенгагина ибодат қиламиз, Сенгагина намоз ўқиймиз ва сажда қиламиз,'#13#10'Сенгагина интиламиз ва шошиламиз.'#13#10'Ва Сенинг раҳматингни умид қиламиз ва азобингдан қўрқамиз.'#13#10'Албатта, азобинг кофирларга етгувчидир.';
  FormDetails.LABELDUOTRANS.CAPTION:='Аллоҳумма, антас-салам ва минкас-салам, табарокта йа залжалали вал-икром';
  FormDetails.LABELDUOUZ.CAPTION:='Маъноси:'#13#10'Аллоҳим! Сен Саломсан, саломатлик Сендандир. Сен Табарруксан, эй жалол ва икром эгаси';
  FormDetails.LABELSUBHANALLOHTRANS.CAPTION:=#13#10'Субҳаналлоҳ (33 марта)';
  FormDetails.LABELSUBHANALLOHUZ.CAPTION:='Маъноси:'#13#10'Аллоҳни поклаб зикр этаман';
  FormDetails.LABELALHAMDULILLAHTRANS.CAPTION:=#13#10'Алҳамдулиллаҳ (33 марта)';
  FormDetails.LABELALHAMDULILLAHUZ.CAPTION:='Маъноси:'#13#10'Мақтовлар Аллоҳга хосдир';
  FormDetails.LABELTAKBIRTRANS1.CAPTION:=#13#10'Аллоҳу акбар (33 марта)';
  FormDetails.LABELTAKBIRUZ1.CAPTION:='Маъноси:'#13#10'Аллоҳ улуғдир';
  FormDetails.LABELTAVHIDTRANS.CAPTION:='Ла илаҳа иллаллоҳу ваҳдаҳу ла шарика лаҳу, лаҳул мулку ва лаҳул ҳамду ва ҳува ъала кулли шайъин қодир';
  FormDetails.LABELTAVHIDUZ.CAPTION:='Маъноси:'#13#10'Аллоҳдан ўзга илоҳ йўқ. У ягонадир, шериги йўқ, бутун мулк Уникидир. Ҳамд-мақтов Унга хосдир. Ва У ҳар нарсага қодир зотдир.';
  FormDetails.LABELKURSITRANS.CAPTION:=#13#10'Аллоҳу ла илаҳа илла ҳувал ҳаййул қоййум.'#13#10'Ла таъхузуҳу cинатув ва ла навм.'#13#10'Лаҳу ма фис-самавати ва ма фил ард.'#13#10'Ман-заллазии йашфаъу ъиндаҳу илла би изниҳ.'#13#10'Йаъламу ма байна айдийҳим ва ма холфаҳум.'#13#10'Ва ла йуҳитуна бишайъим-мин ъилмиҳии илла бима ша.'#13#10'Васиъа курсийюуҳус-самаавати вал-ард.'#13#10'Ва ла йаудуҳу ҳифзуҳума'#13#10'Ва ҳувал ъалиййул ъазийм';
  FormDetails.LABELKURSIUZ.CAPTION:='Маъноси:'#13#10'Аллоҳ – Ундан ўзга илоҳ йўқ. У Ҳайй ва Қаййумдир.'#13#10'Уни мудроқ ҳам, уйқу ҳам олмас.'#13#10'Осмонлару ердаги нарсалар Уникидир.'#13#10'Унинг ҳузурида Ўзининг изнисиз ҳеч ким шафоат қила олмас.'#13#10'Уларнинг олдиларидаги нарсани ҳам, ортларидаги нарсани ҳам билур.'#13#10'Унинг илмидан Ўзи хоҳлаганидан бошқа ҳеч нарсани иҳота қила олмаслар.'#13#10'Унинг Курсиси осмонлару ерни қамраган.'#13#10'Уларни муҳофаза қилиш унга оғир келмас.'#13#10'Ва У Алий ва Азиймдир.';
  FormDetails.BUTTONPLAY.HINT:='Ижро эттириш';
  FormDetails.BUTTONSTOP.HINT:='Тўхтатиш';
  FormDetails.BUTTONPAUSE.HINT:='Пауза';
  FormSettings.CAPTION:='Созламалар';
  FormSettings.BUTTONPANEL1.OKBUTTON.CAPTION:='Ҳа';
  FormSettings.BUTTONPANEL1.CANCELBUTTON.CAPTION:='Бекор қилиш';
  FormSettings.GROUPBOXTRAY.CAPTION:='Трей';
  FormSettings.LABELTIMEOUT.CAPTION:='Акс эттирилиш вақти (сония)';
  FormSettings.LABELINTERVAL.CAPTION:='Интервал (дақиқа)';
  FormSettings.CHECKBOX1.CAPTION:='Трейда намоздаги амалларни кўрсатиш';
  FormSettings.GROUPBOXINTERFACE.CAPTION:='Интерфейс';
  FormSettings.GroupBox1.Caption:='Дастур ишга туширилганда';
  FormSettings.RadioButton0.Caption:='бошдан бошлансин';
  FormSettings.RadioButton1.Caption:='қолган жойдан давом эттирилсин';
  FormSettings.COMBOBOXTranslit.TEXT:='Кирилл';
  FormSettings.LABELTRANSLIT.CAPTION:='Транслитерация:';
  FormAbout.CAPTION:='Дастур ҳақида';
  FormAbout.TABSHEETNAMOZXON.CAPTION:='Намозхон';
  FormAbout.LABELBASMALA.CAPTION:='Бисмиллаҳир роҳманир роҳийм';
  FormAbout.LABELNAME.CAPTION:='Намозхон 2.2';
  FormAbout.LABELCOPYRIGHT.CAPTION:='Муаллифлик ҳуқуқи © 2015-2016 Умиджон Алмасов';
  FormAbout.LABELDESCRIPTION.CAPTION:='Бепул ва очиқ кодли намозни ўргатадиган мультимедиа дастури.';
  FormAbout.LABELQURON.CAPTION:='Аллоҳ таоло шундай марҳамат этади:'#13#10'«Намозни тўкис адо қилинг, закотни беринг ва рукуъ қилувчилар билан рукуъ қилинг» (Бақара сураси, 43-оят).';
  FormAbout.LABELHADIS.CAPTION:='Расули Акрамдан: «Қайси амал афзал (Аллоҳга севимлироқ)?», деб сўрашганида: «Вақтида ўқилган намоз», деб жавоб берганлар (Имом Бухорий ва Муслим ривоят қилишган).';
  FormAbout.TABSHEETLICENSE.CAPTION:='Лицензия';
  FormAbout.TABSHEETBASSLICENSE.CAPTION:='BASS лицензияси';
  Azon:='Азон';
  AzonDuo:='Азон дуоси';
  Iqomat:='Иқомат';
  Takbir:='Такбир';
  Sano:='Сано дуоси';
  Taavvuz:='Таъаввуз';
  Basmala:='Басмала';
  Fotiha:='Фотиҳа сураси';
  Kavsar:='Кавсар сураси';
  Ixlos:='Ихлос сураси';
  Falaq:='Фалақ сураси';
  Nas:='Нас сураси';
  Aziym:='Субҳана Роббийал ъазийм';
  Samialloh:='Самиъаллоҳу лиман ҳамидаҳ';
  Hamd:='Роббана лакал ҳамд';
  Ala:='Субҳана Роббийал ъала';
  Tashahhud:='Ташаҳҳуд';
  Salavot:='Салавот';
  Robbana:='Роббана';
  Salom:='Салом';
  Qunut:='Қунут дуоси';
  Duo:='Дуо';
  Tasbeh:='Тасбеҳ';
  Kursi:='Оятал Курсий';
end;
procedure TFormMain.ProcedureInterfaceLotin;
begin
  FormMain.CAPTION:='Namozxon';
  FormMain.TABSHEETBOMDOD.CAPTION:='BOMDOD';
  FormMain.TABSHEETB2S.CAPTION:='2 RAK''AT SUNNAT';
  FormMain.LABELNIYATB2S.CAPTION:='Ka''ba tomonga yuzlanib «Bomdod namozining ikki rak''at sunnatini xolis Alloh uchun o''qishga niyat qildim» mazmunida niyat qilinadi.';
  FormMain.LABELTAKBIRKIRISHB2S.CAPTION:='Ikki qo''l kaftini qiblaga qarata ko''tarib, bosh barmoq quloq yumshog''iga tekkiziladi va «Allohu akbar» deya takbir aytish bilan namoz boshlanadi. Ayollar qo''llarini elkalari baravarigacha ko''taradilar.';
  FormMain.LABELAZONB2S.CAPTION:='Avval Azon o''qiladi.';
  FormMain.LABELAZONDUOB2S.CAPTION:='So''ng Azon duosi o''qiladi.';
  FormMain.BUTTONAZONB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZONDUOB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAKBIRKIRISHB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSANOB2S.CAPTION:='Qo''llarni qovushtirgan holda kindik ostida tutib «Sano» («Subhanakallohumma...») o''qiladi. Ayollar qo''llarini bog''lab ko''kraklari ustida ushlab turadilar.';
  FormMain.LABELTAAVVUZB2S.CAPTION:='Ta''avvuz («A''uzu billahi...») o''qiladi.';
  FormMain.LABELBASMALA1B2S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA1B2S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELKAVSARB2S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONSANOB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAAVVUZB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA1B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA1B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONKAVSARB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU1B2S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi. Ruku''da erkaklar tizzalarini bukmasdan tik holatda tursalar, ayollar esa tizzalarini ozroq bukib turadilar. Erkaklar tizzalariga tayanganda barmoqlari orasi biroz ochiq holatda bo''ladilar, ayollar esa barmoqlari orasini ochmasdan tizza to''pig''ini ushlab turadilar.';
  FormMain.LABELAZIYM1B2S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU1B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM1B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH1B2S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD1B2S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH1B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD1B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA1_1B2S.CAPTION:='«Allohu akbar» deb erga avval tizzalar, keyin kaftlar, so''ng burun va peshona qo''yilib, sajda qilinadi. Bunda tirsaklar erga va biqinlarga tekkizilmaydi, barcha a''zolar, xususan, oyoq barmoqlari iloji boricha qiblaga yuzlantiriladi. Ayollar aksincha tirsaklarini erga va biqinlariga tekkizib, qorinlarini sonlariga yopishtirib, yig''inlinqirab sajda qiladilar.';
  FormMain.LABELALA1_1B2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_1B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_1B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA1B2S.CAPTION:='«Allohu akbar», deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA1B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAJDA1_2B2S.CAPTION:='«Allohu akbar» deb ikkinchi marta sajda qilinadi.';
  FormMain.LABELALA1_2B2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM2B2S.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay ikkinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.LABELBASMALA2B2S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA2B2S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELIXLOSB2S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONTAKBIRQIYOM2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONIXLOSB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU2B2S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.LABELAZYIM2B2S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH2B2S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD2B2S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_1B2S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_1B2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_1B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_1B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA2B2S.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_2B2S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_2B2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_2B2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADAB2S.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.LABELTASHAHHUDB2S.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.LABELSALAVOTB2S.CAPTION:='Ikki salavot («Allohumma! Solli ''ala...» va «Allohumma! Barik ''ala...») o''qiladi.';
  FormMain.LABELROBBANAB2S.CAPTION:='Duo («Robbana...») o''qiladi.';
  FormMain.BUTTONTAKBIRQADAB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTASHAHHUDB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONSALAVOTB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONROBBANAB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMB2S.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMB2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.TABSHEETB2F.CAPTION:='2 RAK''AT FARZ';
  FormMain.LABELNIYATB2F.CAPTION:='Ka''ba tomonga yuzlanib «Bomdod namozining ikki rak''at farzini xolis Alloh uchun o''qishga niyat qildim» mazmunida niyat qilinadi.';
  FormMain.LABELTAKBIRKIRISHB2F.CAPTION:='Ikki qo''l kaftini qiblaga qarata ko''tarib, bosh barmoq quloq yumshog''iga tekkiziladi va «Allohu akbar» deya takbir aytish bilan namoz boshlanadi. Ayollar qo''llarini elkalari baravarigacha ko''taradilar.';
  FormMain.LABELIQOMATB2F.CAPTION:='Iqomat o''qiladi.';
  FormMain.BUTTONIQOMATB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAKBIRKIRISHB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSANOB2F.CAPTION:='Qo''llarni qovushtirgan holda kindik ostida tutib «Sano» («Subhanakallohumma...») o''qiladi. Ayollar qo''llarini bog''lab ko''kraklari ustida ushlab turadilar.';
  FormMain.LABELTAAVVUZB2F.CAPTION:='Ta''avvuz («A''uzu billahi...») o''qiladi.';
  FormMain.LABELBASMALA1B2F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA1B2F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELFALAQB2F.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONSANOB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAAVVUZB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA1B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA1B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFALAQB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU1B2F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi. Ruku''da erkaklar tizzalarini bukmasdan tik holatda tursalar, ayollar esa tizzalarini ozroq bukib turadilar. Erkaklar tizzalariga tayanganda barmoqlari orasi biroz ochiq holatda bo''ladilar, ayollar esa barmoqlari orasini ochmasdan tizza to''pig''ini ushlab turadilar.';
  FormMain.LABELAZIYM1B2F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU1B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM1B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH1B2F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD1B2F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH1B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD1B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA1_1B2F.CAPTION:='«Allohu akbar» deb erga avval tizzalar, keyin kaftlar, so''ng burun va peshona qo''yilib, sajda qilinadi. Bunda tirsaklar erga va biqinlarga tekkizilmaydi, barcha a''zolar, xususan, oyoq barmoqlari iloji boricha qiblaga yuzlantiriladi. Ayollar aksincha tirsaklarini erga va biqinlariga tekkizib, qorinlarini sonlariga yopishtirib, yig''inlinqirab sajda qiladilar.';
  FormMain.LABELALA1_1B2F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_1B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_1B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA1B2F.CAPTION:='«Allohu akbar», deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA1B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAJDA1_2B2F.CAPTION:='«Allohu akbar» deb ikkinchi marta sajda qilinadi.';
  FormMain.LABELALA1_2B2F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM2B2F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay ikkinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.LABELBASMALA2B2F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA2B2F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELNASB2F.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONTAKBIRQIYOM2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONNASB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU2B2F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.LABELAZYIM2B2F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH2B2F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD2B2F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_1B2F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_1B2F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_1B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_1B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA2B2F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_2B2F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_2B2F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_2B2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADAB2F.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.LABELTASHAHHUDB2F.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.LABELSALAVOTB2F.CAPTION:='Ikki salavot («Allohumma! Solli ''ala...» va «Allohumma! Barik ''ala...») o''qiladi.';
  FormMain.LABELROBBANAB2F.CAPTION:='Duo («Robbana...») o''qiladi.';
  FormMain.BUTTONTAKBIRQADAB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTASHAHHUDB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONSALAVOTB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONROBBANAB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMB2F.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMB2F1.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMB2F1.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONDUOB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELDUOB2F.CAPTION:='Farz namozlaridan keyin duoni o''qish sunnatdir.';
  FormMain.BUTTONTASBEHB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTASBEHB2F.CAPTION:='Har vaqt namozni tugatgandan so''ng tasbehot qilinsa savobi ulug'' bo''ladi.';
  FormMain.BUTTONKURSIB2F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELKURSIB2F.CAPTION:='Namozdan keyin Kursiy oyatini (Oyatal Kursiy) o''qish ham savobli.';
  FormMain.LABELBOMDOD.CAPTION:='Bomdod namozining vaqti – subhi sodiqdan (chin tong otgandan) kun chiqqunchadir. Bomdod namozini tong yorishganda o''qish mustahab, a''loroqdir. Soat bo''yicha hisoblansa, bomdodni kun chiqishidan 40 daqiqacha ilgari o''qish mustahab vaqtiga muvofiq bo''ladi.';
  FormMain.TABSHEETPESHIN.CAPTION:='PESHIN';
  FormMain.TABSHEETP4S.CAPTION:='4 RAK''AT SUNNAT';
  FormMain.LABELNIYATP4S.CAPTION:='Ka''ba tomonga yuzlanib «Peshin namozining to''rt rak''at sunnatini xolis Alloh uchun o''qishga niyat qildim» mazmunida niyat qilinadi.';
  FormMain.LABELTAKBIRKIRISHP4S.CAPTION:='Ikki qo''l kaftini qiblaga qarata ko''tarib, bosh barmoq quloq yumshog''iga tekkiziladi va «Allohu akbar» deya takbir aytish bilan namoz boshlanadi. Ayollar qo''llarini elkalari baravarigacha ko''taradilar.';
  FormMain.LABELAZONP4S.CAPTION:='Avval Azon o''qiladi.';
  FormMain.LABELAZONDUOP4S.CAPTION:='So''ng Azon duosi o''qiladi.';
  FormMain.BUTTONAZONP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZONDUOP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAKBIRKIRISHP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSANOP4S.CAPTION:='Qo''llarni qovushtirgan holda kindik ostida tutib «Sano» («Subhanakallohumma...») o''qiladi. Ayollar qo''llarini bog''lab ko''kraklari ustida ushlab turadilar.';
  FormMain.LABELTAAVVUZP4S.CAPTION:='Ta''avvuz («A''uzu billahi...») o''qiladi.';
  FormMain.LABELBASMALA1P4S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA1P4S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELKAVSARP4S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONSANOP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAAVVUZP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONKAVSARP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU1P4S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi. Ruku''da erkaklar tizzalarini bukmasdan tik holatda tursalar, ayollar esa tizzalarini ozroq bukib turadilar. Erkaklar tizzalariga tayanganda barmoqlari orasi biroz ochiq holatda bo''ladilar, ayollar esa barmoqlari orasini ochmasdan tizza to''pig''ini ushlab turadilar.';
  FormMain.LABELAZIYM1P4S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH1P4S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD1P4S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA1_1P4S.CAPTION:='«Allohu akbar» deb erga avval tizzalar, keyin kaftlar, so''ng burun va peshona qo''yilib, sajda qilinadi. Bunda tirsaklar erga va biqinlarga tekkizilmaydi, barcha a''zolar, xususan, oyoq barmoqlari iloji boricha qiblaga yuzlantiriladi. Ayollar aksincha tirsaklarini erga va biqinlariga tekkizib, qorinlarini sonlariga yopishtirib, yig''inlinqirab sajda qiladilar.';
  FormMain.LABELALA1_1P4S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA1P4S.CAPTION:='«Allohu akbar», deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAJDA1_2P4S.CAPTION:='«Allohu akbar» deb ikkinchi marta sajda qilinadi.';
  FormMain.LABELALA1_2P4S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM2P4S.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay ikkinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.LABELBASMALA2P4S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA2P4S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELIXLOSP4S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONTAKBIRQIYOM2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONIXLOSP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU2P4S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.LABELAZYIM2P4S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH2P4S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD2P4S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_1P4S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_1P4S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA2P4S.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_2P4S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_2P4S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA1P4S.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.BUTTONTAKBIRQADA1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTASHAHHUD1P4S.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.BUTTONTASHAHHUD1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM3P4S.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay uchinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.BUTTONTAKBIRQIYOM3P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELBASMALA3P4S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.BUTTONBASMALA3P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELFOTIHA3P4S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.BUTTONFOTIHA3P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELFALAQP4S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONFALAQP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU3P4S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.BUTTONAZIYM3P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZYIM3P4S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU3P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH3P4S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.BUTTONSAMIALLOH3P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELHAMD3P4S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONHAMD3P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_1P4S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_1P4S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA3P4S.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA3P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_2P4S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_2P4S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM4P4S.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay to''rtinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.BUTTONTAKBIRQIYOM4P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELBASMALA4P4S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.BUTTONBASMALA4P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELFOTIHA4P4S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.BUTTONFOTIHA4P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELNASP4S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONNASP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU4P4S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.BUTTONAZIYM4P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZYIM4P4S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU4P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH4P4S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.BUTTONSAMIALLOH4P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELHAMD4P4S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONHAMD4P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA4_1P4S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA4_1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA4_1P4S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA4_1P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA4P4S.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA4P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA4_2P4S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA4_2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA4_2P4S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA4_2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA2P4S.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.LABELTASHAHHUD2P4S.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.LABELSALAVOTP4S.CAPTION:='Ikki salavot («Allohumma! Solli ''ala...» va «Allohumma! Barik ''ala...») o''qiladi.';
  FormMain.LABELROBBANAP4S.CAPTION:='Duo («Robbana...») o''qiladi.';
  FormMain.BUTTONTAKBIRQADA2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTASHAHHUD2P4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONSALAVOTP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONROBBANAP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMP4S.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMP4S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.TABSHEETP4F.CAPTION:='4 RAK''AT FARZ';
  FormMain.LABELNIYATP4F.CAPTION:='Ka''ba tomonga yuzlanib «Peshin namozining to''rt rak''at farzini xolis Alloh uchun o''qishga niyat qildim» mazmunida niyat qilinadi.';
  FormMain.LABELTAKBIRKIRISHP4F.CAPTION:='Ikki qo''l kaftini qiblaga qarata ko''tarib, bosh barmoq quloq yumshog''iga tekkiziladi va «Allohu akbar» deya takbir aytish bilan namoz boshlanadi. Ayollar qo''llarini elkalari baravarigacha ko''taradilar.';
  FormMain.LABELIQOMATP4F.CAPTION:='Iqomat o''qiladi.';
  FormMain.BUTTONIQOMATP4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAKBIRKIRISHP4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSANOP4F.CAPTION:='Qo''llarni qovushtirgan holda kindik ostida tutib «Sano» («Subhanakallohumma...») o''qiladi. Ayollar qo''llarini bog''lab ko''kraklari ustida ushlab turadilar.';
  FormMain.LABELTAAVVUZP4F.CAPTION:='Ta''avvuz («A''uzu billahi...») o''qiladi.';
  FormMain.LABELBASMALA1P4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA1P4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELKAVSARP4F.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONSANOP4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAAVVUZP4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONKAVSARP4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU1P4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi. Ruku''da erkaklar tizzalarini bukmasdan tik holatda tursalar, ayollar esa tizzalarini ozroq bukib turadilar. Erkaklar tizzalariga tayanganda barmoqlari orasi biroz ochiq holatda bo''ladilar, ayollar esa barmoqlari orasini ochmasdan tizza to''pig''ini ushlab turadilar.';
  FormMain.LABELAZIYM1P4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH1P4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD1P4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA1_1P4F.CAPTION:='«Allohu akbar» deb erga avval tizzalar, keyin kaftlar, so''ng burun va peshona qo''yilib, sajda qilinadi. Bunda tirsaklar erga va biqinlarga tekkizilmaydi, barcha a''zolar, xususan, oyoq barmoqlari iloji boricha qiblaga yuzlantiriladi. Ayollar aksincha tirsaklarini erga va biqinlariga tekkizib, qorinlarini sonlariga yopishtirib, yig''inlinqirab sajda qiladilar.';
  FormMain.LABELALA1_1P4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA1P4F.CAPTION:='«Allohu akbar», deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAJDA1_2P4F.CAPTION:='«Allohu akbar» deb ikkinchi marta sajda qilinadi.';
  FormMain.LABELALA1_2P4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM2P4F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay ikkinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.LABELBASMALA2P4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA2P4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELIXLOSP4F.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONTAKBIRQIYOM2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONIXLOSP4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU2P4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.LABELAZYIM2P4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH2P4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD2P4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_1P4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_1P4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA2P4F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_2P4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_2P4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA1P4F.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.BUTTONTAKBIRQADA1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTASHAHHUD1P4F.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.BUTTONTASHAHHUD1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM3P4F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay uchinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.BUTTONTAKBIRQIYOM3P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELBASMALA3P4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.BUTTONBASMALA3P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELFOTIHA3P4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.BUTTONFOTIHA3P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU3P4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.BUTTONAZIYM3P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZYIM3P4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU3P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH3P4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.BUTTONSAMIALLOH3P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELHAMD3P4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONHAMD3P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_1P4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_1P4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA3P4F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA3P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_2P4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_2P4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM4P4F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay to''rtinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.BUTTONTAKBIRQIYOM4P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELBASMALA4P4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.BUTTONBASMALA4P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELFOTIHA4P4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.BUTTONFOTIHA4P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU4P4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.BUTTONAZIYM4P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZYIM4P4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU4P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH4P4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.BUTTONSAMIALLOH4P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELHAMD4P4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONHAMD4P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA4_1P4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA4_1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA4_1P4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA4_1P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA4P4F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA4P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA4_2P4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA4_2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA4_2P4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA4_2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA2P4F.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.LABELTASHAHHUD2P4F.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.LABELSALAVOTP4F.CAPTION:='Ikki salavot («Allohumma! Solli ''ala...» va «Allohumma! Barik ''ala...») o''qiladi.';
  FormMain.LABELROBBANAP4F.CAPTION:='Duo («Robbana...») o''qiladi.';
  FormMain.BUTTONTAKBIRQADA2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTASHAHHUD2P4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONSALAVOTP4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONROBBANAP4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMP4F.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMP4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELDUOP4F.CAPTION:='Farz namozlaridan keyin duoni o''qish sunnatdir.';
  FormMain.BUTTONDUOP4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.TABSHEETP2S.CAPTION:='2 RAK''AT SUNNAT';
  FormMain.LABELNIYATP2S.CAPTION:='Ka''ba tomonga yuzlanib «Peshin namozining ikki rak''at sunnatini xolis Alloh uchun o''qishga niyat qildim» mazmunida niyat qilinadi.';
  FormMain.LABELTAKBIRKIRISHP2S.CAPTION:='Ikki qo''l kaftini qiblaga qarata ko''tarib, bosh barmoq quloq yumshog''iga tekkiziladi va «Allohu akbar» deya takbir aytish bilan namoz boshlanadi. Ayollar qo''llarini elkalari baravarigacha ko''taradilar.';
  FormMain.BUTTONTAKBIRKIRISHP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSANOP2S.CAPTION:='Qo''llarni qovushtirgan holda kindik ostida tutib «Sano» («Subhanakallohumma...») o''qiladi. Ayollar qo''llarini bog''lab ko''kraklari ustida ushlab turadilar.';
  FormMain.LABELTAAVVUZP2S.CAPTION:='Ta''avvuz («A''uzu billahi...») o''qiladi.';
  FormMain.LABELBASMALA1P2S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA1P2S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELFALAQP2S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONSANOP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAAVVUZP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA1P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA1P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFALAQP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU1P2S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi. Ruku''da erkaklar tizzalarini bukmasdan tik holatda tursalar, ayollar esa tizzalarini ozroq bukib turadilar. Erkaklar tizzalariga tayanganda barmoqlari orasi biroz ochiq holatda bo''ladilar, ayollar esa barmoqlari orasini ochmasdan tizza to''pig''ini ushlab turadilar.';
  FormMain.LABELAZIYM1P2S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU1P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM1P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH1P2S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD1P2S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH1P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD1P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA1_1P2S.CAPTION:='«Allohu akbar» deb erga avval tizzalar, keyin kaftlar, so''ng burun va peshona qo''yilib, sajda qilinadi. Bunda tirsaklar erga va biqinlarga tekkizilmaydi, barcha a''zolar, xususan, oyoq barmoqlari iloji boricha qiblaga yuzlantiriladi. Ayollar aksincha tirsaklarini erga va biqinlariga tekkizib, qorinlarini sonlariga yopishtirib, yig''inlinqirab sajda qiladilar.';
  FormMain.LABELALA1_1P2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_1P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_1P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA1P2S.CAPTION:='«Allohu akbar», deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA1P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAJDA1_2P2S.CAPTION:='«Allohu akbar» deb ikkinchi marta sajda qilinadi.';
  FormMain.LABELALA1_2P2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM2P2S.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay ikkinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.LABELBASMALA2P2S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA2P2S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELNASP2S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONTAKBIRQIYOM2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONNASP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU2P2S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.LABELAZYIM2P2S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH2P2S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD2P2S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_1P2S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_1P2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_1P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_1P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA2P2S.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_2P2S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_2P2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_2P2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADAP2S.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.LABELTASHAHHUDP2S.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.LABELSALAVOTP2S.CAPTION:='Ikki salavot («Allohumma! Solli ''ala...» va «Allohumma! Barik ''ala...») o''qiladi.';
  FormMain.LABELROBBANAP2S.CAPTION:='Duo («Robbana...») o''qiladi.';
  FormMain.BUTTONTAKBIRQADAP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTASHAHHUDP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONSALAVOTP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONROBBANAP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMP2S.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTASBEHP2S.CAPTION:='Har vaqt namozni tugatgandan so''ng tasbehot qilinsa savobi ulug'' bo''ladi.';
  FormMain.BUTTONTASBEHP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELKURSIP2S.CAPTION:='Namozdan keyin Kursiy oyatini (Oyatal Kursiy) o''qish ham savobli.';
  FormMain.BUTTONKURSIP2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELPESHIN.CAPTION:='Peshin namozining vaqti – quyosh zavolga (og''ishga) ketganidan so''ng to narsalarning soyasi o''z uzunligiga nisbatan ikki baravar ortguniga qadar. Peshin namozini yoz faslida bir oz kechiktirib, qish faslida esa vaqti kirishi bilan o''qish mustahabdir.';
  FormMain.TABSHEETASR.CAPTION:='ASR';
  FormMain.TABSHEETA4F.CAPTION:='4 RAK''AT FARZ';
  FormMain.LABELNIYATA4F.CAPTION:='Ka''ba tomonga yuzlanib «Asr namozining to''rt rak''at farzini xolis Alloh uchun o''qishga niyat qildim» mazmunida niyat qilinadi.';
  FormMain.LABELTAKBIRKIRISHA4F.CAPTION:='Ikki qo''l kaftini qiblaga qarata ko''tarib, bosh barmoq quloq yumshog''iga tekkiziladi va «Allohu akbar» deya takbir aytish bilan namoz boshlanadi. Ayollar qo''llarini elkalari baravarigacha ko''taradilar.';
  FormMain.LABELIQOMATA4F.CAPTION:='Iqomat o''qiladi.';
  FormMain.BUTTONIQOMATA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAKBIRKIRISHA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZONA4F.CAPTION:='Avval Azon o''qiladi.';
  FormMain.BUTTONAZONA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZONDUOA4F.CAPTION:='So''ng Azon duosi o''qiladi.';
  FormMain.BUTTONAZONDUOA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSANOA4F.CAPTION:='Qo''llarni qovushtirgan holda kindik ostida tutib «Sano» («Subhanakallohumma...») o''qiladi. Ayollar qo''llarini bog''lab ko''kraklari ustida ushlab turadilar.';
  FormMain.LABELTAAVVUZA4F.CAPTION:='Ta''avvuz («A''uzu billahi...») o''qiladi.';
  FormMain.LABELBASMALA1A4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA1A4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELKAVSARA4F.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONSANOA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAAVVUZA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONKAVSARA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU1A4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi. Ruku''da erkaklar tizzalarini bukmasdan tik holatda tursalar, ayollar esa tizzalarini ozroq bukib turadilar. Erkaklar tizzalariga tayanganda barmoqlari orasi biroz ochiq holatda bo''ladilar, ayollar esa barmoqlari orasini ochmasdan tizza to''pig''ini ushlab turadilar.';
  FormMain.LABELAZIYM1A4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH1A4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD1A4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA1_1A4F.CAPTION:='«Allohu akbar» deb erga avval tizzalar, keyin kaftlar, so''ng burun va peshona qo''yilib, sajda qilinadi. Bunda tirsaklar erga va biqinlarga tekkizilmaydi, barcha a''zolar, xususan, oyoq barmoqlari iloji boricha qiblaga yuzlantiriladi. Ayollar aksincha tirsaklarini erga va biqinlariga tekkizib, qorinlarini sonlariga yopishtirib, yig''inlinqirab sajda qiladilar.';
  FormMain.LABELALA1_1A4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA1A4F.CAPTION:='«Allohu akbar», deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAJDA1_2A4F.CAPTION:='«Allohu akbar» deb ikkinchi marta sajda qilinadi.';
  FormMain.LABELALA1_2A4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM2A4F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay ikkinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.LABELBASMALA2A4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA2A4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELIXLOSA4F.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONTAKBIRQIYOM2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONIXLOSA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU2A4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.LABELAZYIM2A4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH2A4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD2A4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_1A4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_1A4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA2A4F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_2A4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_2A4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA1A4F.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.BUTTONTAKBIRQADA1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTASHAHHUD1A4F.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.BUTTONTASHAHHUD1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM3A4F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay uchinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.BUTTONTAKBIRQIYOM3A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELBASMALA3A4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.BUTTONBASMALA3A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELFOTIHA3A4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.BUTTONFOTIHA3A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU3A4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.BUTTONAZIYM3A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZYIM3A4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU3A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH3A4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.BUTTONSAMIALLOH3A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELHAMD3A4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONHAMD3A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_1A4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_1A4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA3A4F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA3A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_2A4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_2A4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM4A4F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay to''rtinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.BUTTONTAKBIRQIYOM4A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELBASMALA4A4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.BUTTONBASMALA4A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELFOTIHA4A4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.BUTTONFOTIHA4A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU4A4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.BUTTONAZIYM4A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZYIM4A4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU4A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH4A4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.BUTTONSAMIALLOH4A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELHAMD4A4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONHAMD4A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA4_1A4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA4_1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA4_1A4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA4_1A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA4A4F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA4A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA4_2A4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA4_2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA4_2A4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA4_2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA2A4F.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.LABELTASHAHHUD2A4F.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.LABELSALAVOTA4F.CAPTION:='Ikki salavot («Allohumma! Solli ''ala...» va «Allohumma! Barik ''ala...») o''qiladi.';
  FormMain.LABELROBBANAA4F.CAPTION:='Duo («Robbana...») o''qiladi.';
  FormMain.BUTTONTAKBIRQADA2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTASHAHHUD2A4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONSALAVOTA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONROBBANAA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMA4F.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELDUOA4F.CAPTION:='Farz namozlaridan keyin duoni o''qish sunnatdir.';
  FormMain.BUTTONDUOA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTASBEHA4F.CAPTION:='Har vaqt namozni tugatgandan so''ng tasbehot qilinsa savobi ulug'' bo''ladi.';
  FormMain.BUTTONTASBEHA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELKURSIA4F.CAPTION:='Namozdan keyin Kursiy oyatini (Oyatal Kursiy) o''qish ham savobli.';
  FormMain.BUTTONKURSIA4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELASR.CAPTION:='Asr namozining vaqti – har bir narsaning soyasi o''ziga nisbatan ikki baravar ortganidan boshlab quyosh botgunchadir. Asr namozini quyosh tig''ini o''zgartirmay, nursiz holatga kirishidan oldinroq o''qish mustahabdir.';
  FormMain.TABSHEETSHOM.CAPTION:='SHOM';
  FormMain.TABSHEETSH3F.CAPTION:='3 RAK''AT FARZ';
  FormMain.LABELNIYATSH3F.CAPTION:='Ka''ba tomonga yuzlanib «Shom namozining uch rak''at farzini xolis Alloh uchun o''qishga niyat qildim» mazmunida niyat qilinadi.';
  FormMain.LABELTAKBIRKIRISHSH3F.CAPTION:='Ikki qo''l kaftini qiblaga qarata ko''tarib, bosh barmoq quloq yumshog''iga tekkiziladi va «Allohu akbar» deya takbir aytish bilan namoz boshlanadi. Ayollar qo''llarini elkalari baravarigacha ko''taradilar.';
  FormMain.LABELIQOMATSH3F.CAPTION:='Iqomat o''qiladi.';
  FormMain.BUTTONIQOMATSH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAKBIRKIRISHSH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZONSH3F.CAPTION:='Avval Azon o''qiladi.';
  FormMain.BUTTONAZONSH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZONDUOSH3F.CAPTION:='So''ng Azon duosi o''qiladi.';
  FormMain.BUTTONAZONDUOSH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSANOSH3F.CAPTION:='Qo''llarni qovushtirgan holda kindik ostida tutib «Sano» («Subhanakallohumma...») o''qiladi. Ayollar qo''llarini bog''lab ko''kraklari ustida ushlab turadilar.';
  FormMain.LABELTAAVVUZSH3F.CAPTION:='Ta''avvuz («A''uzu billahi...») o''qiladi.';
  FormMain.LABELBASMALA1SH3F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA1SH3F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELKAVSARSH3F.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONSANOSH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAAVVUZSH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONKAVSARSH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU1SH3F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi. Ruku''da erkaklar tizzalarini bukmasdan tik holatda tursalar, ayollar esa tizzalarini ozroq bukib turadilar. Erkaklar tizzalariga tayanganda barmoqlari orasi biroz ochiq holatda bo''ladilar, ayollar esa barmoqlari orasini ochmasdan tizza to''pig''ini ushlab turadilar.';
  FormMain.LABELAZIYM1SH3F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH1SH3F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD1SH3F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA1_1SH3F.CAPTION:='«Allohu akbar» deb erga avval tizzalar, keyin kaftlar, so''ng burun va peshona qo''yilib, sajda qilinadi. Bunda tirsaklar erga va biqinlarga tekkizilmaydi, barcha a''zolar, xususan, oyoq barmoqlari iloji boricha qiblaga yuzlantiriladi. Ayollar aksincha tirsaklarini erga va biqinlariga tekkizib, qorinlarini sonlariga yopishtirib, yig''inlinqirab sajda qiladilar.';
  FormMain.LABELALA1_1SH3F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA1SH3F.CAPTION:='«Allohu akbar», deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAJDA1_2SH3F.CAPTION:='«Allohu akbar» deb ikkinchi marta sajda qilinadi.';
  FormMain.LABELALA1_2SH3F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM2SH3F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay ikkinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.LABELBASMALA2SH3F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA2SH3F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELIXLOSSH3F.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONTAKBIRQIYOM2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONIXLOSSH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU2SH3F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.LABELAZYIM2SH3F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH2SH3F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD2SH3F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_1SH3F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_1SH3F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA2SH3F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_2SH3F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_2SH3F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA1SH3F.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.BUTTONTAKBIRQADA1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTASHAHHUD1SH3F.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.BUTTONTASHAHHUD1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM3SH3F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay uchinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.BUTTONTAKBIRQIYOM3SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELBASMALA3SH3F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.BUTTONBASMALA3SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELFOTIHA3SH3F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.BUTTONFOTIHA3SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU3SH3F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.BUTTONAZIYM3SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZYIM3SH3F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU3SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH3SH3F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.BUTTONSAMIALLOH3SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELHAMD3SH3F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONHAMD3SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_1SH3F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_1SH3F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_1SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA3SH3F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA3SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_2SH3F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_2SH3F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA2SH3F.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.LABELTASHAHHUD2SH3F.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.LABELSALAVOTSH3F.CAPTION:='Ikki salavot («Allohumma! Solli ''ala...» va «Allohumma! Barik ''ala...») o''qiladi.';
  FormMain.LABELROBBANASH3F.CAPTION:='Duo («Robbana...») o''qiladi.';
  FormMain.BUTTONTAKBIRQADA2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTASHAHHUD2SH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONSALAVOTSH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONROBBANASH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMSH3F.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMSH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELDUOSH3F.CAPTION:='Farz namozlaridan keyin duoni o''qish sunnatdir.';
  FormMain.BUTTONDUOSH3F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.TABSHEETSH2S.CAPTION:='2 RAK''AT SUNNAT';
  FormMain.LABELNIYATSH2S.CAPTION:='Ka''ba tomonga yuzlanib «Shom namozining ikki rak''at sunnatini xolis Alloh uchun o''qishga niyat qildim» mazmunida niyat qilinadi.';
  FormMain.LABELTAKBIRKIRISHSH2S.CAPTION:='Ikki qo''l kaftini qiblaga qarata ko''tarib, bosh barmoq quloq yumshog''iga tekkiziladi va «Allohu akbar» deya takbir aytish bilan namoz boshlanadi. Ayollar qo''llarini elkalari baravarigacha ko''taradilar.';
  FormMain.BUTTONTAKBIRKIRISHSH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSANOSH2S.CAPTION:='Qo''llarni qovushtirgan holda kindik ostida tutib «Sano» («Subhanakallohumma...») o''qiladi. Ayollar qo''llarini bog''lab ko''kraklari ustida ushlab turadilar.';
  FormMain.LABELTAAVVUZSH2S.CAPTION:='Ta''avvuz («A''uzu billahi...») o''qiladi.';
  FormMain.LABELBASMALA1SH2S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA1SH2S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELFALAQSH2S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONSANOSH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAAVVUZSH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA1SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA1SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFALAQSH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU1SH2S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi. Ruku''da erkaklar tizzalarini bukmasdan tik holatda tursalar, ayollar esa tizzalarini ozroq bukib turadilar. Erkaklar tizzalariga tayanganda barmoqlari orasi biroz ochiq holatda bo''ladilar, ayollar esa barmoqlari orasini ochmasdan tizza to''pig''ini ushlab turadilar.';
  FormMain.LABELAZIYM1SH2S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU1SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM1SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH1SH2S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD1SH2S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH1SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD1SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA1_1SH2S.CAPTION:='«Allohu akbar» deb erga avval tizzalar, keyin kaftlar, so''ng burun va peshona qo''yilib, sajda qilinadi. Bunda tirsaklar erga va biqinlarga tekkizilmaydi, barcha a''zolar, xususan, oyoq barmoqlari iloji boricha qiblaga yuzlantiriladi. Ayollar aksincha tirsaklarini erga va biqinlariga tekkizib, qorinlarini sonlariga yopishtirib, yig''inlinqirab sajda qiladilar.';
  FormMain.LABELALA1_1SH2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_1SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_1SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA1SH2S.CAPTION:='«Allohu akbar», deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA1SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAJDA1_2SH2S.CAPTION:='«Allohu akbar» deb ikkinchi marta sajda qilinadi.';
  FormMain.LABELALA1_2SH2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM2SH2S.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay ikkinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.LABELBASMALA2SH2S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA2SH2S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELNASSH2S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONTAKBIRQIYOM2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONNASSH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU2SH2S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.LABELAZYIM2SH2S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH2SH2S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD2SH2S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_1SH2S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_1SH2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_1SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_1SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA2SH2S.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_2SH2S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_2SH2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_2SH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADASH2S.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.LABELTASHAHHUDSH2S.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.LABELSALAVOTSH2S.CAPTION:='Ikki salavot («Allohumma! Solli ''ala...» va «Allohumma! Barik ''ala...») o''qiladi.';
  FormMain.LABELROBBANASH2S.CAPTION:='Duo («Robbana...») o''qiladi.';
  FormMain.BUTTONTAKBIRQADASH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTASHAHHUDSH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONSALAVOTSH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONROBBANASH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMSH2S.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMSH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTASBEHSH2S.CAPTION:='Har vaqt namozni tugatgandan so''ng tasbehot qilinsa savobi ulug'' bo''ladi.';
  FormMain.BUTTONTASBEHSH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELKURSISH2S.CAPTION:='Namozdan keyin Kursiy oyatini (Oyatal Kursiy) o''qish ham savobli.';
  FormMain.BUTTONKURSISH2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSHOM.CAPTION:='Shom namozining vaqti – kun botgan paytdan boshlab kun botar tomonda shafaq (qizg''ish nurlar) g''oyib bo''lgunchadir. Shom namozini doimo quyosh botishi bilan o''qish mustahabdir.';
  FormMain.TABSHEETXUFTON.CAPTION:='XUFTON';
  FormMain.TABSHEETX4F.CAPTION:='4 RAK''AT FARZ';
  FormMain.LABELNIYATX4F.CAPTION:='Ka''ba tomonga yuzlanib «Asr namozining to''rt rak''at farzini xolis Alloh uchun o''qishga niyat qildim» mazmunida niyat qilinadi.';
  FormMain.LABELTAKBIRKIRISHX4F.CAPTION:='Ikki qo''l kaftini qiblaga qarata ko''tarib, bosh barmoq quloq yumshog''iga tekkiziladi va «Allohu akbar» deya takbir aytish bilan namoz boshlanadi. Ayollar qo''llarini elkalari baravarigacha ko''taradilar.';
  FormMain.LABELIQOMATX4F.CAPTION:='Iqomat o''qiladi.';
  FormMain.BUTTONIQOMATX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAKBIRKIRISHX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZONX4F.CAPTION:='Avval Azon o''qiladi.';
  FormMain.BUTTONAZONX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZONDUOX4F.CAPTION:='So''ng Azon duosi o''qiladi.';
  FormMain.BUTTONAZONDUOX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSANOX4F.CAPTION:='Qo''llarni qovushtirgan holda kindik ostida tutib «Sano» («Subhanakallohumma...») o''qiladi. Ayollar qo''llarini bog''lab ko''kraklari ustida ushlab turadilar.';
  FormMain.LABELTAAVVUZX4F.CAPTION:='Ta''avvuz («A''uzu billahi...») o''qiladi.';
  FormMain.LABELBASMALA1X4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA1X4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELKAVSARX4F.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONSANOX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAAVVUZX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA1A4F1.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONKAVSARX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU1X4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi. Ruku''da erkaklar tizzalarini bukmasdan tik holatda tursalar, ayollar esa tizzalarini ozroq bukib turadilar. Erkaklar tizzalariga tayanganda barmoqlari orasi biroz ochiq holatda bo''ladilar, ayollar esa barmoqlari orasini ochmasdan tizza to''pig''ini ushlab turadilar.';
  FormMain.LABELAZIYM1X4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH1X4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD1X4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA1_1X4F.CAPTION:='«Allohu akbar» deb erga avval tizzalar, keyin kaftlar, so''ng burun va peshona qo''yilib, sajda qilinadi. Bunda tirsaklar erga va biqinlarga tekkizilmaydi, barcha a''zolar, xususan, oyoq barmoqlari iloji boricha qiblaga yuzlantiriladi. Ayollar aksincha tirsaklarini erga va biqinlariga tekkizib, qorinlarini sonlariga yopishtirib, yig''inlinqirab sajda qiladilar.';
  FormMain.LABELALA1_1X4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA1X4F.CAPTION:='«Allohu akbar», deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAJDA1_2X4F.CAPTION:='«Allohu akbar» deb ikkinchi marta sajda qilinadi.';
  FormMain.LABELALA1_2X4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM2X4F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay ikkinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.LABELBASMALA2X4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA2X4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELIXLOSX4F.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONTAKBIRQIYOM2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONIXLOSX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU2X4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.LABELAZYIM2X4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH2X4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD2X4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_1X4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_1X4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA2X4F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_2X4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_2X4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA1X4F.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.BUTTONTAKBIRQADA1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTASHAHHUD1X4F.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.BUTTONTASHAHHUD1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM3X4F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay uchinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.BUTTONTAKBIRQIYOM3X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELBASMALA3X4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.BUTTONBASMALA3X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELFOTIHA3X4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.BUTTONFOTIHA3X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU3X4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.BUTTONAZIYM3X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZYIM3X4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU3X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH3X4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.BUTTONSAMIALLOH3X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELHAMD3X4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONHAMD3X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_1X4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_1X4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA3X4F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA3X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_2X4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_2X4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM4X4F.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay to''rtinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.BUTTONTAKBIRQIYOM4X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELBASMALA4X4F.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.BUTTONBASMALA4X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELFOTIHA4X4F.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.BUTTONFOTIHA4X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU4X4F.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.BUTTONAZIYM4X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZYIM4X4F.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU4X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH4X4F.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.BUTTONSAMIALLOH4X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELHAMD4X4F.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONHAMD4X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA4_1X4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA4_1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA4_1X4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA4_1X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA4X4F.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA4X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA4_2X4F.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA4_2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA4_2X4F.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA4_2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA2X4F.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.LABELTASHAHHUD2X4F.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.LABELSALAVOTX4F.CAPTION:='Ikki salavot («Allohumma! Solli ''ala...» va «Allohumma! Barik ''ala...») o''qiladi.';
  FormMain.LABELROBBANAX4F.CAPTION:='Duo («Robbana...») o''qiladi.';
  FormMain.BUTTONTAKBIRQADA2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTASHAHHUD2X4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONSALAVOTX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONROBBANAX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMX4F.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELDUOX4F.CAPTION:='Farz namozlaridan keyin duoni o''qish sunnatdir.';
  FormMain.BUTTONDUOX4F.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.TABSHEETX2S.CAPTION:='2 RAK''AT SUNNAT';
  FormMain.LABELNIYATX2S.CAPTION:='Ka''ba tomonga yuzlanib «Shom namozining ikki rak''at sunnatini xolis Alloh uchun o''qishga niyat qildim» mazmunida niyat qilinadi.';
  FormMain.LABELTAKBIRKIRISHX2S.CAPTION:='Ikki qo''l kaftini qiblaga qarata ko''tarib, bosh barmoq quloq yumshog''iga tekkiziladi va «Allohu akbar» deya takbir aytish bilan namoz boshlanadi. Ayollar qo''llarini elkalari baravarigacha ko''taradilar.';
  FormMain.BUTTONTAKBIRKIRISHX2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSANOX2S.CAPTION:='Qo''llarni qovushtirgan holda kindik ostida tutib «Sano» («Subhanakallohumma...») o''qiladi. Ayollar qo''llarini bog''lab ko''kraklari ustida ushlab turadilar.';
  FormMain.LABELTAAVVUZX2S.CAPTION:='Ta''avvuz («A''uzu billahi...») o''qiladi.';
  FormMain.LABELBASMALA1X2S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA1X2S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELFALAQX2S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONSANOX2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAAVVUZX2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA1X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA1X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFALAQX2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU1X2S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi. Ruku''da erkaklar tizzalarini bukmasdan tik holatda tursalar, ayollar esa tizzalarini ozroq bukib turadilar. Erkaklar tizzalariga tayanganda barmoqlari orasi biroz ochiq holatda bo''ladilar, ayollar esa barmoqlari orasini ochmasdan tizza to''pig''ini ushlab turadilar.';
  FormMain.LABELAZIYM1X2S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU1X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM1X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH1X2S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD1X2S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH1X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD1X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA1_1X2S.CAPTION:='«Allohu akbar» deb erga avval tizzalar, keyin kaftlar, so''ng burun va peshona qo''yilib, sajda qilinadi. Bunda tirsaklar erga va biqinlarga tekkizilmaydi, barcha a''zolar, xususan, oyoq barmoqlari iloji boricha qiblaga yuzlantiriladi. Ayollar aksincha tirsaklarini erga va biqinlariga tekkizib, qorinlarini sonlariga yopishtirib, yig''inlinqirab sajda qiladilar.';
  FormMain.LABELALA1_1X2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_1X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_1X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA1X2S.CAPTION:='«Allohu akbar», deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA1X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAJDA1_2X2S.CAPTION:='«Allohu akbar» deb ikkinchi marta sajda qilinadi.';
  FormMain.LABELALA1_2X2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM2X2S.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay ikkinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.LABELBASMALA2X2S.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA2X2S.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELNASX2S.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONTAKBIRQIYOM2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONNASX2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU2X2S.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.LABELAZYIM2X2S.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH2X2S.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD2X2S.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_1X2S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_1X2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_1X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_1X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA2X2S.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_2X2S.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_2X2S.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_2X2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADAX2S.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.LABELTASHAHHUDX2S.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.LABELSALAVOTX2S.CAPTION:='Ikki salavot («Allohumma! Solli ''ala...» va «Allohumma! Barik ''ala...») o''qiladi.';
  FormMain.LABELROBBANAX2S.CAPTION:='Duo («Robbana...») o''qiladi.';
  FormMain.BUTTONTAKBIRQADAX2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTASHAHHUDX2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONSALAVOTX2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONROBBANAX2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMX2S.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMX2S.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.TABSHEETV3V.CAPTION:='3 RAK''AT VITR VOJIB';
  FormMain.LABELNIYATV3V.CAPTION:='Ka''ba tomonga yuzlanib «Vitr vojib namozini xolis Alloh uchun o''qishga niyat qildim» mazmunida niyat qilinadi.';
  FormMain.LABELTAKBIRKIRISHV3V.CAPTION:='Ikki qo''l kaftini qiblaga qarata ko''tarib, bosh barmoq quloq yumshog''iga tekkiziladi va «Allohu akbar» deya takbir aytish bilan namoz boshlanadi. Ayollar qo''llarini elkalari baravarigacha ko''taradilar.';
  FormMain.BUTTONTAKBIRKIRISHV3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSANOV3V.CAPTION:='Qo''llarni qovushtirgan holda kindik ostida tutib «Sano» («Subhanakallohumma...») o''qiladi. Ayollar qo''llarini bog''lab ko''kraklari ustida ushlab turadilar.';
  FormMain.LABELTAAVVUZV3V.CAPTION:='Ta''avvuz («A''uzu billahi...») o''qiladi.';
  FormMain.LABELBASMALA1V3V.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA1V3V.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELIXLOSV3V.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONSANOV3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTAAVVUZV3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONIXLOSV3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU1V3V.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi. Ruku''da erkaklar tizzalarini bukmasdan tik holatda tursalar, ayollar esa tizzalarini ozroq bukib turadilar. Erkaklar tizzalariga tayanganda barmoqlari orasi biroz ochiq holatda bo''ladilar, ayollar esa barmoqlari orasini ochmasdan tizza to''pig''ini ushlab turadilar.';
  FormMain.LABELAZIYM1V3V.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH1V3V.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD1V3V.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA1_1V3V.CAPTION:='«Allohu akbar» deb erga avval tizzalar, keyin kaftlar, so''ng burun va peshona qo''yilib, sajda qilinadi. Bunda tirsaklar erga va biqinlarga tekkizilmaydi, barcha a''zolar, xususan, oyoq barmoqlari iloji boricha qiblaga yuzlantiriladi. Ayollar aksincha tirsaklarini erga va biqinlariga tekkizib, qorinlarini sonlariga yopishtirib, yig''inlinqirab sajda qiladilar.';
  FormMain.LABELALA1_1V3V.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA1V3V.CAPTION:='«Allohu akbar», deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAJDA1_2V3V.CAPTION:='«Allohu akbar» deb ikkinchi marta sajda qilinadi.';
  FormMain.LABELALA1_2V3V.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA1_2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA1_2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM2V3V.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay ikkinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.LABELBASMALA2V3V.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.LABELFOTIHA2V3V.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.LABELFALAQV3V.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONTAKBIRQIYOM2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONBASMALA2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFOTIHA2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONFALAQV3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU2V3V.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.LABELAZYIM2V3V.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONAZIYM2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH2V3V.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.LABELHAMD2V3V.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONSAMIALLOH2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONHAMD2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_1V3V.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_1V3V.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA2V3V.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA2_2V3V.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.LABELALA2_2V3V.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONTAKBIRSAJDA2_2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONALA2_2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA1V3V.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.BUTTONTAKBIRQADA1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTASHAHHUD1V3V.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.BUTTONTASHAHHUD1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQIYOM3V3V.CAPTION:='«Allohu akbar» deb hech narsaga suyanmay uchinchi rak''atni o''qish uchun o''rindan turiladi.';
  FormMain.BUTTONTAKBIRQIYOM3V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELBASMALA3V3V.CAPTION:='Basmala («Bismillah...») o''qiladi.';
  FormMain.BUTTONBASMALA3V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELFOTIHA3V3V.CAPTION:='Fotiha surasi o''qiladi. Fotiha surasi tugagach, maxfiy tarzda «Omin» deyiladi.';
  FormMain.BUTTONFOTIHA3V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELNASV3V.CAPTION:='Zam sura o''qiladi.';
  FormMain.BUTTONNASV3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELQUNUT.CAPTION:='Qunut duosi o''qiladi.';
  FormMain.BUTTONQUNUT.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQUNUT.CAPTION:='«Allohu akbar» deb, qo''llar quloqlar to''g''risigacha ko''tarilib, yana kindik ostiga qo''yiladi.';
  FormMain.BUTTONTAKBIRQUNUT.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRRUKU3V3V.CAPTION:='«Allohu akbar» deb egilib ruku''ga boriladi.';
  FormMain.BUTTONAZIYM3V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELAZYIM3V3V.CAPTION:='Uch marta «Subhana Robbiyal ''aziym» deyiladi.';
  FormMain.BUTTONTAKBIRRUKU3V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSAMIALLOH3V3V.CAPTION:='Belni tiklayotib «Sami''allohu liman hamidah» deyiladi.';
  FormMain.BUTTONSAMIALLOH3V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELHAMD3V3V.CAPTION:='To''la tiklanib bo''lgach «Robbana lakal hamd» deyiladi.';
  FormMain.BUTTONHAMD3V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_1V3V.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_1V3V.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_1V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRJALSA3V3V.CAPTION:='«Allohu akbar» deb sajdadan bosh ko''tariladi va chap oyoqni to''shab, o''ng oyoq kiftini tik qilib, barmoqlar qiblaga yuzlantirilgan, ikki qo''lning kafti uchi tizza barobariga qo''yilgan holda o''tiriladi.';
  FormMain.BUTTONTAKBIRJALSA3V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRSAJDA3_2V3V.CAPTION:='«Allohu akbar» deb sajda qilinadi.';
  FormMain.BUTTONTAKBIRSAJDA3_2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELALA3_2V3V.CAPTION:='Sajdada uch marta «Subhana Robbiyal ''ala» deyiladi.';
  FormMain.BUTTONALA3_2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTAKBIRQADA2V3V.CAPTION:='«Allohu akbar» deb cajdadan so''ng o''ng oyog''ini tiklab, chap oyog''i ustiga o''tiriladi. Ayollar ikki oyoqlarini o''ng tarafga qaratib, chap dumbalari ustiga o''tiradilar.';
  FormMain.LABELTASHAHHUD2V3V.CAPTION:='«Tashahhud» («Attahiyyat...») o''qiladi.';
  FormMain.LABELSALAVOTV3V.CAPTION:='Ikki salavot («Allohumma! Solli ''ala...» va «Allohumma! Barik ''ala...») o''qiladi.';
  FormMain.LABELROBBANAV3V.CAPTION:='Duo («Robbana...») o''qiladi.';
  FormMain.BUTTONTAKBIRQADA2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONTASHAHHUD2V3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONSALAVOTV3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.BUTTONROBBANAV3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELSALOMV3V.CAPTION:='So''ngra avval o''ng elkaga, keyin chap elkaga «Assalomu alaykum va rahmatulloh», deb salom beradi. Shu bilan ikki rak''at namoz yakunlanadi.';
  FormMain.BUTTONSALOMV3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELTASBEHV3V.CAPTION:='Har vaqt namozni tugatgandan so''ng tasbehot qilinsa savobi ulug'' bo''ladi.';
  FormMain.BUTTONTASBEHV3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELKURSIV3V.CAPTION:='Namozdan keyin Kursiy oyatini (Oyatal Kursiy) o''qish ham savobli.';
  FormMain.BUTTONKURSIV3V.CAPTION:='Batafsil (o''qish va eshitish)';
  FormMain.LABELXUFTON.CAPTION:='Xufton namozining vaqti – shafaq batamom yo''qolgandan keyin kiradi. Vitr namozi vaqti esa xufton o''qilgandan keyingina kiradi. Xufton va vitr namozlarini subhi sodiqqacha o''qisa bo''ladi. Xufton namozini kechaning uchdan biriga olib borib o''qish afzal va nihoyatda a''lo bo''ladi. Vitr namozini esa tun oxirida uyg''onishga qodir bo''lgan kishilar subh oldidan o''qisalar, mustahab amal qilgan bo''lishadi.';
  FormMain.BUTTONPREVIOUS.HINT:='Oldingi';
  FormMain.BUTTONNEXT.HINT:='Keyingi';
  FormMain.MENUITEMFILE.CAPTION:='Fayl';
  FormMain.MENUITEMEXIT.CAPTION:='Chiqish';
  FormMain.MENUITEMTOOLS.CAPTION:='Asboblar';
  FormMain.MENUITEMSETTINGS.CAPTION:='Sozlamalar';
  FormMain.MENUITEMHELP.CAPTION:='Yordam';
  FormMain.MENUITEMABOUT.CAPTION:='Dastur haqida';
  FormDetails.LABELAZONBOMDODDESC.CAPTION:=#13#10'Azon namoz vaqti kirganidan ogohlantiruvchi, namozga chorlovchi chaqiriqdir. Kundalik besh vaqt namoz va juma namozlari uchun azon aytish ta''kidlangan sunnatdir. Azon namoz vaqti kirgach, tahorat bilan qiblaga yuzlanib, tik turgan holda ikki qo''lning ko''rsatkich barmoqlarini quloq ichiga qo''yib, baland ovozda, dona-dona qilib aytiladi. Muazzin «Hayya ''las-solah» kalimasida boshini o''ng tarafga, «Hayya ''alal-falah» kalimasida chap tarafga buradi. Azonni eshitgan kishi ishdan, masjiddan boshqa tomonga yurishdan, so''zlashdan to''xtaydi. Muazzinning ortidan azon kalimalarini aytib turadi. Muazzin «Hayya ''alas-solah», deganida «Laa havla va laa quvvata illaa billahil ''aliyyil-a''ziym», deydi, «Hayya ''alal falah», deganida esa «Maa sha Allohu kaana vama alam yasha'' lam yakun», deydi. Safarda va jome'' masjidlarida azonni tark qilish makruh, biroq shahar ichidagi xonadonlarda uni tark etish makruh emas. Junub, aqldan ozgan, fosiq, mast, tahoratsiz kishilar, aqlsiz bolalar va ayollarning azon aytishlari makruhdir. Qazo namozlari uchun azon aytiladi. Hayit namozlari hamda janoza namoziga azon aytilmaydi.';
  FormDetails.LABELAZONBOMDODTRANS.CAPTION:='Allohu akbar Allohu akbar'#13#10'Allohu akbar Allohu akbar'#13#10'Ashhadu allaa ilaaha illalloh'#13#10'Ashhadu allaa ilaaha illalloh'#13#10'Ashhadu anna Muhammadar rasuululloh'#13#10'Ashhadu anna Muhammadar rasuululloh'#13#10'Hayya ''las-solaah'#13#10'Hayya ''las-solaah'#13#10'Hayya ''alal-falaah'#13#10'Hayya ''alal-falaah'#13#10'As-solatu xoyrum minan-navm'#13#10'As-solatu xoyrum minan-navm'#13#10'Allohu akbar Allohu akbar'#13#10'Laa ilaaha illalloh';
  FormDetails.LABELAZONBOMDODUZ.CAPTION:='Ma''nosi:'#13#10'Alloh ulug''dir Alloh ulug''dir'#13#10'Alloh ulug''dir Alloh ulug''dir'#13#10'Guvohlik beramanki, Allohdan boshqa iloh yo''q'#13#10'Guvohlik beramanki, Allohdan boshqa iloh yo''q'#13#10'Guvohlik beramanki, Muhammad Allohning payg''ambaridir'#13#10'Guvohlik beramanki, Muhammad Allohning payg''ambaridir'#13#10'Namozga kelingiz'#13#10'Namozga kelingiz'#13#10'Najotga kelingiz'#13#10'Najotga kelingiz'#13#10'Namoz uyqudan afzal'#13#10'Namoz uyqudan afzal'#13#10'Alloh ulug''dir Alloh ulug''dir'#13#10'Allohdan o''zga iloh yo''q';
  FormDetails.LABELAZONDESC.CAPTION:='Azon namoz vaqti kirganidan ogohlantiruvchi, namozga chorlovchi chaqiriqdir. Kundalik besh vaqt namoz va juma namozlari uchun azon aytish ta''kidlangan sunnatdir. Azon namoz vaqti kirgach, tahorat bilan qiblaga yuzlanib, tik turgan holda ikki qo''lning ko''rsatkich barmoqlarini quloq ichiga qo''yib, baland ovozda, dona-dona qilib aytiladi. Muazzin «Hayya ''las-solah» kalimasida boshini o''ng tarafga, «Hayya ''alal-falah» kalimasida chap tarafga buradi. Azonni eshitgan kishi ishdan, masjiddan boshqa tomonga yurishdan, so''zlashdan to''xtaydi. Muazzinning ortidan azon kalimalarini aytib turadi. Muazzin «Hayya ''alas-solah», deganida «Laa havla va laa quvvata illaa billahil ''aliyyil-a''ziym», deydi, «Hayya ''alal falah», deganida esa «Maa sha Allohu kaana vama alam yasha'' lam yakun», deydi. Safarda va jome'' masjidlarida azonni tark qilish makruh, biroq shahar ichidagi xonadonlarda uni tark etish makruh emas. Junub, aqldan ozgan, fosiq, mast, tahoratsiz kishilar, aqlsiz bolalar va ayollarning azon aytishlari makruhdir. Qazo namozlari uchun azon aytiladi. Hayit namozlari hamda janoza namoziga azon aytilmaydi.';
  FormDetails.LABELAZONTRANS.CAPTION:=#13#10'Allohu akbar Allohu akbar'#13#10'Allohu akbar Allohu akbar'#13#10'Ashhadu allaa ilaaha illalloh'#13#10'Ashhadu allaa ilaaha illalloh'#13#10'Ashhadu anna Muhammadar rasuululloh'#13#10'Ashhadu anna Muhammadar rasuululloh'#13#10'Hayya ''las-solaah'#13#10'Hayya ''las-solaah'#13#10'Hayya ''alal-falaah'#13#10'Hayya ''alal-falaah'#13#10'Allohu akbar Allohu akbar'#13#10'Laa ilaaha illalloh';
  FormDetails.LABELAZONUZ.CAPTION:='Ma''nosi:'#13#10'Alloh ulug''dir Alloh ulug''dir'#13#10'Alloh ulug''dir Alloh ulug''dir'#13#10'Guvohlik beramanki, Allohdan boshqa iloh yo''q'#13#10'Guvohlik beramanki, Allohdan boshqa iloh yo''q'#13#10'Guvohlik beramanki, Muhammad Allohning payg''ambaridir'#13#10'Guvohlik beramanki, Muhammad Allohning payg''ambaridir'#13#10'Namozga kelingiz'#13#10'Namozga kelingiz'#13#10'Najotga kelingiz'#13#10'Najotga kelingiz'#13#10'Alloh ulug''dir Alloh ulug''dir'#13#10'Allohdan o''zga iloh yo''q';
  FormDetails.LABELAZONDUOTRANS.CAPTION:='Allohumma! Robba hazihid-da''vatit tammah. Vassolatil qoimah, ati Muhammadanil vasiylata val faziylah. Vab''ashu maqomam mahmudanillaziy va''adtah. Varzuqna shafa''atahu yavmal qiyomah. Innaka laa tuxliful miy''ad.';
  FormDetails.LABELAZONDUOUZ.CAPTION:='Ma''nosi:'#13#10'Ey ushbu mukammal duo va hamda abadiy salavot Parvardigori. Muhammad alayhissalomning martabalarini ulug'' qilib, ne''matlaringni unga bisyor qilgaysan, ul zotga O''zing va''da qilgan makomi mahmudni (jannatdagi o''rinni) ato etgaysan. Qiyomatda bizga uning shafoatini nasib etgaysan. Sen zinhor va''daga xilof qilmaysan.';
  FormDetails.LABELIQOMATDESC.CAPTION:='Kundalik besh vaqt namoz va juma namozlari uchun iqomat aytish ta''kidlangan sunnatdir. Safarda va jome'' masjidlarida iqomatni tark qilish makruh, biroq shahar ichidagi xonadonlarda uni tark etish makruh emas. Junub kishining iqomat aytishi makruhdir. Iqomat farz namozlari oldidan aytiladi. Qazo namozlari uchun iqomat aytiladi. Hayit namozlari hamda janoza namoziga iqomat aytilmaydi.';
  FormDetails.LABELIQOMATTRANS.CAPTION:=#13#10'Allohu akbar Allohu akbar'#13#10'Allohu akbar Allohu akbar'#13#10'Ashhadu allaa ilaaha illalloh'#13#10'Ashhadu allaa ilaaha illalloh'#13#10'Ashhadu anna Muhammadar rasuululloh'#13#10'Ashhadu anna Muhammadar rasuululloh'#13#10'Hayya ''las-solaah'#13#10'Hayya ''las-solaah'#13#10'Hayya ''alal-falaah'#13#10'Hayya ''alal-falaah'#13#10'Qod qomatis-solah Qod qomatis-solah'#13#10'Allohu akbar Allohu akbar'#13#10'Laa ilaaha illalloh';
  FormDetails.LABELIQOMATUZ.CAPTION:='Ma''nosi:'#13#10'Alloh ulug''dir Alloh ulug''dir'#13#10'Alloh ulug''dir Alloh ulug''dir'#13#10'Guvohlik beramanki, Allohdan boshqa iloh yo''q'#13#10'Guvohlik beramanki, Allohdan boshqa iloh yo''q'#13#10'Guvohlik beramanki, Muhammad Allohning payg''ambaridir'#13#10'Guvohlik beramanki, Muhammad Allohning payg''ambaridir'#13#10'Namozga kelingiz'#13#10'Namozga kelingiz'#13#10'Najotga kelingiz'#13#10'Najotga kelingiz'#13#10'Namoz boshlanib qoldi Namoz boshlanib qoldi'#13#10'Alloh ulug''dir Alloh ulug''dir'#13#10'Allohdan o''zga iloh yo''q';
  FormDetails.LABELTAKBIRTRANS.CAPTION:='Allohu akbar';
  FormDetails.LABELTAKBIRUZ.CAPTION:='Ma''nosi:'#13#10'Alloh ulug''dir';
  FormDetails.LABELSANOTRANS.CAPTION:='Subhanakallohumma va bihamdika va tabarokasmuka va ta''ala jadduka va la ilaha g''oyruk';
  FormDetails.LABELSANOUZ.CAPTION:='Ma''nosi:'#13#10'Allohim! Seni pok Zot deb yod kilurman. Sening isming muborakdir. Martabang ulug''dir. Sendan o''zga iloh yo''qdir.';
  FormDetails.LABELTAAVVUZTRANS.CAPTION:='A''uzu billahi minash shaytonir rojiym';
  FormDetails.LABELTAAVVUZUZ.CAPTION:='Ma''nosi:'#13#10'Allohning dargohidan quvilgan shayton yomonligidan Allohning panohiga qochaman';
  FormDetails.LABELBASMALATRANS.CAPTION:='Bismillahir rohmanir rohiym';
  FormDetails.LABELBASMALAUZ.CAPTION:='Ma''nosi:'#13#10'Mehribon va rahmli Alloh nomi bilan (boshlayman)';
  FormDetails.LABELFOTIHATRANS.CAPTION:=#13#10'Alhamdu lillahi robbil ''alamiyn'#13#10'Ar-rohmanir-rohiym'#13#10'Maliki yavmiddiyn'#13#10'Iyyaka na''budu va iyyaka nasta''in'#13#10'Ihdinas sirotol mustaqiym'#13#10'Cirotol-laziyna an''amta ''alayhim'#13#10'G''oyril mag''zubi ''alayhim valazzolliyn';
  FormDetails.LABELFOTIHAUZ.CAPTION:='Ma''nosi:'#13#10'Barcha maqtov, shukrlar olamlarning Robbi Allohga bo''lsin'#13#10'U Rohman va Rahiymdir'#13#10'U qiyomat kunining egasi'#13#10'Faqat sengagina ibodat qilamiz va faqat sendangina yordam so''raymiz'#13#10'Bizni to''g''ri yo''lga boshlagin'#13#10'O''zing ne''mat berganlarning yo''liga (boshlagin),'#13#10'G''azabga duchor bo''lganlarning yo''liga emas, adashganlarnikiga ham emas';
  FormDetails.LABELKAVSARUZ.CAPTION:=#13#10'Innaa a''toynakal kavsar'#13#10'Fasolli lirobbika vanhar'#13#10'Inna shaniaka huval abtar';
  FormDetails.LABELKAVSARTRANS.CAPTION:='Ma''nosi:'#13#10'Albatta, Biz senga Kavsarni berdik'#13#10'Bas, Robbingga namoz o''qi va jonlik so''y'#13#10'Albatta, seni yomon ko''rib, ayblovchining orqasi kesikdir';
  FormDetails.LABELIXLOSTRANS.CAPTION:=#13#10'Qul huvallohu ahad'#13#10'Allohus-somad'#13#10'Lam yalid va lam yulad'#13#10'Va lam yakullahu kufuvan ahad';
  FormDetails.LABELIXLOSUZ.CAPTION:='Ma''nosi:'#13#10'Ayt: «U Alloh yagonadir»'#13#10'Alloh somaddir'#13#10'U tug''magan va tug''ilmagan'#13#10'Va Unga hech kim teng bo''lmagan';
  FormDetails.LABELFALAQTRANS.CAPTION:=#13#10'Qul a''uzu birobbil falaq'#13#10'Min sharri ma xolaq'#13#10'Va min sharri g''osiqin iza vaqob'#13#10'Va min sharrin naffasati fil ''uqod'#13#10'Va min sharri hasidin iza hasad';
  FormDetails.LABELFALAQUZ.CAPTION:='Ma''nosi:'#13#10'Tong Robbisidan panoh so''rayman'#13#10'U yaratgan narsalar yomonligidan'#13#10'Va kirib kelgan qorong''ulik yomonligidan'#13#10'Va tugunlarga dam soluvchilar yomonligidan'#13#10'Va hasad qilgan hasadchining yomonligidan, deb ayt';
  FormDetails.LABELNASTRANS.CAPTION:=#13#10'Qul a''uzu birrobin-nas'#13#10'Malikin-nas'#13#10'Ilahin-naas'#13#10'Min sharril-vasvasil xonnas'#13#10'Allazi yuvasvisufi sudurin-nas'#13#10'Minal jinnati van-nas';
  FormDetails.LABELNASUZ.CAPTION:='Ma''nosi:'#13#10'Odamlar Robbisidan'#13#10'Odamlar Podshohidan'#13#10'Odamlar Ilohidan panoh so''rayman'#13#10'Berkinib, ko''rinib turuvchi vasvosning'#13#10'Odamlar qalbiga vasvasa soladiganning'#13#10'Jinlardan va odamlardan bo''lganning yomonligidan, deb ayt';
  FormDetails.LABELAZIYMTRANS.CAPTION:='Subhana Robbiyal ''aziym';
  FormDetails.LABELAZIYMUZ.CAPTION:='Ma''nosi:'#13#10'Ulug'' Robbim pokdir';
  FormDetails.LABELSAMIALLOHTRANS.CAPTION:='Sami''allohu liman hamidah';
  FormDetails.LABELSAMIALLOHUZ.CAPTION:='Ma''nosi:'#13#10'Alloh O''ziga hamd aytgan kishini eshitadi';
  FormDetails.LABELHAMDTRANS.CAPTION:='Robbana lakal hamd';
  FormDetails.LABELHAMDUZ.CAPTION:='Ma''nosi:'#13#10'Robbimiz! Maqtov Sengadir';
  FormDetails.LABELALATRANS.CAPTION:='Subhana Robbiyal ''ala';
  FormDetails.LABELALAUZ.CAPTION:='Ma''nosi:'#13#10'Oliy Robbim pokdir';
  FormDetails.LABELTASHAHHUDTRANS.CAPTION:='At-tahiyyatu lillahi vas-solavatu vat-toyyibat. Assalamu ''alayka ayyuhan-nabiyyu va rohmatullohi va barokatuh. Assalamu ''alayna va a''la ''ibadillahis solihiyn. Ashhadu alla ilaha illallohu va ashhadu anna Muhammadan ''abduhu va rosuluhu.';
  FormDetails.LABELTASHAHHUDUZ.CAPTION:='Ma''nosi:'#13#10'Barokatli tabriklar va pokiza salavotlar Alloh uchundir. Ey Nabiy! Senga salom, Allohning rahmati va barakasi bo''lsin. Bizlarga va Allohning solih bandalariga salom bo''lsin. Allohdan o''zga iloh yo''q deb guvohlik beraman va albatta, Muhammad – Allohning Rasuli deb guvohlik beraman.';
  FormDetails.LABELSALAVOTTRANS.CAPTION:='Allohumma! Solli ''ala Muhammadiv va ''ala ali Muhammad. Kama sollayta ''ala Ibrohima va ''ala ali Ibrohim. Innaka hamidum majiyd. Allohumma! Barik ''ala Muhammadiv va ''ala ali Muhammad. Kama barokta ''ala Ibrohima va ''ala ali Ibrohim. Innaka hamidum majiyd.';
  FormDetails.LABELSALAVOTUZ.CAPTION:='Ma''nosi:'#13#10'Allohim! Ibrohimga va Ibrohimning ahli baytlariga O''z rahmatingni nozil qilganingdek, Muhammadga va Muhammadning oila a''zolariga O''zingning ziyoda rahmatlaringni nozil qilgin! Albatta, Sen maqtalgan, ulug''langan Zotsan! Allohim! Ibrohimga va Ibrohimning ahli baytlariga O''z barakangni nozil qilganingdek, Muhammadga va Muhammadning oila a''zolariga O''z barakangni nozil qilgin! Albatta, Sen maqtalgan, ulug''langan Zotsan!';
  FormDetails.LABELROBBANATRANS.CAPTION:='Robbana! Atina fid dunya hasanatav va fil axiroti hasanatav-va qina ''azaban nar';
  FormDetails.LABELROBBANAUZ.CAPTION:='Ma''nosi:'#13#10'Robbimiz! Bizlarga dunyoda ham, oxiratda ham yaxshilik ber va do''zax azobidan asra';
  FormDetails.LABELSALOMTRANS.CAPTION:='Assalomu alaykum va rahmatulloh';
  FormDetails.LABELSALOMUZ.CAPTION:='Ma''nosi:'#13#10'Sizlarga Allohning salomi va rahmati bo''lsin';
  FormDetails.LABELQUNUTTRANS.CAPTION:='Allohumma! Innaa nasta''iynuka va nastag''firuk.'#13#10'Va nu''minu bika va natavakkalu ''alayka va nusniy ''alaykal xoyr.'#13#10'Nashkuruka va la nakfuruk.'#13#10'Va naxla''u va natruku man yafjuruk.'#13#10'Allohumma! Iyyaka na''budu va laka nusolliy va nasjudu,'#13#10'va ilayka nas''a va nahfidu, narju rohmataka va naxsha ''azabaka,'#13#10'inna ''azabaka bil kuffari mulhiq';
  FormDetails.LABELQUNUTUZ.CAPTION:='Ma''nosi:'#13#10'Allohim! Albatta, Sendan yordam so''raymiz, Sendan hidoyat so''raymiz,'#13#10'Senga istig''for aytamiz va Senga tavba qilamiz.'#13#10'Senga iymon keltiramiz va Senga tavakkal qilamiz.'#13#10'Senga shukr qilamiz, kufr keltirmaymiz.'#13#10'Va kim Senga fojirlik qilsa, uni ajratamiz va tark qilamiz.'#13#10'Allohim! Sengagina ibodat qilamiz, Sengagina namoz o''qiymiz va sajda qilamiz,'#13#10'Sengagina intilamiz va shoshilamiz.'#13#10'Va Sening rahmatingni umid qilamiz va azobingdan qo''rqamiz.'#13#10'Albatta, azobing kofirlarga etguvchidir.';
  FormDetails.LABELDUOTRANS.CAPTION:='Allohumma, antas-salam va minkas-salam, tabarokta ya zaljalali val-ikrom';
  FormDetails.LABELDUOUZ.CAPTION:='Ma''nosi:'#13#10'Allohim! Sen Salomsan, salomatlik Sendandir. Sen Tabarruksan, ey jalol va ikrom egasi';
  FormDetails.LABELSUBHANALLOHTRANS.CAPTION:=#13#10'Subhanalloh (33 marta)';
  FormDetails.LABELSUBHANALLOHUZ.CAPTION:='Ma''nosi:'#13#10'Allohni poklab zikr etaman';
  FormDetails.LABELALHAMDULILLAHTRANS.CAPTION:=#13#10'Alhamdulillah (33 marta)';
  FormDetails.LABELALHAMDULILLAHUZ.CAPTION:='Ma''nosi:'#13#10'Maqtovlar Allohga xosdir';
  FormDetails.LABELTAKBIRTRANS1.CAPTION:=#13#10'Allohu akbar (33 marta)';
  FormDetails.LABELTAKBIRUZ1.CAPTION:='Ma''nosi:'#13#10'Alloh ulug''dir';
  FormDetails.LABELTAVHIDTRANS.CAPTION:='La ilaha illallohu vahdahu la sharika lahu, lahul mulku va lahul hamdu va huva ''ala kulli shay''in qodir';
  FormDetails.LABELTAVHIDUZ.CAPTION:='Ma''nosi:'#13#10'Allohdan o''zga iloh yo''q. U yagonadir, sherigi yo''q, butun mulk Unikidir. Hamd-maqtov Unga xosdir. Va U har narsaga qodir zotdir.';
  FormDetails.LABELKURSITRANS.CAPTION:=#13#10'Allohu la ilaha illa huval hayyul qoyyum.'#13#10'La ta''xuzuhu cinatuv va la navm.'#13#10'Lahu ma fis-samavati va ma fil ard.'#13#10'Man-zallazii yashfa''u ''indahu illa bi iznih.'#13#10'Ya''lamu ma bayna aydiyhim va ma xolfahum.'#13#10'Va la yuhituna bishay''im-min ''ilmihii illa bima sha.'#13#10'Vasi''a kursiyyuuhus-samaavati val-ard.'#13#10'Va la yauduhu hifzuhuma'#13#10'Va huval ''aliyyul ''aziym';
  FormDetails.LABELKURSIUZ.CAPTION:='Ma''nosi:'#13#10'Alloh – Undan o''zga iloh yo''q. U Hayy va Qayyumdir.'#13#10'Uni mudroq ham, uyqu ham olmas.'#13#10'Osmonlaru erdagi narsalar Unikidir.'#13#10'Uning huzurida O''zining iznisiz hech kim shafoat qila olmas.'#13#10'Ularning oldilaridagi narsani ham, ortlaridagi narsani ham bilur.'#13#10'Uning ilmidan O''zi xohlaganidan boshqa hech narsani ihota qila olmaslar.'#13#10'Uning Kursisi osmonlaru erni qamragan.'#13#10'Ularni muhofaza qilish unga og''ir kelmas.'#13#10'Va U Aliy va Aziymdir.';
  FormDetails.BUTTONPLAY.HINT:='Ijro ettirish';
  FormDetails.BUTTONSTOP.HINT:='To''xtatish';
  FormDetails.BUTTONPAUSE.HINT:='Pauza';
  FormSettings.CAPTION:='Sozlamalar';
  FormSettings.BUTTONPANEL1.OKBUTTON.CAPTION:='Ha';
  FormSettings.BUTTONPANEL1.CANCELBUTTON.CAPTION:='Bekor qilish';
  FormSettings.GROUPBOXTRAY.CAPTION:='Trey';
  FormSettings.LABELTIMEOUT.CAPTION:='Aks ettirilish vaqti (soniya)';
  FormSettings.LABELINTERVAL.CAPTION:='Interval (daqiqa)';
  FormSettings.CHECKBOX1.CAPTION:='Treyda namozdagi amallarni ko''rsatish';
  FormSettings.GROUPBOXINTERFACE.CAPTION:='Interfeys';
  FormSettings.GroupBox1.Caption:='Dastur ishga tushirilganda';
  FormSettings.RadioButton0.Caption:='boshdan boshlansin';
  FormSettings.RadioButton1.Caption:='qolgan joydan davom ettirilsin';
  FormSettings.COMBOBOXTranslit.TEXT:='Lotin';
  FormSettings.LABELTRANSLIT.CAPTION:='Transliteratsiya:';
  FormAbout.CAPTION:='Dastur haqida';
  FormAbout.TABSHEETNAMOZXON.CAPTION:='Namozxon';
  FormAbout.LABELBASMALA.CAPTION:='Bismillahir rohmanir rohiym';
  FormAbout.LABELNAME.CAPTION:='Namozxon 2.2';
  FormAbout.LABELCOPYRIGHT.CAPTION:='Mualliflik huquqi © 2015-2016 Umidjon Almasov';
  FormAbout.LABELDESCRIPTION.CAPTION:='Bepul va ochiq kodli namozni o''rgatadigan multimedia dasturi.';
  FormAbout.LABELQURON.CAPTION:='Alloh taolo shunday marhamat etadi:'#13#10'«Namozni to''kis ado qiling, zakotni bering va ruku'' qiluvchilar bilan ruku'' qiling» (Baqara surasi, 43-oyat).';
  FormAbout.LABELHADIS.CAPTION:='Rasuli Akramdan: «Qaysi amal afzal (Allohga sevimliroq)?», deb so''rashganida: «Vaqtida o''qilgan namoz», deb javob berganlar (Imom Buxoriy va Muslim rivoyat qilishgan).';
  FormAbout.TABSHEETLICENSE.CAPTION:='Litsenziya';
  FormAbout.TABSHEETBASSLICENSE.CAPTION:='BASS litsenziyasi';
  Azon:='Azon';
  AzonDuo:='Azon duosi';
  Iqomat:='Iqomat';
  Takbir:='Takbir';
  Sano:='Sano duosi';
  Taavvuz:='Ta''avvuz';
  Basmala:='Basmala';
  Fotiha:='Fotiha surasi';
  Kavsar:='Kavsar surasi';
  Ixlos:='Ixlos surasi';
  Falaq:='Falaq surasi';
  Nas:='Nas surasi';
  Aziym:='Subhana Robbiyal ''aziym';
  Samialloh:='Sami''allohu liman hamidah';
  Hamd:='Robbana lakal hamd';
  Ala:='Subhana Robbiyal ''ala';
  Tashahhud:='Tashahhud';
  Salavot:='Salavot';
  Robbana:='Robbana';
  Salom:='Salom';
  Qunut:='Qunut duosi';
  Duo:='Duo';
  Tasbeh:='Tasbeh';
  Kursi:='Oyatal Kursiy';
end;

// Рукнларга мос тасвир юклаш
procedure TFormMain.ProcedureImagesChange;
begin
  case PageControlMain.ActivePageIndex of
  0: case PageControlBomdod.ActivePageIndex of
     0: case PageControlB2S.ActivePage.Caption of
        'Кириш':ProcedureKirish;
        'Қиём': ProcedureQiyom;
        'Рукуъ': ProcedureRuku;
        'Қовма': ProcedureQovma;
        'Сажда': ProcedureSajda;
        'Жалса', 'Қаъда': ProcedureJalsa;
        'Салом':
          begin
            ProcedureSalom;
            ButtonNext.Visible:=false;
            ButtonPrevious.Visible:=true;
          end;
        end;
     1: case PageControlB2F.ActivePage.Caption of
        'Кириш':ProcedureKirish;
        'Қиём': ProcedureQiyom;
        'Рукуъ': ProcedureRuku;
        'Қовма': ProcedureQovma;
        'Сажда': ProcedureSajda;
        'Жалса', 'Қаъда': ProcedureJalsa;
        'Салом': ProcedureSalom;
        'Дуо':
          begin
            ProcedureDuo;
            ButtonNext.Visible:=false;
            ButtonPrevious.Visible:=true;
          end;
        end;
     end;
  1: case PageControlPeshin.ActivePageIndex of
     0: case PageControlP4S.ActivePage.Caption of
        'Кириш':ProcedureKirish;
        'Қиём': ProcedureQiyom;
        'Рукуъ': ProcedureRuku;
        'Қовма': ProcedureQovma;
        'Сажда': ProcedureSajda;
        'Жалса', 'Қаъда': ProcedureJalsa;
        'Салом':
          begin
            ProcedureSalom;
            ButtonNext.Visible:=false;
            ButtonPrevious.Visible:=true;
          end;
        end;
     1: case PageControlP4F.ActivePage.Caption of
        'Кириш':ProcedureKirish;
        'Қиём': ProcedureQiyom;
        'Рукуъ': ProcedureRuku;
        'Қовма': ProcedureQovma;
        'Сажда': ProcedureSajda;
        'Жалса', 'Қаъда': ProcedureJalsa;
        'Салом': ProcedureSalom;
        'Дуо':
          begin
            ProcedureDuo;
            ButtonNext.Visible:=false;
            ButtonPrevious.Visible:=true;
          end;
        end;
     2: case PageControlP2S.ActivePage.Caption of
        'Кириш':ProcedureKirish;
        'Қиём': ProcedureQiyom;
        'Рукуъ': ProcedureRuku;
        'Қовма': ProcedureQovma;
        'Сажда': ProcedureSajda;
        'Жалса', 'Қаъда': ProcedureJalsa;
        'Салом': ProcedureSalom;
        'Дуо':
          begin
            ProcedureDuo;
            ButtonNext.Visible:=false;
            ButtonPrevious.Visible:=true;
          end;
        end;
     end;
  2: case PageControlA4F.ActivePage.Caption of
        'Кириш':ProcedureKirish;
        'Қиём': ProcedureQiyom;
        'Рукуъ': ProcedureRuku;
        'Қовма': ProcedureQovma;
        'Сажда': ProcedureSajda;
        'Жалса', 'Қаъда': ProcedureJalsa;
        'Салом': ProcedureSalom;
        'Дуо':
          begin
            ProcedureDuo;
            ButtonNext.Visible:=false;
            ButtonPrevious.Visible:=true;
          end;
        end;
  3: case PageControlShom.ActivePageIndex of
     0: case PageControlSh3F.ActivePage.Caption of
        'Кириш':ProcedureKirish;
        'Қиём': ProcedureQiyom;
        'Рукуъ': ProcedureRuku;
        'Қовма': ProcedureQovma;
        'Сажда': ProcedureSajda;
        'Жалса', 'Қаъда': ProcedureJalsa;
        'Салом': ProcedureSalom;
        'Дуо':
          begin
            ProcedureDuo;
            ButtonNext.Visible:=false;
            ButtonPrevious.Visible:=true;
          end;
        end;
     1: case PageControlSh2S.ActivePage.Caption of
        'Кириш':ProcedureKirish;
        'Қиём': ProcedureQiyom;
        'Рукуъ': ProcedureRuku;
        'Қовма': ProcedureQovma;
        'Сажда': ProcedureSajda;
        'Жалса', 'Қаъда': ProcedureJalsa;
        'Салом': ProcedureSalom;
        'Дуо':
          begin
            ProcedureDuo;
            ButtonNext.Visible:=false;
            ButtonPrevious.Visible:=true;
          end;
        end;
     end;
  4: case PageControlXufton.ActivePageIndex of
     0: case PageControlX4F.ActivePage.Caption of
        'Кириш':ProcedureKirish;
        'Қиём': ProcedureQiyom;
        'Рукуъ': ProcedureRuku;
        'Қовма': ProcedureQovma;
        'Сажда': ProcedureSajda;
        'Жалса', 'Қаъда': ProcedureJalsa;
        'Салом': ProcedureSalom;
        'Дуо':
          begin
            ProcedureDuo;
            ButtonNext.Visible:=false;
            ButtonPrevious.Visible:=true;
          end;
        end;
     1: case PageControlX2S.ActivePage.Caption of
        'Кириш':ProcedureKirish;
        'Қиём': ProcedureQiyom;
        'Рукуъ': ProcedureRuku;
        'Қовма': ProcedureQovma;
        'Сажда': ProcedureSajda;
        'Жалса', 'Қаъда': ProcedureJalsa;
        'Салом':
          begin
            ProcedureSalom;
            ButtonNext.Visible:=false;
            ButtonPrevious.Visible:=true;
          end;
        end;
     2: case PageControlV3V.ActivePage.Caption of
        'Кириш':ProcedureKirish;
        'Қиём': ProcedureQiyom;
        'Рукуъ': ProcedureRuku;
        'Қовма': ProcedureQovma;
        'Сажда': ProcedureSajda;
        'Жалса', 'Қаъда': ProcedureJalsa;
        'Салом': ProcedureSalom;
        'Дуо':
          begin
            ProcedureDuo;
            ButtonNext.Visible:=false;
            ButtonPrevious.Visible:=true;
          end;
        end;
     end;
  end;
end;

// Трейда намоз амалларини кўрсатиш
procedure TFormMain.ProcedureAmallar;
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
          TrayIcon1.BalloonTitle:='НАМОЗНИНГ ШАРТЛАРИ';
        end;
      1:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namoz_ruknlari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namoz_ruknlari.txt')
          else StringListAmallar.Add('namoz_ruknlari.txt файли топилмади');
          TrayIcon1.BalloonTitle:='НАМОЗ РУКНЛАРИ';
        end;
      2:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozning_vojiblari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozning_vojiblari.txt')
          else StringListAmallar.Add('namozning_vojiblari.txt файли топилмади');
          TrayIcon1.BalloonTitle:='НАМОЗНИНГ ВОЖИБЛАРИ';
        end;
      3:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozning_sunnatlari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozning_sunnatlari.txt')
          else StringListAmallar.Add('namozning_sunnatlari.txt файли топилмади');
          TrayIcon1.BalloonTitle:='НАМОЗНИНГ СУННАТЛАРИ';
        end;
      4:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozning_mustahablari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozning_mustahablari.txt')
          else StringListAmallar.Add('namozning_mustahablari.txt файли топилмади');
          TrayIcon1.BalloonTitle:='НАМОЗНИНГ МУСТАҲАБЛАРИ';
        end;
      5:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozdagi_harom_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozdagi_harom_amallar.txt')
          else StringListAmallar.Add('namozdagi_harom_amallar.txt файли топилмади');
          TrayIcon1.BalloonTitle:='НАМОЗДАГИ ҲАРОМ АМАЛЛАР';
        end;
      6:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozning_mubohlari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozning_mubohlari.txt')
          else StringListAmallar.Add('namozning_mubohlari.txt файли топилмади');
          TrayIcon1.BalloonTitle:='НАМОЗНИНГ МУБОҲЛАРИ (РУХСАТ ЭТИЛГАНЛАРИ)';
        end;
      7:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozni_buzuvchi_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozni_buzuvchi_amallar.txt')
          else StringListAmallar.Add('namozni_buzuvchi_amallar.txt файли топилмади');
          TrayIcon1.BalloonTitle:='НАМОЗНИ БУЗУВЧИ АМАЛЛАР';
        end;
      8:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozdagi_makruh_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozdagi_makruh_amallar.txt')
          else StringListAmallar.Add('namozdagi_makruh_amallar.txt файли топилмади');
          TrayIcon1.BalloonTitle:='НАМОЗДАГИ МАКРУҲ АМАЛЛАР';
        end;
      9:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/makruh_bolmagan_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/makruh_bolmagan_amallar.txt')
          else StringListAmallar.Add('makruh_bolmagan_amallar.txt файли топилмади');
          TrayIcon1.BalloonTitle:='МАКРУҲ БЎЛМАГАН АМАЛЛАР';
        end;
      10:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/kirill/namozning_odoblari.txt') then
          StringListAmallar.LoadFromFile('amallar/kirill/namozning_odoblari.txt')
          else StringListAmallar.Add('namozning_odoblari.txt файли топилмади');
          TrayIcon1.BalloonTitle:='НАМОЗНИНГ ОДОБЛАРИ';
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
          TrayIcon1.BalloonTitle:='NAMOZNING SHARTLARI';
        end;
      1:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namoz_ruknlari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namoz_ruknlari.txt')
          else StringListAmallar.Add('namoz_ruknlari.txt fayli topilmadi');
          TrayIcon1.BalloonTitle:='NAMOZ RUKNLARI';
        end;
      2:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozning_vojiblari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozning_vojiblari.txt')
          else StringListAmallar.Add('namozning_vojiblari.txt fayli topilmadi');
          TrayIcon1.BalloonTitle:='NAMOZNING VOJIBLARI';
        end;
      3:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozning_sunnatlari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozning_sunnatlari.txt')
          else StringListAmallar.Add('namozning_sunnatlari.txt fayli topilmadi');
          TrayIcon1.BalloonTitle:='NAMOZNING SUNNATLARI';
        end;
      4:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozning_mustahablari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozning_mustahablari.txt')
          else StringListAmallar.Add('namozning_mustahablari.txt fayli topilmadi');
          TrayIcon1.BalloonTitle:='NAMOZNING MUSTAHABLARI';
        end;
      5:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozdagi_harom_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozdagi_harom_amallar.txt')
          else StringListAmallar.Add('namozdagi_harom_amallar.txt fayli topilmadi');
          TrayIcon1.BalloonTitle:='NAMOZDAGI HAROM AMALLAR';
        end;
      6:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozning_mubohlari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozning_mubohlari.txt')
          else StringListAmallar.Add('namozning_mubohlari.txt fayli topilmadi');
          TrayIcon1.BalloonTitle:='NAMOZNING MUBOHLARI (RUXSAT ETILGANLARI)';
        end;
      7:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozni_buzuvchi_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozni_buzuvchi_amallar.txt')
          else StringListAmallar.Add('namozni_buzuvchi_amallar.txt fayli topilmadi');
          TrayIcon1.BalloonTitle:='NAMOZNI BUZUVCHI AMALLAR';
        end;
      8:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozdagi_makruh_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozdagi_makruh_amallar.txt')
          else StringListAmallar.Add('namozdagi_makruh_amallar.txt fayli topilmadi');
          TrayIcon1.BalloonTitle:='NAMOZDAGI MAKRUH AMALLAR';
        end;
      9:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/makruh_bolmagan_amallar.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/makruh_bolmagan_amallar.txt')
          else StringListAmallar.Add('makruh_bolmagan_amallar.txt fayli topilmadi');
          TrayIcon1.BalloonTitle:='MAKRUH BO''LMAGAN AMALLAR';
        end;
      10:
        begin
          StringListAmallar.Clear;
          if FileExists ('amallar/lotin/namozning_odoblari.txt') then
          StringListAmallar.LoadFromFile('amallar/lotin/namozning_odoblari.txt')
          else StringListAmallar.Add('namozning_odoblari.txt fayli topilmadi');
          TrayIcon1.BalloonTitle:='NAMOZNING ODOBLARI';
        end;
      end;
    end;
    j:=Random(StringListAmallar.Count);
    TrayIcon1.BalloonHint:=StringListAmallar[j];
    TrayIcon1.Visible:=true;
    Trayicon1.ShowBalloonHint;
    Timer1.Enabled:=true;
  end
  else
  begin
    TrayIcon1.Visible:=false;
    Timer1.Enabled:=false;
  end;
end;

// Дастур ҳақида ойнасини кўрсатиш
procedure TFormMain.MenuItemAboutClick(Sender: TObject);
begin
  FormAbout.ShowModal;
end;

// Дастурдан чиқиш
procedure TFormMain.MenuItemExitClick(Sender: TObject);
begin
  Close;
end;

// Созламалар ойнасини кўрсатиш
procedure TFormMain.MenuItemSettingsClick(Sender: TObject);
begin
  FormSettings.ShowModal;
end;

// Намозга кириш тасвирларини юклаш
procedure TFormMain.ProcedureKirish;
begin
  if FileExists ('tasvirlar/kirish-erkak.jpg') then
  ImageErkak.Picture.LoadFromFile('tasvirlar/kirish-erkak.jpg')
  else ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/kirish-ayol.jpg') then
  ImageAyol.Picture.LoadFromFile('tasvirlar/kirish-ayol.jpg')
  else ImageAyol.Picture.Clear;
  ButtonPrevious.Visible:=false;
  ButtonNext.Visible:=true;
end;

// Қиём тасвирларини юклаш
procedure TFormMain.ProcedureQiyom;
begin
  if FileExists ('tasvirlar/qiyom-erkak.jpg') then
  ImageErkak.Picture.LoadFromFile('tasvirlar/qiyom-erkak.jpg')
  else ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/qiyom-ayol.jpg') then
  ImageAyol.Picture.LoadFromFile('tasvirlar/qiyom-ayol.jpg')
  else ImageAyol.Picture.Clear;
  ButtonPrevious.Visible:=true;
  ButtonNext.Visible:=true;
end;

// Рукуъ тасвирларини юклаш
procedure TFormMain.ProcedureRuku;
begin
  if FileExists ('tasvirlar/ruku-erkak.jpg') then
  ImageErkak.Picture.LoadFromFile('tasvirlar/ruku-erkak.jpg')
  else ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/ruku-ayol.jpg') then
  ImageAyol.Picture.LoadFromFile('tasvirlar/ruku-ayol.jpg')
  else ImageAyol.Picture.Clear;
  ButtonPrevious.Visible:=true;
  ButtonNext.Visible:=true;
end;

// Қовма тасвирларини юклаш
procedure TFormMain.ProcedureQovma;
begin
  if FileExists ('tasvirlar/qovma-erkak.jpg') then
  ImageErkak.Picture.LoadFromFile('tasvirlar/qovma-erkak.jpg')
  else ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/qovma-ayol.jpg') then
  ImageAyol.Picture.LoadFromFile('tasvirlar/qovma-ayol.jpg')
  else ImageAyol.Picture.Clear;
  ButtonPrevious.Visible:=true;
  ButtonNext.Visible:=true;
end;

// Сажда тасвирларини юклаш
procedure TFormMain.ProcedureSajda;
begin
  if FileExists ('tasvirlar/sajda-erkak.jpg') then
  ImageErkak.Picture.LoadFromFile('tasvirlar/sajda-erkak.jpg')
  else ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/sajda-ayol.jpg') then
  ImageAyol.Picture.LoadFromFile('tasvirlar/sajda-ayol.jpg')
  else ImageAyol.Picture.Clear;
  ButtonPrevious.Visible:=true;
  ButtonNext.Visible:=true;
end;

// Жалса тасвирларини юклаш
procedure TFormMain.ProcedureJalsa;
begin
  if FileExists ('tasvirlar/jalsa-erkak.jpg') then
  ImageErkak.Picture.LoadFromFile('tasvirlar/jalsa-erkak.jpg')
  else ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/jalsa-ayol.jpg') then
  ImageAyol.Picture.LoadFromFile('tasvirlar/jalsa-ayol.jpg')
  else ImageAyol.Picture.Clear;
  ButtonPrevious.Visible:=true;
  ButtonNext.Visible:=true;
end;

// Салом тасвирларини юклаш
procedure TFormMain.ProcedureSalom;
begin
  if FileExists ('tasvirlar/salom-erkak.jpg') then
  ImageErkak.Picture.LoadFromFile('tasvirlar/salom-erkak.jpg')
  else ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/salom-ayol.jpg') then
  ImageAyol.Picture.LoadFromFile('tasvirlar/salom-ayol.jpg')
  else ImageAyol.Picture.Clear;
end;

// Дуо тасвирларини юклаш
procedure TFormMain.ProcedureDuo;
begin
  if FileExists ('tasvirlar/duo-erkak.jpg') then
  ImageErkak.Picture.LoadFromFile('tasvirlar/duo-erkak.jpg')
  else ImageErkak.Picture.Clear;
  if FileExists ('tasvirlar/duo-ayol.jpg') then
  ImageAyol.Picture.LoadFromFile('tasvirlar/duo-ayol.jpg')
  else ImageAyol.Picture.Clear;
end;

// Кейинги рукнга ўтиш тугмасини босиш
procedure TFormMain.ButtonNextClick(Sender: TObject);
begin
  case PageControlMain.ActivePageIndex of
  0: case PageControlBomdod.ActivePageIndex of
     0: case PageControlB2S.ActivePageIndex of
        0: begin
           ButtonPrevious.Visible:=true;
           PageControlB2S.ActivePageIndex:=1;
           end;
        1: PageControlB2S.ActivePageIndex:=2;
        2: PageControlB2S.ActivePageIndex:=3;
        3: PageControlB2S.ActivePageIndex:=4;
        4: PageControlB2S.ActivePageIndex:=5;
        5: PageControlB2S.ActivePageIndex:=6;
        6: PageControlB2S.ActivePageIndex:=7;
        7: PageControlB2S.ActivePageIndex:=8;
        8: PageControlB2S.ActivePageIndex:=9;
        9: PageControlB2S.ActivePageIndex:=10;
        10: PageControlB2S.ActivePageIndex:=11;
        11: PageControlB2S.ActivePageIndex:=12;
        12: PageControlB2S.ActivePageIndex:=13;
        13: begin
            ButtonNext.Visible:=false;
            PageControlB2S.ActivePageIndex:=14;
            end;
        end;
     1: case PageControlB2F.ActivePageIndex of
        0: begin
           ButtonPrevious.Visible:=true;
           PageControlB2F.ActivePageIndex:=1;
           end;
        1: PageControlB2F.ActivePageIndex:=2;
        2: PageControlB2F.ActivePageIndex:=3;
        3: PageControlB2F.ActivePageIndex:=4;
        4: PageControlB2F.ActivePageIndex:=5;
        5: PageControlB2F.ActivePageIndex:=6;
        6: PageControlB2F.ActivePageIndex:=7;
        7: PageControlB2F.ActivePageIndex:=8;
        8: PageControlB2F.ActivePageIndex:=9;
        9: PageControlB2F.ActivePageIndex:=10;
        10: PageControlB2F.ActivePageIndex:=11;
        11: PageControlB2F.ActivePageIndex:=12;
        12: PageControlB2F.ActivePageIndex:=13;
        13: PageControlB2F.ActivePageIndex:=14;
        14: begin
            ButtonNext.Visible:=false;
            PageControlB2F.ActivePageIndex:=15;
            end;
        end;
     end;
  1: case PageControlPeshin.ActivePageIndex of
     0: case PageControlP4S.ActivePageIndex of
        0: begin
           ButtonPrevious.Visible:=true;
           PageControlP4S.ActivePageIndex:=1;
           end;
        1: PageControlP4S.ActivePageIndex:=2;
        2: PageControlP4S.ActivePageIndex:=3;
        3: PageControlP4S.ActivePageIndex:=4;
        4: PageControlP4S.ActivePageIndex:=5;
        5: PageControlP4S.ActivePageIndex:=6;
        6: PageControlP4S.ActivePageIndex:=7;
        7: PageControlP4S.ActivePageIndex:=8;
        8: PageControlP4S.ActivePageIndex:=9;
        9: PageControlP4S.ActivePageIndex:=10;
        10: PageControlP4S.ActivePageIndex:=11;
        11: PageControlP4S.ActivePageIndex:=12;
        12: PageControlP4S.ActivePageIndex:=13;
        13: PageControlP4S.ActivePageIndex:=14;
        14: PageControlP4S.ActivePageIndex:=15;
        15: PageControlP4S.ActivePageIndex:=16;
        16: PageControlP4S.ActivePageIndex:=17;
        17: PageControlP4S.ActivePageIndex:=18;
        18: PageControlP4S.ActivePageIndex:=19;
        19: PageControlP4S.ActivePageIndex:=20;
        20: PageControlP4S.ActivePageIndex:=21;
        21: PageControlP4S.ActivePageIndex:=22;
        22: PageControlP4S.ActivePageIndex:=23;
        23: PageControlP4S.ActivePageIndex:=24;
        24: PageControlP4S.ActivePageIndex:=25;
        25: PageControlP4S.ActivePageIndex:=26;
        26: begin
            ButtonNext.Visible:=false;
            PageControlP4S.ActivePageIndex:=27;
            end;
        end;
     1: case PageControlP4F.ActivePageIndex of
        0: begin
           ButtonPrevious.Visible:=true;
           PageControlP4F.ActivePageIndex:=1;
           end;
        1: PageControlP4F.ActivePageIndex:=2;
        2: PageControlP4F.ActivePageIndex:=3;
        3: PageControlP4F.ActivePageIndex:=4;
        4: PageControlP4F.ActivePageIndex:=5;
        5: PageControlP4F.ActivePageIndex:=6;
        6: PageControlP4F.ActivePageIndex:=7;
        7: PageControlP4F.ActivePageIndex:=8;
        8: PageControlP4F.ActivePageIndex:=9;
        9: PageControlP4F.ActivePageIndex:=10;
        10: PageControlP4F.ActivePageIndex:=11;
        11: PageControlP4F.ActivePageIndex:=12;
        12: PageControlP4F.ActivePageIndex:=13;
        13: PageControlP4F.ActivePageIndex:=14;
        14: PageControlP4F.ActivePageIndex:=15;
        15: PageControlP4F.ActivePageIndex:=16;
        16: PageControlP4F.ActivePageIndex:=17;
        17: PageControlP4F.ActivePageIndex:=18;
        18: PageControlP4F.ActivePageIndex:=19;
        19: PageControlP4F.ActivePageIndex:=20;
        20: PageControlP4F.ActivePageIndex:=21;
        21: PageControlP4F.ActivePageIndex:=22;
        22: PageControlP4F.ActivePageIndex:=23;
        23: PageControlP4F.ActivePageIndex:=24;
        24: PageControlP4F.ActivePageIndex:=25;
        25: PageControlP4F.ActivePageIndex:=26;
        26: PageControlP4F.ActivePageIndex:=27;
        27: begin
            ButtonNext.Visible:=false;
            PageControlP4F.ActivePageIndex:=28;
            end;
        end;
     2: case PageControlP2S.ActivePageIndex of
        0: begin
           ButtonPrevious.Visible:=true;
           PageControlP2S.ActivePageIndex:=1;
           end;
        1: PageControlP2S.ActivePageIndex:=2;
        2: PageControlP2S.ActivePageIndex:=3;
        3: PageControlP2S.ActivePageIndex:=4;
        4: PageControlP2S.ActivePageIndex:=5;
        5: PageControlP2S.ActivePageIndex:=6;
        6: PageControlP2S.ActivePageIndex:=7;
        7: PageControlP2S.ActivePageIndex:=8;
        8: PageControlP2S.ActivePageIndex:=9;
        9: PageControlP2S.ActivePageIndex:=10;
        10: PageControlP2S.ActivePageIndex:=11;
        11: PageControlP2S.ActivePageIndex:=12;
        12: PageControlP2S.ActivePageIndex:=13;
        13: PageControlP2S.ActivePageIndex:=14;
        14: begin
            ButtonNext.Visible:=false;
            PageControlP2S.ActivePageIndex:=15;
            end;
        end;
     end;
  2: case PageControlA4F.ActivePageIndex of
        0: begin
           ButtonPrevious.Visible:=true;
           PageControlA4F.ActivePageIndex:=1;
           end;
        1: PageControlA4F.ActivePageIndex:=2;
        2: PageControlA4F.ActivePageIndex:=3;
        3: PageControlA4F.ActivePageIndex:=4;
        4: PageControlA4F.ActivePageIndex:=5;
        5: PageControlA4F.ActivePageIndex:=6;
        6: PageControlA4F.ActivePageIndex:=7;
        7: PageControlA4F.ActivePageIndex:=8;
        8: PageControlA4F.ActivePageIndex:=9;
        9: PageControlA4F.ActivePageIndex:=10;
        10: PageControlA4F.ActivePageIndex:=11;
        11: PageControlA4F.ActivePageIndex:=12;
        12: PageControlA4F.ActivePageIndex:=13;
        13: PageControlA4F.ActivePageIndex:=14;
        14: PageControlA4F.ActivePageIndex:=15;
        15: PageControlA4F.ActivePageIndex:=16;
        16: PageControlA4F.ActivePageIndex:=17;
        17: PageControlA4F.ActivePageIndex:=18;
        18: PageControlA4F.ActivePageIndex:=19;
        19: PageControlA4F.ActivePageIndex:=20;
        20: PageControlA4F.ActivePageIndex:=21;
        21: PageControlA4F.ActivePageIndex:=22;
        22: PageControlA4F.ActivePageIndex:=23;
        23: PageControlA4F.ActivePageIndex:=24;
        24: PageControlA4F.ActivePageIndex:=25;
        25: PageControlA4F.ActivePageIndex:=26;
        26: PageControlA4F.ActivePageIndex:=27;
        27: begin
            ButtonNext.Visible:=false;
            PageControlA4F.ActivePageIndex:=28;
            end;
        end;
  3: case PageControlShom.ActivePageIndex of
     0: case PageControlSh3F.ActivePageIndex of
        0: begin
           ButtonPrevious.Visible:=true;
           PageControlSh3F.ActivePageIndex:=1;
           end;
        1: PageControlSh3F.ActivePageIndex:=2;
        2: PageControlSh3F.ActivePageIndex:=3;
        3: PageControlSh3F.ActivePageIndex:=4;
        4: PageControlSh3F.ActivePageIndex:=5;
        5: PageControlSh3F.ActivePageIndex:=6;
        6: PageControlSh3F.ActivePageIndex:=7;
        7: PageControlSh3F.ActivePageIndex:=8;
        8: PageControlSh3F.ActivePageIndex:=9;
        9: PageControlSh3F.ActivePageIndex:=10;
        10: PageControlSh3F.ActivePageIndex:=11;
        11: PageControlSh3F.ActivePageIndex:=12;
        12: PageControlSh3F.ActivePageIndex:=13;
        13: PageControlSh3F.ActivePageIndex:=14;
        14: PageControlSh3F.ActivePageIndex:=15;
        15: PageControlSh3F.ActivePageIndex:=16;
        16: PageControlSh3F.ActivePageIndex:=17;
        17: PageControlSh3F.ActivePageIndex:=18;
        18: PageControlSh3F.ActivePageIndex:=19;
        19: PageControlSh3F.ActivePageIndex:=20;
        20: PageControlSh3F.ActivePageIndex:=21;
        21: begin
            ButtonNext.Visible:=false;
            PageControlSh3F.ActivePageIndex:=22;
            end;
        end;
     1: case PageControlSh2S.ActivePageIndex of
        0: begin
           ButtonPrevious.Visible:=true;
           PageControlSh2S.ActivePageIndex:=1;
           end;
        1: PageControlSh2S.ActivePageIndex:=2;
        2: PageControlSh2S.ActivePageIndex:=3;
        3: PageControlSh2S.ActivePageIndex:=4;
        4: PageControlSh2S.ActivePageIndex:=5;
        5: PageControlSh2S.ActivePageIndex:=6;
        6: PageControlSh2S.ActivePageIndex:=7;
        7: PageControlSh2S.ActivePageIndex:=8;
        8: PageControlSh2S.ActivePageIndex:=9;
        9: PageControlSh2S.ActivePageIndex:=10;
        10: PageControlSh2S.ActivePageIndex:=11;
        11: PageControlSh2S.ActivePageIndex:=12;
        12: PageControlSh2S.ActivePageIndex:=13;
        13: PageControlSh2S.ActivePageIndex:=14;
        14: begin
            ButtonNext.Visible:=false;
            PageControlSh2S.ActivePageIndex:=15;
            end;
        end;
     end;
  4: case PageControlXufton.ActivePageIndex of
     0: case PageControlX4F.ActivePageIndex of
        0: begin
           ButtonPrevious.Visible:=true;
           PageControlX4F.ActivePageIndex:=1;
           end;
        1: PageControlX4F.ActivePageIndex:=2;
        2: PageControlX4F.ActivePageIndex:=3;
        3: PageControlX4F.ActivePageIndex:=4;
        4: PageControlX4F.ActivePageIndex:=5;
        5: PageControlX4F.ActivePageIndex:=6;
        6: PageControlX4F.ActivePageIndex:=7;
        7: PageControlX4F.ActivePageIndex:=8;
        8: PageControlX4F.ActivePageIndex:=9;
        9: PageControlX4F.ActivePageIndex:=10;
        10: PageControlX4F.ActivePageIndex:=11;
        11: PageControlX4F.ActivePageIndex:=12;
        12: PageControlX4F.ActivePageIndex:=13;
        13: PageControlX4F.ActivePageIndex:=14;
        14: PageControlX4F.ActivePageIndex:=15;
        15: PageControlX4F.ActivePageIndex:=16;
        16: PageControlX4F.ActivePageIndex:=17;
        17: PageControlX4F.ActivePageIndex:=18;
        18: PageControlX4F.ActivePageIndex:=19;
        19: PageControlX4F.ActivePageIndex:=20;
        20: PageControlX4F.ActivePageIndex:=21;
        21: PageControlX4F.ActivePageIndex:=22;
        22: PageControlX4F.ActivePageIndex:=23;
        23: PageControlX4F.ActivePageIndex:=24;
        24: PageControlX4F.ActivePageIndex:=25;
        25: PageControlX4F.ActivePageIndex:=26;
        26: PageControlX4F.ActivePageIndex:=27;
        27: begin
            ButtonNext.Visible:=false;
            PageControlX4F.ActivePageIndex:=28;
            end;
        end;
     1: case PageControlX2S.ActivePageIndex of
        0: begin
           ButtonPrevious.Visible:=true;
           PageControlX2S.ActivePageIndex:=1;
           end;
        1: PageControlX2S.ActivePageIndex:=2;
        2: PageControlX2S.ActivePageIndex:=3;
        3: PageControlX2S.ActivePageIndex:=4;
        4: PageControlX2S.ActivePageIndex:=5;
        5: PageControlX2S.ActivePageIndex:=6;
        6: PageControlX2S.ActivePageIndex:=7;
        7: PageControlX2S.ActivePageIndex:=8;
        8: PageControlX2S.ActivePageIndex:=9;
        9: PageControlX2S.ActivePageIndex:=10;
        10: PageControlX2S.ActivePageIndex:=11;
        11: PageControlX2S.ActivePageIndex:=12;
        12: PageControlX2S.ActivePageIndex:=13;
        13: begin
            ButtonNext.Visible:=false;
            PageControlX2S.ActivePageIndex:=14;
            end;
        end;
     2: case PageControlV3V.ActivePageIndex of
        0: begin
           ButtonPrevious.Visible:=true;
           PageControlV3V.ActivePageIndex:=1;
           end;
        1: PageControlV3V.ActivePageIndex:=2;
        2: PageControlV3V.ActivePageIndex:=3;
        3: PageControlV3V.ActivePageIndex:=4;
        4: PageControlV3V.ActivePageIndex:=5;
        5: PageControlV3V.ActivePageIndex:=6;
        6: PageControlV3V.ActivePageIndex:=7;
        7: PageControlV3V.ActivePageIndex:=8;
        8: PageControlV3V.ActivePageIndex:=9;
        9: PageControlV3V.ActivePageIndex:=10;
        10: PageControlV3V.ActivePageIndex:=11;
        11: PageControlV3V.ActivePageIndex:=12;
        12: PageControlV3V.ActivePageIndex:=13;
        13: PageControlV3V.ActivePageIndex:=14;
        14: PageControlV3V.ActivePageIndex:=15;
        15: PageControlV3V.ActivePageIndex:=16;
        16: PageControlV3V.ActivePageIndex:=17;
        17: PageControlV3V.ActivePageIndex:=18;
        18: PageControlV3V.ActivePageIndex:=19;
        19: PageControlV3V.ActivePageIndex:=20;
        20: PageControlV3V.ActivePageIndex:=21;
        21: begin
            ButtonNext.Visible:=false;
            PageControlV3V.ActivePageIndex:=22;
            end;
        end;
     end;
  end;
end;

// Олдинги рукнга ўтиш тугмасини босиш
procedure TFormMain.ButtonPreviousClick(Sender: TObject);
begin
  case PageControlMain.ActivePageIndex of
  0: case PageControlBomdod.ActivePageIndex of
     0: case PageControlB2S.ActivePageIndex of
        1: begin
           ButtonPrevious.Visible:=false;
           PageControlB2S.ActivePageIndex:=0;
           end;
        2: PageControlB2S.ActivePageIndex:=1;
        3: PageControlB2S.ActivePageIndex:=2;
        4: PageControlB2S.ActivePageIndex:=3;
        5: PageControlB2S.ActivePageIndex:=4;
        6: PageControlB2S.ActivePageIndex:=5;
        7: PageControlB2S.ActivePageIndex:=6;
        8: PageControlB2S.ActivePageIndex:=7;
        9: PageControlB2S.ActivePageIndex:=8;
        10: PageControlB2S.ActivePageIndex:=9;
        11: PageControlB2S.ActivePageIndex:=10;
        12: PageControlB2S.ActivePageIndex:=11;
        13: PageControlB2S.ActivePageIndex:=12;
        14: begin
            ButtonNext.Visible:=true;
            PageControlB2S.ActivePageIndex:=13;
            end;
        end;
     1: case PageControlB2F.ActivePageIndex of
        1: begin
           ButtonPrevious.Visible:=false;
           PageControlB2F.ActivePageIndex:=0;
           end;
        2: PageControlB2F.ActivePageIndex:=1;
        3: PageControlB2F.ActivePageIndex:=2;
        4: PageControlB2F.ActivePageIndex:=3;
        5: PageControlB2F.ActivePageIndex:=4;
        6: PageControlB2F.ActivePageIndex:=5;
        7: PageControlB2F.ActivePageIndex:=6;
        8: PageControlB2F.ActivePageIndex:=7;
        9: PageControlB2F.ActivePageIndex:=8;
        10: PageControlB2F.ActivePageIndex:=9;
        11: PageControlB2F.ActivePageIndex:=10;
        12: PageControlB2F.ActivePageIndex:=11;
        13: PageControlB2F.ActivePageIndex:=12;
        14: PageControlB2F.ActivePageIndex:=13;
        15: begin
            ButtonNext.Visible:=true;
            PageControlB2F.ActivePageIndex:=14;
            end;
        end;
     end;
  1: case PageControlPeshin.ActivePageIndex of
     0: case PageControlP4S.ActivePageIndex of
        1: begin
           ButtonPrevious.Visible:=false;
           PageControlP4S.ActivePageIndex:=0;
           end;
        2: PageControlP4S.ActivePageIndex:=1;
        3: PageControlP4S.ActivePageIndex:=2;
        4: PageControlP4S.ActivePageIndex:=3;
        5: PageControlP4S.ActivePageIndex:=4;
        6: PageControlP4S.ActivePageIndex:=5;
        7: PageControlP4S.ActivePageIndex:=6;
        8: PageControlP4S.ActivePageIndex:=7;
        9: PageControlP4S.ActivePageIndex:=8;
        10: PageControlP4S.ActivePageIndex:=9;
        11: PageControlP4S.ActivePageIndex:=10;
        12: PageControlP4S.ActivePageIndex:=11;
        13: PageControlP4S.ActivePageIndex:=12;
        14: PageControlP4S.ActivePageIndex:=13;
        15: PageControlP4S.ActivePageIndex:=14;
        16: PageControlP4S.ActivePageIndex:=15;
        17: PageControlP4S.ActivePageIndex:=16;
        18: PageControlP4S.ActivePageIndex:=17;
        19: PageControlP4S.ActivePageIndex:=18;
        20: PageControlP4S.ActivePageIndex:=19;
        21: PageControlP4S.ActivePageIndex:=20;
        22: PageControlP4S.ActivePageIndex:=21;
        23: PageControlP4S.ActivePageIndex:=22;
        24: PageControlP4S.ActivePageIndex:=23;
        25: PageControlP4S.ActivePageIndex:=24;
        26: PageControlP4S.ActivePageIndex:=25;
        27: begin
            ButtonNext.Visible:=true;
            PageControlP4S.ActivePageIndex:=26;
            end;
        end;
     1: case PageControlP4F.ActivePageIndex of
        1: begin
           ButtonPrevious.Visible:=false;
           PageControlP4F.ActivePageIndex:=0;
           end;
        2: PageControlP4F.ActivePageIndex:=1;
        3: PageControlP4F.ActivePageIndex:=2;
        4: PageControlP4F.ActivePageIndex:=3;
        5: PageControlP4F.ActivePageIndex:=4;
        6: PageControlP4F.ActivePageIndex:=5;
        7: PageControlP4F.ActivePageIndex:=6;
        8: PageControlP4F.ActivePageIndex:=7;
        9: PageControlP4F.ActivePageIndex:=8;
        10: PageControlP4F.ActivePageIndex:=9;
        11: PageControlP4F.ActivePageIndex:=10;
        12: PageControlP4F.ActivePageIndex:=11;
        13: PageControlP4F.ActivePageIndex:=12;
        14: PageControlP4F.ActivePageIndex:=13;
        15: PageControlP4F.ActivePageIndex:=14;
        16: PageControlP4F.ActivePageIndex:=15;
        17: PageControlP4F.ActivePageIndex:=16;
        18: PageControlP4F.ActivePageIndex:=17;
        19: PageControlP4F.ActivePageIndex:=18;
        20: PageControlP4F.ActivePageIndex:=19;
        21: PageControlP4F.ActivePageIndex:=20;
        22: PageControlP4F.ActivePageIndex:=21;
        23: PageControlP4F.ActivePageIndex:=22;
        24: PageControlP4F.ActivePageIndex:=23;
        25: PageControlP4F.ActivePageIndex:=24;
        26: PageControlP4F.ActivePageIndex:=25;
        27: PageControlP4F.ActivePageIndex:=26;
        28: begin
            ButtonNext.Visible:=true;
            PageControlP4F.ActivePageIndex:=27;
            end;
        end;
     2: case PageControlP2S.ActivePageIndex of
        1: begin
           ButtonPrevious.Visible:=false;
           PageControlP2S.ActivePageIndex:=0;
           end;
        2: PageControlP2S.ActivePageIndex:=1;
        3: PageControlP2S.ActivePageIndex:=2;
        4: PageControlP2S.ActivePageIndex:=3;
        5: PageControlP2S.ActivePageIndex:=4;
        6: PageControlP2S.ActivePageIndex:=5;
        7: PageControlP2S.ActivePageIndex:=6;
        8: PageControlP2S.ActivePageIndex:=7;
        9: PageControlP2S.ActivePageIndex:=8;
        10: PageControlP2S.ActivePageIndex:=9;
        11: PageControlP2S.ActivePageIndex:=10;
        12: PageControlP2S.ActivePageIndex:=11;
        13: PageControlP2S.ActivePageIndex:=12;
        14: PageControlP2S.ActivePageIndex:=13;
        15: begin
            ButtonNext.Visible:=true;
            PageControlP2S.ActivePageIndex:=14;
            end;
        end;
     end;
  2: case PageControlA4F.ActivePageIndex of
        1: begin
           ButtonPrevious.Visible:=false;
           PageControlA4F.ActivePageIndex:=0;
           end;
        2: PageControlA4F.ActivePageIndex:=1;
        3: PageControlA4F.ActivePageIndex:=2;
        4: PageControlA4F.ActivePageIndex:=3;
        5: PageControlA4F.ActivePageIndex:=4;
        6: PageControlA4F.ActivePageIndex:=5;
        7: PageControlA4F.ActivePageIndex:=6;
        8: PageControlA4F.ActivePageIndex:=7;
        9: PageControlA4F.ActivePageIndex:=8;
        10: PageControlA4F.ActivePageIndex:=9;
        11: PageControlA4F.ActivePageIndex:=10;
        12: PageControlA4F.ActivePageIndex:=11;
        13: PageControlA4F.ActivePageIndex:=12;
        14: PageControlA4F.ActivePageIndex:=13;
        15: PageControlA4F.ActivePageIndex:=14;
        16: PageControlA4F.ActivePageIndex:=15;
        17: PageControlA4F.ActivePageIndex:=16;
        18: PageControlA4F.ActivePageIndex:=17;
        19: PageControlA4F.ActivePageIndex:=18;
        20: PageControlA4F.ActivePageIndex:=19;
        21: PageControlA4F.ActivePageIndex:=20;
        22: PageControlA4F.ActivePageIndex:=21;
        23: PageControlA4F.ActivePageIndex:=22;
        24: PageControlA4F.ActivePageIndex:=23;
        25: PageControlA4F.ActivePageIndex:=24;
        26: PageControlA4F.ActivePageIndex:=25;
        27: PageControlA4F.ActivePageIndex:=26;
        28: begin
            ButtonNext.Visible:=true;
            PageControlA4F.ActivePageIndex:=27;
            end;
        end;
  3: case PageControlShom.ActivePageIndex of
     0: case PageControlSh3F.ActivePageIndex of
        1: begin
           ButtonPrevious.Visible:=false;
           PageControlSh3F.ActivePageIndex:=0;
           end;
        2: PageControlSh3F.ActivePageIndex:=1;
        3: PageControlSh3F.ActivePageIndex:=2;
        4: PageControlSh3F.ActivePageIndex:=3;
        5: PageControlSh3F.ActivePageIndex:=4;
        6: PageControlSh3F.ActivePageIndex:=5;
        7: PageControlSh3F.ActivePageIndex:=6;
        8: PageControlSh3F.ActivePageIndex:=7;
        9: PageControlSh3F.ActivePageIndex:=8;
        10: PageControlSh3F.ActivePageIndex:=9;
        11: PageControlSh3F.ActivePageIndex:=10;
        12: PageControlSh3F.ActivePageIndex:=11;
        13: PageControlSh3F.ActivePageIndex:=12;
        14: PageControlSh3F.ActivePageIndex:=13;
        15: PageControlSh3F.ActivePageIndex:=14;
        16: PageControlSh3F.ActivePageIndex:=15;
        17: PageControlSh3F.ActivePageIndex:=16;
        18: PageControlSh3F.ActivePageIndex:=17;
        19: PageControlSh3F.ActivePageIndex:=18;
        20: PageControlSh3F.ActivePageIndex:=19;
        21: PageControlSh3F.ActivePageIndex:=20;
        22: begin
            ButtonNext.Visible:=true;
            PageControlSh3F.ActivePageIndex:=21;
            end;
        end;
     1: case PageControlSh2S.ActivePageIndex of
        1: begin
           ButtonPrevious.Visible:=false;
           PageControlSh2S.ActivePageIndex:=0;
           end;
        2: PageControlSh2S.ActivePageIndex:=1;
        3: PageControlSh2S.ActivePageIndex:=2;
        4: PageControlSh2S.ActivePageIndex:=3;
        5: PageControlSh2S.ActivePageIndex:=4;
        6: PageControlSh2S.ActivePageIndex:=5;
        7: PageControlSh2S.ActivePageIndex:=6;
        8: PageControlSh2S.ActivePageIndex:=7;
        9: PageControlSh2S.ActivePageIndex:=8;
        10: PageControlSh2S.ActivePageIndex:=9;
        11: PageControlSh2S.ActivePageIndex:=10;
        12: PageControlSh2S.ActivePageIndex:=11;
        13: PageControlSh2S.ActivePageIndex:=12;
        14: PageControlSh2S.ActivePageIndex:=13;
        15: begin
            ButtonNext.Visible:=true;
            PageControlSh2S.ActivePageIndex:=14;
            end;
        end;
     end;
  4: case PageControlXufton.ActivePageIndex of
     0: case PageControlX4F.ActivePageIndex of
        1: begin
           ButtonPrevious.Visible:=false;
           PageControlX4F.ActivePageIndex:=0;
           end;
        2: PageControlX4F.ActivePageIndex:=1;
        3: PageControlX4F.ActivePageIndex:=2;
        4: PageControlX4F.ActivePageIndex:=3;
        5: PageControlX4F.ActivePageIndex:=4;
        6: PageControlX4F.ActivePageIndex:=5;
        7: PageControlX4F.ActivePageIndex:=6;
        8: PageControlX4F.ActivePageIndex:=7;
        9: PageControlX4F.ActivePageIndex:=8;
        10: PageControlX4F.ActivePageIndex:=9;
        11: PageControlX4F.ActivePageIndex:=10;
        12: PageControlX4F.ActivePageIndex:=11;
        13: PageControlX4F.ActivePageIndex:=12;
        14: PageControlX4F.ActivePageIndex:=13;
        15: PageControlX4F.ActivePageIndex:=14;
        16: PageControlX4F.ActivePageIndex:=15;
        17: PageControlX4F.ActivePageIndex:=16;
        18: PageControlX4F.ActivePageIndex:=17;
        19: PageControlX4F.ActivePageIndex:=18;
        20: PageControlX4F.ActivePageIndex:=19;
        21: PageControlX4F.ActivePageIndex:=20;
        22: PageControlX4F.ActivePageIndex:=21;
        23: PageControlX4F.ActivePageIndex:=22;
        24: PageControlX4F.ActivePageIndex:=23;
        25: PageControlX4F.ActivePageIndex:=24;
        26: PageControlX4F.ActivePageIndex:=25;
        27: PageControlX4F.ActivePageIndex:=26;
        28: begin
            ButtonNext.Visible:=true;
            PageControlX4F.ActivePageIndex:=27;
            end;
        end;
     1: case PageControlX2S.ActivePageIndex of
        1: begin
           ButtonPrevious.Visible:=false;
           PageControlX2S.ActivePageIndex:=0;
           end;
        2: PageControlX2S.ActivePageIndex:=1;
        3: PageControlX2S.ActivePageIndex:=2;
        4: PageControlX2S.ActivePageIndex:=3;
        5: PageControlX2S.ActivePageIndex:=4;
        6: PageControlX2S.ActivePageIndex:=5;
        7: PageControlX2S.ActivePageIndex:=6;
        8: PageControlX2S.ActivePageIndex:=7;
        9: PageControlX2S.ActivePageIndex:=8;
        10: PageControlX2S.ActivePageIndex:=9;
        11: PageControlX2S.ActivePageIndex:=10;
        12: PageControlX2S.ActivePageIndex:=11;
        13: PageControlX2S.ActivePageIndex:=12;
        14: begin
            ButtonNext.Visible:=true;
            PageControlX2S.ActivePageIndex:=13;
            end;
        end;
     2: case PageControlV3V.ActivePageIndex of
        1: begin
           ButtonPrevious.Visible:=false;
           PageControlV3V.ActivePageIndex:=0;
           end;
        2: PageControlV3V.ActivePageIndex:=1;
        3: PageControlV3V.ActivePageIndex:=2;
        4: PageControlV3V.ActivePageIndex:=3;
        5: PageControlV3V.ActivePageIndex:=4;
        6: PageControlV3V.ActivePageIndex:=5;
        7: PageControlV3V.ActivePageIndex:=6;
        8: PageControlV3V.ActivePageIndex:=7;
        9: PageControlV3V.ActivePageIndex:=8;
        10: PageControlV3V.ActivePageIndex:=9;
        11: PageControlV3V.ActivePageIndex:=10;
        12: PageControlV3V.ActivePageIndex:=11;
        13: PageControlV3V.ActivePageIndex:=12;
        14: PageControlV3V.ActivePageIndex:=13;
        15: PageControlV3V.ActivePageIndex:=14;
        16: PageControlV3V.ActivePageIndex:=15;
        17: PageControlV3V.ActivePageIndex:=16;
        18: PageControlV3V.ActivePageIndex:=17;
        19: PageControlV3V.ActivePageIndex:=18;
        20: PageControlV3V.ActivePageIndex:=19;
        21: PageControlV3V.ActivePageIndex:=20;
        22: begin
            ButtonNext.Visible:=true;
            PageControlV3V.ActivePageIndex:=21;
            end;
        end;
     end;
  end;
end;

// Таймер вақти чиқиши
procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  ProcedureAmallar;
end;

// Трейдаги нишончасини босиш
procedure TFormMain.TrayIcon1Click(Sender: TObject);
begin
  ProcedureAmallar;
end;

procedure TFormMain.ButtonAzonB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzonBomdod;
  FormDetails.Caption:=Azon;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAzonDuoA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzonDuo;
  FormDetails.Caption:=AzonDuo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym1B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym1P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym1Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym1X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym3A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym3P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym3P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym3Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym3V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym3X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym4A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym4P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym4P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym4X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAzonA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzon;
  FormDetails.Caption:=Azon;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_1B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_1B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_1P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_1Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_1X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla2_2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla3_2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla4_1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla4_1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla4_1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla4_1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla4_2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla4_2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla4_2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla4_2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.Caption:=Ala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonDuoA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetDuo;
  FormDetails.Caption:=Duo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonDuoB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetDuo;
  FormDetails.Caption:=Duo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonDuoP4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetDuo;
  FormDetails.Caption:=Duo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonDuoSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetDuo;
  FormDetails.Caption:=Duo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAntassalamV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetDuo;
  FormDetails.Caption:=Duo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonDuoX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetDuo;
  FormDetails.Caption:=Duo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAziym1B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.Caption:=Aziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAzonDuoB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzonDuo;
  FormDetails.Caption:=AzonDuo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAzonDuoP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzonDuo;
  FormDetails.Caption:=AzonDuo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAzonDuoSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzonDuo;
  FormDetails.Caption:=AzonDuo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAzonDuoX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzonDuo;
  FormDetails.Caption:=AzonDuo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAzonP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzon;
  FormDetails.Caption:=Azon;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAzonSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzon;
  FormDetails.Caption:=Azon;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAzonX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzon;
  FormDetails.Caption:=Azon;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala1B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala1B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala1P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala1Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala1X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala3A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala3P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala3P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala3Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala3V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala3X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala4A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala4P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala4P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonBasmala4X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.Caption:=Basmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFalaqB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFalaq;
  FormDetails.Caption:=Falaq;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFalaqP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFalaq;
  FormDetails.Caption:=Falaq;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFalaqP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFalaq;
  FormDetails.Caption:=Falaq;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFalaqSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFalaq;
  FormDetails.Caption:=Falaq;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFalaqV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFalaq;
  FormDetails.Caption:=Falaq;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFalaqX2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFalaq;
  FormDetails.Caption:=Falaq;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha1A4F1Click(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha1B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha1B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha1P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha1Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha1X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha3A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha3P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha3P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha3Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha3V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha3X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha4A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha4P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha4P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonFotiha4X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.Caption:=Fotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIqomatA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIqomat;
  FormDetails.Caption:=Iqomat;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIqomatB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIqomat;
  FormDetails.Caption:=Iqomat;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIqomatP4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIqomat;
  FormDetails.Caption:=Iqomat;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIqomatSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIqomat;
  FormDetails.Caption:=Iqomat;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIqomatX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIqomat;
  FormDetails.Caption:=Iqomat;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIxlosA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIxlos;
  FormDetails.Caption:=Ixlos;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIxlosB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIxlos;
  FormDetails.Caption:=Ixlos;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIxlosP4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIxlos;
  FormDetails.Caption:=Ixlos;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIxlosP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIxlos;
  FormDetails.Caption:=Ixlos;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIxlosSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIxlos;
  FormDetails.Caption:=Ixlos;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIxlosV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIxlos;
  FormDetails.Caption:=Ixlos;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonIxlosX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetIxlos;
  FormDetails.Caption:=Ixlos;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonKavsarA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKavsar;
  FormDetails.Caption:=Kavsar;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonKavsarB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKavsar;
  FormDetails.Caption:=Kavsar;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonKavsarP4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKavsar;
  FormDetails.Caption:=Kavsar;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonKavsarP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKavsar;
  FormDetails.Caption:=Kavsar;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonKavsarSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKavsar;
  FormDetails.Caption:=Kavsar;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonKavsarX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKavsar;
  FormDetails.Caption:=Kavsar;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonKursiA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKursi;
  FormDetails.Caption:=Kursi;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonKursiB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKursi;
  FormDetails.Caption:=Kursi;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonKursiP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKursi;
  FormDetails.Caption:=Kursi;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonKursiSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKursi;
  FormDetails.Caption:=Kursi;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonKursiV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetKursi;
  FormDetails.Caption:=Kursi;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonNasB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetNas;
  FormDetails.Caption:=Nas;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonNasP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetNas;
  FormDetails.Caption:=Nas;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonNasP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetNas;
  FormDetails.Caption:=Nas;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonNasSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetNas;
  FormDetails.Caption:=Nas;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonNasV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetNas;
  FormDetails.Caption:=Nas;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonNasX2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetNas;
  FormDetails.Caption:=Nas;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonQunutClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetQunut;
  FormDetails.Caption:=Qunut;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaP4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaX2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.Caption:=Robbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd1B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd1B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd1P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd1Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd1X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd3A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd3P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd3P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd3Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd3V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd3X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd4A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd4P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd4P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonHamd4X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.Caption:=Hamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalavotA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalavotB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalavotB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalavotP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalavotP4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalavotP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalavotSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalavotSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalavotV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalavotX2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalavotX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.Caption:=Salavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalomA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalomB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalomB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalomP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalomP4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalomP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalomSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalomSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalomV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalomX2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSalomX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.Caption:=Salom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh1B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh1B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh1P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh1Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh1X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh3A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh3P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh3P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh3Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh3V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh3X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh4A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh4P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh4P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSamialloh4X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSamialloh;
  FormDetails.Caption:=Samialloh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSanoA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSanoB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSanoB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSanoP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSanoP4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSanoP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSanoSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSanoSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSanoV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSanoX2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonSanoX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.Caption:=Sano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTaavvuzA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTaavvuzB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTaavvuzB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTaavvuzP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTaavvuzP4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTaavvuzP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTaavvuzSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTaavvuzSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTaavvuzV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTaavvuzX2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTaavvuzX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.Caption:=Taavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa1B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa1B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa1P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa1Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa1X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa3A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa3P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa3P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa3Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa3V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa3X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa4A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa4P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa4P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirJalsa4X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirKirishA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirKirishB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirKirishB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirKirishP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirKirishP4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirKirishP4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirKirishSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirKirishSh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirKirishV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirKirishX2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirKirishX4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQada2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQadaB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQadaB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQadaP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQadaSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQadaX2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom3A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom3P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom3P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom3Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom3V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom3X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom4A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom4P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom4P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQiyom4X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirQunutClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku1B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku1B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku1P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku1Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku1X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku3A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku3P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku3P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku3Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku3V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku3X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku4A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku4P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku4P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirRuku4X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_1B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_1B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_1P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_1Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_1X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda1_2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_1B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_1B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_1P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_1Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_1X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_2B2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_2B2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_2P2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_2Sh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_2X2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda2_2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda3_2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda4_1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda4_1P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda4_1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda4_1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda4_2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda4_2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda4_2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTakbirSajda4_2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.Caption:=Takbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTasbehA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTasbeh;
  FormDetails.Caption:=Tasbeh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTasbehB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTasbeh;
  FormDetails.Caption:=Tasbeh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTasbehP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTasbeh;
  FormDetails.Caption:=Tasbeh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTasbehSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTasbeh;
  FormDetails.Caption:=Tasbeh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTasbehV3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTasbeh;
  FormDetails.Caption:=Tasbeh;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhud1A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhud1P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhud1Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhud1V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhud1X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhud2A4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhud2P4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhud2P4SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhud2Sh3FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhud2V3VClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhud2X4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhudB2FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhudB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhudP2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhudSh2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonTashahhudX2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.Caption:=Tashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.FormActivate(Sender: TObject);
begin
  if FormSettings.ComboBoxTranslit.Text = 'Кирилл' then FormMain.ProcedureInterfaceKirill
  else
    FormMain.ProcedureInterfaceLotin;
  ProcedureImagesChange;
  ProcedureAmallar;
end;

procedure TFormMain.FormClose(Sender: TObject);
begin
  StringListAmallar.Free;
  if FormSettings.RadioButton0.Checked = true then
    begin
      FormMain.PageControlA4F.TabIndex:=0;
      FormMain.PageControlAsr.TabIndex:=0;
      FormMain.PageControlB2F.TabIndex:=0;
      FormMain.PageControlB2S.TabIndex:=0;
      FormMain.PageControlBomdod.TabIndex:=0;
      FormMain.PageControlMain.TabIndex:=0;
      FormMain.PageControlP2S.TabIndex:=0;
      FormMain.PageControlP4F.TabIndex:=0;
      FormMain.PageControlP4S.TabIndex:=0;
      FormMain.PageControlPeshin.TabIndex:=0;
      FormMain.PageControlSh2S.TabIndex:=0;
      FormMain.PageControlSh3F.TabIndex:=0;
      FormMain.PageControlShom.TabIndex:=0;
      FormMain.PageControlV3V.TabIndex:=0;
      FormMain.PageControlX2S.TabIndex:=0;
      FormMain.PageControlX4F.TabIndex:=0;
      FormMain.PageControlXufton.TabIndex:=0;
    end;
end;

procedure TFormMain.PageControlA4FChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlB2FChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlB2SChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlBomdodChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlMainChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlP2SChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlP4FChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlP4SChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlPeshinChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlSh2SChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlSh3FChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlShomChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlV3VChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlX2SChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlX4FChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

procedure TFormMain.PageControlXuftonChange(Sender: TObject);
begin
  ProcedureImagesChange;
end;

end.

