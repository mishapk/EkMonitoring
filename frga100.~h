//---------------------------------------------------------------------------


#ifndef frga100H
#define frga100H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "VrControls.hpp"
#include "VrJogMeter.hpp"
#include "vrLineMeter.hpp"
#include "VrEdit.hpp"
#include "VrScope.hpp"
//---------------------------------------------------------------------------
class TGA100 : public TFrame
{
__published:	// IDE-managed Components
        TGroupBox *GRBox;
        TvrLineMeter *Gaz1;
        TvrLineMeter *Gaz2;
        TvrLineMeter *Gaz3;
        TLabel *Gaz1Label;
        TLabel *Label6;
        TLabel *Label7;
        TLabel *Gaz2Label;
        TLabel *Label9;
        TLabel *Gaz3Label;
        TVrStrEdit *Gaz1Edit;
        TVrStrEdit *Gaz2Edit;
        TVrStrEdit *Gaz3Edit;
        TGroupBox *GroupBox1;
        TGroupBox *Gaz3GB;
        TGroupBox *Gaz2GB;
        TGroupBox *Gaz1GB;
        TVrScope *Gaz1Scope;
        TVrScope *Gaz2Scope;
        TVrScope *Gaz3Scope;
private:	// User declarations
public:		// User declarations
        __fastcall TGA100(TComponent* Owner);
         void __fastcall SetValue(int ID,float value,AnsiString gaz);
};
//---------------------------------------------------------------------------
extern PACKAGE TGA100 *GA100;
//---------------------------------------------------------------------------
#endif
