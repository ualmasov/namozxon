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
  Classes, SysUtils, Forms, ComCtrls, ExtCtrls, StdCtrls, Buttons, Menus,
  IniPropStorage, ActnList, Translit, Actions, ImagesLoad, ShowDetails, Details,
  Settings, About;

type

  { TFormMain }

  TFormMain = class(TForm)
    ActionNext, ActionPrevious: TAction;
    ActionList1: TActionList;
    ButtonAla1_1V3V, ButtonAla1_1X2S, ButtonAla1_1X4F, ButtonAla1_1Sh2S,
    ButtonAla1_1Sh3F, ButtonAla1_1B2F, ButtonAla1_1P2S, ButtonAla1_1A4F,
    ButtonAla1_1P4S, ButtonAla1_1P4F, ButtonAla1_2V3V, ButtonAla1_2X2S,
    ButtonAla1_2X4F, ButtonAla1_2Sh2S, ButtonAla1_2Sh3F, ButtonAla1_2B2S,
    ButtonAla1_2B2F, ButtonAla1_2P2S, ButtonAla1_2A4F, ButtonAla1_2P4S,
    ButtonAla1_2P4F, ButtonAla2_1V3V, ButtonAla2_1X2S, ButtonAla2_1X4F,
    ButtonAla2_1Sh2S, ButtonAla2_1Sh3F, ButtonAla2_1B2S, ButtonAla2_1B2F,
    ButtonAla2_1P2S, ButtonAla2_1A4F, ButtonAla2_1P4S, ButtonAla2_1P4F,
    ButtonAla2_2V3V, ButtonAla2_2X2S, ButtonAla2_2X4F, ButtonAla2_2Sh2S,
    ButtonAla2_2Sh3F, ButtonAla2_2P2S, ButtonAla2_2P4F, ButtonAla2_2A4F,
    ButtonAla3_1A4F, ButtonAla3_1V3V, ButtonAla3_1X4F, ButtonAla3_1Sh3F,
    ButtonAla3_1P4S, ButtonAla2_2B2S, ButtonAla2_2B2F, ButtonAla2_2P4S,
    ButtonAla3_2A4F, ButtonAla3_2V3V, ButtonAla3_2X4F, ButtonAla3_2Sh3F,
    ButtonAla3_2P4S, ButtonAla3_1P4F, ButtonAla3_2P4F, ButtonAla4_1A4F,
    ButtonAla4_1X4F, ButtonAla4_1P4S, ButtonAla4_1P4F, ButtonAla4_2A4F,
    ButtonAla4_2X4F, ButtonAla4_2P4S, ButtonAla4_2P4F, ButtonDuoX4F,
    ButtonDuoSh3F, ButtonDuoP4F, ButtonDuoA4F, ButtonAziym1V3V, ButtonAziym1X2S,
    ButtonAziym1X4F, ButtonAziym1Sh2S, ButtonAziym1Sh3F, ButtonAziym1P2S,
    ButtonAziym1A4F, ButtonAziym1P4S, ButtonAziym1P4F, ButtonAziym2V3V,
    ButtonAziym2X2S, ButtonAziym2X4F, ButtonAziym2Sh2S, ButtonAziym2Sh3F,
    ButtonAziym2P2S, ButtonAziym2A4F, ButtonAziym2P4S, ButtonAziym2P4F,
    ButtonAziym3A4F, ButtonAziym3V3V, ButtonAziym3X4F, ButtonAziym3Sh3F,
    ButtonAziym3P4S, ButtonAziym3P4F, ButtonAziym4A4F, ButtonAziym4X4F,
    ButtonAziym4P4S, ButtonAziym4P4F, ButtonAzonA4F, ButtonAzonDuoSh3F,
    ButtonAzonDuoX4F, ButtonAzonX4F, ButtonAzonSh3F, ButtonAzonP4S,
    ButtonAzonDuoP4S, ButtonBasmala1V3V, ButtonBasmala1X2S, ButtonBasmala1X4F,
    ButtonBasmala1Sh2S, ButtonBasmala1Sh3F, ButtonBasmala1P2S, ButtonBasmala1A4F,
    ButtonBasmala2V3V, ButtonBasmala2X2S, ButtonBasmala2X4F, ButtonBasmala2Sh2S,
    ButtonBasmala2Sh3F, ButtonBasmala2P2S, ButtonBasmala2A4F, ButtonBasmala3A4F,
    ButtonBasmala3V3V, ButtonBasmala3X4F, ButtonBasmala3Sh3F, ButtonBasmala4A4F,
    ButtonBasmala4X4F, ButtonFalaqSh2S, ButtonKursiV3V, ButtonNasV3V,
    ButtonFalaqX2S, ButtonFotiha1A4F1, ButtonFotiha1Sh2S, ButtonFotiha1V3V,
    ButtonFotiha1X2S, ButtonFotiha1Sh3F, ButtonFotiha1P2S, ButtonFotiha1A4F,
    ButtonFotiha2V3V, ButtonFotiha2X2S, ButtonFotiha2X4F, ButtonFotiha2Sh2S,
    ButtonFotiha2Sh3F, ButtonFotiha2P2S, ButtonFotiha2A4F, ButtonFotiha3A4F,
    ButtonFotiha3V3V, ButtonFotiha3X4F, ButtonFotiha3Sh3F, ButtonFotiha4A4F,
    ButtonFotiha4X4F, ButtonIqomatX4F, ButtonIqomatSh3F, ButtonIqomatP4F,
    ButtonBasmala1P4S, ButtonBasmala1P4F, ButtonBasmala2P4S, ButtonBasmala2P4F,
    ButtonBasmala3P4S, ButtonBasmala3P4F, ButtonBasmala4P4S, ButtonBasmala4P4F,
    ButtonFotiha1P4F, ButtonFotiha2P4F, ButtonFotiha3P4F, ButtonFotiha4P4F,
    ButtonIqomatA4F, ButtonIxlosA4F, ButtonFalaqV3V, ButtonIxlosX4F,
    ButtonIxlosSh3F, ButtonKavsarA4F, ButtonIxlosV3V, ButtonKavsarX4F,
    ButtonKavsarSh3F, ButtonKursiA4F, ButtonKursiP2S, ButtonKursiSh2S,
    ButtonNasP2S, ButtonIxlosP4F, ButtonFalaqP2S, ButtonKavsarP4F, ButtonNasSh2S,
    ButtonNasP4S, ButtonFotiha1P4S, ButtonFotiha2P4S, ButtonFotiha3P4S,
    ButtonFotiha4P4S, ButtonIxlosP4S, ButtonFalaqP4S, ButtonKavsarP4S,
    ButtonNasX2S, ButtonRobbanaV3V, ButtonRobbanaX2S, ButtonRobbanaX4F,
    ButtonRobbanaSh2S, ButtonRobbanaSh3F, ButtonRobbanaP2S, ButtonRobbanaA4F,
    ButtonRobbanaP4S, ButtonRobbanaP4F, ButtonHamd1V3V, ButtonHamd1X2S,
    ButtonHamd1X4F, ButtonHamd1Sh2S, ButtonHamd1Sh3F, ButtonHamd1P2S,
    ButtonHamd1A4F, ButtonHamd1P4S, ButtonHamd1P4F, ButtonHamd2V3V,
    ButtonHamd2X2S, ButtonHamd2X4F, ButtonHamd2Sh2S, ButtonHamd2Sh3F,
    ButtonHamd2P2S, ButtonHamd2A4F, ButtonHamd2P4S, ButtonHamd2P4F,
    ButtonHamd3A4F, ButtonHamd3V3V, ButtonHamd3X4F, ButtonHamd3Sh3F,
    ButtonHamd3P4S, ButtonHamd3P4F, ButtonHamd4A4F, ButtonHamd4X4F,
    ButtonHamd4P4S, ButtonHamd4P4F, ButtonSalavotV3V, ButtonSalavotX2S,
    ButtonSalavotX4F, ButtonSalavotSh2S, ButtonSalavotSh3F, ButtonSalavotP2S,
    ButtonSalavotA4F, ButtonSalavotP4S, ButtonSalavotP4F, ButtonSalomV3V,
    ButtonSalomX2S, ButtonSalomX4F, ButtonSalomSh2S, ButtonSalomSh3F,
    ButtonSalomP2S, ButtonSalomA4F, ButtonSalomP4S, ButtonSalomP4F,
    ButtonSamialloh1V3V, ButtonSamialloh1X2S, ButtonSamialloh1X4F,
    ButtonSamialloh1Sh2S, ButtonSamialloh1Sh3F, ButtonSamialloh1P2S,
    ButtonSamialloh1A4F, ButtonSamialloh1P4S, ButtonSamialloh1P4F,
    ButtonSamialloh2V3V, ButtonSamialloh2X2S, ButtonSamialloh2X4F,
    ButtonSamialloh2Sh2S, ButtonSamialloh2Sh3F, ButtonSamialloh2P2S,
    ButtonSamialloh2A4F, ButtonSamialloh2P4S, ButtonSamialloh2P4F,
    ButtonSamialloh3A4F, ButtonSamialloh3V3V, ButtonSamialloh3X4F,
    ButtonSamialloh3Sh3F, ButtonSamialloh3P4S, ButtonSamialloh3P4F,
    ButtonSamialloh4A4F, ButtonSamialloh4X4F, ButtonSamialloh4P4S,
    ButtonSamialloh4P4F, ButtonSanoV3V, ButtonSanoX2S, ButtonSanoX4F,
    ButtonSanoSh2S, ButtonSanoSh3F, ButtonSanoP2S, ButtonSanoA4F, ButtonSanoP4S,
    ButtonSanoP4F, ButtonTaavvuzV3V, ButtonTaavvuzX2S, ButtonTaavvuzX4F,
    ButtonTaavvuzSh2S, ButtonTaavvuzSh3F, ButtonTaavvuzP2S, ButtonTaavvuzA4F,
    ButtonTaavvuzP4S, ButtonTaavvuzP4F, ButtonTakbirJalsa1V3V,
    ButtonTakbirJalsa1X2S, ButtonTakbirJalsa1X4F, ButtonTakbirJalsa1Sh2S,
    ButtonTakbirJalsa1Sh3F, ButtonTakbirJalsa1P2S, ButtonTakbirJalsa1A4F,
    ButtonTakbirJalsa1P4S, ButtonTakbirJalsa1P4F, ButtonTakbirJalsa2V3V,
    ButtonTakbirJalsa2X2S, ButtonTakbirJalsa2X4F, ButtonTakbirJalsa2Sh2S,
    ButtonTakbirJalsa2Sh3F, ButtonTakbirJalsa2P2S, ButtonTakbirJalsa2A4F,
    ButtonTakbirJalsa2P4S, ButtonTakbirJalsa2P4F, ButtonTakbirJalsa3A4F,
    ButtonTakbirJalsa3V3V, ButtonTakbirJalsa3X4F, ButtonTakbirJalsa3Sh3F,
    ButtonTakbirJalsa3P4S, ButtonTakbirJalsa3P4F, ButtonTakbirJalsa4A4F,
    ButtonTakbirJalsa4X4F, ButtonTakbirJalsa4P4S, ButtonTakbirJalsa4P4F,
    ButtonTakbirKirishV3V, ButtonTakbirKirishX2S, ButtonTakbirKirishX4F,
    ButtonTakbirKirishSh2S, ButtonTakbirKirishSh3F, ButtonTakbirKirishP2S,
    ButtonTakbirKirishA4F, ButtonTakbirKirishP4S, ButtonTakbirKirishP4F,
    ButtonTakbirQada1V3V, ButtonTakbirQada1X4F, ButtonTakbirQada1Sh3F,
    ButtonTakbirQada1P4F, ButtonTakbirQada1A4F, ButtonTakbirQada2A4F,
    ButtonTakbirQada2V3V, ButtonTakbirQada2X4F, ButtonTakbirQada2Sh3F,
    ButtonTakbirQada2P4S, ButtonTakbirQada1P4S, ButtonTakbirQada2P4F,
    ButtonTakbirQadaP2S, ButtonTakbirQadaSh2S, ButtonTakbirQadaX2S,
    ButtonTakbirQiyom2V3V, ButtonTakbirQiyom2X2S, ButtonTakbirQiyom2X4F,
    ButtonTakbirQiyom2Sh2S, ButtonTakbirQiyom2Sh3F, ButtonTakbirQiyom2P2S,
    ButtonTakbirQiyom2A4F, ButtonTakbirQiyom2P4S, ButtonTakbirQiyom2P4F,
    ButtonTakbirQiyom3A4F, ButtonTakbirQiyom3V3V, ButtonTakbirQiyom3X4F,
    ButtonTakbirQiyom3Sh3F, ButtonTakbirQiyom3P4S, ButtonTakbirQiyom3P4F,
    ButtonTakbirQiyom4A4F, ButtonTakbirQiyom4X4F, ButtonTakbirQiyom4P4S,
    ButtonTakbirQiyom4P4F, ButtonTakbirRuku1V3V, ButtonTakbirRuku1X2S,
    ButtonTakbirRuku1X4F, ButtonTakbirRuku1Sh2S, ButtonTakbirRuku1Sh3F,
    ButtonTakbirRuku1P2S, ButtonTakbirRuku1A4F, ButtonTakbirRuku1P4S,
    ButtonTakbirRuku1P4F, ButtonTakbirRuku2V3V, ButtonTakbirRuku2X2S,
    ButtonTakbirRuku2X4F, ButtonTakbirRuku2Sh2S, ButtonTakbirRuku2Sh3F,
    ButtonTakbirRuku2P2S, ButtonTakbirRuku2A4F, ButtonTakbirRuku2P4S,
    ButtonTakbirRuku2P4F, ButtonTakbirRuku3A4F, ButtonTakbirRuku3V3V,
    ButtonTakbirRuku3X4F, ButtonTakbirRuku3Sh3F, ButtonTakbirRuku3P4S,
    ButtonTakbirRuku3P4F, ButtonTakbirRuku4A4F, ButtonTakbirRuku4X4F,
    ButtonTakbirRuku4P4S, ButtonTakbirRuku4P4F, ButtonTakbirSajda1_1V3V,
    ButtonTakbirSajda1_1X2S, ButtonTakbirSajda1_1X4F, ButtonTakbirSajda1_1Sh2S,
    ButtonTakbirSajda1_1Sh3F, ButtonTakbirSajda1_1P2S, ButtonTakbirSajda1_1A4F,
    ButtonTakbirSajda1_1P4S, ButtonTakbirSajda1_1P4F, ButtonTakbirSajda1_2V3V,
    ButtonTakbirSajda1_2X2S, ButtonTakbirSajda1_2X4F, ButtonTakbirSajda1_2Sh2S,
    ButtonTakbirSajda1_2Sh3F, ButtonTakbirSajda1_2P2S, ButtonTakbirSajda1_2A4F,
    ButtonTakbirSajda1_2P4S, ButtonTakbirSajda1_2P4F, ButtonTakbirSajda2_1V3V,
    ButtonTakbirSajda2_1X2S, ButtonTakbirSajda2_1X4F, ButtonTakbirSajda2_1Sh2S,
    ButtonTakbirSajda2_1Sh3F, ButtonTakbirSajda2_1P2S, ButtonTakbirSajda2_1A4F,
    ButtonTakbirSajda2_1P4S, ButtonTakbirSajda2_1P4F, ButtonTakbirSajda2_2V3V,
    ButtonTakbirSajda2_2X2S, ButtonTakbirSajda2_2X4F, ButtonTakbirSajda2_2Sh2S,
    ButtonTakbirSajda2_2Sh3F, ButtonTakbirSajda2_2P2S, ButtonTakbirSajda2_2P4F,
    ButtonTakbirSajda2_2A4F, ButtonTakbirSajda3_1A4F, ButtonTakbirSajda3_1V3V,
    ButtonTakbirSajda3_1X4F, ButtonTakbirSajda3_1Sh3F, ButtonTakbirSajda3_1P4S,
    ButtonTakbirSajda2_2P4S, ButtonTakbirSajda3_2A4F, ButtonTakbirSajda3_2V3V,
    ButtonTakbirSajda3_2X4F, ButtonTakbirSajda3_2Sh3F, ButtonTakbirSajda3_2P4S,
    ButtonTakbirSajda3_1P4F, ButtonTakbirSajda3_2P4F, ButtonTakbirSajda4_1A4F,
    ButtonTakbirSajda4_1X4F, ButtonTakbirSajda4_1P4S, ButtonTakbirSajda4_1P4F,
    ButtonTakbirSajda4_2A4F, ButtonTakbirSajda4_2X4F, ButtonTakbirSajda4_2P4S,
    ButtonTakbirSajda4_2P4F, ButtonTasbehB2F, ButtonAziym1B2F, ButtonAziym2B2S,
    ButtonAziym2B2F, ButtonIqomatB2F, ButtonBasmala1B2F, ButtonBasmala2B2F,
    ButtonFotiha1B2F, ButtonFotiha2B2S, ButtonFotiha2B2F, ButtonIxlosB2S,
    ButtonNasB2F, ButtonFalaqB2F, ButtonDuoB2F, ButtonRobbanaB2F, ButtonHamd1B2F,
    ButtonHamd2B2F, ButtonHamd2B2S, ButtonSalavotB2F, ButtonSalomB2F, ButtonSamialloh1B2S, ButtonHamd1B2S, ButtonSamialloh1B2F,
    ButtonSamialloh2B2S, ButtonSamialloh2B2F, ButtonSanoB2F, ButtonTaavvuzB2F,
    ButtonTakbirJalsa1B2F, ButtonTakbirJalsa2B2S, ButtonTakbirJalsa2B2F,
    ButtonTakbirKirishB2F, ButtonTakbirQadaB2S, ButtonSalomB2S,
    ButtonTakbirQadaB2F, ButtonTakbirQiyom2B2F, ButtonTakbirRuku1B2F,
    ButtonTakbirRuku2B2F, ButtonTakbirSajda1_1B2F, ButtonTakbirSajda1_2B2F,
    ButtonTakbirSajda2_1B2F, ButtonTakbirSajda2_2B2F, ButtonKursiB2F,
    ButtonTasbehA4F, ButtonTasbehP2S, ButtonTasbehSh2S, ButtonTasbehV3V,
    ButtonTashahhud1V3V, ButtonTashahhud1X4F, ButtonTashahhud1Sh3F,
    ButtonTashahhud1P4F, ButtonTashahhud1A4F, ButtonTashahhud2A4F,
    ButtonTashahhud2V3V, ButtonTashahhud2X4F, ButtonTashahhud2Sh3F,
    ButtonTashahhudB2S, ButtonSalavotB2S, ButtonRobbanaB2S,
    ButtonTakbirQiyom2B2S, ButtonBasmala2B2S, ButtonTakbirRuku2B2S,
    ButtonTakbirSajda1_1B2S, ButtonAla1_1B2S, ButtonTakbirJalsa1B2S,
    ButtonTakbirSajda1_2B2S, ButtonTakbirSajda2_1B2S, ButtonTakbirSajda2_2B2S,
    ButtonTashahhudB2F, ButtonTashahhud2P4S, ButtonTashahhud1P4S,
    ButtonTashahhud2P4F, ButtonTashahhudP2S, ButtonTashahhudSh2S,
    ButtonTashahhudX2S, ButtonKavsarB2S, ButtonFotiha1B2S, ButtonBasmala1B2S,
    ButtonTaavvuzB2S, ButtonSanoB2S, ButtonTakbirKirishB2S, ButtonAzonDuoB2S,
    ButtonAzonB2S, ButtonTakbirRuku1B2S, ButtonAziym1B2S, ButtonAzonDuoA4F,
    ButtonQunut, ButtonTakbirQunut, ButtonNext, ButtonPrevious: TSpeedButton;
    ImageAyol, ImageErkak: TImage;
    IniPropStorage1: TIniPropStorage;
    LabelTakbirQunut, LabelQunut, LabelAzonDuoA4F, LabelAzonDuoSh3F,
    LabelAla1_1V3V, LabelAla1_1X2S, LabelAla1_1X4F, LabelAla1_1Sh2S,
    LabelAla1_1Sh3F, LabelAla1_1P2S, LabelAla1_1A4F, LabelAla1_2V3V,
    LabelAla1_2X2S, LabelAla1_2X4F, LabelAla1_2Sh2S, LabelAla1_2Sh3F,
    LabelAla1_2P2S, LabelAla1_2A4F, LabelAla2_1V3V, LabelAla2_1X2S,
    LabelAla2_1X4F, LabelAla2_1Sh2S, LabelAla2_1Sh3F, LabelAla2_1P2S,
    LabelAla2_1A4F, LabelAla2_2V3V, LabelAla2_2X2S, LabelAla2_2X4F,
    LabelAla2_2Sh2S, LabelAla2_2Sh3F, LabelAla2_2P2S, LabelAla2_2A4F,
    LabelAla3_1A4F, LabelAla3_1V3V, LabelAla3_1X4F, LabelAla3_1Sh3F,
    LabelAla3_2A4F, LabelAla3_2V3V, LabelAla3_2X4F, LabelAla3_2Sh3F,
    LabelAla4_1A4F, LabelAla4_1X4F, LabelAla4_2A4F, LabelAla4_2X4F, LabelDuoX4F,
    LabelDuoSh3F, LabelDuoB2F, LabelDuoA4F, LabelAziym1V3V, LabelAziym1X2S,
    LabelAziym1X4F, LabelAziym1Sh2S, LabelAziym1Sh3F, LabelAziym1P2S,
    LabelAziym1A4F, LabelAzonA4F, LabelAzonDuoX4F, LabelAzonX4F, LabelAzonSh3F,
    LabelAziym2V3V, LabelAziym2X2S, LabelAziym2X4F, LabelAziym2Sh2S,
    LabelAziym2Sh3F, LabelAziym2P2S, LabelAziym2A4F, LabelAziym3A4F,
    LabelAziym3V3V, LabelAziym3X4F, LabelAziym3Sh3F, LabelAziym4A4F,
    LabelAziym4X4F, LabelBasmala1V3V, LabelBasmala1X2S, LabelBasmala1X4F,
    LabelBasmala1Sh2S, LabelBasmala1Sh3F, LabelBasmala1P2S, LabelBasmala1A4F,
    LabelBasmala2V3V, LabelBasmala2X2S, LabelBasmala2X4F, LabelBasmala2Sh2S,
    LabelBasmala2Sh3F, LabelBasmala2P2S, LabelBasmala2A4F, LabelBasmala3A4F,
    LabelBasmala3V3V, LabelBasmala3X4F, LabelBasmala3Sh3F, LabelBasmala4A4F,
    LabelBasmala4X4F, LabelFalaqSh2S, LabelKursiV3V, LabelNasV3V, LabelFalaqX2S,
    LabelFotiha1V3V, LabelFotiha1X2S, LabelFotiha1X4F, LabelFotiha1Sh2S,
    LabelFotiha1Sh3F, LabelFotiha1P2S, LabelFotiha1A4F, LabelFotiha2V3V,
    LabelFotiha2X2S, LabelFotiha2X4F, LabelFotiha2Sh2S, LabelFotiha2Sh3F,
    LabelFotiha2P2S, LabelFotiha2A4F, LabelFotiha3A4F, LabelFotiha3V3V,
    LabelFotiha3X4F, LabelFotiha3Sh3F, LabelFotiha4A4F, LabelFotiha4X4F,
    LabelIqomatA4F, LabelIqomatX4F, LabelIqomatSh3F, LabelIxlosA4F,
    LabelIxlosX4F, LabelIxlosSh3F, LabelIxlosV3V, LabelFalaqV3V, LabelKavsarA4F,
    LabelKavsarX4F, LabelKavsarSh3F, LabelKursiA4F, LabelKursiP2S,
    LabelKursiSh2S, LabelNasP2S, LabelFalaqP2S, LabelKursiB2F, LabelDuoP4F,
    LabelAla1_1P4S, LabelAla1_1P4F, LabelAla1_2P4S, LabelAla1_2P4F,
    LabelAla2_1P4S, LabelAla2_1P4F, LabelAla2_2P4F, LabelAla3_1P4S,
    LabelAla2_2P4S, LabelAla3_2P4S, LabelAla3_1P4F, LabelAla3_2P4F,
    LabelAla4_1P4S, LabelAla4_1P4F, LabelAla4_2P4S, LabelAla4_2P4F,
    LabelAziym1P4S, LabelAziym1P4F, LabelAzonP4S, LabelAzonDuoP4S,
    LabelIqomatP4F, LabelAziym2P4S, LabelAziym2P4F, LabelAziym3P4S,
    LabelAziym3P4F, LabelAziym4P4S, LabelAziym4P4F, LabelBasmala1P4S,
    LabelBasmala1P4F, LabelBasmala2P4S, LabelBasmala2P4F, LabelBasmala3P4S,
    LabelBasmala3P4F, LabelBasmala4P4S, LabelBasmala4P4F, LabelFotiha1P4F,
    LabelFotiha2P4F, LabelFotiha3P4F, LabelFotiha4P4F, LabelIxlosP4F,
    LabelKavsarP4F, LabelNasSh2S, LabelNasP4S, LabelFotiha1P4S, LabelFotiha2P4S,
    LabelFotiha3P4S, LabelFotiha4P4S, LabelIxlosP4S, LabelFalaqP4S,
    LabelKavsarP4S, LabelNasX2S, LabelNiyatV3V, LabelNiyatX2S, LabelNiyatX4F,
    LabelNiyatSh2S, LabelNiyatSh3F, LabelNiyatP2S, LabelNiyatA4F, LabelNiyatP4S,
    LabelNiyatP4F, LabelHamd1V3V, LabelHamd1X2S, LabelHamd1X4F, LabelHamd1Sh2S,
    LabelHamd1Sh3F, LabelHamd1P2S, LabelHamd1A4F, LabelHamd1P4S, LabelHamd1P4F,
    LabelRobbanaV3V, LabelRobbanaX2S, LabelRobbanaX4F, LabelRobbanaSh2S,
    LabelRobbanaSh3F, LabelRobbanaP2S, LabelRobbanaA4F, LabelRobbanaP4S,
    LabelRobbanaP4F, LabelHamd2V3V, LabelHamd2X2S, LabelHamd2X4F, LabelHamd2Sh2S,
    LabelHamd2Sh3F, LabelHamd2P2S, LabelHamd2A4F, LabelHamd2P4S, LabelHamd2P4F,
    LabelHamd3A4F, LabelHamd3V3V, LabelHamd3X4F, LabelHamd3Sh3F, LabelHamd3P4S,
    LabelHamd3P4F, LabelHamd4A4F, LabelHamd4X4F, LabelHamd4P4S, LabelHamd4P4F,
    LabelSajda1_2V3V, LabelSajda1_2X2S, LabelSajda1_2X4F, LabelSajda1_2Sh2S,
    LabelSajda1_2Sh3F, LabelSajda1_2P2S, LabelSajda1_2A4F, LabelSajda1_2P4S,
    LabelSajda1_2P4F, LabelSalavotV3V, LabelSalavotX2S, LabelSalavotX4F,
    LabelSalavotSh2S, LabelSalavotSh3F, LabelSalavotP2S, LabelSalavotA4F,
    LabelSalavotP4S, LabelSalavotP4F, LabelSalomV3V, LabelSalomX2S,
    LabelSalomX4F, LabelSalomSh2S, LabelSalomSh3F, LabelSalomP2S, LabelSalomA4F,
    LabelSalomP4S, LabelSalomP4F, LabelSamialloh1V3V, LabelSamialloh1X2S,
    LabelSamialloh1X4F, LabelSamialloh1Sh2S, LabelSamialloh1Sh3F,
    LabelSamialloh1P2S, LabelSamialloh1A4F, LabelSamialloh1P4S,
    LabelSamialloh1P4F, LabelSamialloh2V3V, LabelSamialloh2X2S,
    LabelSamialloh2X4F, LabelSamialloh2Sh2S, LabelSamialloh2Sh3F,
    LabelSamialloh2P2S, LabelSamialloh2A4F, LabelSamialloh2P4S,
    LabelSamialloh2P4F, LabelSamialloh3A4F, LabelSamialloh3V3V,
    LabelSamialloh3X4F, LabelSamialloh3Sh3F, LabelSamialloh3P4S,
    LabelSamialloh3P4F, LabelSamialloh4A4F, LabelSamialloh4X4F,
    LabelSamialloh4P4S, LabelSamialloh4P4F, LabelSanoV3V, LabelSanoX2S,
    LabelSanoX4F, LabelSanoSh2S, LabelSanoSh3F, LabelSanoP2S, LabelSanoA4F,
    LabelSanoP4S, LabelSanoP4F, LabelTaavvuzV3V, LabelTaavvuzX2S,
    LabelTaavvuzX4F, LabelTaavvuzSh2S, LabelTaavvuzSh3F, LabelTaavvuzP2S,
    LabelTaavvuzA4F, LabelTaavvuzP4S, LabelTaavvuzP4F, LabelTakbirJalsa1V3V,
    LabelTakbirJalsa1X2S, LabelTakbirJalsa1X4F, LabelTakbirJalsa1Sh2S,
    LabelTakbirJalsa1Sh3F, LabelTakbirJalsa1P2S, LabelTakbirJalsa1A4F,
    LabelTakbirJalsa1P4S, LabelTakbirJalsa1P4F, LabelTakbirJalsa2V3V,
    LabelTakbirJalsa2X2S, LabelTakbirJalsa2X4F, LabelTakbirJalsa2Sh2S,
    LabelTakbirJalsa2Sh3F, LabelTakbirJalsa2P2S, LabelTakbirJalsa2A4F,
    LabelTakbirJalsa2P4S, LabelTakbirJalsa2P4F, LabelTakbirJalsa3A4F,
    LabelTakbirJalsa3V3V, LabelTakbirJalsa3X4F, LabelTakbirJalsa3Sh3F,
    LabelTakbirJalsa3P4S, LabelTakbirJalsa3P4F, LabelTakbirJalsa4A4F,
    LabelTakbirJalsa4X4F, LabelTakbirJalsa4P4S, LabelTakbirJalsa4P4F,
    LabelTakbirKirishV3V, LabelTakbirKirishX2S, LabelTakbirKirishX4F,
    LabelTakbirKirishSh2S, LabelTakbirKirishSh3F, LabelTakbirKirishP2S,
    LabelTakbirKirishA4F, LabelTakbirKirishP4S, LabelTakbirKirishP4F,
    LabelTakbirQada1V3V, LabelTakbirQada1X4F, LabelTakbirQada1Sh3F,
    LabelTakbirQada1P4F, LabelTakbirQada1A4F, LabelTakbirQada2A4F,
    LabelTakbirQada2V3V, LabelTakbirQada2X4F, LabelTakbirQada2Sh3F,
    LabelTakbirQada2P4S, LabelTakbirQada1P4S, LabelTakbirQada2P4F,
    LabelTakbirQadaP2S, LabelTakbirQadaSh2S, LabelTakbirQadaX2S,
    LabelTakbirQiyom2V3V, LabelTakbirQiyom2X2S, LabelTakbirQiyom2X4F,
    LabelTakbirQiyom2Sh2S, LabelTakbirQiyom2Sh3F, LabelTakbirQiyom2P2S,
    LabelTakbirQiyom2A4F, LabelTakbirQiyom2P4S, LabelTakbirQiyom2P4F,
    LabelTakbirQiyom3A4F, LabelTakbirQiyom3V3V, LabelTakbirQiyom3X4F,
    LabelTakbirQiyom3Sh3F, LabelTakbirQiyom3P4S, LabelTakbirQiyom3P4F,
    LabelTakbirQiyom4A4F, LabelTakbirQiyom4X4F, LabelTakbirQiyom4P4S,
    LabelTakbirQiyom4P4F, LabelTakbirRuku1V3V, LabelTakbirRuku1X2S,
    LabelTakbirRuku1X4F, LabelTakbirRuku1Sh2S, LabelTakbirRuku1Sh3F,
    LabelTakbirRuku1P2S, LabelTakbirRuku1A4F, LabelTakbirRuku1P4S,
    LabelTakbirRuku1P4F, LabelTakbirRuku2V3V, LabelTakbirRuku2X2S,
    LabelTakbirRuku2X4F, LabelTakbirRuku2Sh2S, LabelTakbirRuku2Sh3F,
    LabelTakbirRuku2P2S, LabelTakbirRuku2A4F, LabelTakbirRuku2P4S,
    LabelTakbirRuku2P4F, LabelTakbirRuku3A4F, LabelTakbirRuku3V3V,
    LabelTakbirRuku3X4F, LabelTakbirRuku3Sh3F, LabelTakbirRuku3P4S,
    LabelTakbirRuku3P4F, LabelTakbirRuku4A4F, LabelTakbirRuku4X4F,
    LabelTakbirRuku4P4S, LabelTakbirRuku4P4F, LabelTakbirSajda1_1V3V,
    LabelTakbirSajda1_1X2S, LabelTakbirSajda1_1X4F, LabelTakbirSajda1_1Sh2S,
    LabelTakbirSajda1_1Sh3F, LabelTakbirSajda1_1P2S, LabelTakbirSajda1_1A4F,
    LabelTakbirSajda1_1P4S, LabelTakbirSajda1_1P4F, LabelTakbirSajda2_1V3V,
    LabelTakbirSajda2_1X2S, LabelTakbirSajda2_1X4F, LabelTakbirSajda2_1Sh2S,
    LabelTakbirSajda2_1Sh3F, LabelTakbirSajda2_1P2S, LabelTakbirSajda2_1A4F,
    LabelTakbirSajda2_1P4S, LabelTakbirSajda2_1P4F, LabelTakbirSajda2_2V3V,
    LabelTakbirSajda2_2X2S, LabelTakbirSajda2_2X4F, LabelTakbirSajda2_2Sh2S,
    LabelTakbirSajda2_2Sh3F, LabelTakbirSajda2_2P2S, LabelTakbirSajda2_2P4F,
    LabelTakbirSajda2_2A4F, LabelTakbirSajda3_1A4F, LabelTakbirSajda3_1V3V,
    LabelTakbirSajda3_1X4F, LabelTakbirSajda3_1Sh3F, LabelTakbirSajda3_1P4S,
    LabelTakbirSajda2_2P4S, LabelTakbirSajda3_2A4F, LabelTakbirSajda3_2V3V,
    LabelTakbirSajda3_2X4F, LabelTakbirSajda3_2Sh3F, LabelTakbirSajda3_2P4S,
    LabelTakbirSajda3_1P4F, LabelTakbirSajda3_2P4F, LabelTakbirSajda4_1A4F,
    LabelTakbirSajda4_1X4F, LabelTakbirSajda4_1P4S, LabelTakbirSajda4_1P4F,
    LabelTakbirSajda4_2A4F, LabelTakbirSajda4_2X4F, LabelTakbirSajda4_2P4S,
    LabelTakbirSajda4_2P4F, LabelTasbehB2F, LabelAla1_1B2F, LabelAla1_2B2F,
    LabelAla2_1B2F, LabelAla2_2B2F, LabelAziym1B2F, LabelIqomatB2F,
    LabelAziym2B2F, LabelBasmala1B2F, LabelBasmala2B2F, LabelFotiha1B2F,
    LabelFotiha2B2F, LabelNasB2F, LabelFalaqB2F, LabelNiyatB2S, LabelNiyatB2F,
    LabelHamd1B2F, LabelRobbanaB2F, LabelHamd2B2F, LabelSajda1_2B2F,
    LabelSalavotB2F, LabelSalomB2F, LabelSamialloh1B2S,
    LabelHamd1B2S, LabelSamialloh1B2F, LabelSamialloh2B2F, LabelSanoB2F,
    LabelTaavvuzB2F, LabelTakbirJalsa1B2F, LabelTakbirJalsa2B2F,
    LabelTakbirKirishB2F, LabelTakbirQadaB2F, LabelTakbirQiyom2B2F,
    LabelTakbirRuku1B2F, LabelTakbirRuku2B2F, LabelTakbirSajda1_1B2S,
    LabelAla1_1B2S, LabelTakbirJalsa1B2S, LabelSajda1_2B2S, LabelAla1_2B2S,
    LabelTakbirQiyom2B2S, LabelBasmala2B2S, LabelFotiha2B2S,
    LabelTakbirKirishB2S, LabelIxlosB2S, LabelTakbirRuku2B2S, LabelAziym2B2S,
    LabelSamialloh2B2S, LabelHamd2B2S, LabelTakbirSajda1_1B2F,
    LabelTakbirSajda2_1B2S, LabelAla2_1B2S, LabelTakbirJalsa2B2S,
    LabelTakbirSajda2_1B2F, LabelTakbirSajda2_2B2S, LabelAla2_2B2S, LabelSanoB2S,
    LabelTakbirQadaB2S, LabelTakbirSajda2_2B2F, LabelTasbehA4F, LabelTasbehP2S,
    LabelTasbehSh2S, LabelTasbehV3V, LabelTashahhud1V3V, LabelTashahhud1X4F,
    LabelTashahhud1Sh3F, LabelTashahhud1P4F, LabelTashahhud1A4F,
    LabelTashahhud2A4F, LabelTashahhud2V3V, LabelTashahhud2X4F,
    LabelTashahhud2Sh3F, LabelTashahhudB2S, LabelSalavotB2S, LabelRobbanaB2S,
    LabelSalomB2S, LabelAzonB2S, LabelAzonDuoB2S, LabelTaavvuzB2S,
    LabelBasmala1B2S, LabelFotiha1B2S, LabelKavsarB2S, LabelTakbirRuku1B2S,
    LabelAziym1B2S, LabelBomdod, LabelPeshin, LabelAsr, LabelShom,
    LabelTashahhudB2F, LabelTashahhud2P4S, LabelTashahhud1P4S,
    LabelTashahhud2P4F, LabelTashahhudP2S, LabelTashahhudSh2S, LabelTashahhudX2S,
    LabelXufton: TLabel;
    MainMenu1: TMainMenu;
    MenuItemSettings, MenuItemExit, MenuItemAbout, MenuItemFile, MenuItemTools,
    MenuItemHelp: TMenuItem;
    PageControlMain, PageControlV3V, PageControlX2S, PageControlX4F,
    PageControlSh2S, PageControlSh3F, PageControlB2S, PageControlB2F,
    PageControlP2S, PageControlA4F, PageControlP4S, PageControlP4F,
    PageControlXufton, PageControlShom, PageControlAsr, PageControlPeshin,
    PageControlBomdod: TPageControl;
    PanelMain, PanelRight, PanelLeft, PanelBottom: TPanel;
    TabSheetDuoV3V, TabSheetDuoX4F, TabSheetDuoSh2S, TabSheetDuoSh3F,
    TabSheetDuoP2S, TabSheetDuoP4F, TabSheetDuoA4F, TabSheetJalsa1V3V,
    TabSheetJalsa1X2S, TabSheetJalsa1X4F, TabSheetJalsa1Sh2S, TabSheetJalsa1Sh3F,
    TabSheetJalsa1P2S, TabSheetJalsa1P4F, TabSheetJalsa1A4F, TabSheetJalsa2V3V,
    TabSheetJalsa2X2S, TabSheetJalsa2X4F, TabSheetJalsa2Sh2S, TabSheetJalsa2Sh3F,
    TabSheetJalsa2P2S, TabSheetJalsa2P4F, TabSheetJalsa2A4F, TabSheetJalsa3V3V,
    TabSheetJalsa3X4F, TabSheetJalsa3Sh3F, TabSheetJalsa3P4F, TabSheetJalsa3A4F,
    TabSheetJalsa4X4F, TabSheetJalsa4P4F, TabSheetJalsa4A4F, TabSheetKirishV3V,
    TabSheetKirishX2S, TabSheetKirishX4F, TabSheetKirishSh2S, TabSheetKirishSh3F,
    TabSheetKirishP2S, TabSheetKirishP4F, TabSheetKirishA4F, TabSheetQada1V3V,
    TabSheetQada1X4F, TabSheetQada1Sh3F, TabSheetQada1P4F, TabSheetQada1A4F,
    TabSheetQada2V3V, TabSheetQada2X4F, TabSheetQada2Sh3F, TabSheetQada2P4F,
    TabSheetQada2A4F, TabSheetQadaP2S, TabSheetQadaSh2S, TabSheetQadaX2S,
    TabSheetQiyom1V3V, TabSheetQiyom1X2S, TabSheetQiyom1X4F, TabSheetQiyom1Sh2S,
    TabSheetQiyom1Sh3F, TabSheetQiyom1P2S, TabSheetQiyom1P4F, TabSheetQiyom1A4F,
    TabSheetQiyom2V3V, TabSheetQiyom2X2S, TabSheetQiyom2X4F, TabSheetQiyom2Sh2S,
    TabSheetQiyom2Sh3F, TabSheetQiyom2P2S, TabSheetQiyom2P4F, TabSheetQiyom2A4F,
    TabSheetQiyom3V3V, TabSheetQiyom3X4F, TabSheetQiyom3Sh3F, TabSheetQiyom3P4F,
    TabSheetQiyom3A4F, TabSheetQiyom4X4F, TabSheetQiyom4P4F, TabSheetQiyom4A4F,
    TabSheetQovma1V3V, TabSheetQovma1X2S, TabSheetQovma1X4F, TabSheetQovma1Sh2S,
    TabSheetQovma1Sh3F, TabSheetQovma1P2S, TabSheetQovma1P4F, TabSheetQovma1A4F,
    TabSheetQovma2V3V, TabSheetQovma2X2S, TabSheetQovma2X4F, TabSheetQovma2Sh2S,
    TabSheetQovma2Sh3F, TabSheetQovma2P2S, TabSheetQovma2P4F, TabSheetQovma2A4F,
    TabSheetQovma3V3V, TabSheetQovma3X4F, TabSheetQovma3Sh3F, TabSheetQovma3P4F,
    TabSheetQovma3A4F, TabSheetQovma4X4F, TabSheetQovma4P4F, TabSheetQovma4A4F,
    TabSheetRuku1V3V, TabSheetRuku1X2S, TabSheetRuku1X4F, TabSheetRuku1Sh2S,
    TabSheetRuku1Sh3F, TabSheetRuku1P2S, TabSheetRuku1P4F, TabSheetRuku1A4F,
    TabSheetRuku2V3V, TabSheetRuku2X2S, TabSheetRuku2X4F, TabSheetRuku2Sh2S,
    TabSheetRuku2Sh3F, TabSheetRuku2P2S, TabSheetRuku2P4F, TabSheetRuku2A4F,
    TabSheetRuku3V3V, TabSheetRuku3X4F, TabSheetRuku3Sh3F, TabSheetRuku3P4F,
    TabSheetRuku3A4F, TabSheetRuku4X4F, TabSheetRuku4P4F, TabSheetRuku4A4F,
    TabSheetSajda1_1V3V, TabSheetSajda1_1X2S, TabSheetSajda1_1X4F,
    TabSheetSajda1_1Sh2S, TabSheetSajda1_1Sh3F, TabSheetSajda1_1P2S,
    TabSheetSajda1_1P4F, TabSheetSajda1_1A4F, TabSheetSajda1_2V3V,
    TabSheetSajda1_2X2S, TabSheetSajda1_2X4F, TabSheetSajda1_2Sh2S,
    TabSheetSajda1_2Sh3F, TabSheetSajda1_2P2S, TabSheetSajda1_2P4F,
    TabSheetSajda1_2A4F, TabSheetSajda2_1V3V, TabSheetSajda2_1X2S,
    TabSheetSajda2_1X4F, TabSheetSajda2_1Sh2S, TabSheetSajda2_1Sh3F,
    TabSheetSajda2_1P2S, TabSheetSajda2_1P4F, TabSheetSajda2_1A4F,
    TabSheetSajda2_2V3V, TabSheetSajda2_2X2S, TabSheetSajda2_2X4F,
    TabSheetSajda2_2Sh2S, TabSheetSajda2_2Sh3F, TabSheetSajda2_2P2S,
    TabSheetSajda2_2P4F, TabSheetSajda2_2A4F, TabSheetSajda3_1V3V,
    TabSheetSajda3_1X4F, TabSheetSajda3_1Sh3F, TabSheetSajda3_1P4F,
    TabSheetSajda3_1A4F, TabSheetSajda3_2V3V, TabSheetSajda3_2X4F,
    TabSheetSajda3_2Sh3F, TabSheetSajda3_2P4F, TabSheetSajda3_2A4F,
    TabSheetSajda4_1X4F, TabSheetSajda4_1P4F, TabSheetSajda4_1A4F,
    TabSheetSajda4_2A4F, TabSheetSajda4_2X4F, TabSheetSajda4_2P4S,
    TabSheetJalsa4P4S, TabSheetSajda4_1P4S, TabSheetQovma4P4S, TabSheetRuku4P4S,
    TabSheetQiyom4P4S, TabSheetSajda3_2P4S, TabSheetJalsa3P4S,
    TabSheetSajda3_1P4S, TabSheetQovma3P4S, TabSheetRuku3P4S, TabSheetQiyom3P4S,
    TabSheetQada1P4S, TabSheetDuoB2F, TabSheetJalsa1B2F, TabSheetJalsa1P4S,
    TabSheetJalsa2B2F, TabSheetJalsa2P4S, TabSheetKirishB2F, TabSheetKirishP4S,
    TabSheetQadaB2F, TabSheetQada2P4S, TabSheetQiyom1B2F, TabSheetQiyom1P4S,
    TabSheetQiyom2B2F, TabSheetQiyom2P4S, TabSheetQovma1B2F, TabSheetQovma1P4S,
    TabSheetQovma2B2F, TabSheetQovma2P4S, TabSheetRuku1B2F, TabSheetRuku1P4S,
    TabSheetRuku2B2F, TabSheetRuku2P4S, TabSheetSajda1_1B2F, TabSheetSajda1_1P4S,
    TabSheetSajda1_2B2F, TabSheetSajda1_2P4S, TabSheetSajda2_1B2F,
    TabSheetSajda2_1P4S, TabSheetSajda2_2B2F, TabSheetSajda2_2P4S,
    TabSheetSajda4_2P4F, TabSheetSalomV3V, TabSheetSalomX2S, TabSheetSalomX4F,
    TabSheetSalomSh2S, TabSheetSalomSh3F, TabSheetSalomB2S, TabSheetQadaB2S,
    TabSheetSajda2_2B2S, TabSheetJalsa2B2S, TabSheetSajda2_1B2S,
    TabSheetQovma2B2S, TabSheetRuku2B2S, TabSheetKirishB2S, TabSheetQiyom1B2S,
    TabSheetRuku1B2S, TabSheetQovma1B2S, TabSheetSajda1_1B2S, TabSheetJalsa1B2S,
    TabSheetSajda1_2B2S, TabSheetQiyom2B2S, TabSheetB2S, TabSheetSalomB2F,
    TabSheetSalomP2S, TabSheetSalomA4F, TabSheetSalomP4S, TabSheetSalomP4F,
    TabSheetX2S, TabSheetV3V, TabSheetB2F, TabSheetP4S, TabSheetP4F, TabSheetP2S,
    TabSheetA4F, TabSheetSh3F, TabSheetSh2S, TabSheetX4F, TabSheetBomdod,
    TabSheetPeshin, TabSheetAsr, TabSheetShom, TabSheetXufton: TTabSheet;
    Timer1: TTimer;
    TrayIcon1: TTrayIcon;
    procedure ActionNextExecute(Sender: TObject);
    procedure ActionPreviousExecute(Sender: TObject);
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
    procedure Timer1Timer(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.lfm}

