{ ****************************************************************** }
{ $Id: wxcheckbox.pas 936 2007-05-15 03:47:39Z gururamnath $                                                               }
{                                                                    }
{   Copyright � 2003-2007 by Guru Kathiresan                         }
{                                                                    }
{License :                                                           }
{=========                                                           }
{The wx-devC++ Components, Form Designer, Utils classes              }
{are exclusive properties of Guru Kathiresan.                        }
{The code is available in dual Licenses:                             }
{                               1)GPL Compatible  License            }
{                               2)Commercial License                 }
{                                                                    }
{1)GPL License :                                                     }
{ Code can be used in any project as long as the project's sourcecode}
{ is published under GPL license.                                    }
{                                                                    }
{2)Commercial License:                                               }
{Use of code in this file or the one that bear this license text     }
{can be used in Non-GPL projects as long as you get the permission   }
{from the Author - Guru Kathiresan.                                  }
{Use of the Code in any non-gpl projects without the permission of   }
{the author is illegal.                                              }
{Contact gururamnath@yahoo.com for details                           }
{ ****************************************************************** }

Unit WxCheckBox;

Interface

Uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls,
    Forms, Graphics, StdCtrls, WxUtils, ExtCtrls, WxSizerPanel, wxAuiToolBar, WxAuiNotebookPage, WxToolBar, UValidator;

Type
    TWxCheckBox = Class(TCheckBox, IWxComponentInterface, IWxToolBarInsertableInterface,
        IWxToolBarNonInsertableInterface, IWxVariableAssignmentInterface, IWxValidatorInterface)
    Private
    { Private fields of TWxCheckBox }
    { Storage for property EVT_CHECKBOX }
        FEVT_CHECKBOX: String;
    { Storage for property EVT_UPDATE_UI }
        FEVT_UPDATE_UI: String;
    { Storage for property Wx_BGColor }
        FWx_BGColor: TColor;
    { Storage for property Wx_Border }
        FWx_Border: Integer;
    { Storage for property Wx_CheckBoxStyle }
        FWx_CheckBoxStyle: TWxCBxStyleSet;
    { Storage for property Wx_Class }
        FWx_Class: String;
    { Storage for property Wx_ControlOrientation }
        FWx_ControlOrientation: TWxControlOrientation;
    { Storage for property Wx_Enabled }
        FWx_Enabled: Boolean;
    { Storage for property Wx_FGColor }
        FWx_FGColor: TColor;
    { Storage for property Wx_GeneralStyle }
        FWx_GeneralStyle: TWxStdStyleSet;
    { Storage for property Wx_HelpText }
        FWx_HelpText: String;
    { Storage for property Wx_Hidden }
        FWx_Hidden: Boolean;
    { Storage for property Wx_IDName }
        FWx_IDName: String;
    { Storage for property Wx_IDValue }
        FWx_IDValue: Integer;
    { Storage for property Wx_ProxyBKColorString }
        FWx_ProxyBGColorString: TWxColorString;
    { Storage for property Wx_ProxyFGColorString }
        FWx_ProxyFGColorString: TWxColorString;
    { Storage for property Wx_StretchFactor }
        FWx_StretchFactor: Integer;
    { Storage for property Wx_ToolTip }
        FWx_ToolTip: String;
        FWx_EventList: TStringList;
        FWx_PropertyList: TStringList;
        FInvisibleBGColorString: String;
        FInvisibleFGColorString: String;
        FWx_Validator: String;
        FWx_ProxyValidatorString: TWxValidatorString;
        FWx_Comments: TStrings;
        FWx_Alignment: TWxSizerAlignmentSet;
        FWx_BorderAlignment: TWxBorderAlignment;
        FWx_LHSValue: String;
        FWx_RHSValue: String;

