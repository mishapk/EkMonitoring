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
//---------------------------------------------------------------------------
class TGA100 : public TFrame
{
__published:	// IDE-managed Components
        TGroupBox *GroupBox2;
        TvrLineMeter *Gaz1;
        TvrLineMeter *PMeter;
        TvrLineMeter *RMeter;
        TLabel *Label5;
        TLabel *Label6;
        TLabel *Label7;
        TLabel *Label8;
        TLabel *Label9;
        TLabel *Label10;
        TVrStrEdit *COEdit;
        TVrStrEdit *PEdit;
        TVrStrEdit *REdit;
private:	// User declarations
public:		// User declarations
        __fastcall TGA100(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TGA100 *GA100;
//---------------------------------------------------------------------------
#endif
