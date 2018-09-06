//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ComportThraide.h"
#include "Unit1.h"
#include "DataModule.h"
#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(UpdateCaption);
//
//   where UpdateCaption could look like:
//
void __fastcall TComPort::UpdateCaption()
{
        Form1->Caption = TimeToStr(Now());
}
//---------------------------------------------------------------------------

__fastcall TComPort::TComPort(bool CreateSuspended)
        : TThread(CreateSuspended)
{
  TIMEOUT = 200;
}

//---------------------------------------------------------------------------
void __fastcall TComPort::Execute()
{

       while(1)
       {
         getDB_data();
         
         //Synchronize(UpdateCaption);
       }
}
//---------------------------------------------------------------------------
void __fastcall TComPort::Connect(const AnsiString& port, int baudrate)
{
     	Disconnect();
     //   getDB_data();
 	m_Handle =
 		CreateFile(
 		port.c_str(),
 		GENERIC_READ | GENERIC_WRITE,
 		0,
 		NULL,
 		OPEN_EXISTING,
 		FILE_ATTRIBUTE_NORMAL,
 		NULL);

 	if(m_Handle == INVALID_HANDLE_VALUE) {
 		 TTYException();
 	}

 	SetCommMask(m_Handle, EV_RXCHAR);
 	SetupComm(m_Handle, 1500, 1500);

 	COMMTIMEOUTS CommTimeOuts;
 	CommTimeOuts.ReadIntervalTimeout = 0xFFFFFFFF;
 	CommTimeOuts.ReadTotalTimeoutMultiplier = 0;
 	CommTimeOuts.ReadTotalTimeoutConstant = TIMEOUT;
 	CommTimeOuts.WriteTotalTimeoutMultiplier = 0;
 	CommTimeOuts.WriteTotalTimeoutConstant = TIMEOUT;

 	if(!SetCommTimeouts(m_Handle, &CommTimeOuts)) {
 		CloseHandle(m_Handle);
                m_Handle = INVALID_HANDLE_VALUE;
 		 TTYException();
 	}

 	DCB ComDCM;

 	memset(&ComDCM,0,sizeof(ComDCM));
 	ComDCM.DCBlength = sizeof(DCB);
 	GetCommState(m_Handle, &ComDCM);
 	ComDCM.BaudRate = DWORD(baudrate);
 	ComDCM.ByteSize = 8;
 	ComDCM.Parity = NOPARITY;
 	ComDCM.StopBits = ONESTOPBIT;
 	ComDCM.fAbortOnError = TRUE;
 	ComDCM.fDtrControl = DTR_CONTROL_DISABLE;
 	ComDCM.fRtsControl = RTS_CONTROL_DISABLE;
 	ComDCM.fBinary = TRUE;
 	ComDCM.fParity = FALSE;
 	ComDCM.fInX = FALSE;
        ComDCM.fOutX = FALSE;
 	ComDCM.XonChar = 0;
 	ComDCM.XoffChar = (unsigned char)0xFF;
 	ComDCM.fErrorChar = FALSE;
 	ComDCM.fNull = FALSE;
 	ComDCM.fOutxCtsFlow = FALSE;
 	ComDCM.fOutxDsrFlow = FALSE;
 	ComDCM.XonLim = 128;
 	ComDCM.XoffLim = 128;

 	if(!SetCommState(m_Handle, &ComDCM)) {
 		CloseHandle(m_Handle);
 		m_Handle = INVALID_HANDLE_VALUE;
 		 TTYException();
 	}

}
//---------------------------------------------------------------------------
void __fastcall TComPort::Disconnect()
{
   	if(m_Handle != INVALID_HANDLE_VALUE)
        {
 	   CloseHandle(m_Handle);
           m_Handle = INVALID_HANDLE_VALUE;
 	}

}
//---------------------------------------------------------------------------
void __fastcall TComPort::TTYException()
{
    Form1->StatusBar1->Panels->operator [](0)->Text="Порт закрыт";
    Form1->SpeedButton1->Caption="Открыть порт";
    Form1->CBNport->Enabled=true;
    Form1->CBBaude->Enabled=true;
    Form1->SpeedButton1->Down=false;

}

//----------------------------------------------------------------------------
 void __fastcall TComPort::Write(const unsigned char data[],int len)
 {

 	if(m_Handle == INVALID_HANDLE_VALUE) {
 		// TTYException();
 	}

 	unsigned long feedback;
 	if(!WriteFile(m_Handle, &data[0], len, &feedback, 0) || feedback != len ) {
 	      //	CloseHandle(m_Handle);
 	       //	m_Handle = INVALID_HANDLE_VALUE;
 	       //	 TTYException();

 	}



 }
//----------------------------------------------------------------------------


 void __fastcall TComPort::Read(unsigned char *data,DWORD len_)
 {

 	if(m_Handle == INVALID_HANDLE_VALUE) {
 		// TTYException();
 	}

 	DWORD begin = GetTickCount();
 	DWORD feedback = 0;

       	unsigned char* buf = &data[0];
 	DWORD len=len_;

 	int attempts = 3;
 	while(len && (attempts || (GetTickCount()-begin) < (DWORD)TIMEOUT/3)) {

 		if(attempts) attempts--;

 		if(!ReadFile(m_Handle, buf, len, &feedback, NULL)) {
 			CloseHandle(m_Handle);
 		       //	m_Handle = INVALID_HANDLE_VALUE;
 		       //	 TTYException();
 		}

 		assert(feedback <= len);
 		len -= feedback;
 		buf += feedback;

 	}

 	if(len) {
 	      //	CloseHandle(m_Handle);
 	      //	m_Handle = INVALID_HANDLE_VALUE;
 	      //	 TTYException();
 	}

 }