//Aui Properties
        FWx_AuiManaged: Boolean;
        FWx_PaneCaption: String;
        FWx_PaneName: String;
        FWx_Aui_Dock_Direction: TwxAuiPaneDockDirectionItem;
        FWx_Aui_Dockable_Direction: TwxAuiPaneDockableDirectionSet;
        FWx_Aui_Pane_Style: TwxAuiPaneStyleSet;
        FWx_Aui_Pane_Buttons: TwxAuiPaneButtonSet;
        FWx_BestSize_Height: Integer;
        FWx_BestSize_Width: Integer;
        FWx_MinSize_Height: Integer;
        FWx_MinSize_Width: Integer;
        FWx_MaxSize_Height: Integer;
        FWx_MaxSize_Width: Integer;
        FWx_Floating_Height: Integer;
        FWx_Floating_Width: Integer;
        FWx_Floating_X_Pos: Integer;
        FWx_Floating_Y_Pos: Integer;
        FWx_Layer: Integer;
        FWx_Row: Integer;
        FWx_Position: Integer;

    { Private methods of TWxCheckBox }
    { Method to set variable and property values and create objects }
        Procedure AutoInitialize;
    { Method to free any objects created by AutoInitialize }
        Procedure AutoDestroy;

    Protected
    { Protected fields of TWxCheckBox }

    { Protected methods of TWxCheckBox }
        Procedure Click; Override;
        Procedure KeyPress(Var Key: Char); Override;
        Procedure Loaded; Override;

    Public
    { Public fields and properties of TWxCheckBox }
        defaultBGColor: TColor;
        defaultFGColor: TColor;
    { Public methods of TWxCheckBox }
        Constructor Create(AOwner: TComponent); Override;
        Destructor Destroy; Override;
        Function GenerateControlIDs: String;
        Function GenerateEnumControlIDs: String;
        Function GenerateEventTableEntries(CurrClassName: String): String;
        Function GenerateGUIControlCreation: String;
        Function GenerateXRCControlCreation(IndentString: String): TStringList;
        Function GenerateGUIControlDeclaration: String;
        Function GenerateHeaderInclude: String;
        Function GenerateImageInclude: String;
        Function GetEventList: TStringList;
        Function GetIDName: String;
        Function GetIDValue: Integer;
        Function GetParameterFromEventName(EventName: String): String;
        Function GetPropertyList: TStringList;
        Function GetTypeFromEventName(EventName: String): String;
        Function GetWxClassName: String;
        Procedure SaveControlOrientation(ControlOrientation: TWxControlOrientation);
        Procedure SetIDName(IDName: String);
        Procedure SetIDValue(IDValue: Integer);
        Procedure SetWxClassName(wxClassName: String);
        Function GetFGColor: String;
        Procedure SetFGColor(strValue: String);
        Function GetBGColor: String;
        Procedure SetBGColor(strValue: String);
        Function GetGenericColor(strVariableName: String): String;
        Procedure SetGenericColor(strVariableName, strValue: String);
        Procedure SetProxyFGColorString(Value: String);
        Procedure SetProxyBGColorString(Value: String);

        Function GetValidator: String;
        Procedure SetValidator(value: String);
        Function GetValidatorString: TWxValidatorString;
        Procedure SetValidatorString(Value: TWxValidatorString);

        Procedure DummyToolBarInsertableInterfaceProcedure;
        Function GetLHSVariableAssignment: String;
        Function GetRHSVariableAssignment: String;

        Function GetBorderAlignment: TWxBorderAlignment;
        Procedure SetBorderAlignment(border: TWxBorderAlignment);
        Function GetBorderWidth: Integer;
        Procedure SetBorderWidth(width: Integer);
        Function GetStretchFactor: Integer;
        Procedure SetStretchFactor(intValue: Integer);

    Published
    { Published properties of TWxCheckBox }
        Property OnClick;
        Property OnDblClick;
        Property OnDragDrop;
        Property OnEnter;
        Property OnExit;
        Property OnKeyDown;
        Property OnKeyPress;
        Property OnKeyUp;
        Property OnMouseDown;
        Property OnMouseMove;
        Property OnMouseUp;
        Property EVT_CHECKBOX: String Read FEVT_CHECKBOX Write FEVT_CHECKBOX;
        Property EVT_UPDATE_UI: String Read FEVT_UPDATE_UI Write FEVT_UPDATE_UI;
        Property Wx_BGColor: TColor Read FWx_BGColor Write FWx_BGColor;
        Property Wx_CheckBoxStyle: TWxCBxStyleSet
            Read FWx_CheckBoxStyle Write FWx_CheckBoxStyle;
        Property Wx_Class: String Read FWx_Class Write FWx_Class;
        Property Wx_ControlOrientation: TWxControlOrientation
            Read FWx_ControlOrientation Write FWx_ControlOrientation;
        Property Wx_Enabled: Boolean Read FWx_Enabled Write FWx_Enabled Default True;
        Property Wx_FGColor: TColor Read FWx_FGColor Write FWx_FGColor;
        Property Wx_GeneralStyle: TWxStdStyleSet
            Read FWx_GeneralStyle Write FWx_GeneralStyle;
        Property Wx_HelpText: String Read FWx_HelpText Write FWx_HelpText;
        Property Wx_Hidden: Boolean Read FWx_Hidden Write FWx_Hidden;
        Property Wx_IDName: String Read FWx_IDName Write FWx_IDName;
        Property Wx_IDValue: Integer Read FWx_IDValue Write FWx_IDValue Default -1;
        Property Wx_ToolTip: String Read FWx_ToolTip Write FWx_ToolTip;
        Property Wx_Validator: String Read FWx_Validator Write FWx_Validator;
        Property Wx_ProxyValidatorString: TWxValidatorString Read GetValidatorString Write SetValidatorString;

        Property Wx_Border: Integer Read GetBorderWidth Write SetBorderWidth Default 5;
        Property Wx_BorderAlignment: TWxBorderAlignment Read GetBorderAlignment Write SetBorderAlignment Default [wxALL];
        Property Wx_Alignment: TWxSizerAlignmentSet Read FWx_Alignment Write FWx_Alignment Default [wxALIGN_CENTER];
        Property Wx_StretchFactor: Integer Read GetStretchFactor Write SetStretchFactor Default 0;

        Property InvisibleBGColorString: String Read FInvisibleBGColorString Write FInvisibleBGColorString;
        Property InvisibleFGColorString: String Read FInvisibleFGColorString Write FInvisibleFGColorString;
        Property Wx_ProxyBGColorString: TWxColorString Read FWx_ProxyBGColorString Write FWx_ProxyBGColorString;
        Property Wx_ProxyFGColorString: TWxColorString Read FWx_ProxyFGColorString Write FWx_ProxyFGColorString;

        Property Wx_Comments: TStrings Read FWx_Comments Write FWx_Comments;
        Property Wx_LHSValue: String Read FWx_LHSValue Write FWx_LHSValue;
        Property Wx_RHSValue: String Read FWx_RHSValue Write FWx_RHSValue;

