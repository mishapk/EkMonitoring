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
#include "frga100.h"
#include "FRPM100.h"
#include <DBCtrls.hpp>
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
        TComboBox *CBBaude;
        TComboBox *CBNport;
        TStatusBar *StatusBar1;
        TGroupBox *GroupBox3;
        TPageControl *PageControlDevices;
        TPanel *Panel1;
        TDBGrid *DBGrid2;
        TRadioGroup *RadioGroup1;
        TRadioGroup *RadioGroup2;
        TButton *Button2;
        TDateTimePicker *DateTimePicker1;
        TDateTimePicker *DateTimePicker2;
        TDBGrid *DBGrid3;
        TDBGrid *DBGrid1;
        TGroupBox *GroupBox2;
        TPanel *Panel2;
        TDBGrid *DBGrid4;
        TDBNavigator *DBNavigator1;
        TGroupBox *GroupBox4;
        TPanel *Panel3;
        TDBNavigator *DBNavigator2;
        TDBGrid *DBGrid5;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall SpeedButton1Click(TObject *Sender);
        void __fastcall Shape1MouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
        void __fastcall Shape1MouseUp(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall DBGrid3CellClick(TColumn *Column);
        void __fastcall DBGrid2DrawColumnCell(TObject *Sender,
          const TRect &Rect, int DataCol, TColumn *Column,
          TGridDrawState State);
private:	// User declarations
     void __fastcall IniSettings(bool read=0); //Чтение/запись настроек INI файл
     void __fastcall GetSerialPortsList(); //Получение списка comportov
     void __fastcall CreateTabDevices(); //Создание закладок устройств из Б.Д.

public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
        TComPort * ComPort;
        struct TFR
        {
         TFrame ** FR;
         int NFR;
        }UFR;
        int __fastcall getIndexFR(AnsiString name);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
