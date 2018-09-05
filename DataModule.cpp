//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "DataModule.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TDataModule2 *DataModule2;
//---------------------------------------------------------------------------
__fastcall TDataModule2::TDataModule2(TComponent* Owner)
        : TDataModule(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TDataModule2::Timer1Timer(TObject *Sender)
{
// DataSource1->DataSet->Refresh();
 //DataSourceChart->DataSet->Refresh();
// Form1->DBChart1->RefreshData();
}
//---------------------------------------------------------------------------