{ TFormMain }

procedure TFormMain.FormCreate(Sender: TObject);
begin
  IniPropStorage1.IniFileName:=GetAppConfigDir(false)+'namozxon.ini';
end;

procedure TFormMain.FormActivate(Sender: TObject);
begin
  if FormSettings.ComboBoxTranslit.Text = 'Кирилл' then
    InterfaceKirill
  else
    InterfaceLotin;
  ProcImagesLoad;
  Amallar;
end;

procedure TFormMain.MenuItemAboutClick(Sender: TObject);
begin
  FormAbout.ShowModal;
end;

procedure TFormMain.MenuItemExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.MenuItemSettingsClick(Sender: TObject);
begin
  FormSettings.ShowModal;
end;

procedure TFormMain.ButtonNextClick(Sender: TObject);
begin
  ActionNext.Execute;
end;

procedure TFormMain.ButtonPreviousClick(Sender: TObject);
begin
  ActionPrevious.Execute;
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  Amallar;
end;

procedure TFormMain.TrayIcon1Click(Sender: TObject);
begin
  Amallar;
end;

procedure TFormMain.ButtonAzonB2SClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzonBomdod;
  FormDetails.Caption:=Azon;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAzonDuoA4FClick(Sender: TObject);
begin
  ProcAzonDuo;
