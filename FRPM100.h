//---------------------------------------------------------------------------


#ifndef FRPM100H
#define FRPM100H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "VrControls.hpp"
#include "VrEdit.hpp"
#include "vrLineMeter.hpp"
#include "VrScope.hpp"
#include "Plot.h"
#include <ExtCtrls.hpp>
#include <Buttons.hpp>
//---------------------------------------------------------------------------
class TPM100 : public TFrame
{
__published:	// IDE-managed Components
        TGroupBox *GRBox;
        TvrLineMeter *Gaz1;
        TvrLineMeter *Gaz2;
        TLabel *Gaz1Label;
        TLabel *Label6;
        TLabel *Label7;
        TLabel *Gaz2Label;
        TVrStrEdit *Gaz1Edit;
        TVrStrEdit *Gaz2Edit;
        TPanel *Panel1;
        TSpeedButton *SpeedButton2;
        TSpeedButton *SpeedButton3;
private:	// User declarations
public:		// User declarations
        __fastcall TPM100(TComponent* Owner);
         void __fastcall SetValue(int ID,float value,AnsiString gaz);
};
//---------------------------------------------------------------------------
extern PACKAGE TPM100 *PM100;
//---------------------------------------------------------------------------
#endif
