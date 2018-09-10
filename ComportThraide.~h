//---------------------------------------------------------------------------

#ifndef ComportThraideH
#define ComportThraideH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <assert.h>
#include <ADODB.hpp>
#include <Math.hpp>
#include <cmath>
//---------------------------------------------------------------------------
class TComPort : public TThread
{            
private:
#pragma pack(push,1)
        struct TSTR
        {
          unsigned char adr;
          unsigned char fun;
          unsigned short offset;
          unsigned short nreg;
          unsigned short crc;
        };
         struct TIntRD
        {
          unsigned char adr;
          unsigned char fun;
          unsigned char nreg;
          unsigned short reg;
          unsigned short crc;
        };
        union TFB
        {
         unsigned short  buf[2];
                      float b;
        };
        struct TFloatRD
        {
          unsigned char adr;
          unsigned char fun;
          unsigned char nreg;
          TFB         reg;
          unsigned short crc;
        };
        union TU
        {
          unsigned char buf[8];
          TSTR data;
        }U;
        union TUint{
         unsigned char buf[7];
         TIntRD data;
        }UInt;

        union TUFloat{
         unsigned char buf[8];
         TFloatRD data;
        }UFloat;
#pragma pack(pop)
protected:
        void __fastcall Execute();
        void __fastcall UpdateCaption();
        void __fastcall TTYException();
        void __fastcall Write(const unsigned char data[],int len);
        void __fastcall Read(unsigned char *data,DWORD len_);
        void __fastcall getDB_data();
        void __fastcall ADDtoCharts(int TagID, float value);
        void __fastcall CompareAlarm(int TagID, float value);
        unsigned short __fastcall SwapBytes(unsigned short value);
        HANDLE m_Handle;
         int TIMEOUT;
public:
        __fastcall TComPort(bool CreateSuspended);
        void __fastcall Connect(const AnsiString& port, int baudrate);
        void __fastcall Disconnect();


};
//---------------------------------------------------------------------------
#endif