end;

procedure TFormMain.ButtonAziym1B2SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym1P2SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym1P4SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym1Sh2SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym1Sh3FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym1V3VClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym1X2SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym1X4FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym2A4FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym2B2FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym2B2SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym2P2SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym2P4FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym2P4SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym2Sh2SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym2Sh3FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym2V3VClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym2X2SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym2X4FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym3A4FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym3P4FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym3P4SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym3Sh3FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym3V3VClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym3X4FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym4A4FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym4P4FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym4P4SClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym4X4FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAzonA4FClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetAzon;
  FormDetails.Caption:=Azon;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonAla1_1B2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_1P2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_1P4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_1P4SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_1Sh2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_1Sh3FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_1V3VClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_1X2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_1X4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_2A4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_2B2FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_1B2FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_1A4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ActionNextExecute(Sender: TObject);
begin
  case PageControlMain.ActivePageIndex of
  0: case PageControlBomdod.ActivePageIndex of
     0: case PageControlB2S.ActivePageIndex of
        0: begin
           ButtonPrevious.Enabled:=true;
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
            ButtonPrevious.Enabled:=false;
            PageControlB2S.ActivePageIndex:=14;
            end;
        end;
     1: case PageControlB2F.ActivePageIndex of
        0: begin
           ButtonPrevious.Enabled:=true;
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
            ButtonNext.Enabled:=false;
            PageControlB2F.ActivePageIndex:=15;
            end;
        end;
     end;
  1: case PageControlPeshin.ActivePageIndex of
     0: case PageControlP4S.ActivePageIndex of
        0: begin
           ButtonPrevious.Enabled:=true;
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
            ButtonNext.Enabled:=false;
            PageControlP4S.ActivePageIndex:=27;
            end;
        end;
     1: case PageControlP4F.ActivePageIndex of
        0: begin
           ButtonPrevious.Enabled:=true;
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
            ButtonNext.Enabled:=false;
            PageControlP4F.ActivePageIndex:=28;
            end;
        end;
     2: case PageControlP2S.ActivePageIndex of
        0: begin
           ButtonPrevious.Enabled:=true;
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
            ButtonNext.Enabled:=false;
            PageControlP2S.ActivePageIndex:=15;
            end;
        end;
     end;
  2: case PageControlA4F.ActivePageIndex of
        0: begin
           ButtonPrevious.Enabled:=true;
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
            ButtonNext.Enabled:=false;
            PageControlA4F.ActivePageIndex:=28;
            end;
        end;
  3: case PageControlShom.ActivePageIndex of
     0: case PageControlSh3F.ActivePageIndex of
        0: begin
           ButtonPrevious.Enabled:=true;
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
            ButtonNext.Enabled:=false;
            PageControlSh3F.ActivePageIndex:=22;
            end;
        end;
     1: case PageControlSh2S.ActivePageIndex of
        0: begin
           ButtonPrevious.Enabled:=true;
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
            ButtonNext.Enabled:=false;
            PageControlSh2S.ActivePageIndex:=15;
            end;
        end;
     end;
  4: case PageControlXufton.ActivePageIndex of
     0: case PageControlX4F.ActivePageIndex of
        0: begin
           ButtonPrevious.Enabled:=true;
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
            ButtonNext.Enabled:=false;
            PageControlX4F.ActivePageIndex:=28;
            end;
        end;
     1: case PageControlX2S.ActivePageIndex of
        0: begin
           ButtonPrevious.Enabled:=true;
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
            ButtonNext.Enabled:=false;
            PageControlX2S.ActivePageIndex:=14;
            end;
        end;
     2: case PageControlV3V.ActivePageIndex of
        0: begin
           ButtonPrevious.Enabled:=true;
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
            ButtonNext.Enabled:=false;
            PageControlV3V.ActivePageIndex:=22;
            end;
        end;
     end;
  end;
