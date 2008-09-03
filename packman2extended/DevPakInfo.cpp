//---------------------------------------------------------------------------
//
// Name:        DevPakInfo.cpp
// Author:      Tony Reina and Edward Toovey (Sof.T)
// Created:     9/2/2008 07:54:34 PM
// Description: DevPak info class
//
//---------------------------------------------------------------------------

#include "InstallDevPak.h"
#include "DevPakInfo.h"

// Encapsulation function for the DevPakInfo class to set the entry's filename
bool DevPakInfo::SetEntryFileName(wxString filename)
{
    wxString sAppDir = InstallDevPak::GetAppDir();
    if (sAppDir.IsEmpty())
        return false;

    wxFileName tempname(sAppDir + wxFILE_SEP_PATH + wxT("Packages") + wxFILE_SEP_PATH + filename.AfterLast(wxFILE_SEP_PATH));
    tempname.SetExt("entry");

    // Set the private variable to the new file name
    EntryFileName = tempname.GetFullPath();

    return true;
}

// Encapsulation function for the DevPakInfo class to get the entry's filename
wxString DevPakInfo::GetEntryFileName()
{
    return EntryFileName;
}