//Aui Properties
        Property Wx_AuiManaged: Boolean Read FWx_AuiManaged Write FWx_AuiManaged Default False;
        Property Wx_PaneCaption: String Read FWx_PaneCaption Write FWx_PaneCaption;
        Property Wx_PaneName: String Read FWx_PaneName Write FWx_PaneName;
        Property Wx_Aui_Dock_Direction: TwxAuiPaneDockDirectionItem Read FWx_Aui_Dock_Direction Write FWx_Aui_Dock_Direction;
        Property Wx_Aui_Dockable_Direction: TwxAuiPaneDockableDirectionSet Read FWx_Aui_Dockable_Direction Write FWx_Aui_Dockable_Direction;
        Property Wx_Aui_Pane_Style: TwxAuiPaneStyleSet Read FWx_Aui_Pane_Style Write FWx_Aui_Pane_Style;
        Property Wx_Aui_Pane_Buttons: TwxAuiPaneButtonSet Read FWx_Aui_Pane_Buttons Write FWx_Aui_Pane_Buttons;
        Property Wx_BestSize_Height: Integer Read FWx_BestSize_Height Write FWx_BestSize_Height Default -1;
        Property Wx_BestSize_Width: Integer Read FWx_BestSize_Width Write FWx_BestSize_Width Default -1;
        Property Wx_MinSize_Height: Integer Read FWx_MinSize_Height Write FWx_MinSize_Height Default -1;
        Property Wx_MinSize_Width: Integer Read FWx_MinSize_Width Write FWx_MinSize_Width Default -1;
        Property Wx_MaxSize_Height: Integer Read FWx_MaxSize_Height Write FWx_MaxSize_Height Default -1;
        Property Wx_MaxSize_Width: Integer Read FWx_MaxSize_Width Write FWx_MaxSize_Width Default -1;
        Property Wx_Floating_Height: Integer Read FWx_Floating_Height Write FWx_Floating_Height Default -1;
        Property Wx_Floating_Width: Integer Read FWx_Floating_Width Write FWx_Floating_Width Default -1;
        Property Wx_Floating_X_Pos: Integer Read FWx_Floating_X_Pos Write FWx_Floating_X_Pos Default -1;
        Property Wx_Floating_Y_Pos: Integer Read FWx_Floating_Y_Pos Write FWx_Floating_Y_Pos Default -1;
        Property Wx_Layer: Integer Read FWx_Layer Write FWx_Layer Default 0;
        Property Wx_Row: Integer Read FWx_Row Write FWx_Row Default 0;
        Property Wx_Position: Integer Read FWx_Position Write FWx_Position Default 0;

    End;