end;

procedure TFormMain.ActionPreviousExecute(Sender: TObject);
begin
  case PageControlMain.ActivePageIndex of
  0: case PageControlBomdod.ActivePageIndex of
     0: case PageControlB2S.ActivePageIndex of
        1: begin
           ButtonPrevious.Enabled:=false;
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
            ButtonNext.Enabled:=true;
            PageControlB2S.ActivePageIndex:=13;
            end;
        end;
     1: case PageControlB2F.ActivePageIndex of
        1: begin
           ButtonPrevious.Enabled:=false;
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
            ButtonNext.Enabled:=true;
            PageControlB2F.ActivePageIndex:=14;
            end;
        end;
     end;
  1: case PageControlPeshin.ActivePageIndex of
     0: case PageControlP4S.ActivePageIndex of
        1: begin
           ButtonPrevious.Enabled:=false;
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
            ButtonNext.Enabled:=true;
            PageControlP4S.ActivePageIndex:=26;
            end;
        end;
     1: case PageControlP4F.ActivePageIndex of
        1: begin
           ButtonPrevious.Enabled:=false;
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
            ButtonNext.Enabled:=true;
            PageControlP4F.ActivePageIndex:=27;
            end;
        end;
     2: case PageControlP2S.ActivePageIndex of
        1: begin
           ButtonPrevious.Enabled:=false;
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
            ButtonNext.Enabled:=true;
            PageControlP2S.ActivePageIndex:=14;
            end;
        end;
     end;
  2: case PageControlA4F.ActivePageIndex of
        1: begin
           ButtonPrevious.Enabled:=false;
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
            ButtonNext.Enabled:=true;
            PageControlA4F.ActivePageIndex:=27;
            end;
        end;
  3: case PageControlShom.ActivePageIndex of
     0: case PageControlSh3F.ActivePageIndex of
        1: begin
           ButtonPrevious.Enabled:=false;
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
            ButtonNext.Enabled:=true;
            PageControlSh3F.ActivePageIndex:=21;
            end;
        end;
     1: case PageControlSh2S.ActivePageIndex of
        1: begin
           ButtonPrevious.Enabled:=false;
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
            ButtonNext.Enabled:=true;
            PageControlSh2S.ActivePageIndex:=14;
            end;
        end;
     end;
  4: case PageControlXufton.ActivePageIndex of
     0: case PageControlX4F.ActivePageIndex of
        1: begin
           ButtonPrevious.Enabled:=false;
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
            ButtonNext.Enabled:=true;
            PageControlX4F.ActivePageIndex:=27;
            end;
        end;
     1: case PageControlX2S.ActivePageIndex of
        1: begin
           ButtonPrevious.Enabled:=false;
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
            ButtonNext.Enabled:=true;
            PageControlX2S.ActivePageIndex:=13;
            end;
        end;
     2: case PageControlV3V.ActivePageIndex of
        1: begin
           ButtonPrevious.Enabled:=false;
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
            ButtonNext.Enabled:=true;
            PageControlV3V.ActivePageIndex:=21;
            end;
        end;
     end;
  end;
