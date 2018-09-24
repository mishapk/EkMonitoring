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
#include "Plot.h"
#include <ExtCtrls.hpp>
#include <Buttons.hpp>
#include "PlotForm.h"
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
        TPanel *Panel1;
        TSpeedButton *SpeedButton1;
        TSpeedButton *SpeedButton2;
        TSpeedButton *SpeedButton3;
        void __fastcall SpeedButton1Click(TObject *Sender);
        void __fastcall SpeedButton2Click(TObject *Sender);
        void __fastcall SpeedButton3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TGA100(TComponent* Owner);
         void __fastcall SetValue(int ID,float value,AnsiString gaz);
};
//---------------------------------------------------------------------------
extern PACKAGE TGA100 *GA100;
//---------------------------------------------------------------------------
#endif