Procedure Register;

Implementation

Procedure Register;
Begin
     { Register TWxCheckBox with wxWidgets as its
       default page on the Delphi component palette }
    RegisterComponents('wxWidgets', [TWxCheckBox]);
End;

{ Method to set variable and property values and create objects }
Procedure TWxCheckBox.AutoInitialize;
Begin
    FWx_EventList := TStringList.Create;
    FWx_PropertyList := TStringList.Create;
    FWx_Border := 5;
    FWx_Class := 'wxCheckBox';
    FWx_Enabled := True;
    FWx_BorderAlignment := [wxAll];
    FWx_Alignment := [wxALIGN_CENTER];
    FWx_IDValue := -1;
    FWx_StretchFactor := 0;
    FWx_Comments := TStringList.Create;
    FWx_ProxyBGColorString := TWxColorString.Create;
    FWx_ProxyFGColorString := TWxColorString.Create;
    defaultBGColor := clBtnFace;
    defaultFGColor := self.font.color;
    FWx_ProxyValidatorString := TwxValidatorString.Create(self);

End; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
Procedure TWxCheckBox.AutoDestroy;
Begin
    FWx_EventList.Destroy;
    FWx_PropertyList.Destroy;
    FWx_ProxyBGColorString.Destroy;
    FWx_ProxyFGColorString.Destroy;
    FWx_Comments.Destroy;
    FWx_ProxyValidatorString.Destroy;
End; { of AutoDestroy }

