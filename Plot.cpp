//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Plot.h"
#include "DataModule.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TPlotter *Plotter;
//---------------------------------------------------------------------------
__fastcall TPlotter::TPlotter(TComponent* Owner)
        : TFrame(Owner)
{

}
//---------------------------------------------------------------------------
