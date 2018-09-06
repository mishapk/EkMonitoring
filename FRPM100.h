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
        TGroupBox *GroupBox1;
        TGroupBox *Gaz2GB;
        TVrScope *Gaz2Scope;
        TGroupBox *Gaz1GB;
        TVrScope *Gaz1Scope;
private:	// User declarations
public:		// User declarations
        __fastcall TPM100(TComponent* Owner);
         void __fastcall SetValue(int ID,float value,AnsiString gaz);
};
//---------------------------------------------------------------------------
extern PACKAGE TPM100 *PM100;
//---------------------------------------------------------------------------
#endif
