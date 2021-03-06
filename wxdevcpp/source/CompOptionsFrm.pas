{
    $Id: CompOptionsFrm.pas 932 2007-04-20 10:27:52Z lowjoel $

    This file is part of Dev-C++
    Copyright (c) 2004 Bloodshed Software

    Dev-C++ is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    Dev-C++ is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Dev-C++; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
}

{$WARN UNIT_PLATFORM OFF}
unit CompOptionsFrm;

interface

uses
{$IFDEF PLUGIN_BUILD}
    iplugin_bpl, iplugin,
{$ENDIF}
{$IFDEF WIN32}
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Buttons, StdCtrls, Inifiles, ExtCtrls, ComCtrls, devTabs, Spin, XPMenu,
    CompilerOptionsFrame;
{$ENDIF}
{$IFDEF LINUX}
  SysUtils, Classes, QGraphics, QControls, QForms, QDialogs,
  QButtons, QStdCtrls, Inifiles, QExtCtrls, QComCtrls, devTabs,
  CompilerOptionsFrame;
{$ENDIF}

type
    TCompForm = class(TForm)
        btnOk: TBitBtn;
        btnCancel: TBitBtn;
        btnDefault: TBitBtn;
        btnHelp: TBitBtn;
        MainPages: TPageControl;
        tabDirectories: TTabSheet;
        tabCompiler: TTabSheet;
        tabCodeGen: TTabSheet;
        DirTabs: TdevTabs;
        btnUp: TSpeedButton;
        btnDown: TSpeedButton;
        lstDirs: TListBox;
        edEntry: TEdit;
        btnDelInval: TButton;
        btnDelete: TButton;
        btnAdd: TButton;
        btnReplace: TButton;
        tabPrograms: TTabSheet;
        lblProgramsText: TLabel;
        lblgcc: TLabel;
        GccEdit: TEdit;
        GppEdit: TEdit;
        lblgpp: TLabel;
        lblmake: TLabel;
        MakeEdit: TEdit;
        lblgdb: TLabel;
        GdbEdit: TEdit;
        lblwindres: TLabel;
        WindresEdit: TEdit;
        lbldllwrap: TLabel;
        DllwrapEdit: TEdit;
        lblgprof: TLabel;
        GprofEdit: TEdit;
        XPMenu: TXPMenu;
        CompOptionsFrame1: TCompOptionsFrame;
        grpCompSet: TGroupBox;
        btnBrws2: TSpeedButton;
        btnBrowse3: TSpeedButton;
        btnBrowse4: TSpeedButton;
        btnBrowse5: TSpeedButton;
        btnBrowse6: TSpeedButton;
        btnBrowse7: TSpeedButton;
        btnBrowse8: TSpeedButton;
        cmdline: TGroupBox;
        Commands: TMemo;
        Linker: TMemo;
        lblDelay: TLabel;
        seCompDelay: TSpinEdit;
        cbCompAdd: TLabel;
        cbLinkerAdd: TLabel;
        CompilerTypes: TComboBox;
        CompilerTypeLbl: TLabel;
        cbFastDep: TCheckBox;
        cbMakeAdd: TLabel;
        Make: TMemo;
        btnBrowse: TSpeedButton;
        cmbCompilerSetComp: TComboBox;
        btnAddCompilerSet: TSpeedButton;
        btnDelCompilerSet: TSpeedButton;
        btnRenameCompilerSet: TSpeedButton;
        Label1: TLabel;
        btnRefreshCompilerSettings: TSpeedButton;

        procedure btnCancelClick(Sender: TObject);
        procedure btnOkClick(Sender: TObject);
        procedure FormActivate(Sender: TObject);
        procedure btnDefaultClick(Sender: TObject);
        procedure btnHelpClick(Sender: TObject);
        procedure DirTabsChange(Sender: TObject);
        procedure DirTabsChanging(Sender: TObject; NewIndex: integer;
            var AllowChange: boolean);
        procedure lstDirsClick(Sender: TObject);
        procedure lstDirsDblClick(Sender: TObject);
        procedure edEntryChange(Sender: TObject);
        procedure btnBrowseClick(Sender: TObject);
        procedure ButtonClick(Sender: TObject);
        procedure UpDownClick(Sender: TObject);
        procedure FormKeyDown(Sender: TObject; var Key: word;
            Shift: TShiftState);
        procedure edEntryKeyUp(Sender: TObject; var Key: word;
            Shift: TShiftState);
        procedure FormCreate(Sender: TObject);
        procedure btnBrws1Click(Sender: TObject);
        procedure cmbCompilerSetCompChange(Sender: TObject);
        procedure btnAddCompilerSetClick(Sender: TObject);
        procedure btnDelCompilerSetClick(Sender: TObject);
        procedure btnRenameCompilerSetClick(Sender: TObject);
        procedure CompilerTypesClick(Sender: TObject);
        procedure LoadOptions;
        procedure SaveSettings;
        procedure btnRefreshCompilerSettingsClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);

    private
        fBins: string;
        fLibs: string;
        fC: string;
        fCpp: string;
        fRC: string;
        procedure SetOptions;
        procedure UpdateButtons;
        procedure LoadText;
    end;

