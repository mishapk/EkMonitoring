//---------------------------------------------------------------------------


#ifndef frH
#define frH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "VrAngularMeter.hpp"
#include "VrControls.hpp"
#include "VrEdit.hpp"
#include "vrLineMeter.hpp"
#include "VrThermoMeter.hpp"
//---------------------------------------------------------------------------
class TWS600 : public TFrame
{
__published:	// IDE-managed Components
        TGroupBox *GroupBox1;
        TVrAngularMeter *VrAngularMeter1;
        TVrAngularMeter *VrAngularMeter2;
        TVrStrEdit *VrStrEdit1;
        TLabel *Label1;
        TVrStrEdit *VrStrEdit2;
        TLabel *Label2;
        TGroupBox *GroupBox2;
        TvrThermoMeter *vrThermoMeter1;
        TVrStrEdit *VrStrEdit3;
        TLabel *Label3;
        TLabel *Label4;
        TvrLineMeter *vrLineMeter1;
        TvrLineMeter *vrLineMeter2;
        TvrLineMeter *vrLineMeter3;
        TVrStrEdit *VrStrEdit4;
        TLabel *Label5;
        TLabel *Label6;
        TVrStrEdit *VrStrEdit5;
        TLabel *Label7;
        TLabel *Label8;
        TVrStrEdit *VrStrEdit6;
        TLabel *Label9;
        TLabel *Label10;
        TGroupBox *GroupBox3;
        TVrStrEdit *VrStrEdit7;
        TLabel *Label11;
        TLabel *Label12;
        TLabel *Label13;
        TVrStrEdit *VrStrEdit8;
        TLabel *Label14;
        TVrStrEdit *VrStrEdit9;
        TLabel *Label15;
        TLabel *Label16;
        TVrStrEdit *VrStrEdit10;
        TLabel *Label17;
        TLabel *Label18;
private:	// User declarations
public:		// User declarations
        __fastcall TWS600(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TWS600 *WS600;
//---------------------------------------------------------------------------
#endif