{ Override OnClick handler from TCheckBox,IWxComponentInterface }
Procedure TWxCheckBox.Click;
Begin
     { Code to execute before activating click
       behavior of component's parent class }

  { Activate click behavior of parent }
    Inherited Click;

     { Code to execute after click behavior
       of parent }

End;

{ Override OnKeyPress handler from TCheckBox,IWxComponentInterface }
Procedure TWxCheckBox.KeyPress(Var Key: Char);
Const
    TabKey = Char(VK_TAB);
    EnterKey = Char(VK_RETURN);
Begin
     { Key contains the character produced by the keypress.
       It can be tested or assigned a new value before the
       call to the inherited KeyPress method.  Setting Key
       to #0 before call to the inherited KeyPress method
       terminates any further processing of the character. }

  { Activate KeyPress behavior of parent }
    Inherited KeyPress(Key);

  { Code to execute after KeyPress behavior of parent }

End;

Constructor TWxCheckBox.Create(AOwner: TComponent);
Begin
  { Call the Create method of the parent class }
    Inherited Create(AOwner);

  { AutoInitialize sets the initial values of variables and      }
  { properties; also, it creates objects for properties of       }
  { standard Delphi object types (e.g., TFont, TTimer,           }
  { TPicture) and for any variables marked as objects.           }
  { AutoInitialize method is generated by Component Create.      }
    AutoInitialize;

  { Code to perform other tasks when the component is created }
    PopulateGenericProperties(FWx_PropertyList);
    PopulateAuiGenericProperties(FWx_PropertyList);

    FWx_PropertyList.add('Wx_CheckBoxStyle:Checkbox Style');
    FWx_PropertyList.Add('wxCHK_2STATE:wxCHK_2STATE');
    FWx_PropertyList.Add('wxCHK_3STATE:wxCHK_3STATE');
    FWx_PropertyList.Add('wxCHK_ALLOW_3RD_STATE_FOR_USER:wxCHK_ALLOW_3RD_STATE_FOR_USER');
    FWx_PropertyList.Add('wxALIGN_RIGHT_CB:wxALIGN_RIGHT');

    FWx_PropertyList.add('Caption:Caption');
    FWx_PropertyList.add('Checked:Checked');

    FWx_PropertyList.add('Wx_LHSValue   : LHS Variable');
    FWx_PropertyList.add('Wx_RHSValue   : RHS Variable');

    FWx_EventList.add('EVT_CHECKBOX:OnClick');
    FWx_EventList.add('EVT_UPDATE_UI:OnUpdateUI');

End;

Destructor TWxCheckBox.Destroy;
Begin
  { AutoDestroy, which is generated by Component Create, frees any   }
  { objects created by AutoInitialize.                               }
    AutoDestroy;

  { Here, free any other dynamic objects that the component methods  }
  { created but have not yet freed.  Also perform any other clean-up }
  { operations needed before the component is destroyed.             }

  { Last, free the component by calling the Destroy method of the    }
  { parent class.                                                    }
    Inherited Destroy;
End;


Function TWxCheckBox.GenerateEnumControlIDs: String;
Begin
    Result := GetWxEnum(self.Wx_IDValue, self.Wx_IDName);
End;

Function TWxCheckBox.GenerateControlIDs: String;
Begin
    Result := '';
    If (Wx_IDValue > 0) And (trim(Wx_IDName) <> '') Then
        Result := Format('#define %s %d ', [Wx_IDName, Wx_IDValue]);
End;


Function TWxCheckBox.GenerateEventTableEntries(CurrClassName: String): String;
Begin

    Result := '';
    If trim(EVT_CHECKBOX) <> '' Then
        Result := Format('EVT_CHECKBOX(%s,%s::%s)',
            [WX_IDName, CurrClassName, EVT_CHECKBOX]) + '';

    If trim(EVT_UPDATE_UI) <> '' Then
        Result := Result + #13 + Format('EVT_UPDATE_UI(%s,%s::%s)',
            [WX_IDName, CurrClassName, EVT_UPDATE_UI]) + '';

End;

Function TWxCheckBox.GenerateXRCControlCreation(IndentString: String): TStringList;
Begin

    Result := TStringList.Create;

    Try
        Result.Add(IndentString + Format('<object class="%s" name="%s">',
            [self.Wx_Class, self.Name]));
        Result.Add(IndentString + Format('  <IDident>%s</IDident>', [self.Wx_IDName]));
        Result.Add(IndentString + Format('  <ID>%d</ID>', [self.Wx_IDValue]));
        Result.Add(IndentString + Format('  <label>%s</label>', [XML_Label(self.Caption)]));

        If Not (UseDefaultSize) Then
            Result.Add(IndentString + Format('  <size>%d,%d</size>', [self.Width, self.Height]));
        If Not (UseDefaultPos) Then
            Result.Add(IndentString + Format('  <pos>%d,%d</pos>', [self.Left, self.Top]));

        If self.Checked Then
            Result.Add(IndentString + '  <checked>1</checked>')
        Else
            Result.Add(IndentString + '  <checked>0</checked>');

        Result.Add(IndentString + Format('  <style>%s</style>',
            [GetCheckboxSpecificStyle(self.Wx_GeneralStyle, Wx_CheckBoxStyle)]));
        Result.Add(IndentString + '</object>');

    Except
        Result.Free;
        Raise;
    End;

End;

Function TWxCheckBox.GenerateGUIControlCreation: String;
Var
    strColorStr: String;
    strStyle, parentName, strAlignment: String;