var
    NumOpt: integer;
    currentSet: integer;
    previousSet: integer;

implementation

uses
{$IFDEF WIN32}
    Main, FileCtrl, version, devcfg, utils, MultiLangSupport, datamod, hh;
{$ENDIF}
{$IFDEF LINUX}
  Xlib, Main, version, devcfg, utils, MultiLangSupport, datamod;
{$ENDIF}

{$R *.dfm}

const
    Help_Topics: array[0..4] of string = (
        'html\compiler_compiler.html',
        'html\compiler_settings.html',
        'html\compiler_dirs.html',
        'html\compiler_programs.html',
        'html\compiler_wxwidgets.html');

procedure TCompForm.btnCancelClick(Sender: TObject);
begin
    devCompiler.CompilerSet := previousSet;  // Return to initial compiler set
    Close;
end;

procedure TCompForm.btnOkClick(Sender: TObject);
begin
    if (fBins = '') then
    begin
        MessageDlg('You have not indicated the location of your binaries (compiler).'#13#10 +
            'Please do so now.', mtError, [mbOK], Handle);
        ModalResult := mrNone;
        Exit;
    end;

    Screen.Cursor := crHourGlass;
    btnOk.Enabled := FALSE;

    self.SaveSettings;
    devCompilerSet.AssignToCompiler;
    with devCompiler do
    begin
        Delay := seCompDelay.Value;
        FastDep := cbFastDep.Checked;
        CompilerSet := cmbCompilerSetComp.ItemIndex;
        devCompilerSet.Sets.Assign(cmbCompilerSetComp.Items);
    end;

    with devDirs do
    begin
        C := fC;
        Cpp := fCpp;
        Lib := fLibs;
        RC := fRC;
        Bins := fBins;
        SetPath(Bins);
    end;

    devDirs.SaveSettings;
    devCompiler.SaveSettings;

    // The Tools->Compiler Options window shouldn't change the compiler for the
    // current project. That should only be possible from Project->Project Settings.
    // So at the very end, let's just go back to the original compiler index
    // (which is what the project was set to)
    if Assigned(MainForm.fProject) then
        devCompiler.CompilerSet := previousSet;

    btnOk.Enabled := TRUE;
    Cursor := crDefault;

end;

procedure TCompForm.FormActivate(Sender: TObject);
begin
    SetOptions;
    DirTabsChange(Self);
    currentSet := devCompiler.CompilerSet;
    previousSet := currentSet;  // Remember the initial compiler index
end;

procedure TCompForm.SetOptions;
begin
    with devCompiler do
    begin
        seCompDelay.Value := Delay;
        cbFastDep.Checked := FastDep;
        Commands.Lines.Text := CmdOpts;
        Linker.Lines.Text := LinkOpts;
        Make.Lines.Text := MakeOpts;

        cmbCompilerSetComp.Items.Clear;
        cmbCompilerSetComp.Items.Assign(devCompilerSet.Sets);

        if CompilerSet < cmbCompilerSetComp.Items.Count then
            cmbCompilerSetComp.ItemIndex := CompilerSet
        else
        if cmbCompilerSetComp.Items.Count > 0 then
            cmbCompilerSetComp.ItemIndex := 0;

        currentSet := cmbCompilerSetComp.ItemIndex;
        devCompilerSet.LoadSet(CompilerSet);
        LoadOptions;
    end;
