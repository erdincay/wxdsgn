{
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

unit devShortcutsEditorForm;

interface

uses
{$IFDEF WIN32}
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, ComCtrls, StdCtrls, Menus, XPMenu;
{$ENDIF}
{$IFDEF LINUX}
  SysUtils, Variants, Classes, QGraphics, QControls, QForms,
  QDialogs, QExtCtrls, QComCtrls, QStdCtrls, QMenus;
{$ENDIF}

type
    TfrmShortcutsEditor = class(TForm)
        lvShortcuts: TListView;
        Panel1: TPanel;
        btnOk: TButton;
        btnCancel: TButton;
        pnlTitle: TPanel;
        lblTip: TLabel;
        lblTitle: TLabel;
        procedure lvShortcutsKeyDown(Sender: TObject; var Key: word;
            Shift: TShiftState);
        procedure lvShortcutsCustomDrawItem(Sender: TCustomListView;
            Item: TListItem; State: TCustomDrawState; var DefaultDraw: boolean);
        procedure lvShortcutsCustomDrawSubItem(Sender: TCustomListView;
            Item: TListItem; SubItem: integer; State: TCustomDrawState;
            var DefaultDraw: boolean);
        procedure FormCreate(Sender: TObject);
    private
    { Private declarations }
        function GetItem(Index: integer): TMenuItem;
        function GetShortCut(Index: integer): TShortCut;
    public
    { Public declarations }
        AltColor: TColor;
        procedure AddShortcut(M: TMenuItem; MenuName: string);
        procedure Clear;
        function Count: integer;
        property Items[Index: integer]: TMenuItem read GetItem;
        property ShortCuts[Index: integer]: TShortCut read GetShortCut;
    protected
        procedure CreateParams(var Params: TCreateParams); override;
    end;

var
    frmShortcutsEditor: TfrmShortcutsEditor;

implementation

uses StrUtils;

{$R *.dfm}

procedure TfrmShortcutsEditor.FormCreate(Sender: TObject);
begin
    DesktopFont := TRUE;
    lblTitle.Font.Style := [fsBold];
    lblTitle.Font.Color := clCream;
    lblTitle.Font.Size := 10;
    lblTip.Font.Color := clSilver;
end;

procedure TfrmShortcutsEditor.AddShortcut(M: TMenuItem; MenuName: string);
begin
    if (M.Action <> NIL) and (LeftStr(M.Action.Name, 6) = 'dynact') then
        Exit;
    with lvShortcuts.Items.Add do
    begin
        Caption := StripHotkey(MenuName + ' | ' + (M.Caption));
        SubItems.Add(ShortCutToText(M.ShortCut));
        Data := M;
    end;
end;

procedure TfrmShortcutsEditor.Clear;
begin
    lvShortcuts.Clear;
end;

function TfrmShortcutsEditor.Count: integer;
begin
    Result := lvShortcuts.Items.Count;
end;

function TfrmShortcutsEditor.GetItem(Index: integer): TMenuItem;
begin
    Result := TMenuItem(lvShortcuts.Items[Index].Data);
end;

function TfrmShortcutsEditor.GetShortCut(Index: integer): TShortCut;
begin
    Result := TextToShortCut(lvShortcuts.Items[Index].SubItems[0]);
end;

procedure TfrmShortcutsEditor.lvShortcutsKeyDown(Sender: TObject;
    var Key: word; Shift: TShiftState);
var
    I: integer;
    sct: string;
begin
    if lvShortcuts.Selected = NIL then
        Exit;
    if (Key = 27) and (Shift = []) then
    begin // clear shortcut
        lvShortcuts.Selected.SubItems[0] := '';
        Exit;
    end;
    if (Key > 27) and (Key <= 90) and (Shift = []) then // if "normal" key, expect a shiftstate
        Exit;
    if (Key < 27) and (Shift = []) then // control key by itself
        Exit;

  //Make sure the user does not select same-key combinations
{$IFDEF WIN32}
    if ((Key = VK_CONTROL) and (ssCtrl in Shift)) or
        ((Key = VK_SHIFT) and (ssShift in Shift)) or
        ((Key in [VK_MENU, VK_LMENU, VK_RMENU]) and (ssAlt in Shift)) then
{$ENDIF}
{$IFDEF LINUX}
  if ((Key = XK_CONTROL) and (ssCtrl in Shift)) or
     ((Key = XK_SHIFT) and (ssShift in Shift)) or
     ((Key in [XK_MENU, XK_LMENU, XK_RMENU]) and (ssAlt in Shift)) then
{$ENDIF}
        Exit;

    sct := ShortCutToText(ShortCut(Key, Shift));
    lvShortcuts.Selected.SubItems[0] := sct;

  // search for other entries using this shortcut, and clear them
    for I := 0 to lvShortcuts.Items.Count - 1 do
        if lvShortcuts.Items[I] <> lvShortcuts.Selected then
            if lvShortcuts.Items[I].SubItems[0] = sct then
                lvShortcuts.Items[I].SubItems[0] := '';

  // don't let the keystroke propagate
    Key := 0;
    Shift := [];
end;

procedure TfrmShortcutsEditor.lvShortcutsCustomDrawItem(
    Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
    var DefaultDraw: boolean);
begin
    with TCustomListView(Sender).Canvas do
    begin
        if not (cdsSelected in State) then
        begin
            if Item.Index mod 2 = 0 then
                Brush.Color := clWhite
            else
                Brush.Color := AltColor;
            Pen.Color := clBlack;
        end;
    end;
    DefaultDraw := TRUE;
end;

procedure TfrmShortcutsEditor.lvShortcutsCustomDrawSubItem(
    Sender: TCustomListView; Item: TListItem; SubItem: integer;
    State: TCustomDrawState; var DefaultDraw: boolean);
begin
    with TCustomListView(Sender).Canvas do
    begin
        if not (cdsSelected in State) then
        begin
            if Item.Index mod 2 = 0 then
                Brush.Color := clWhite
            else
                Brush.Color := AltColor;
            Pen.Color := clBlack;
        end;
    end;
    DefaultDraw := TRUE;
end;

procedure TfrmShortcutsEditor.CreateParams(var Params: TCreateParams);
begin
    inherited;
    if (Parent <> NIL) or (ParentWindow <> 0) then
        Exit;  // must not mess with wndparent if form is embedded

    if Assigned(Owner) and (Owner is TWincontrol) then
        Params.WndParent := TWinControl(Owner).handle
    else
    if Assigned(Screen.Activeform) then
        Params.WndParent := Screen.Activeform.Handle;
end;

end.