Begin
    Result := '';

    If FWx_PaneCaption = '' Then
        FWx_PaneCaption := Self.Name;
    If FWx_PaneName = '' Then
        FWx_PaneName := Self.Name + '_Pane';

    parentName := GetWxWidgetParent(self, Wx_AuiManaged);

    strStyle := GetCheckboxSpecificStyle(self.Wx_GeneralStyle, Wx_CheckBoxStyle);

    If trim(Wx_ProxyValidatorString.strValidatorValue) <> '' Then
    Begin
        If trim(strStyle) <> '' Then
            strStyle := ', ' + strStyle + ', ' + Wx_ProxyValidatorString.strValidatorValue
        Else
            strStyle := ', 0, ' + Wx_ProxyValidatorString.strValidatorValue;

        strStyle := strStyle + ', ' + GetCppString(Name);

    End
    Else
    If trim(strStyle) <> '' Then
        strStyle := ', ' + strStyle + ', wxDefaultValidator, ' + GetCppString(Name)
    Else
        strStyle := ', 0, wxDefaultValidator, ' + GetCppString(Name);

    If (XRCGEN) Then
    Begin//generate xrc loading code
        Result := GetCommentString(self.FWx_Comments.Text) +
            Format('%s = XRCCTRL(*%s, %s("%s"), %s);',
            [self.Name, parentName, StringFormat, self.Name, self.wx_Class]);
    End
    Else
    Begin//generate the cpp code
        Result := GetCommentString(self.FWx_Comments.Text) +
            Format('%s = new %s(%s, %s, %s, %s, %s%s);',
            [self.Name, wx_Class, parentName, GetWxIDString(self.Wx_IDName, self.Wx_IDValue),
            GetCppString(self.Text), GetWxPosition(self.Left, self.Top), GetWxSize(self.Width, self.Height), strStyle]);
    End;//end of if xrc

    If trim(self.Wx_ToolTip) <> '' Then
        Result := Result + #13 + Format('%s->SetToolTip(%s);',
            [self.Name, GetCppString(self.Wx_ToolTip)]);

    If self.Wx_Hidden Then
        Result := Result + #13 + Format('%s->Show(false);', [self.Name]);

    If Not Wx_Enabled Then
        Result := Result + #13 + Format('%s->Enable(false);', [self.Name]);

    If trim(self.Wx_HelpText) <> '' Then
        Result := Result + #13 + Format('%s->SetHelpText(%s);',
            [self.Name, GetCppString(self.Wx_HelpText)]);

    If self.Checked Then
        Result := Result + #13 + Format('%s->SetValue(true);', [self.Name]);

    strColorStr := trim(GetwxColorFromString(InvisibleFGColorString));
    If strColorStr <> '' Then
        Result := Result + #13 + Format('%s->SetForegroundColour(%s);',
            [self.Name, strColorStr]);

    strColorStr := trim(GetwxColorFromString(InvisibleBGColorString));
    If strColorStr <> '' Then
        Result := Result + #13 + Format('%s->SetBackgroundColour(%s);',
            [self.Name, strColorStr]);


    strColorStr := GetWxFontDeclaration(self.Font);
    If strColorStr <> '' Then
        Result := Result + #13 + Format('%s->SetFont(%s);', [self.Name, strColorStr]);
    If Not (XRCGEN) Then //NUKLEAR ZELPH
    Begin
        If (Wx_AuiManaged And FormHasAuiManager(self)) And Not (self.Parent Is TWxSizerPanel) Then
        Begin
            If HasToolbarPaneStyle(Self.Wx_Aui_Pane_Style) Then
            Begin
                Self.Wx_Aui_Pane_Style := Self.Wx_Aui_Pane_Style + [ToolbarPane]; //always make sure we are a toolbar
                Self.Wx_Layer := 10;
            End;

            If Not HasToolbarPaneStyle(Self.Wx_Aui_Pane_Style) Then
            Begin
                If (self.Parent.ClassName = 'TWxPanel') Then
                    If Not (self.Parent.Parent Is TForm) Then
                        Result := Result + #13 + Format('%s->Reparent(this);', [parentName]);
            End;

            If (self.Parent Is TWxAuiToolBar) Then
                Result := Result + #13 + Format('%s->AddControl(%s);',
                    [self.Parent.Name, self.Name])
            Else
                Result := Result + #13 + Format('%s->AddPane(%s, wxAuiPaneInfo()%s%s%s%s%s%s%s%s%s%s%s%s);',
                    [GetAuiManagerName(self), self.Name,
                    GetAuiPaneName(Self.Wx_PaneName),
                    GetAuiPaneCaption(Self.Wx_PaneCaption),
                    GetAuiDockDirection(Self.Wx_Aui_Dock_Direction),
                    GetAuiDockableDirections(self.Wx_Aui_Dockable_Direction),
                    GetAui_Pane_Style(Self.Wx_Aui_Pane_Style),
                    GetAui_Pane_Buttons(Self.Wx_Aui_Pane_Buttons),
                    GetAuiRow(Self.Wx_Row),
                    GetAuiPosition(Self.Wx_Position),
                    GetAuiLayer(Self.Wx_Layer),
                    GetAuiPaneBestSize(Self.Wx_BestSize_Width, Self.Wx_BestSize_Height),
                    GetAuiPaneMinSize(Self.Wx_MinSize_Width, Self.Wx_MinSize_Height),
                    GetAuiPaneMaxSize(Self.Wx_MaxSize_Width, Self.Wx_MaxSize_Height)]);

        End
        Else
        Begin
            If (self.Parent Is TWxSizerPanel) Then
            Begin
                strAlignment := SizerAlignmentToStr(Wx_Alignment) + ' | ' + BorderAlignmentToStr(Wx_BorderAlignment);
                Result := Result + #13 + Format('%s->Add(%s, %d, %s, %d);',
                    [self.Parent.Name, self.Name, self.Wx_StretchFactor, strAlignment,
                    self.Wx_Border]);
            End;

            If (self.Parent Is TWxAuiNotebookPage) Then
            Begin
        //        strParentLabel := TWxAuiNoteBookPage(Self.Parent).Caption;
                Result := Result + #13 + Format('%s->AddPage(%s, %s);',
          //          [self.Parent.Parent.Name, self.Name, GetCppString(strParentLabel)]);
                    [self.Parent.Parent.Name, self.Name, GetCppString(TWxAuiNoteBookPage(Self.Parent).Caption)]);
            End;

            If (self.Parent Is TWxAuiToolBar) Or (self.Parent Is TWxToolBar) Then
                Result := Result + #13 + Format('%s->AddControl(%s);',
                    [self.Parent.Name, self.Name]);
        End;
    End;