end;

procedure TCompForm.btnDefaultClick(Sender: TObject);
var
    i: integer;
begin
    devCompiler.SettoDefaults;
    SetOptions;

{$IFDEF PLUGIN_BUILD}//EAB TODO: Make this more general (not easy to do :P )

    for i := 0 to MainForm.pluginsCount - 1 do
    begin
        MainForm.plugins[i].SetCompilerOptionstoDefaults;
    end;
{$ENDIF}

end;

procedure TCompForm.btnHelpClick(Sender: TObject);
begin
    HelpFile := devDirs.Help + DEV_MAINHELP_FILE;
    HtmlHelp(MainForm.handle, pchar(HelpFile), HH_DISPLAY_TOPIC,
        DWORD(pchar('html\compiler_options.html')));
end;

procedure TCompForm.DirTabsChange(Sender: TObject);
begin
    case DirTabs.TabIndex of
        0:
            StrtoList(fBins, TStrings(lstDirs.Items));
        1:
            StrtoList(fLibs, TStrings(lstDirs.Items));
        2:
            StrtoList(fC, TStrings(lstDirs.Items));
        3:
            StrtoList(fCpp, TStrings(lstDirs.Items));
        4:
            StrtoList(fRC, TStrings(lstDirs.Items));
    end;
    edEntry.Clear;
    UpdateButtons;
end;

procedure TCompForm.DirTabsChanging(Sender: TObject; NewIndex: integer;
    var AllowChange: boolean);
begin
    UpdateButtons;
end;

procedure TCompForm.lstDirsClick(Sender: TObject);
begin
    UpdateButtons;
end;

procedure TCompForm.lstDirsDblClick(Sender: TObject);
begin
    if lstDirs.ItemIndex <> -1 then
        edEntry.Text := lstDirs.Items[lstDirs.ItemIndex];
end;

procedure TCompForm.edEntryChange(Sender: TObject);
begin
    UpdateButtons;
end;

procedure TCompForm.btnBrowseClick(Sender: TObject);
var
{$IFDEF WIN32}
    NewItem: string;
{$ENDIF}
{$IFDEF LINUX}
  NewItem: WideString;
{$ENDIF}
begin
    if (Trim(edEntry.Text) <> '') and DirectoryExists(Trim(edEntry.Text)) then
        newitem := edEntry.Text
    else
        newitem := devDirs.Default;
    if SelectDirectory('', '', NewItem) then
        edEntry.Text := NewItem;
end;

procedure TCompForm.ButtonClick(Sender: TObject);
var
    idx: integer;

    function VerifyPath: boolean;
    begin
        if CompilerTypes.ItemIndex = ID_COMPILER_DMARS then
        begin
            Result := Pos('+', edEntry.Text) = 0;
            if not Result then
                MessageDlg('The Digital Mars Compiler does not support having ''+'' in its path.'#13#10#13#10 +
                    'Please place your binaries in a directory that does not contain plus-signs in its path.',
                    mtError, [mbOK], Handle);
        end
        else
            Result := TRUE;
    end;
begin
    case (Sender as TComponent).Tag of
        1:
            if VerifyPath then
            begin
                lstDirs.Items[lstDirs.ItemIndex] :=
                    ExcludeTrailingPathDelimiter(TrimRight(edEntry.Text));
                edEntry.Clear;
            end;
        2:
            if VerifyPath then
            begin
                lstDirs.Items.Add(ExcludeTrailingPathDelimiter(TrimRight(edEntry.Text)));
                edEntry.Clear;
            end;
        3:
            lstDirs.DeleteSelected;
        4:
            for idx := pred(lstDirs.Items.Count) downto 0 do
                if not DirectoryExists(lstDirs.Items[idx]) then
                    lstDirs.Items.Delete(idx);
    end; { case }

    case DirTabs.TabIndex of
        0:
            fBins := ListtoStr(lstDirs.Items);
        1:
            fLibs := ListtoStr(lstDirs.Items);
        2:
            fC := ListtoStr(lstDIrs.Items);
        3:
            fCpp := ListtoStr(lstDirs.Items);
        4:
            fRC := ListtoStr(lstDirs.Items);
    end;
    edEntry.SetFocus;
end;

