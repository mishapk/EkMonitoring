//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fr"
#pragma resource "*.dfm"

TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
    IniSettings(true);
    GetSerialPortsList();
    ComPort=new TComPort(true);
    ComPort->FreeOnTerminate=true;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::IniSettings(bool read)
{
  if (read)
   {
     TIniFile  *Ini= new TIniFile(ExtractFilePath(Application->ExeName)+"settings.ini");
     CBNport->Text= Ini->ReadString("main","port","COM1");
     CBBaude->ItemIndex= Ini->ReadInteger("main","baud",0);
     delete Ini;
   }
   else
   {
      TIniFile  *Ini= new TIniFile(ExtractFilePath(Application->ExeName)+"settings.ini");
      if(CBNport->Text!="")Ini->WriteString("main","port",CBNport->Text);
      Ini->WriteInteger("main","baud",CBBaude->ItemIndex);
      delete Ini;
   }
  
}
void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
  IniSettings();
  
 if(ComPort)ComPort->Terminate();
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void __fastcall TForm1::GetSerialPortsList()
{
    AnsiString KeyName = "\\Hardware\\DeviceMap\\SerialComm";
    TStringList *SerialCommValues = new TStringList();
    int index=-1;
    AnsiString t;
    CBNport->Items->Clear();
    TRegistry *Registry = new TRegistry;
    try
    {
        Registry->RootKey = HKEY_LOCAL_MACHINE;
        Registry->OpenKeyReadOnly( KeyName );
        Registry->GetValueNames( SerialCommValues );
        t=CBNport->Text;
        CBNport->Text="";
        for(int i=0; i<SerialCommValues->Count; i++)
        {
            CBNport->Items->Add(Registry->ReadString(SerialCommValues->Strings[i]));
            if (t==Registry->ReadString(SerialCommValues->Strings[i]))
              index=i;
        }
    }
    __finally
    {
        delete Registry;
        delete SerialCommValues;
        if (CBNport->ItemIndex<0)
        {
            CBNport->ItemIndex=index;
        }
    }
}


void __fastcall TForm1::SpeedButton1Click(TObject *Sender)
{
  if(SpeedButton1->Down)
  {
    CBNport->Enabled=false;
    CBBaude->Enabled=false;
    StatusBar1->Panels->operator [](0)->Text="Порт "+CBNport->Text +" открыт";
    SpeedButton1->Caption="Закрыть порт";
    ComPort->Connect(CBNport->Text,StrToInt(CBBaude->Text));
    ComPort->Resume();
    DataModule2->Timer1->Enabled=true;


  }
  else
  {
    DataModule2->Timer1->Enabled=false;
    CBNport->Enabled=true;
    CBBaude->Enabled=true;
    StatusBar1->Panels->operator [](0)->Text="Порт закрыт";
    SpeedButton1->Caption="Открыть порт";
    ComPort->Suspend();
    ComPort->Disconnect();
  }
}
//---------------------------------------------------------------------------

bool IsMouseDown=false;
int OldX;
int OldY;
void __fastcall TForm1::Shape1MouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
 OldX=X;
        OldY=Y;
        IsMouseDown=true;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Shape1MouseUp(TObject *Sender, TMouseButton Button,
      TShiftState Shift, int X, int Y)
{
  IsMouseDown=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
  ShowMessage(DateTimeToStr(Now()));        
}
//---------------------------------------------------------------------------