end;

procedure TFormMain.ButtonAla1_2B2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_2P2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_2P4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_2P4SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_2Sh2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_2Sh3FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_2V3VClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_2X2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla1_2X4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_1A4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_1B2FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_1B2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_1P2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_1P4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_1P4SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_1Sh2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_1Sh3FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_1V3VClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_1X2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_1X4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_2A4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_2B2FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_2B2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_2P2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_2P4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_2P4SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_2Sh2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_2Sh3FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_2V3VClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_2X2SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla2_2X4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_1A4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_1P4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_1P4SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_1Sh3FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_1V3VClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_1X4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_2A4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_2P4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_2P4SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_2Sh3FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_2V3VClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla3_2X4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla4_1A4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla4_1P4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla4_1P4SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla4_1X4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla4_2A4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla4_2P4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla4_2P4SClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonAla4_2X4FClick(Sender: TObject);
begin
  ProcAla;
end;

procedure TFormMain.ButtonDuoA4FClick(Sender: TObject);
begin
  ProcDuo;
end;

procedure TFormMain.ButtonDuoB2FClick(Sender: TObject);
begin
  ProcDuo;
end;

procedure TFormMain.ButtonDuoP4FClick(Sender: TObject);
begin
  ProcDuo;
end;

procedure TFormMain.ButtonDuoSh3FClick(Sender: TObject);
begin
  ProcDuo;