procedure TCompForm.UpDownClick(Sender: TObject);
var
    idx: integer;
begin
    idx := lstDirs.ItemIndex;
    if Sender = btnUp then
    begin
        lstDirs.Items.Exchange(lstDirs.ItemIndex, lstDirs.ItemIndex - 1);
        lstDirs.ItemIndex := idx - 1;
    end
    else
    begin
        if Sender = btnDown then
        begin
            lstDirs.Items.Exchange(lstDirs.ItemIndex, lstDirs.ItemIndex + 1);
            lstDirs.ItemIndex := idx + 1;
        end;
    end;

    case DirTabs.TabIndex of
        0:
            fBins := ListtoStr(lstDirs.Items);
        1:
            fLibs := ListtoStr(lstDirs.Items);
        2:
            fC := ListtoStr(lstDIrs.Items);
        3:
            fCpp := ListtoStr(lstDirs.Items);
        4:
            fRC := ListtoStr(lstDirs.Items);
    end;
    UpdateButtons;
end;

procedure TCompForm.UpdateButtons;
begin
    btnAdd.Enabled := edEntry.Text <> '';
    if lstDirs.ItemIndex >= 0 then
    begin
        btnDelete.Enabled := TRUE;
        btnReplace.Enabled := btnAdd.Enabled;
        btnUp.Enabled := lstDirs.ItemIndex > 0;
        btnDown.Enabled := lstDirs.ItemIndex < (lstDirs.Items.Count - 1);
    end
    else
    begin
        btnDelete.Enabled := FALSE;
        btnReplace.Enabled := FALSE;
        btnUp.Enabled := FALSE;
        btnDown.Enabled := FALSE;
    end;
    btnDelInval.Enabled := lstDirs.Items.Count > 0;
end;

procedure TCompForm.FormKeyDown(Sender: TObject; var Key: word;
    Shift: TShiftState);
begin
{$IFDEF WIN32}
    if key = vk_F1 then
{$ENDIF}
{$IFDEF LINUX}
  if key = XK_F1 then
{$ENDIF}
    begin
        HelpFile := devDirs.Help + DEV_MAINHELP_FILE;
        //HelpKeyword := Help_Topics[MainPages.ActivePageIndex];
        HtmlHelp(MainForm.handle, pchar(HelpFile), HH_DISPLAY_TOPIC,
            DWORD(pchar(Help_Topics[MainPages.ActivePageIndex])));
    end;
end;

procedure TCompForm.edEntryKeyUp(Sender: TObject; var Key: word;
    Shift: TShiftState);
begin
{$IFDEF WIN32}
    if key = vk_return then
        ButtonClick(btnAdd);
{$ENDIF}
{$IFDEF LINUX}
  if key = XK_RETURN then ButtonClick(btnAdd);
{$ENDIF}
end;

procedure TCompForm.FormCreate(Sender: TObject);
begin
    LoadText;
    CompOptionsFrame1.FillOptions(NIL);
    MainPages.ActivePageIndex := 0;
    DirTabs.TabIndex := 0;
end;

procedure TCompForm.LoadText;
begin
    DesktopFont := TRUE;
    XPMenu.Active := devData.XPTheme;
    Caption := Lang[ID_COPT];
    //tabs
    tabCompiler.Caption := Lang[ID_COPT_COMPTAB];
    tabDirectories.Caption := Lang[ID_COPT_DIRTAB];
    tabCodeGen.Caption := Lang[ID_COPT_CODEGENTAB];
    tabPrograms.Caption := Lang[ID_COPT_PROGRAMSTAB];

    // subtabs
    DirTabs.Tabs.Clear;
    DirTabs.Tabs.Append(Lang[ID_COPT_BIN]);
    DirTabs.Tabs.Append(Lang[ID_COPT_LIB]);
    DirTabs.Tabs.Append(Lang[ID_COPT_INCC]);
    DirTabs.Tabs.Append(Lang[ID_COPT_INCCPP]);
    DirTabs.Tabs.Append('Resource Includes');

    //buttons
    btnReplace.Caption := Lang[ID_BTN_REPLACE];
    btnAdd.Caption := Lang[ID_BTN_ADD];
    btnDelete.Caption := Lang[ID_BTN_DELETE];
    btnDelInval.Caption := Lang[ID_BTN_DELINVAL];
    btnOk.Caption := Lang[ID_BTN_OK];
    btnCancel.Caption := Lang[ID_BTN_CANCEL];
    btnHelp.Caption := Lang[ID_BTN_HELP];
    btnDefault.Caption := Lang[ID_BTN_DEFAULT];

    //controls (compiler tab)
    cbCompAdd.Caption := Lang[ID_COPT_ADDCOMP];
    lblDelay.Caption := Lang[ID_COPT_DELAY];
    lblDelay.Hint := Lang[ID_COPT_DELAYMSG];
    cbLinkerAdd.Caption := Lang[ID_COPT_LINKADD];
    cbFastDep.Caption := Lang[ID_COPT_FASTDEP];

    // conrols (Programs tab)
    lblProgramsText.Caption := Lang[ID_COPT_PROGRAMS];

    grpCompSet.Caption := Lang[ID_COPT_COMPSETS];
