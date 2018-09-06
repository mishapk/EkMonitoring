//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "FRPM100.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "VrControls"
#pragma link "VrEdit"
#pragma link "vrLineMeter"
#pragma link "VrScope"
#pragma resource "*.dfm"
TPM100 *PM100;
//---------------------------------------------------------------------------
__fastcall TPM100::TPM100(TComponent* Owner)
        : TFrame(Owner)
{
}
//---------------------------------------------------------------------------
 void __fastcall TPM100::SetValue(int ID,float value,AnsiString gaz)
 {

   float scale;


   scale=2.0;

   AnsiString FT=FloatToStrF(value,ffGeneral,4,3);
   float step=scale/5.00;
   float smStep=scale/10.00;
   switch (ID)
   {
     case 20: Gaz1->Value->Value=value;
              Gaz1->Scale->Max=scale;
              Gaz1->Scale->Min=0;
              Gaz1->Scale->Step=step;
              Gaz1->Scale->SmallStep=smStep;
              Gaz1->Region1->FromValue=scale;
              Gaz1->Region1->ToValue=0;
              Gaz1Edit->Text=FT;
              Gaz1Label->Caption=gaz;
              Gaz1GB->Caption=gaz;
              Gaz1Scope->SetData(0,value*100/scale);
              break;
     case 21: Gaz2->Value->Value=value;
              Gaz2->Scale->Max=scale;
              Gaz2->Scale->Min=0;
              Gaz2->Scale->Step=step;
              Gaz2->Scale->SmallStep=smStep;;
              Gaz2->Region1->FromValue=scale;
              Gaz2->Region1->ToValue=0;
              Gaz2Edit->Text=FT;
              Gaz2Label->Caption=gaz;
              Gaz2GB->Caption=gaz;
              Gaz2Scope->SetData(0,value*100/scale);
              break;


   }
 }