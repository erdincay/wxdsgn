//---------------------------------------------------------------------------
//
// Name:        InstallDlg.cpp
// Author:      Tony Reina and Edward Toovey (Sof.T)
// Created:     5/13/2008 11:23:50 PM
// Description: InstallDlg class implementation
//
//---------------------------------------------------------------------------

#include "InstallDlg.h"
#include "InstallDevPak.h"

//Do not add custom headers
//wxDev-C++ designer will remove them
////Header Include Start
#include "Images/InstallDlg_WxStaticBitmap1_XPM.xpm"
////Header Include End

//----------------------------------------------------------------------------
// InstallDlg
//----------------------------------------------------------------------------
//Add Custom Events only in the appropriate block.
//Code added in other places will be removed by wxDev-C++
////Event Table Start
BEGIN_EVENT_TABLE(InstallDlg,wxDialog)
    ////Manual Code Start
    ////Manual Code End

    EVT_CLOSE(InstallDlg::OnClose)
    EVT_BUTTON(ID_BTCANCEL,InstallDlg::btCancelClick)
    EVT_BUTTON(ID_BTNEXT,InstallDlg::btNextClick)
    EVT_BUTTON(ID_BTPREVIOUS,InstallDlg::btPreviousClick)
END_EVENT_TABLE()
////Event Table End

InstallDlg::InstallDlg(wxWindow *parent, wxWindowID id, const wxString &title, const wxPoint &position, const wxSize& size, long style)
        : wxDialog(parent, id, title, position, size, style)
{
    CreateGUIControls();
}

InstallDlg::~InstallDlg()
{
}