end;

procedure TCompForm.cmbCompilerSetCompChange(Sender: TObject);
{$IFDEF PLUGIN_BUILD}
var
    i, j: integer;
    pluginSettings: TSettings;
    tempName: string;
{$ENDIF}
begin

    pluginSettings := NIL;

    //SaveSettings;    EAB
    devCompilerSet.LoadSet(cmbCompilerSetComp.ItemIndex);

    {$IFDEF PLUGIN_BUILD}
    for i := 0 to MainForm.pluginsCount - 1 do
    begin

      // Get plugin-specific compiler options
        pluginSettings := MainForm.plugins[i].GetCompilerOptions;

        for j := 0 to Length(pluginSettings) - 1 do
        begin

            // This line loads it from the .ini file.
            tempName := devData.LoadSetting(devCompilerSet.optComKey,
                pluginSettings[j].name);

            // Value comes back as a string. Plugin converts
            //  string value to correct type using LoadCompilerSettings
            if tempName <> '' then
                MainForm.plugins[i].LoadCompilerSettings(
                    pluginSettings[j].name, tempName);
        end;
        MainForm.plugins[i].LoadCompilerOptions;

    end;
{$ENDIF}

    currentSet := cmbCompilerSetComp.ItemIndex;
    LoadOptions;

end;

procedure TCompForm.LoadOptions;
{$IFDEF PLUGIN_BUILD}
var
    i, j: integer;
    pluginSettings: TSettings;
    tempName: string;
{$ENDIF PLUGIN_BUILD}
begin

    pluginSettings := NIL;

    with devCompilerSet do
    begin
        fBins := BinDir;
        fC := CDir;
        fCpp := CppDir;
        fLibs := LibDir;
        fRC := RCDir;

        Commands.Lines.Text := CmdOpts;
        Linker.Lines.Text := LinkOpts;
        Make.Lines.Text := MakeOpts;
        CompilerTypes.ItemIndex := CompilerType;
        DirTabsChange(DirTabs);

        GccEdit.Text := gccName;
        GppEdit.Text := gppName;
        GdbEdit.Text := gdbName;
        MakeEdit.Text := makeName;
        WindresEdit.Text := windresName;
        DllwrapEdit.Text := dllwrapName;
        GprofEdit.Text := gprofName;

        devCompiler.AddDefaultOptions;
        devCompiler.OptionStr := OptionsStr;

    {$IFDEF PLUGIN_BUILD}
        for i := 0 to MainForm.pluginsCount - 1 do
        begin

            pluginSettings := MainForm.plugins[i].GetCompilerOptions;

            for j := 0 to Length(pluginSettings) - 1 do
            begin

            // This line loads it from the .ini file.
                tempName := devData.LoadSetting(optComKey,
                    pluginSettings[j].name);
            // Value comes back as a string. Plugin converts
            //  string value to correct type using LoadCompilerSettings
                if tempName <> '' then
                    MainForm.plugins[i].LoadCompilerSettings(
                        pluginSettings[j].name, tempName);
            end;
            MainForm.plugins[i].LoadCompilerOptions;

        end;

    {$ENDIF PLUGIN_BUILD}

        CompOptionsFrame1.FillOptions(NIL);
        CompilerTypesClick(NIL);
    end;
end;

