//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORM("Unit1.cpp", Form1);
USEFORM("DataModule.cpp", DataModule2); /* TDataModule: File Type */
USEFORM("fr.cpp", WS600); /* TFrame: File Type */
USEFORM("frga100.cpp", GA100); /* TFrame: File Type */
USEFORM("FRPM100.cpp", PM100); /* TFrame: File Type */
USEFORM("Plot.cpp", Plotter); /* TFrame: File Type */
USEFORM("PlotForm.cpp", FormPlot);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->Title = "EKMonitoring";
                 Application->CreateForm(__classid(TForm1), &Form1);
                 Application->CreateForm(__classid(TDataModule2), &DataModule2);
                 Application->CreateForm(__classid(TFormPlot), &FormPlot);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        catch (...)
        {
                 try
                 {
                         throw Exception("");
                 }
                 catch (Exception &exception)
                 {
                         Application->ShowException(&exception);
                 }
        }
        return 0;
}
//---------------------------------------------------------------------------
