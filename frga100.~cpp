//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "frga100.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "VrControls"
#pragma link "VrJogMeter"
#pragma link "vrLineMeter"
#pragma link "VrEdit"
#pragma link "VrScope"
#pragma resource "*.dfm"
TGA100 *GA100;
//---------------------------------------------------------------------------
__fastcall TGA100::TGA100(TComponent* Owner)
        : TFrame(Owner)
{
}
//---------------------------------------------------------------------------
 void __fastcall TGA100::SetValue(int ID,float value,AnsiString gaz)
 {

   float scale;


    if(gaz== "CO")  scale=230;
    if(gaz== "SO2") scale=2.6;
    if(gaz== "NO2") scale=2;
    if(gaz== "NO2") scale=1.25;
    if(gaz== "H2S") scale=14.2;

   AnsiString FT=FloatToStrF(value,ffGeneral,4,3);
   float step=scale/5.00;
   float smStep=scale/10.00;
   switch (ID)
   {
     case 20: Gaz1->Value->Value=value;
              Gaz1->Scale->Max=scale;
              Gaz1->Scale->Step=step;
              Gaz1->Scale->SmallStep=smStep;
              Gaz1->Region1->FromValue=scale;
              Gaz1Edit->Text=FT;
              Gaz1Label->Caption=gaz;
              Gaz1GB->Caption=gaz;
              Gaz1Scope->SetData(0,value*100/scale);
              break;
     case 21: Gaz2->Value->Value=value;
              Gaz2->Scale->Max=scale;
              Gaz2->Scale->Step=step;
              Gaz2->Scale->SmallStep=smStep;;
              Gaz2->Region1->FromValue=scale;
              Gaz2Edit->Text=FT;
              Gaz2Label->Caption=gaz;
              Gaz2GB->Caption=gaz;
              Gaz2Scope->SetData(0,value*100/scale);
              break;
     case 22: Gaz3->Value->Value=value;
              Gaz3->Scale->Max=scale;
              Gaz3->Scale->Step=step;
              Gaz3->Scale->SmallStep=smStep;
              Gaz3->Region1->FromValue=scale;
              Gaz3Edit->Text=FT;
              Gaz3Label->Caption=gaz;
              Gaz3GB->Caption=gaz;
              Gaz3Scope->SetData(0,value*100/scale);
              break;

   }
 }