procedure TCompForm.SaveSettings;
{$IFDEF PLUGIN_BUILD}
var
    i: integer;
{$ENDIF PLUGIN_BUILD}
begin
    devCompilerSet.CompilerType := CompilerTypes.ItemIndex;
    devCompilerSet.gccName := GccEdit.Text;
    devCompilerSet.gppName := GppEdit.Text;
    devCompilerSet.makeName := MakeEdit.Text;
    devCompilerSet.gdbName := GdbEdit.Text;
    devCompilerSet.windresName := WindresEdit.Text;
    devCompilerSet.dllwrapName := DllwrapEdit.Text;
    devCompilerSet.gprofName := GprofEdit.Text;

    devCompilerSet.BinDir := fBins;
    devCompilerSet.CDir := fC;
    devCompilerSet.CppDir := fCpp;
    devCompilerSet.LibDir := fLibs;
    devCompilerSet.RCDir := fRC;

    devCompilerSet.CmdOpts := Commands.Lines.Text;
    devCompilerSet.LinkOpts := Linker.Lines.Text;
    devCompilerSet.MakeOpts := Make.Lines.Text;
    devCompilerSet.OptionsStr := devCompiler.OptionStr;

  {$IFDEF PLUGIN_BUILD}
    for i := 0 to MainForm.pluginsCount - 1 do
        MainForm.plugins[i].SaveCompilerOptions;
  {$ENDIF PLUGIN_BUILD}

    devCompilerSet.SaveSet(currentSet);
    devCompilerSet.SaveSettings;

end;

procedure TCompForm.btnBrws1Click(Sender: TObject);
var
    sl: TStringList;
    Obj: TEdit;
begin
    Obj := NIL;
    case TSpeedButton(Sender).Tag of
        2:
            Obj := GccEdit; //gcc
        3:
            Obj := GppEdit; //gpp
        4:
            Obj := MakeEdit; //make
        5:
            Obj := GdbEdit; //gdb
        6:
            Obj := WindresEdit; //windres
        7:
            Obj := DllwrapEdit; //dllwrap
        8:
            Obj := GprofEdit; //gprof
    end;

    if not Assigned(Obj) then
        Exit;

    dmMain.OpenDialog.Filter := FLT_ALLFILES;
    sl := TStringList.Create;
    try
        sl.Delimiter := ';';
        sl.DelimitedText := devCompilerSet.BinDir;
        if sl.Count > 0 then
            dmMain.OpenDialog.InitialDir := sl[0];
    finally
        sl.Free;
    end;

    dmMain.OpenDialog.FileName :=
        IncludeTrailingPathDelimiter(dmMain.OpenDialog.InitialDir) + Obj.Text;
    if dmMain.OpenDialog.Execute then
    begin
        Obj.Text := ExtractFileName(dmMain.OpenDialog.FileName);
    end;
end;

procedure TCompForm.btnAddCompilerSetClick(Sender: TObject);
var
    S: string;
begin
    S := 'New compiler';
    if not InputQuery(Lang[ID_COPT_NEWCOMPSET], Lang[ID_COPT_PROMPTNEWCOMPSET],
        S) or (S = '') then
        Exit;

    devCompilerSet.Sets.Add(S);
    cmbCompilerSetComp.ItemIndex := cmbCompilerSetComp.Items.Add(S);
    cmbCompilerSetCompChange(NIL);
end;

procedure TCompForm.btnDelCompilerSetClick(Sender: TObject);
begin
    if cmbCompilerSetComp.Items.Count = 1 then
    begin
        MessageDlg(Lang[ID_COPT_CANTDELETECOMPSET], mtError, [mbOk], 0);
        Exit;
    end;

    if MessageDlg(Lang[ID_COPT_DELETECOMPSET], mtConfirmation,
        [mbYes, mbNo], 0) = mrNo then
        Exit;

    devCompilerSet.Sets.Delete(cmbCompilerSetComp.ItemIndex);
    cmbCompilerSetComp.Items.Delete(cmbCompilerSetComp.ItemIndex);
    cmbCompilerSetComp.ItemIndex := 0;
    cmbCompilerSetCompChange(NIL);
end;

procedure TCompForm.btnRenameCompilerSetClick(Sender: TObject);
var
    S: string;
