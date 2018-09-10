//---------------------------------------------------------------------------

#ifndef DataModuleH
#define DataModuleH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TDataModule2 : public TDataModule
{
__published:	// IDE-managed Components
        TADOConnection *ADOConnection;
        TDataSource *DataSourceTag;
        TADOTable *ADOTableTag;
        TTimer *Timer1;
        TDataSource *DataSourceChart;
        TADOTable *ADOTableChart;
        TADOTable *ADOTableDevice;
        TDataSource *DataSourceDevices;
        TDataSource *DataSourceAlarmHistory;
        TADOTable *ADOTableAlarmHistory;
        void __fastcall Timer1Timer(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TDataModule2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDataModule2 *DataModule2;
//---------------------------------------------------------------------------
#endif
