//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fr.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "VrAngularMeter"
#pragma link "VrControls"
#pragma link "VrEdit"
#pragma link "vrLineMeter"
#pragma link "VrThermoMeter"
#pragma resource "*.dfm"
TWS600 *WS600;
//---------------------------------------------------------------------------
__fastcall TWS600::TWS600(TComponent* Owner)
        : TFrame(Owner)
{
}
//---------------------------------------------------------------------------

 void __fastcall TWS600::SetValue(int ID,float value)
 {
   AnsiString FT=FloatToStrF(value,ffGeneral,4,3);
   switch (ID)
   {
     case 0: WSMeter->Position=value; WSEdit->Text=FT;break;     //WindSpeed
     case 2: WDMeter->Position=value; WDEdit->Text=FT;break;     //WindAngle
     case 4: TMeter->Value->Value=value; TEdit->Text=FT;break;   //Temperatrure
     case 6: HMeter->Value->Value=value; HEdit->Text=FT;break;   //Relative Humidity
     case 8: PMeter->Value->Value=value; PEdit->Text=FT;break;   //Pressure
     case 10:RM->Text=FT;break;                                                 //Minute Precipitation
     case 12:RH->Text=FT;break;                                                 //Houre Precipitation
     case 14:RD->Text=FT;break;                                                 //Day Precipitation
     case 16:RT->Text=FT;break;                                                 //Total Precipitation
     case 18:RMeter->Value->Value=value; REdit->Text=FT;break;   //radiation intencity
   }
 }