void InstallDlg::CreateGUIControls()
{
    //Do not add custom code between
    //GUI Items Creation Start and GUI Items Creation End.
    //wxDev-C++ designer will remove them.
    //Add the custom code before or after the blocks
    ////GUI Items Creation Start

    WxBoxSizer1 = new wxBoxSizer(wxVERTICAL);
    this->SetSizer(WxBoxSizer1);
    this->SetAutoLayout(true);

    WxBoxSizer2 = new wxBoxSizer(wxHORIZONTAL);
    WxBoxSizer1->Add(WxBoxSizer2, 0, wxALIGN_CENTER | wxALL, 5);

    wxBitmap WxStaticBitmap1_BITMAP(InstallDlg_WxStaticBitmap1_XPM);
    WxStaticBitmap1 = new wxStaticBitmap(this, ID_WXSTATICBITMAP1, WxStaticBitmap1_BITMAP, wxPoint(5,11), wxSize(48,48));
    WxStaticBitmap1->Enable(false);
    WxBoxSizer2->Add(WxStaticBitmap1,0,wxALIGN_CENTER | wxALL,5);

    WxBoxSizer5 = new wxBoxSizer(wxVERTICAL);
    WxBoxSizer2->Add(WxBoxSizer5, 0, wxALIGN_CENTER | wxALL, 5);

    WxStaticText1 = new wxStaticText(this, ID_WXSTATICTEXT1, wxT("Dev-C++ Package Installation Wizard"), wxPoint(5,5), wxDefaultSize, 0, wxT("WxStaticText1"));
    WxStaticText1->SetFont(wxFont(12, wxSWISS, wxNORMAL, wxBOLD, false));
    WxBoxSizer5->Add(WxStaticText1,0,wxALIGN_CENTER | wxALL,5);

    stInstallProcedure = new wxStaticText(this, ID_STINSTALLPROCEDURE, wxT("%s installation procedure"), wxPoint(99,38), wxDefaultSize, 0, wxT("stInstallProcedure"));
    WxBoxSizer5->Add(stInstallProcedure,0,wxALIGN_CENTER | wxALL,5);

    WxBoxSizer3 = new wxBoxSizer(wxHORIZONTAL);
    WxBoxSizer1->Add(WxBoxSizer3, 1, wxALIGN_CENTER | wxALIGN_CENTER_HORIZONTAL | wxALIGN_CENTER_VERTICAL | wxEXPAND | wxALL, 5);

    nbInstallerPages = new wxNotebook(this, ID_NBINSTALLERPAGES, wxPoint(5,5),wxSize(298,199), wxNB_TOP);
    nbInstallerPages->Enable(false);
    WxBoxSizer3->Add(nbInstallerPages,1,wxALIGN_CENTER | wxALIGN_CENTER_HORIZONTAL | wxALIGN_CENTER_VERTICAL | wxEXPAND | wxALL,5);

    nbWelcome = new wxPanel(nbInstallerPages, ID_NBWELCOME, wxPoint(4,24), wxSize(290,171));
    nbInstallerPages->AddPage(nbWelcome, wxT("Welcome"));

    WxBoxSizer9 = new wxBoxSizer(wxVERTICAL);
    nbWelcome->SetSizer(WxBoxSizer9);
    nbWelcome->SetAutoLayout(true);

    WxStaticText4 = new wxStaticText(nbWelcome, ID_WXSTATICTEXT4, wxT("Welcome to the wxDev-C++ Package Installation Wizard"), wxPoint(49,5), wxDefaultSize, 0, wxT("WxStaticText4"));
    WxBoxSizer9->Add(WxStaticText4,0,wxALIGN_BOTTOM | wxALIGN_CENTER_HORIZONTAL | wxALL,5);

    stWelcome = new wxStaticText(nbWelcome, ID_STWELCOME, wxT("This wizard will install %s version %f"), wxPoint(98,32), wxDefaultSize, 0, wxT("stWelcome"));
    WxBoxSizer9->Add(stWelcome,0,wxALIGN_LEFT | wxALIGN_TOP | wxALIGN_CENTER_HORIZONTAL | wxALL,5);

    WxStaticText7 = new wxStaticText(nbWelcome, ID_WXSTATICTEXT7, wxT("Please press NEXT to continue or CANCEL to stop the installation now "), wxPoint(18,59), wxDefaultSize, 0, wxT("WxStaticText7"));
    WxBoxSizer9->Add(WxStaticText7,0,wxALIGN_CENTER | wxALL,5);

    wxStaticBox* WxStaticBoxSizer1_StaticBoxObj = new wxStaticBox(nbWelcome, wxID_ANY, wxT("Package Description"));
    WxStaticBoxSizer1 = new wxStaticBoxSizer(WxStaticBoxSizer1_StaticBoxObj, wxHORIZONTAL);
    WxBoxSizer9->Add(WxStaticBoxSizer1, 1, wxALIGN_CENTER | wxEXPAND | wxALL, 5);

    txtDescription = new wxTextCtrl(nbWelcome, ID_TXTDESCRIPTION, wxT(""), wxPoint(10,20), wxSize(185,89), wxTE_MULTILINE, wxDefaultValidator, wxT("txtDescription"));
    txtDescription->SetMaxLength(0);
    txtDescription->AppendText(wxT("txtDescription"));
    txtDescription->SetFocus();
    txtDescription->SetInsertionPointEnd();
    WxStaticBoxSizer1->Add(txtDescription,1,wxALIGN_CENTER | wxEXPAND | wxALL,5);

    WxStaticText5 = new wxStaticText(nbWelcome, ID_WXSTATICTEXT5, wxT("For more information about this package, please visit the following website:"), wxPoint(5,215), wxDefaultSize, 0, wxT("WxStaticText5"));
    WxBoxSizer9->Add(WxStaticText5,0,wxALIGN_CENTER | wxALL,5);

    htUrl = new wxHyperlinkCtrl(nbWelcome, ID_HTURL, wxT("Open website"), wxT("http://wxdsgn.sf.net"), wxPoint(143,242), wxSize(89, 17), wxNO_BORDER | wxHL_CONTEXTMENU, wxT("htUrl"));
    htUrl->SetNormalColour(*wxBLUE);
    htUrl->SetFont(wxFont(8, wxSWISS, wxNORMAL, wxNORMAL, true, wxT("MS Sans Serif")));
    WxBoxSizer9->Add(htUrl,0,wxALIGN_CENTER | wxALL,5);

    nbReadme = new wxPanel(nbInstallerPages, ID_NBREADME, wxPoint(4,24), wxSize(290,171));
    nbInstallerPages->AddPage(nbReadme, wxT("Readme"));

    WxBoxSizer6 = new wxBoxSizer(wxHORIZONTAL);
    nbReadme->SetSizer(WxBoxSizer6);
    nbReadme->SetAutoLayout(true);

    txtReadme = new wxTextCtrl(nbReadme, ID_TXTREADME, wxT(""), wxPoint(5,5), wxSize(185,89), wxVSCROLL | wxHSCROLL | wxTE_READONLY | wxTE_AUTO_URL | wxTE_WORDWRAP | wxTE_MULTILINE, wxDefaultValidator, wxT("txtReadme"));
    txtReadme->SetMaxLength(0);
    txtReadme->AppendText(wxT("No readme file found."));
    txtReadme->SetFocus();
    txtReadme->SetInsertionPointEnd();
    WxBoxSizer6->Add(txtReadme,1,wxALIGN_CENTER | wxEXPAND | wxALL,5);

    nbLicense = new wxPanel(nbInstallerPages, ID_NBLICENSE, wxPoint(4,24), wxSize(290,171));
    nbInstallerPages->AddPage(nbLicense, wxT("License"));

    WxBoxSizer7 = new wxBoxSizer(wxVERTICAL);
    nbLicense->SetSizer(WxBoxSizer7);
    nbLicense->SetAutoLayout(true);

    WxStaticText2 = new wxStaticText(nbLicense, ID_WXSTATICTEXT2, wxT("Please read the following license:"), wxPoint(98,5), wxDefaultSize, 0, wxT("WxStaticText2"));
    WxBoxSizer7->Add(WxStaticText2,0,wxALIGN_CENTER | wxALL,5);

    nbInstalled = new wxPanel(nbInstallerPages, ID_NBINSTALLED, wxPoint(4,24), wxSize(290,171));
    nbInstallerPages->AddPage(nbInstalled, wxT("Installing"));

    WxBoxSizer8 = new wxBoxSizer(wxHORIZONTAL);
    nbInstalled->SetSizer(WxBoxSizer8);
    nbInstalled->SetAutoLayout(true);

    wxArrayString arrayStringFor_lbInstalledFiles;
    lbInstalledFiles = new wxListBox(nbInstalled, ID_LBINSTALLEDFILES, wxPoint(5,5), wxSize(121,97), arrayStringFor_lbInstalledFiles, wxLB_SINGLE | wxVSCROLL | wxHSCROLL);
    WxBoxSizer8->Add(lbInstalledFiles,1,wxALIGN_CENTER | wxEXPAND | wxALL,5);

    nbFinished = new wxPanel(nbInstallerPages, ID_NBFINISHED, wxPoint(4,24), wxSize(290,171));
    nbInstallerPages->AddPage(nbFinished, wxT("Finished"));

    WxBoxSizer4 = new wxBoxSizer(wxHORIZONTAL);
    WxBoxSizer1->Add(WxBoxSizer4, 0, wxALIGN_CENTER | wxALL, 5);

    btPrevious = new wxButton(this, ID_BTPREVIOUS, wxT("< Previous"), wxPoint(5,5), wxSize(75,25), 0, wxDefaultValidator, wxT("btPrevious"));
    btPrevious->Enable(false);
    WxBoxSizer4->Add(btPrevious,0,wxALIGN_CENTER | wxALL,5);

    btNext = new wxButton(this, ID_BTNEXT, wxT("Next >"), wxPoint(90,5), wxSize(75,25), 0, wxDefaultValidator, wxT("btNext"));
    WxBoxSizer4->Add(btNext,0,wxALIGN_CENTER | wxALL,5);

    btCancel = new wxButton(this, ID_BTCANCEL, wxT("Cancel"), wxPoint(175,5), wxSize(75,25), 0, wxDefaultValidator, wxT("btCancel"));
    WxBoxSizer4->Add(btCancel,0,wxALIGN_CENTER | wxALL,5);

    stFinished = new wxStaticText(nbFinished, ID_STFINISHED, wxT("%s has been successfully installed on your system."), wxPoint(20,50), wxDefaultSize, 0, wxT("stFinished"));

    WxStaticText8 = new wxStaticText(nbFinished, ID_WXSTATICTEXT8, wxT("Please press Finish to close this window."), wxPoint(41,95), wxDefaultSize, 0, wxT("WxStaticText8"));

    txtLicense = new wxTextCtrl(nbLicense, ID_TXTLICENSE, wxT(""), wxPoint(87,32), wxSize(185,89), wxVSCROLL | wxHSCROLL | wxTE_READONLY | wxTE_AUTO_URL | wxTE_WORDWRAP | wxTE_MULTILINE, wxDefaultValidator, wxT("txtLicense"));
    txtLicense->SetMaxLength(0);
    txtLicense->AppendText(wxT("No license file found."));
    txtLicense->SetFocus();
    txtLicense->SetInsertionPointEnd();
    WxBoxSizer7->Add(txtLicense,1,wxALIGN_CENTER | wxEXPAND | wxALL,5);

    WxStaticText6 = new wxStaticText(nbLicense, ID_WXSTATICTEXT6, wxT("If you do not agree, click CANCEL now."), wxPoint(83,131), wxDefaultSize, 0, wxT("WxStaticText6"));
    WxBoxSizer7->Add(WxStaticText6,0,wxALIGN_CENTER | wxALL,5);

    WxStaticText3 = new wxStaticText(nbLicense, ID_WXSTATICTEXT3, wxT("By installing this devpak, you implicitly agree to the terms of this license."), wxPoint(5,158), wxDefaultSize, 0, wxT("WxStaticText3"));
    WxBoxSizer7->Add(WxStaticText3,0,wxALIGN_CENTER | wxALL,5);

    SetTitle(wxT("Installing DevPak"));
    SetIcon(wxNullIcon);

    GetSizer()->Layout();
    GetSizer()->Fit(this);
    GetSizer()->SetSizeHints(this);
    Center();

    ////GUI Items Creation End

    this->SetSize(wxDefaultCoord, wxDefaultCoord, 500, 500);


    sArchiveName = wxFileSelector("Choose a file to open","","","","DEVPAK files (*.devpak)|*.devpak|All files (*.*)|*.*", wxFD_OPEN|wxFD_FILE_MUST_EXIST);

    InstallDevPak::GetPackageInfo(&info, sArchiveName);

    // Update the text on the Welcome page
    wxString szTemp = stInstallProcedure->GetLabel();
    szTemp.Replace("%s", info.AppName);
    stInstallProcedure->SetLabel(szTemp);

    szTemp = stWelcome->GetLabel();
    szTemp.Replace("%s", info.AppName);
    szTemp.Replace("%f", info.AppVersion);
    stWelcome->SetLabel(szTemp);

    txtDescription->SetValue(info.Description);

    htUrl->SetURL(info.Url);

    // Update the Readme file text
    InstallDevPak::ExtractSingleFile(sArchiveName, info.Readme, txtReadme);

    // Update the License file text
    InstallDevPak::ExtractSingleFile(sArchiveName, info.License, txtLicense);

    // Update the text on the Finished page
    szTemp = stFinished->GetLabel();
    szTemp.Replace("%s", info.AppName);
    stFinished->SetLabel(szTemp);

}