End;

Function TWxCheckBox.GenerateGUIControlDeclaration: String;
Begin
    Result := '';
    Result := Format('%s *%s;', [trim(Self.Wx_Class), trim(Self.Name)]);
End;

Function TWxCheckBox.GenerateHeaderInclude: String;
Begin
    Result := '';
    Result := '#include <wx/checkbox.h>';
End;

Function TWxCheckBox.GenerateImageInclude: String;
Begin

End;

Function TWxCheckBox.GetEventList: TStringList;
Begin
    Result := FWx_EventList;
End;

Function TWxCheckBox.GetIDName: String;
Begin
    Result := wx_IDName;
End;

Function TWxCheckBox.GetIDValue: Integer;
Begin
    Result := wx_IDValue;
End;

Function TWxCheckBox.GetParameterFromEventName(EventName: String): String;
Begin
    Result := '';
    If EventName = 'EVT_CHECKBOX' Then
    Begin
        Result := 'wxCommandEvent& event' + '';
        exit;
    End;
    If EventName = 'EVT_UPDATE_UI' Then
    Begin
        Result := 'wxUpdateUIEvent& event' + '';
        exit;
    End;
End;

Function TWxCheckBox.GetPropertyList: TStringList;
Begin
    Result := FWx_PropertyList;
End;

Function TWxCheckBox.GetStretchFactor: Integer;
Begin
    Result := FWx_StretchFactor;
End;

Function TWxCheckBox.GetBorderAlignment: TWxBorderAlignment;
Begin
    Result := FWx_BorderAlignment;