end;

procedure TFormMain.ButtonAntassalamV3VClick(Sender: TObject);
begin
  ProcDuo;
end;

procedure TFormMain.ButtonDuoX4FClick(Sender: TObject);
begin
  ProcDuo;
end;

procedure TFormMain.ButtonAziym1A4FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAziym1B2FClick(Sender: TObject);
begin
  ProcAziym;
end;

procedure TFormMain.ButtonAzonDuoB2SClick(Sender: TObject);
begin
  ProcAzonDuo;
end;

procedure TFormMain.ButtonAzonDuoP4SClick(Sender: TObject);
begin
  ProcAzonDuo;
end;

procedure TFormMain.ButtonAzonDuoSh3FClick(Sender: TObject);
begin
  ProcAzonDuo;
end;

procedure TFormMain.ButtonAzonDuoX4FClick(Sender: TObject);
begin
  ProcAzonDuo;
end;

procedure TFormMain.ButtonAzonP4SClick(Sender: TObject);
begin
  ProcAzonDuo;
end;

procedure TFormMain.ButtonAzonSh3FClick(Sender: TObject);
begin
  ProcAzon;
end;

procedure TFormMain.ButtonAzonX4FClick(Sender: TObject);
begin
  ProcAzon;
end;

procedure TFormMain.ButtonBasmala1A4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala1B2FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala1B2SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala1P2SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala1P4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala1P4SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala1Sh2SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala1Sh3FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala1V3VClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala1X2SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala1X4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala2A4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala2B2FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala2B2SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala2P2SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala2P4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala2P4SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala2Sh2SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala2Sh3FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala2V3VClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala2X2SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala2X4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala3A4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala3P4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala3P4SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala3Sh3FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala3V3VClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala3X4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala4A4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala4P4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala4P4SClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonBasmala4X4FClick(Sender: TObject);
begin
  ProcBasmala;
