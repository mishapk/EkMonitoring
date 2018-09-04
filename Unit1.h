//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <ComCtrls.hpp>
#include <IniFiles.hpp>
#include <Registry.hpp>
#include "ComportThraide.h"
#include "DataModule.h"
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ToolWin.hpp>
#include <ExtCtrls.hpp>
#include <Chart.hpp>
#include <DbChart.hpp>
#include <TeEngine.hpp>
#include <TeeProcs.hpp>
#include <Series.hpp>
#include "fr.h"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TTabSheet *TabSheet2;
        TTabSheet *TabSheet3;
        TTabSheet *TabSheet4;
        TGroupBox *GroupBox1;
        TLabel *Label1;
        TLabel *Label2;
        TSpeedButton *SpeedButton1;
        TButton *Button1;
        TComboBox *CBBaude;
        TComboBox *CBNport;
        TStatusBar *StatusBar1;
        TGroupBox *GroupBox2;
        TGroupBox *GroupBox3;
        TDBGrid *DBGrid3;
        TGroupBox *GroupBox4;
        TGroupBox *GroupBox5;
        TDBChart *DBChart1;
        TSpeedButton *SpeedButton2;
        TSpeedButton *SpeedButton3;
        TSpeedButton *SpeedButton4;
        TSpeedButton *SpeedButton5;
        TSpeedButton *SpeedButton6;
        TSpeedButton *SpeedButton7;
        TSpeedButton *SpeedButton8;
        TSpeedButton *SpeedButton9;
        TLineSeries *Series1;
        TWS600 *WS6001;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall SpeedButton1Click(TObject *Sender);
        void __fastcall Shape1MouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
        void __fastcall Shape1MouseUp(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y);
        void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
     void __fastcall IniSettings(bool read=0); //������/������ �������� INI ����
     void __fastcall GetSerialPortsList(); //��������� ������ comportov
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
        TComPort * ComPort;

};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif