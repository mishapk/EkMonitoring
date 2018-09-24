//---------------------------------------------------------------------------

#ifndef PlotFormH
#define PlotFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "Plot.h"
//---------------------------------------------------------------------------
class TFormPlot : public TForm
{
__published:	// IDE-managed Components
        TPlotter *Plotter1;
        void __fastcall FormActivate(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TFormPlot(TComponent* Owner);
        int IDDevice;
        int OFFSET;
};
//---------------------------------------------------------------------------
extern PACKAGE TFormPlot *FormPlot;
//---------------------------------------------------------------------------
#endif