end;

procedure TFormMain.ButtonFalaqB2FClick(Sender: TObject);
begin
  ProcFalaq;
end;

procedure TFormMain.ButtonFalaqP2SClick(Sender: TObject);
begin
  ProcFalaq;
end;

procedure TFormMain.ButtonFalaqP4SClick(Sender: TObject);
begin
  ProcFalaq;
end;

procedure TFormMain.ButtonFalaqSh2SClick(Sender: TObject);
begin
  ProcFalaq;
end;

procedure TFormMain.ButtonFalaqV3VClick(Sender: TObject);
begin
  ProcFalaq;
end;

procedure TFormMain.ButtonFalaqX2SClick(Sender: TObject);
begin
  ProcFalaq;
end;

procedure TFormMain.ButtonFotiha1A4F1Click(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha1A4FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha1B2FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha1B2SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha1P2SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha1P4FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha1P4SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha1Sh2SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha1Sh3FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha1V3VClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha1X2SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha2A4FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha2B2FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha2B2SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha2P2SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha2P4FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha2P4SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha2Sh2SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha2Sh3FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha2V3VClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha2X2SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha2X4FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha3A4FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha3P4FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha3P4SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha3Sh3FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha3V3VClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha3X4FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha4A4FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha4P4FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha4P4SClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonFotiha4X4FClick(Sender: TObject);
begin
  ProcFotiha;
end;

procedure TFormMain.ButtonIqomatA4FClick(Sender: TObject);
begin
  ProcIqomat;
end;

procedure TFormMain.ButtonIqomatB2FClick(Sender: TObject);
begin
  ProcIqomat;
end;

procedure TFormMain.ButtonIqomatP4FClick(Sender: TObject);
begin
  ProcIqomat;
end;

procedure TFormMain.ButtonIqomatSh3FClick(Sender: TObject);
begin
  ProcIqomat;
end;

procedure TFormMain.ButtonIqomatX4FClick(Sender: TObject);
begin
  ProcIqomat;
end;

procedure TFormMain.ButtonIxlosA4FClick(Sender: TObject);
begin
  ProcIxlos;
end;

procedure TFormMain.ButtonIxlosB2SClick(Sender: TObject);
begin
  ProcIxlos;
end;

procedure TFormMain.ButtonIxlosP4FClick(Sender: TObject);
begin
  ProcIxlos;
end;

procedure TFormMain.ButtonIxlosP4SClick(Sender: TObject);
begin
  ProcIxlos;
end;

procedure TFormMain.ButtonIxlosSh3FClick(Sender: TObject);
begin
  ProcIxlos;
end;

procedure TFormMain.ButtonIxlosV3VClick(Sender: TObject);
begin
  ProcIxlos;
end;

procedure TFormMain.ButtonIxlosX4FClick(Sender: TObject);
begin
  ProcIxlos;
end;

procedure TFormMain.ButtonKavsarA4FClick(Sender: TObject);
begin
  ProcKavsar;
end;

procedure TFormMain.ButtonKavsarB2SClick(Sender: TObject);
begin
  ProcKavsar;
end;

procedure TFormMain.ButtonKavsarP4FClick(Sender: TObject);
begin
  ProcKavsar;
end;

procedure TFormMain.ButtonKavsarP4SClick(Sender: TObject);
begin
  ProcKavsar;
end;

procedure TFormMain.ButtonKavsarSh3FClick(Sender: TObject);
begin
  ProcKavsar;
end;

procedure TFormMain.ButtonKavsarX4FClick(Sender: TObject);
begin
  ProcKavsar;
end;

procedure TFormMain.ButtonKursiA4FClick(Sender: TObject);
begin
  ProcKursi;
end;

procedure TFormMain.ButtonKursiB2FClick(Sender: TObject);
begin
  ProcKursi;
end;

procedure TFormMain.ButtonKursiP2SClick(Sender: TObject);
begin
  ProcKursi;
end;

procedure TFormMain.ButtonKursiSh2SClick(Sender: TObject);
begin
  ProcKursi;
end;

procedure TFormMain.ButtonKursiV3VClick(Sender: TObject);
begin
  ProcKursi;
end;

procedure TFormMain.ButtonNasB2FClick(Sender: TObject);
begin
  ProcNas;
end;

procedure TFormMain.ButtonNasP2SClick(Sender: TObject);
begin
  ProcNas;
end;

procedure TFormMain.ButtonNasP4SClick(Sender: TObject);
begin
  ProcNas;
end;

procedure TFormMain.ButtonNasSh2SClick(Sender: TObject);
begin
  ProcNas;
end;

procedure TFormMain.ButtonNasV3VClick(Sender: TObject);
begin
  ProcNas;
end;

procedure TFormMain.ButtonNasX2SClick(Sender: TObject);
begin
  ProcNas;
end;

procedure TFormMain.ButtonQunutClick(Sender: TObject);
begin
  FormDetails.PageControl1.ActivePage:=FormDetails.TabSheetQunut;
  FormDetails.Caption:=Qunut;
  FormDetails.ShowModal;
end;

procedure TFormMain.ButtonRobbanaA4FClick(Sender: TObject);
begin
  ProcRobbana;
end;

procedure TFormMain.ButtonRobbanaB2FClick(Sender: TObject);
begin
  ProcRobbana;
end;

procedure TFormMain.ButtonRobbanaB2SClick(Sender: TObject);
begin
  ProcRobbana;
end;

procedure TFormMain.ButtonRobbanaP2SClick(Sender: TObject);
begin
  ProcRobbana;
end;

procedure TFormMain.ButtonRobbanaP4FClick(Sender: TObject);
begin
  ProcRobbana;
end;

procedure TFormMain.ButtonRobbanaP4SClick(Sender: TObject);
begin
  ProcRobbana;
end;

procedure TFormMain.ButtonRobbanaSh2SClick(Sender: TObject);
begin
  ProcRobbana;
end;

procedure TFormMain.ButtonRobbanaSh3FClick(Sender: TObject);
begin
  ProcRobbana;
end;

procedure TFormMain.ButtonRobbanaV3VClick(Sender: TObject);
begin
  ProcRobbana;
end;

procedure TFormMain.ButtonRobbanaX2SClick(Sender: TObject);
begin
  ProcRobbana;
end;

procedure TFormMain.ButtonRobbanaX4FClick(Sender: TObject);
begin
  ProcRobbana;
end;

procedure TFormMain.ButtonHamd1A4FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd1B2FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd1B2SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd1P2SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd1P4SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd1Sh2SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd1Sh3FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd1V3VClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd1X2SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd1X4FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd2A4FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd2B2FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd2B2SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd2P2SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd2P4FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd2P4SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd2Sh2SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd2Sh3FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd2V3VClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd2X2SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd2X4FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd3A4FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd3P4FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd3P4SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd3Sh3FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd3V3VClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd3X4FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd4A4FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd4P4FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd4P4SClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonHamd4X4FClick(Sender: TObject);
begin
  ProcHamd;
end;

procedure TFormMain.ButtonSalavotA4FClick(Sender: TObject);
begin
  ProcSalavot;
end;

procedure TFormMain.ButtonSalavotB2FClick(Sender: TObject);
begin
  ProcSalavot;
end;

procedure TFormMain.ButtonSalavotB2SClick(Sender: TObject);
begin
  ProcSalavot;
end;

procedure TFormMain.ButtonSalavotP2SClick(Sender: TObject);
begin
  ProcSalavot;
end;

procedure TFormMain.ButtonSalavotP4FClick(Sender: TObject);
begin
  ProcSalavot;
end;

procedure TFormMain.ButtonSalavotP4SClick(Sender: TObject);
begin
  ProcSalavot;
end;

procedure TFormMain.ButtonSalavotSh2SClick(Sender: TObject);
begin
  ProcSalavot;
end;

procedure TFormMain.ButtonSalavotSh3FClick(Sender: TObject);
begin
  ProcSalavot;
end;

procedure TFormMain.ButtonSalavotV3VClick(Sender: TObject);
begin
  ProcSalavot;
end;

procedure TFormMain.ButtonSalavotX2SClick(Sender: TObject);
begin
  ProcSalavot;
end;

procedure TFormMain.ButtonSalavotX4FClick(Sender: TObject);
begin
  ProcSalavot;
end;

procedure TFormMain.ButtonSalomA4FClick(Sender: TObject);
begin
  ProcSalom;
end;

procedure TFormMain.ButtonSalomB2FClick(Sender: TObject);
begin
  ProcSalom;
end;

procedure TFormMain.ButtonSalomB2SClick(Sender: TObject);
begin
  ProcSalom;
end;

procedure TFormMain.ButtonSalomP2SClick(Sender: TObject);
begin
  ProcSalom;
end;

procedure TFormMain.ButtonSalomP4FClick(Sender: TObject);
begin
  ProcSalom;
end;

procedure TFormMain.ButtonSalomP4SClick(Sender: TObject);
begin
  ProcSalom;
end;

procedure TFormMain.ButtonSalomSh2SClick(Sender: TObject);
begin
  ProcSalom;
end;

procedure TFormMain.ButtonSalomSh3FClick(Sender: TObject);
begin
  ProcSalom;
end;

procedure TFormMain.ButtonSalomV3VClick(Sender: TObject);
begin
  ProcSalom;
end;

procedure TFormMain.ButtonSalomX2SClick(Sender: TObject);
begin
  ProcSalom;
end;

procedure TFormMain.ButtonSalomX4FClick(Sender: TObject);
begin
  ProcSalom;
end;

procedure TFormMain.ButtonSamialloh1A4FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh1B2FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh1B2SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh1P2SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh1P4SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh1Sh2SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh1Sh3FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh1V3VClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh1X2SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh1X4FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh2A4FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh2B2FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh2B2SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh2P2SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh2P4FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh2P4SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh2Sh2SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh2Sh3FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh2V3VClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh2X2SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh2X4FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh3A4FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh3P4FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh3P4SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh3Sh3FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh3V3VClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh3X4FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh4A4FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh4P4FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh4P4SClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSamialloh4X4FClick(Sender: TObject);
begin
  ProcSamialloh;
end;

procedure TFormMain.ButtonSanoA4FClick(Sender: TObject);
begin
  ProcSano;
end;

procedure TFormMain.ButtonSanoB2FClick(Sender: TObject);
begin
  ProcSano;
end;

procedure TFormMain.ButtonSanoB2SClick(Sender: TObject);
begin
  ProcSano;
end;

procedure TFormMain.ButtonSanoP2SClick(Sender: TObject);
begin
  ProcSano;
end;

procedure TFormMain.ButtonSanoP4FClick(Sender: TObject);
begin
  ProcSano;
end;

procedure TFormMain.ButtonSanoP4SClick(Sender: TObject);
begin
  ProcSano;
end;

procedure TFormMain.ButtonSanoSh2SClick(Sender: TObject);
begin
  ProcSano;
end;

procedure TFormMain.ButtonSanoSh3FClick(Sender: TObject);
begin
  ProcSano;
end;

procedure TFormMain.ButtonSanoV3VClick(Sender: TObject);
begin
  ProcSano;
end;

procedure TFormMain.ButtonSanoX2SClick(Sender: TObject);
begin
  ProcSano;
end;

procedure TFormMain.ButtonSanoX4FClick(Sender: TObject);
begin
  ProcSano;
end;

procedure TFormMain.ButtonTaavvuzA4FClick(Sender: TObject);
begin
  ProcTaavvuz;
end;

procedure TFormMain.ButtonTaavvuzB2FClick(Sender: TObject);
begin
  ProcTaavvuz;
end;

procedure TFormMain.ButtonTaavvuzB2SClick(Sender: TObject);
begin
  ProcTaavvuz;
end;

procedure TFormMain.ButtonTaavvuzP2SClick(Sender: TObject);
begin
  ProcTaavvuz;
end;

procedure TFormMain.ButtonTaavvuzP4FClick(Sender: TObject);
begin
  ProcTaavvuz;
end;

procedure TFormMain.ButtonTaavvuzP4SClick(Sender: TObject);
begin
  ProcTaavvuz;
end;

procedure TFormMain.ButtonTaavvuzSh2SClick(Sender: TObject);
begin
  ProcTaavvuz;
end;

procedure TFormMain.ButtonTaavvuzSh3FClick(Sender: TObject);
begin
  ProcTaavvuz;
end;

procedure TFormMain.ButtonTaavvuzV3VClick(Sender: TObject);
begin
  ProcTaavvuz;
end;

procedure TFormMain.ButtonTaavvuzX2SClick(Sender: TObject);
begin
  ProcTaavvuz;
end;

procedure TFormMain.ButtonTaavvuzX4FClick(Sender: TObject);
begin
  ProcTaavvuz;
end;

procedure TFormMain.ButtonTakbirJalsa1A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa1B2FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa1B2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa1P2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa1P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa1P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa1Sh2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa1Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa1V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa1X2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa1X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa2A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa2B2FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa2B2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa2P2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa2P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa2P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa2Sh2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa2Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa2V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa2X2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa2X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa3A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa3P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa3P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa3Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa3V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa3X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa4A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa4P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa4P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirJalsa4X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirKirishA4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirKirishB2FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirKirishB2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirKirishP2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirKirishP4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirKirishP4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirKirishSh2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirKirishSh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirKirishV3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirKirishX2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirKirishX4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada1A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada1P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada1P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada1Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada1V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada1X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada2A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada2P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada2P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada2Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada2V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQada2X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQadaB2FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQadaB2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQadaP2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQadaSh2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQadaX2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom2A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom2B2FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom2B2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom2P2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom2P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom2P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom2Sh2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom2Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom2V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom2X2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom2X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom3A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom3P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom3P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom3Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom3V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom3X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom4A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom4P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom4P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQiyom4X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirQunutClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku1A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku1B2FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku1B2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku1P2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku1P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku1Sh2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku1Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku1V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku1X2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku1X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku2A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku2B2FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku2B2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku2P2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku2P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku2P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku2Sh2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku2Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku2V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku2X2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku2X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku3A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku3P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku3P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku3Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku3V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku3X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku4A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku4P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku4P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirRuku4X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_1A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_1B2FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_1B2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_1P2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_1P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_1P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_1Sh2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_1Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_1V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_1X2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_1X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_2A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_2B2FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_2B2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_2P2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_2P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_2P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_2Sh2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_2Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_2V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_2X2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda1_2X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_1A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_1B2FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_1B2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_1P2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_1P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_1P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_1Sh2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_1Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_1V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_1X2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_1X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_2A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_2B2FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_2B2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_2P2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_2P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_2P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_2Sh2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_2Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_2V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_2X2SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda2_2X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_1A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_1P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_1P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_1Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_1V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_1X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_2A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_2P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_2P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_2Sh3FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_2V3VClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda3_2X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda4_1A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda4_1P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda4_1P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda4_1X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda4_2A4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda4_2P4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda4_2P4SClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTakbirSajda4_2X4FClick(Sender: TObject);
begin
  ProcTakbir;
end;

procedure TFormMain.ButtonTasbehA4FClick(Sender: TObject);
begin
  ProcTasbeh;
end;

procedure TFormMain.ButtonTasbehB2FClick(Sender: TObject);
begin
  ProcTasbeh;
end;

procedure TFormMain.ButtonTasbehP2SClick(Sender: TObject);
begin
  ProcTasbeh;
end;

procedure TFormMain.ButtonTasbehSh2SClick(Sender: TObject);
begin
  ProcTasbeh;
end;

procedure TFormMain.ButtonTasbehV3VClick(Sender: TObject);
begin
  ProcTasbeh;
end;

procedure TFormMain.ButtonTashahhud1A4FClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhud1P4SClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhud1Sh3FClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhud1V3VClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhud1X4FClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhud2A4FClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhud2P4FClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhud2P4SClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhud2Sh3FClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhud2V3VClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhud2X4FClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhudB2FClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhudB2SClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhudP2SClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhudSh2SClick(Sender: TObject);
begin
  ProcTashahhud;
end;

procedure TFormMain.ButtonTashahhudX2SClick(Sender: TObject);
begin
  ProcTashahhud;
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
  ProcImagesLoad;
end;

procedure TFormMain.PageControlB2FChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlB2SChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlBomdodChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlMainChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlP2SChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlP4FChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlP4SChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlPeshinChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlSh2SChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlSh3FChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlShomChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlV3VChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlX2SChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlX4FChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

procedure TFormMain.PageControlXuftonChange(Sender: TObject);
begin
  ProcImagesLoad;
end;

end.