begin
    S := cmbCompilerSetComp.Text;
    if not InputQuery(Lang[ID_COPT_RENAMECOMPSET],
        Lang[ID_COPT_PROMPTRENAMECOMPSET], S) or (S = '') or
        (S = cmbCompilerSetComp.Text) then
        Exit;

    cmbCompilerSetComp.Items[cmbCompilerSetComp.ItemIndex] := S;
    cmbCompilerSetComp.ItemIndex := cmbCompilerSetComp.Items.IndexOf(S);
end;

procedure TCompForm.CompilerTypesClick(Sender: TObject);
begin
    devCompilerSet.CompilerType := CompilerTypes.ItemIndex;
    if (Sender <> NIL) then
    begin
        devDirs.CompilerType := CompilerTypes.ItemIndex;
        devDirs.SettoDefaults;
    end;
    devCompilerSet.SettoDefaults;
    devCompiler.AddDefaultOptions;
    devCompiler.OptionStr := devCompilerSet.OptionsStr;
    CompOptionsFrame1.FillOptions(NIL);

    //In order to remove the recursive call from loadOptions
    //we just check if the paramter sent by the calling function is
    //nil.
    if (Sender <> NIL) then
        LoadOptions;

    //Set the labels
    case CompilerTypes.ItemIndex of
        ID_COMPILER_MINGW:
        begin
            lblgprof.Caption := 'Code Profiler:';
            lblgprof.Enabled := TRUE;
            gprofEdit.Enabled := TRUE;
            btnbrowse8.Enabled := TRUE;

            lbldllwrap.Enabled := FALSE;
            DllwrapEdit.Enabled := FALSE;
            btnbrowse7.Enabled := FALSE;
        end;
        ID_COMPILER_LINUX:
        begin
            lblgprof.Caption := 'Code Profiler:';
            lblgprof.Enabled := TRUE;
            gprofEdit.Enabled := TRUE;
            btnbrowse8.Enabled := TRUE;

            lbldllwrap.Enabled := FALSE;
            DllwrapEdit.Enabled := FALSE;
            btnbrowse7.Enabled := FALSE;
        end;
        ID_COMPILER_VC6,
        ID_COMPILER_VC2003:
        begin
            lblgprof.Caption := 'Manifest Tool:';
            lblgprof.Enabled := FALSE;
            gprofEdit.Enabled := FALSE;
            btnbrowse8.Enabled := FALSE;

            lbldllwrap.Enabled := TRUE;
            DllwrapEdit.Enabled := TRUE;
            btnbrowse7.Enabled := TRUE;
        end;
        ID_COMPILER_VC2010,
        ID_COMPILER_VC2008,
        ID_COMPILER_VC2005:
        begin
            lblgprof.Caption := 'Manifest Tool:';
            lblgprof.Enabled := TRUE;
            gprofEdit.Enabled := TRUE;
            btnbrowse8.Enabled := TRUE;

            lbldllwrap.Enabled := TRUE;
            DllwrapEdit.Enabled := TRUE;
            btnbrowse7.Enabled := TRUE;
        end;
    end;
end;

procedure TCompForm.btnRefreshCompilerSettingsClick(Sender: TObject);
begin
    if MessageDlg('Are you sure you wish to reset all the compiler settings to their defaults?'#10#13#10#13 +
        'To redetect the necessary compiler, include and library paths, or if you have '#10#13 +
        'installed the selected compiler after installing wxDev-C++, select Yes.',
        mtConfirmation,
        [mbYes, mbNo], Self.Handle) = mrYes then
        CompilerTypesClick(CompilerTypes);
end;

procedure TCompForm.FormClose(Sender: TObject; var Action: TCloseAction);
{$IFDEF PLUGIN_BUILD}
var
    i: integer;
    tabs: TTabSheet;
{$ENDIF PLUGIN_BUILD}
begin
{$IFDEF PLUGIN_BUILD}
    for i := 0 to MainForm.packagesCount - 1 do
    begin
        tabs := (MainForm.plugins[MainForm.delphi_plugins[i]] as
            IPlug_In_BPL).Retrieve_CompilerOptionsPane;
        if tabs <> NIL then
            tabs.PageControl := NIL;
    end;
    MainPages.ActivePageIndex := 0;
{$ENDIF PLUGIN_BUILD}
end;

end.
