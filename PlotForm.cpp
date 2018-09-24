//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PlotForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "Plot"
#pragma resource "*.dfm"
TFormPlot *FormPlot;
//---------------------------------------------------------------------------
__fastcall TFormPlot::TFormPlot(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormPlot::FormActivate(TObject *Sender)
{
  Plotter1->ADO->Active=false;
  Plotter1->ADO->Filtered=false;
  Plotter1->ADO->Filter="DEVICE.ID=" +IntToStr(IDDevice)+" AND OFFSET= "+IntToStr(OFFSET);
  Plotter1->ADO->Filtered=true;
  Plotter1->ADO->Active=true;
  Plotter1->DBChart3->Title->Text->Add(Plotter1->ADO->Fields->FieldByName("TagName")->AsString+", "+
  Plotter1->ADO->Fields->FieldByName("Units")->AsString);
}
//---------------------------------------------------------------------------