//----------------------------------------------------------------------------
 unsigned short __fastcall TComPort::SwapBytes(unsigned short value)
{
    return ((value&0xFF)<<8) | (value>>8);
}

//------------------------------------------------------------------------------
unsigned int CRC16_2(unsigned char *buf, int len)
{
  unsigned int crc = 0xFFFF;
  for (int pos = 0; pos < len; pos++)
  {
  crc ^= (unsigned int)buf[pos];    // XOR byte into least sig. byte of crc

  for (int i = 8; i != 0; i--) {    // Loop over each bit
    if ((crc & 0x0001) != 0) {      // If the LSB is set
      crc >>= 1;                    // Shift right and XOR 0xA001
      crc ^= 0xA001;
    }
    else                            // Else LSB is not set
      crc >>= 1;                    // Just shift right
    }
  }

  return crc;
}
void _fastcall TComPort::getDB_data()
{
 // unsigned char datawr[8]={0};

 // unsigned char datard[128]={0};
 // int len=sizeof(datard);
 // Read(&datard[0],&len);

  TADOTable *ADO;
  ADO = new TADOTable(NULL);
  ADO->Connection=DataModule2->ADOConnection;
  ADO->TableName="DEVICE_TAG";
  ADO->Active=true;
  ADO->First();
  while(!ADO->Eof)
  {

    if(!ADO->Fields->FieldByName("device.Enabled")->AsBoolean) {ADO->Next();continue;}
    if(!ADO->Fields->FieldByName("tag.Enabled")->AsBoolean) {ADO->Next();continue;}
    //--------------------------------
     U.data.adr=ADO->Fields->FieldByName("Address")->AsInteger;
     U.data.fun=ADO->Fields->FieldByName("Memory_Type")->AsInteger;
     U.data.offset=SwapBytes(ADO->Fields->FieldByName("Offset")->AsInteger);
     U.data.nreg=ADO->Fields->FieldByName("Date_type")->AsInteger==0?SwapBytes(0x01):SwapBytes(0x02);
     U.data.crc=CRC16_2(U.buf,6);
     PurgeComm(m_Handle, PURGE_TXCLEAR);
     Write(U.buf,sizeof(U.buf));

     unsigned char datard[128]={0};
     int len=sizeof(datard);
     float tenths=ADO->Fields->FieldByName("tenths")->AsInteger;
     float value;
      if(ADO->Fields->FieldByName("Date_type")->AsInteger==1)
     {
       len=9;
       Read(&UFloat.buf[0],len);
       ADO->Edit();
       UFloat.data.reg.buf[0]=SwapBytes(UFloat.data.reg.buf[0]);
       UFloat.data.reg.buf[1]=SwapBytes(UFloat.data.reg.buf[1]);
       value=UFloat.data.reg.b;
       ADO->Fields->FieldByName("Date_value")->AsString=FloatToStrF(value,ffGeneral,4,3);
       ADO->Post();
       ADDtoCharts(ADO->Fields->FieldByName("TAG.ID")->AsInteger,value);

     }
     if(ADO->Fields->FieldByName("Date_type")->AsInteger==0)
     {
       len=7;
       Read(&UInt.buf[0],len);
       ADO->Edit();
       value=(float)SwapBytes(UInt.data.reg)/(float)tenths;
       ADO->Fields->FieldByName("Date_value")->AsString=FloatToStrF(value,ffGeneral,4,3);
       ADO->Post();
       ADDtoCharts(ADO->Fields->FieldByName("TAG.ID")->AsInteger,value);
     }
    int WidgetType=ADO->Fields->FieldByName("WidgetType")->AsInteger;
    switch (WidgetType)
   {
    case 0: ((TWS600*)Form1->FindComponent("ID"+ADO->Fields->FieldByName("Device.ID")->AsString))->SetValue(ADO->Fields->FieldByName("Offset")->AsInteger,value);break;
    case 1: ((TGA100*)Form1->FindComponent("ID"+ADO->Fields->FieldByName("Device.ID")->AsString))->SetValue(ADO->Fields->FieldByName("Offset")->AsInteger,value,ADO->Fields->FieldByName("TagName")->AsString);break;
    case 2: ((TPM100*)Form1->FindComponent("ID"+ADO->Fields->FieldByName("Device.ID")->AsString))->SetValue(ADO->Fields->FieldByName("Offset")->AsInteger,value,ADO->Fields->FieldByName("TagName")->AsString);break;
   }
    ;
     Sleep(10);
    //---------------------------------

    ADO->Next();
  }
  ADO->Active=false;
  ADO->Free();

}

//------------------------------------------------------------------------------

void __fastcall TComPort::ADDtoCharts(int TagID, float value)
{
  TADOTable *ADO;
  ADO = new TADOTable(NULL);
  ADO->Connection=DataModule2->ADOConnection;
  ADO->TableName="Charts";
  ADO->Active=true;
  ADO->Insert();
  ADO->Fields->FieldByName("ID_TAG")->AsInteger=TagID;
  ADO->Fields->FieldByName("Datevalue")->AsString=FloatToStrF(value,ffFixed,0,3);
  ADO->Fields->FieldByName("DateTime")->AsString=DateTimeToStr(Now());
  ADO->Post();
  ADO->Active=false;
  ADO->Free();
}
