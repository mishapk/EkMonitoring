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
    StatusBar1->Panels->operator [](0)->Text="���� "+CBNport->Text +" ������";
    SpeedButton1->Caption="������� ����";
    ComPort->Connect(CBNport->Text,StrToInt(CBBaude->Text));
    ComPort->Resume();
    DataModule2->Timer1->Enabled=true;


  }
  else
  {
    DataModule2->Timer1->Enabled=false;
    CBNport->Enabled=true;
    CBBaude->Enabled=true;
    StatusBar1->Panels->operator [](0)->Text="���� ������";
    SpeedButton1->Caption="������� ����";
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
  ((TWS600*)Form1->FindComponent("ID7"))->SetValue(0,50);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::CreateTabDevices()
{
     TADOTable *ADO;
  ADO = new TADOTable(NULL);
  ADO->Connection=DataModule2->ADOConnection;
  ADO->TableName="DEVICE";

  ADO->Active=true;

  UFR.FR= new TFrame*[ ADO->RecordCount];
  ADO->Sort="ID DESC";
  ADO->First();

  while(!ADO->Eof)
  {

   TTabSheet *crl1=new TTabSheet(this);
   crl1->PageControl=PageControlDevices;
   crl1->Caption=ADO->Fields->FieldByName("NameDevice")->AsString;
   int WidgetType=ADO->Fields->FieldByName("WidgetType")->AsInteger;
   int ID=ADO->Fields->FieldByName("ID")->AsInteger;
   int index=ADO->RecNo-1;
   UFR.NFR=ADO->RecordCount;
   switch (WidgetType)
   {
    case 0: UFR.FR[index]=new TWS600(this);UFR.FR[index]->Parent=crl1; UFR.FR[index]->Name="ID"+IntToStr(ID);break;
    case 1: UFR.FR[index]=new TGA100(this);UFR.FR[index]->Parent=crl1; UFR.FR[index]->Name="ID"+IntToStr(ID);break;
   };

    ADO->Next();
  }
   ADO->Active=false;
   ADO->Free();
   FindControl("ID7")->Free();


}

 //-------------------------------------------------------------------------------
void __fastcall TForm1::FormActivate(TObject *Sender)
{
 CreateTabDevices();

}
//---------------------------------------------------------------------------
int __fastcall TForm1::getIndexFR(AnsiString name)
{
  for(int i=0;i<UFR.NFR;i++)
  {
   if(name==UFR.FR[i]->Name)
   return i;

  }
  return -1;
}