End;

Procedure TWxCheckBox.SetBorderAlignment(border: TWxBorderAlignment);
Begin
    FWx_BorderAlignment := border;
End;

Function TWxCheckBox.GetBorderWidth: Integer;
Begin
    Result := FWx_Border;
End;

Procedure TWxCheckBox.SetBorderWidth(width: Integer);
Begin
    FWx_Border := width;
End;

Function TWxCheckBox.GetTypeFromEventName(EventName: String): String;
Begin

End;

Function TWxCheckBox.GetWxClassName: String;
Begin
    If trim(wx_Class) = '' Then
        wx_Class := 'wxCheckBox';
    Result := wx_Class;
End;

Procedure TWxCheckBox.Loaded;
Begin
    Inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

End;

Procedure TWxCheckBox.SaveControlOrientation(ControlOrientation: TWxControlOrientation);
Begin
    wx_ControlOrientation := ControlOrientation;
End;

Procedure TWxCheckBox.SetIDName(IDName: String);
Begin
    wx_IDName := IDName;
End;

Procedure TWxCheckBox.SetIDValue(IDValue: Integer);
Begin
    Wx_IDValue := IDVAlue;
End;

Procedure TWxCheckBox.SetStretchFactor(intValue: Integer);
Begin
    FWx_StretchFactor := intValue;
End;

Procedure TWxCheckBox.SetWxClassName(wxClassName: String);
Begin
    wx_Class := wxClassName;
End;

Function TWxCheckBox.GetGenericColor(strVariableName: String): String;
Begin

End;
Procedure TWxCheckBox.SetGenericColor(strVariableName, strValue: String);
Begin

End;


Function TWxCheckBox.GetFGColor: String;
Begin
    Result := FInvisibleFGColorString;
End;

Procedure TWxCheckBox.SetFGColor(strValue: String);
Begin
    FInvisibleFGColorString := strValue;
    If IsDefaultColorStr(strValue) Then
        self.Font.Color := defaultFGColor
    Else
        self.Font.Color := GetColorFromString(strValue);
End;

Function TWxCheckBox.GetBGColor: String;
Begin
    Result := FInvisibleBGColorString;
End;

Procedure TWxCheckBox.SetBGColor(strValue: String);
Begin
    FInvisibleBGColorString := strValue;
    If IsDefaultColorStr(strValue) Then
        self.Color := defaultBGColor
    Else
        self.Color := GetColorFromString(strValue);
End;

Procedure TWxCheckBox.SetProxyFGColorString(Value: String);
Begin
    FInvisibleFGColorString := Value;
    self.Color := GetColorFromString(Value);
End;

Procedure TWxCheckBox.SetProxyBGColorString(Value: String);
Begin
    FInvisibleBGColorString := Value;
    self.Font.Color := GetColorFromString(Value);
End;

Procedure TWxCheckBox.DummyToolBarInsertableInterfaceProcedure;
Begin

End;

Function TWxCheckBox.GetLHSVariableAssignment: String;
Begin
    Result := '';
    If trim(Wx_LHSValue) = '' Then
        exit;
    Result := Format('%s = %s->GetValue();', [Wx_LHSValue, self.Name]);
End;

Function TWxCheckBox.GetRHSVariableAssignment: String;
Begin
    Result := '';
    If trim(Wx_RHSValue) = '' Then
        exit;
    Result := Format('%s->SetValue(%s);', [self.Name, Wx_RHSValue]);
End;


Function TWxCheckBox.GetValidatorString: TWxValidatorString;
Begin
    Result := FWx_ProxyValidatorString;
    Result.FstrValidatorValue := Wx_Validator;
End;

Procedure TWxCheckBox.SetValidatorString(Value: TWxValidatorString);
Begin
    FWx_ProxyValidatorString.FstrValidatorValue := Value.FstrValidatorValue;
    Wx_Validator := Value.FstrValidatorValue;
End;

Function TWxCheckBox.GetValidator: String;
Begin
    Result := Wx_Validator;
End;

Procedure TWxCheckBox.SetValidator(value: String);
Begin
    Wx_Validator := value;
End;

End.