void InstallDlg::OnClose(wxCloseEvent& /*event*/)
{
    Destroy();
}

/*
 * btCancelClick
 */
void InstallDlg::btCancelClick(wxCommandEvent& event)
{
    if (btCancel->GetLabel() == "Cancel")
        // Cancel the installation
        EndModal(wxID_CANCEL);
    else
        // Went to the finish
        EndModal(wxID_OK);

}

/*
 * btNextClick
 */
void InstallDlg::btNextClick(wxCommandEvent& event)
{

    static bool bFilesInstalled = false;

    btPrevious->Enable(true);
    if (((int)nbInstallerPages->GetSelection()) < (((int)nbInstallerPages->GetPageCount()) - 1)) {
        nbInstallerPages->AdvanceSelection(true);
    }
    if ((int)nbInstallerPages->GetSelection() == ((int)nbInstallerPages->GetPageCount() - 1)) {
        btCancel->SetLabel(wxT("Finish"));
        btNext->Enable(false);
    }

    if ((nbInstallerPages->GetPageText(nbInstallerPages->GetSelection())) == "Installing") {
        if (!bFilesInstalled) {

            btNext->Enable(false);
            btPrevious->Enable(false);
            btCancel->Enable(false);

            lbInstalledFiles->Append("Extracting files from DevPak...");
            InstallDevPak::ExtractArchive(this->sArchiveName, info, lbInstalledFiles); // Un-bzip, un-tar devpak archive and install
            lbInstalledFiles->Append("Finished DevPak extraction. Files are installed.");
            bFilesInstalled = true;

            btNext->Enable(true);
            btPrevious->Enable(true);
            btCancel->Enable(true);

            // Advance notebook to finish page
            nbInstallerPages->AdvanceSelection(true);
            btCancel->SetLabel(wxT("Finish"));
            btNext->Enable(false);

        }


    }
}

/*
 * btPreviousClick
 */
void InstallDlg::btPreviousClick(wxCommandEvent& event)
{
    btCancel->SetLabel(wxT("Cancel"));
    btNext->Enable(true);
    if (nbInstallerPages->GetSelection() > 0)
        nbInstallerPages->AdvanceSelection(false);

    if (nbInstallerPages->GetSelection() == 0)
        btPrevious->Enable(false);

}




