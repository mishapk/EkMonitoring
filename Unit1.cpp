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
 SpeedButton1->Down=false;
 SpeedButton1Click(Sender);
 Sleep(1000);
 //if(ComPort)ComPort->Suspend();
// Sleep(1000);
// if(ComPort)ComPort->Terminate();
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
  //((TPM100*)Form1->FindComponent("ID20"))->SetValue(20,0.55,"kgb");
  
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
    case 2: UFR.FR[index]=new TPM100(this);UFR.FR[index]->Parent=crl1; UFR.FR[index]->Name="ID"+IntToStr(ID);break;
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
// SpeedButton1->Down=true;
 //SpeedButton1Click(Sender);
  DataModule2->ADOTableAlarmHistory->Sort="DATETIME DESC";
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

void __fastcall TForm1::Button2Click(TObject *Sender)
{
 // Form1->DBChart2->RefreshData();
 // Form1->DBChart1->RefreshData();

  AnsiString filter,data1,data2;
  filter="";
  DataModule2->ADOTableAlarmHistory->Filtered=false;

      DateTimePicker1->Time=StrToTime("00:00:00");
      DateTimePicker2->Time=StrToTime("23:59:59");
      if(RadioGroup1->ItemIndex==1)
        {
               DateTimePicker1->Date=Now();
               DateTimePicker2->Date=Now();

        }
        filter="(DATETIME >= #"+DateTimeToStr(DateTimePicker1->Date)+"#) AND (DATETIME <= #"+DateTimeToStr(DateTimePicker2->Date)+"#)";



    DataModule2->ADOTableAlarmHistory->Filter=filter;
    DataModule2->ADOTableAlarmHistory->Filtered=RadioGroup1->ItemIndex?true:false;

    DataModule2->ADOTableAlarmHistory->Sort=RadioGroup2->ItemIndex?"DATETIME ASC":"DATETIME DESC";
    
}
//---------------------------------------------------------------------------



void __fastcall TForm1::DBGrid3CellClick(TColumn *Column)
{
 // DataModule2->DataSourceChart->DataSet->Refresh();
  //Form1->DBChart1->RefreshData();

}
//---------------------------------------------------------------------------


void __fastcall TForm1::DBGrid2DrawColumnCell(TObject *Sender,
      const TRect &Rect, int DataCol, TColumn *Column,
      TGridDrawState State)
{
 /*
   if DBGrid1.DataSource.DataSet.FieldByName('zap_cat').AsInteger = 1 then
  begin
    DBGrid1.Canvas.Brush.Color := clMoneyGreen;
    DBGrid1.Canvas.Font.Style := [];
    DBGrid1.Canvas.Font.Color := clBlack;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
 */

 if(DBGrid2->DataSource->DataSet->FieldByName("STATUS")->AsBoolean)
 {
   DBGrid2->Canvas->Brush->Color=0x00AEAEFF;
   DBGrid2->Canvas->Font->Color=clBlack;
   DBGrid2->DefaultDrawColumnCell(Rect, DataCol, Column, State);


 }

  if(!DBGrid2->DataSource->DataSet->FieldByName("STATUS")->AsBoolean)
 {
   DBGrid2->Canvas->Brush->Color=clWhite;
   DBGrid2->Canvas->Font->Color=clBlack;
   DBGrid2->DefaultDrawColumnCell(Rect, DataCol, Column, State);

 }

}
//---------------------------------------------------------------------------




void __fastcall TForm1::BitBtn1Click(TObject *Sender)
{
  //http://www.delphisources.ru/pages/faq/base/print_dbgrid_with_quickrep.html#
  TQuickRep *Rep =new TQuickRep(this,0);
  Rep->Name="Rep1";
  Rep->DataSet=DataModule2->ADOTableAlarmHistory;
  //-----------------------------------------
  TQRBand *TitleBand= new  TQRBand(Rep);
  TitleBand->Parent=Rep;
  TitleBand->BandType=rbTitle;
  TitleBand->Frame->DrawTop=true;
  TitleBand->Frame->DrawBottom=true;
  TitleBand->Frame->DrawLeft=true;
  TitleBand->Frame->DrawRight=true;
  //-----------------------------------------
  TQRBand *DetailBand= new  TQRBand(Rep);
  DetailBand->Parent=Rep;
  DetailBand->BandType=rbDetail;
  DetailBand->Frame->DrawLeft=true;
  DetailBand->Frame->DrawRight=true;
  DetailBand->Frame->DrawBottom=true;

  int n=DBGrid2->Columns->Count;
  TQRLabel **LB1= new TQRLabel*[n];    //Title Label
  TQRDBText **LB2= new TQRDBText*[n];  //Detail Label
  int max=0;
  int dmax=0;
  for(int i=0;i<n;i++)
  {


    LB2[i]= new TQRDBText(Rep);
    LB2[i]->Parent=DetailBand;
    LB2[i]->DataSet=Rep->DataSet;
    LB2[i]->DataField=DBGrid2->Columns->operator [](i)->FieldName;
    LB2[i]->Left=0;
    LB2[i]->AutoSize=false;
    LB2[i]->Width=i?(DetailBand->Width-LB2[0]->Width)/(n-1):150;
    LB2[i]->AutoStretch=true;
    LB2[i]->Alignment=taCenter;
    if(i)LB2[i]->Left=LB2[i-1]->Left+LB2[i-1]->Width;
    LB2[i]->Frame->DrawLeft=true;


    LB1[i]= new TQRLabel(Rep);
    LB1[i]->Parent=TitleBand;
    LB1[i]->Caption="\r   "+DBGrid2->Columns->operator [](i)->Title->Caption;
    LB1[i]->AutoStretch=true;
    LB1[i]->Alignment=taCenter;
    LB1[i]->Left=LB2[i]->Left;

    if(i)LB1[i]->Frame->DrawLeft=true;
    int h=LB2[i]->Size->Height;
    max=h>max?h:max;
    h=LB2[i]->Height;
    dmax=h>dmax?h:dmax;
  }

   TitleBand->Height=LB1[0]->Height;
   DetailBand->Height=dmax*2;

   for(int i=0;i<n;i++) LB2[i]->Size->Height=dmax;

  //-----------------------------------------

  TQRBand *PageFooteBand= new  TQRBand(Rep);
  PageFooteBand->Parent=Rep;
  PageFooteBand->BandType=rbPageFooter;
  PageFooteBand->Size->Height=20;
 //-----------------------------------------
  Rep->PreviewModal();



  Rep->Free();
}
//---------------------------------------------------------------------------

