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
#pragma resource "*.dfm"
TGA100 *GA100;
//---------------------------------------------------------------------------
__fastcall TGA100::TGA100(TComponent* Owner)
        : TFrame(Owner)
{
}
//---------------------------------------------------------------------------
