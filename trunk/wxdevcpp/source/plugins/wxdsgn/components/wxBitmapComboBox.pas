 { ****************************************************************** }
 {                                                                    }
{ $Id: wxBitmapComboBox.pas 936 2007-05-15 03:47:39Z gururamnath $                                                               }
 {                                                                    }
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

unit wxBitmapComboBox;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls,
  Forms, Graphics, StdCtrls, Wxutils, ExtCtrls, WxSizerPanel, WxToolBar, UValidator;

type
  TWxBitmapComboBox = class(TComboBox, IWxComponentInterface, IWxToolBarInsertableInterface,
    IWxToolBarNonInsertableInterface,IWxVariableAssignmentInterface, IWxValidatorInterface)
  private
    { Private fields of TWxBitmapComboBox }
    { Storage for property EVT_COMBOBOX }
    FEVT_COMBOBOX: string;
    { Storage for property EVT_TEXT }
    FEVT_TEXT: string;
    { Storage for property EVT_UPDATE_UI }
    FEVT_UPDATE_UI: string;
    FEVT_TEXT_ENTER: string;
    { Storage for property Wx_BGColor }
    FWx_BGColor: TColor;
    { Storage for property Wx_Border }
    FWx_Border: integer;
    { Storage for property Wx_Class }
    FWx_Class: string;
    { Storage for property Wx_ComboboxStyle }
    FWx_ComboboxStyle: TWxCmbStyleSet;
    { Storage for property Wx_EditStyle }
    FWx_EditStyle: TWxEdtGeneralStyleSet;
    { Storage for property Wx_ControlOrientation }
    FWx_ControlOrientation: TWxControlOrientation;
    { Storage for property Wx_DefaultItem }
    FWx_DefaultItem: integer;
    { Storage for property Wx_Enabled }
    FWx_Enabled: boolean;
    { Storage for property Wx_FGColor }
    FWx_FGColor: TColor;
    { Storage for property Wx_GeneralStyle }
    FWx_GeneralStyle: TWxStdStyleSet;
    { Storage for property Wx_HelpText }
    FWx_HelpText: string;
    { Storage for property Wx_Hidden }
    FWx_Hidden: boolean;
    { Storage for property Wx_IDName }
    FWx_IDName: string;
    { Storage for property Wx_IDValue }
    FWx_IDValue: longint;
    { Storage for property Wx_ProxyBGColorString }
    FWx_ProxyBGColorString: TWxColorString;
    { Storage for property Wx_ProxyFGColorString }
    FWx_ProxyFGColorString: TWxColorString;
    { Storage for property Wx_StretchFactor }
    FWx_StretchFactor: integer;
    { Storage for property Wx_ToolTip }
    FWx_ToolTip: string;
    FWx_Validator: string;
    FWx_ProxyValidatorString : TWxValidatorString;
    FWx_EventList: TStringList;
    FWx_PropertyList: TStringList;
    FInvisibleBGColorString: string;
    FInvisibleFGColorString: string;
    FWx_Comments: TStrings;
    FWx_Alignment: TWxSizerAlignmentSet;
    FWx_BorderAlignment: TWxBorderAlignment;
    FWx_LHSValue : String;
    FWx_RHSValue : String;

    { Private methods of TWxBitmapComboBox }
    { Method to set variable and property values and create objects }
    procedure AutoInitialize;
    { Method to free any objects created by AutoInitialize }
    procedure AutoDestroy;

  protected
    { Protected fields of TWxBitmapComboBox }

    { Protected methods of TWxBitmapComboBox }
    procedure Change; override;
    procedure Click; override;
    procedure KeyPress(var Key: char); override;
    procedure Loaded; override;

  public
    { Public fields and properties of TWxBitmapComboBox }
    defaultBGColor: TColor;
    defaultFGColor: TColor;
    { Public methods of TWxBitmapComboBox }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GenerateControlIDs: string;
    function GenerateEnumControlIDs: string;
    function GenerateEventTableEntries(CurrClassName: string): string;
    function GenerateGUIControlCreation: string;
    function GenerateXRCControlCreation(IndentString: string): TStringList;
    function GenerateGUIControlDeclaration: string;
    function GenerateHeaderInclude: string;
    function GenerateImageInclude: string;
    function GetEventList: TStringList;
    function GetIDName: string;
    function GetIDValue: longint;
    function GetParameterFromEventName(EventName: string): string;
    function GetPropertyList: TStringList;
    function GetTypeFromEventName(EventName: string): string;
    function GetWxClassName: string;
    procedure SaveControlOrientation(ControlOrientation: TWxControlOrientation);
    procedure SetIDName(IDName: string);
    procedure SetIDValue(IDValue: longint);
    procedure SetWxClassName(wxClassName: string);
    function GetFGColor: string;
    procedure SetFGColor(strValue: string);

    function GetBGColor: string;
    procedure SetBGColor(strValue: string);

    function GetValidator:String;
    procedure SetValidator(value:String);
    function GetValidatorString:TWxValidatorString;
    procedure SetValidatorString(Value:TWxValidatorString);

    function GetGenericColor(strVariableName:String): string;
    procedure SetGenericColor(strVariableName,strValue: string);

    procedure SetProxyFGColorString(Value: string);
    procedure SetProxyBGColorString(Value: string);
    procedure DummyToolBarInsertableInterfaceProcedure;
    function GetLHSVariableAssignment:String;
    function GetRHSVariableAssignment:String;

    function GetBorderAlignment: TWxBorderAlignment;
    procedure SetBorderAlignment(border: TWxBorderAlignment);
    function GetBorderWidth: integer;
    procedure SetBorderWidth(width: integer);
    function GetStretchFactor: integer;
    procedure SetStretchFactor(intValue: integer);
    
  published
    { Published properties of TWxBitmapComboBox }
    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property EVT_COMBOBOX: string Read FEVT_COMBOBOX Write FEVT_COMBOBOX;
    property EVT_TEXT: string Read FEVT_TEXT Write FEVT_TEXT;
    property EVT_UPDATE_UI: string Read FEVT_UPDATE_UI Write FEVT_UPDATE_UI;
    property EVT_TEXT_ENTER: string Read FEVT_TEXT_ENTER Write FEVT_TEXT_ENTER;
    property Wx_BGColor: TColor Read FWx_BGColor Write FWx_BGColor;
    property Wx_Class: string Read FWx_Class Write FWx_Class;
    property Wx_ComboboxStyle: TWxCmbStyleSet Read FWx_ComboboxStyle Write FWx_ComboboxStyle;
        property Wx_EditStyle: TWxEdtGeneralStyleSet
      Read FWx_EditStyle Write FWx_EditStyle;
    property Wx_ControlOrientation: TWxControlOrientation
      Read FWx_ControlOrientation Write FWx_ControlOrientation;
    property Wx_DefaultItem: integer Read FWx_DefaultItem
      Write FWx_DefaultItem default -1;
    property Wx_Enabled: boolean Read FWx_Enabled Write FWx_Enabled default True;
    property Wx_FGColor: TColor Read FWx_FGColor Write FWx_FGColor;
    property Wx_GeneralStyle: TWxStdStyleSet
      Read FWx_GeneralStyle Write FWx_GeneralStyle;
    property Wx_HelpText: string Read FWx_HelpText Write FWx_HelpText;
    property Wx_Hidden: boolean Read FWx_Hidden Write FWx_Hidden;
    property Wx_IDName: string Read FWx_IDName Write FWx_IDName;
    property Wx_IDValue: longint Read FWx_IDValue Write FWx_IDValue default -1;
    property Wx_ToolTip: string Read FWx_ToolTip Write FWx_ToolTip;
    property Wx_Validator: string Read FWx_Validator Write FWx_Validator;
    property Wx_ProxyValidatorString : TWxValidatorString Read GetValidatorString Write SetValidatorString;

    property Wx_Border: integer Read GetBorderWidth Write SetBorderWidth default 5;
    property Wx_BorderAlignment: TWxBorderAlignment Read GetBorderAlignment Write SetBorderAlignment default [wxALL];
    property Wx_Alignment: TWxSizerAlignmentSet Read FWx_Alignment Write FWx_Alignment default [wxALIGN_CENTER];
    property Wx_StretchFactor: integer Read GetStretchFactor Write SetStretchFactor default 0;

    property InvisibleBGColorString: string Read FInvisibleBGColorString Write FInvisibleBGColorString;
    property InvisibleFGColorString: string Read FInvisibleFGColorString Write FInvisibleFGColorString;
    property Wx_ProxyBGColorString: TWxColorString Read FWx_ProxyBGColorString Write FWx_ProxyBGColorString;
    property Wx_ProxyFGColorString: TWxColorString Read FWx_ProxyFGColorString Write FWx_ProxyFGColorString;

    property Wx_Comments: TStrings Read FWx_Comments Write FWx_Comments;
    property Wx_LHSValue: string Read FWx_LHSValue Write FWx_LHSValue;
    property Wx_RHSValue: string Read FWx_RHSValue Write FWx_RHSValue;
  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxBitmapComboBox with wxWidgets as its
       default page on the Delphi component palette }
  RegisterComponents('wxWidgets', [TWxBitmapComboBox]);
end;

{ Method to set variable and property values and create objects }
procedure TWxBitmapComboBox.AutoInitialize;
begin
  FWx_EventList          := TStringList.Create;
  FWx_PropertyList       := TStringList.Create;
  FWx_Border             := 5;
  FWx_Class              := 'wxBitmapComboBox';
  FWx_DefaultItem        := -1;
  FWx_Enabled            := True;
  FWx_BorderAlignment    := [wxAll];
  FWx_Alignment          := [wxALIGN_CENTER];
  FWx_IDValue            := -1;
  FWx_StretchFactor      := 0;
  FWx_ProxyBGColorString := TWxColorString.Create;
  FWx_ProxyFGColorString := TWxColorString.Create;
  defaultBGColor         := self.color;
  defaultFGColor         := self.font.color;
  FWx_Comments           := TStringList.Create;
  FWx_ProxyValidatorString := TWxValidatorString.Create(self);

end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxBitmapComboBox.AutoDestroy;
begin
  FWx_EventList.Destroy;
  FWx_PropertyList.Destroy;
  FWx_Comments.Destroy;
  FWx_ProxyBGColorString.Destroy;
  FWx_ProxyFGColorString.Destroy;
  FWx_ProxyValidatorString.Destroy;

end; { of AutoDestroy }

{ Override OnChange handler from TComboBox,IWxComponentInterface }
procedure TWxBitmapComboBox.Change;
begin
  inherited Change;
end;

{ Override OnClick handler from TComboBox,IWxComponentInterface }
procedure TWxBitmapComboBox.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

  { Activate click behavior of parent }
  inherited Click;

     { Code to execute after click behavior
       of parent }

end;

{ Override OnKeyPress handler from TComboBox,IWxComponentInterface }
procedure TWxBitmapComboBox.KeyPress(var Key: char);
const
  TabKey   = char(VK_TAB);
  EnterKey = char(VK_RETURN);
begin
     { Key contains the character produced by the keypress.
       It can be tested or assigned a new value before the
       call to the inherited KeyPress method.  Setting Key
       to #0 before call to the inherited KeyPress method
       terminates any further processing of the character. }

  { Activate KeyPress behavior of parent }
  inherited KeyPress(Key);

  { Code to execute after KeyPress behavior of parent }

end;

constructor TWxBitmapComboBox.Create(AOwner: TComponent);
begin
  { Call the Create method of the parent class }
  inherited Create(AOwner);

  { AutoInitialize sets the initial values of variables and      }
  { properties; also, it creates objects for properties of       }
  { standard Delphi object types (e.g., TFont, TTimer,           }
  { TPicture) and for any variables marked as objects.           }
  { AutoInitialize method is generated by Component Create.      }
  AutoInitialize;

  { Code to perform other tasks when the component is created }
  PopulateGenericProperties(FWx_PropertyList);

  FWx_PropertyList.add('Wx_ComboboxStyle:Combobox Style');
  FWx_PropertyList.add('wxCB_SIMPLE:wxCB_SIMPLE');
  FWx_PropertyList.add('wxCB_DROPDOWN:wxCB_DROPDOWN');
  FWx_PropertyList.add('wxCB_READONLY:wxCB_READONLY');
  FWx_PropertyList.add('wxCB_SORT:wxCB_SORT');

  FWx_PropertyList.Add('Wx_EditStyle:Edit Style');
  FWx_PropertyList.Add('wxTE_PROCESS_ENTER:wxTE_PROCESS_ENTER');
  FWx_PropertyList.Add('wxTE_PROCESS_TAB:wxTE_PROCESS_TAB');
  FWx_PropertyList.Add('wxTE_PASSWORD:wxTE_PASSWORD');
  FWx_PropertyList.Add('wxTE_READONLY:wxTE_READONLY');
  FWx_PropertyList.Add('wxTE_MULTILINE:wxTE_MULTILINE');
  FWx_PropertyList.Add('wxTE_RICH:wxTE_RICH');
  FWx_PropertyList.Add('wxTE_RICH2:wxTE_RICH2');
  FWx_PropertyList.Add('wxTE_AUTO_URL:wxTE_AUTO_URL');
  FWx_PropertyList.Add('wxTE_NOHIDESEL:wxTE_NOHIDESEL');
  FWx_PropertyList.Add('wxTE_LEFT:wxTE_LEFT');
  FWx_PropertyList.Add('wxTE_CENTRE:wxTE_CENTRE');
  FWx_PropertyList.Add('wxTE_RIGHT:wxTE_RIGHT');
  FWx_PropertyList.Add('wxTE_LINEWRAP:wxTE_LINEWRAP');
  FWx_PropertyList.Add('wxTE_DONTWRAP:wxTE_DONTWRAP');
  FWx_PropertyList.Add('wxTE_CHARWRAP:wxTE_CHARWRAP');
  FWx_PropertyList.Add('wxTE_BESTWRAP:wxTE_BESTWRAP');
  FWx_PropertyList.Add('wxTE_CAPITALIZE:wxTE_CAPITALIZE');

  FWx_PropertyList.add('Items:Items');
  FWx_PropertyList.add('Text:Text');

  FWx_PropertyList.add('Wx_LHSValue   : LHS Variable');
  FWx_PropertyList.add('Wx_RHSValue   : RHS Variable');

  FWx_EventList.add('EVT_COMBOBOX:OnSelected');
  FWx_EventList.add('EVT_TEXT:OnUpdated');
  FWx_EventList.add('EVT_TEXT_ENTER:OnTextEnter');
  FWx_EventList.add('EVT_UPDATE_UI:OnUpdateUI');
end;

destructor TWxBitmapComboBox.Destroy;
begin
  { AutoDestroy, which is generated by Component Create, frees any   }
  { objects created by AutoInitialize.                               }
  AutoDestroy;

  { Here, free any other dynamic objects that the component methods  }
  { created but have not yet freed.  Also perform any other clean-up }
  { operations needed before the component is destroyed.             }

  { Last, free the component by calling the Destroy method of the    }
  { parent class.                                                    }
  inherited Destroy;
end;


function TWxBitmapComboBox.GenerateEnumControlIDs: string;
begin
  Result := '';
  if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
    Result := Format('%s = %d, ', [Wx_IDName, Wx_IDValue]);
end;

function TWxBitmapComboBox.GenerateControlIDs: string;
begin
  Result := '';
  if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
    Result := Format('#define %s %d ', [Wx_IDName, Wx_IDValue]);
end;



function TWxBitmapComboBox.GenerateEventTableEntries(CurrClassName: string): string;
begin
  Result := '';

    if (XRCGEN) then
 begin
  if trim(EVT_COMBOBOX) <> '' then
    Result := Format('EVT_COMBOBOX(XRCID(%s("%s")),%s::%s)',
      [StringFormat, self.Name, CurrClassName, EVT_COMBOBOX]) + '';

  if trim(EVT_TEXT) <> '' then
    Result := Result + #13 + Format('EVT_TEXT(XRCID(%s("%s")),%s::%s)',
      [StringFormat, self.Name, CurrClassName, EVT_TEXT]) + '';

  if trim(EVT_UPDATE_UI) <> '' then
    Result := Result + #13 + Format('EVT_UPDATE_UI(XRCID(%s("%s")),%s::%s)',
      [StringFormat, self.Name, CurrClassName, EVT_UPDATE_UI]) + '';

  if trim(EVT_TEXT_ENTER) <> '' then
    Result := Result + #13 + Format('EVT_TEXT_ENTER(XRCID(%s("%s")),%s::%s)',
      [StringFormat, self.Name, CurrClassName, EVT_TEXT_ENTER]) + '';
 end
 else
 begin
  if trim(EVT_COMBOBOX) <> '' then
    Result := Format('EVT_COMBOBOX(%s,%s::%s)',
      [WX_IDName, CurrClassName, EVT_COMBOBOX]) + '';

  if trim(EVT_TEXT) <> '' then
    Result := Result + #13 + Format('EVT_TEXT(%s,%s::%s)',
      [WX_IDName, CurrClassName, EVT_TEXT]) + '';

  if trim(EVT_UPDATE_UI) <> '' then
    Result := Result + #13 + Format('EVT_UPDATE_UI(%s,%s::%s)',
      [WX_IDName, CurrClassName, EVT_UPDATE_UI]) + '';

  if trim(EVT_TEXT_ENTER) <> '' then
    Result := Result + #13 + Format('EVT_TEXT_ENTER(%s,%s::%s)',
      [WX_IDName, CurrClassName, EVT_TEXT_ENTER]) + '';
 end;

end;

function TWxBitmapComboBox.GenerateXRCControlCreation(IndentString: string): TStringList;
var
  i: integer;
begin

  Result := TStringList.Create;
  try
    Result.Add(IndentString + Format('<object class="%s" name="%s">',
      [self.Wx_Class, self.Name]));
    Result.Add(IndentString + Format('  <IDident>%s</IDident>', [self.Wx_IDName]));
    Result.Add(IndentString + Format('  <ID>%d</ID>', [self.Wx_IDValue]));
    Result.Add(IndentString + Format('  <size>%d,%d</size>', [self.Width, self.Height]));
    Result.Add(IndentString + Format('  <pos>%d,%d</pos>', [self.Left, self.Top]));

    Result.Add(IndentString + Format('  <style>%s</style>',
      [GetcomboBoxSpecificStyle(Wx_GeneralStyle, Wx_ComboboxStyle, Wx_EditStyle)]));

    Result.Add('  <content>');
    for i := 0 to self.Items.Count - 1 do
      Result.Add(IndentString + '    <item checked="0">' + self.Items[i] + '</item>');

    Result.Add('  </content>');
    Result.Add(IndentString + '</object>');
  except
    Result.Free;
    raise;
  end;

end;

function TWxBitmapComboBox.GenerateGUIControlCreation: string;
var
  strColorStr: string;
  i: integer;
  strStyle, parentName, strAlignment: string;
begin
  Result := '';

  parentName := GetWxWidgetParent(self);
  strStyle   := GetcomboBoxSpecificStyle(Wx_GeneralStyle, Wx_ComboboxStyle, Wx_EditStyle);

  if trim(strStyle) <> '' then
    strStyle := ', ' + strStyle;

  Result := GetCommentString(self.FWx_Comments.Text) +
    'wxArrayString arrayStringFor_' + self.Name + ';';

  for i := 0 to self.Items.Count - 1 do
    Result := Result + #13 + Format(
      '%s.Add(%s);', ['arrayStringFor_' + self.Name, GetCppString(self.Items[i])]);

  //Last comma is removed because it depends on the user selection of the properties.
  if trim(Wx_ProxyValidatorString.strValidatorValue) <> '' then
  begin
    if trim(strStyle) <> '' then
      strStyle := strStyle + ', ' + Wx_ProxyValidatorString.strValidatorValue
    else
      strStyle := ', 0, ' + Wx_ProxyValidatorString.strValidatorValue;

    strStyle := strStyle + ', ' + GetCppString(Name);

  end
  else if trim(strStyle) <> '' then
    strStyle := strStyle + ', wxDefaultValidator, ' + GetCppString(Name)
  else
    strStyle := ', 0, wxDefaultValidator, ' + GetCppString(Name);

    if (XRCGEN) then
 begin
   Result := GetCommentString(self.FWx_Comments.Text) +
    Format('%s = XRCCTRL(*%s, %s("%s"), %s);',
    [self.Name, parentName, StringFormat, self.Name, self.wx_Class]); 
 end
 else
 begin
  Result := Result + #13 + Format(
    '%s = new %s(%s, %s, %s, wxPoint(%d,%d), wxSize(%d,%d), %s%s);',
    [self.Name, self.Wx_Class, ParentName, GetWxIDString(self.Wx_IDName,
    self.Wx_IDValue),
    GetCppString(self.Caption), self.Left, self.Top, self.Width, self.Height,
    'arrayStringFor_' + self.Name, strStyle]);
 end;

  if trim(self.Wx_ToolTip) <> '' then
    Result := Result + #13 + Format('%s->SetToolTip(%s);',
      [self.Name, GetCppString(self.Wx_ToolTip)]);

  if self.Wx_Hidden then
    Result := Result + #13 + Format('%s->Show(false);', [self.Name]);

  if not Wx_Enabled then
    Result := Result + #13 + Format('%s->Enable(false);', [self.Name]);

  if trim(self.Wx_HelpText) <> '' then
    Result := Result + #13 + Format('%s->SetHelpText(%s);',
      [self.Name, GetCppString(self.Wx_HelpText)]);

  strColorStr := trim(GetwxColorFromString(InvisibleFGColorString));
  if strColorStr <> '' then
    Result := Result + #13 + Format('%s->SetForegroundColour(%s);',
      [self.Name, strColorStr]);

  strColorStr := trim(GetwxColorFromString(InvisibleBGColorString));
  if strColorStr <> '' then
    Result := Result + #13 + Format('%s->SetBackgroundColour(%s);',
      [self.Name, strColorStr]);


  strColorStr := GetWxFontDeclaration(self.Font);
  if strColorStr <> '' then
    Result := Result + #13 + Format('%s->SetFont(%s);', [self.Name, strColorStr]);
if not (XRCGEN) then //NUKLEAR ZELPH
  if (self.Parent is TWxSizerPanel) then
  begin
      strAlignment := SizerAlignmentToStr(Wx_Alignment) + ' | ' + BorderAlignmentToStr(Wx_BorderAlignment);
      Result := Result + #13 + Format('%s->Add(%s,%d,%s,%d);',
      [self.Parent.Name, self.Name, self.Wx_StretchFactor, strAlignment,
      self.Wx_Border]);
  end;
  if (self.Parent is TWxToolBar) and not (XRCGEN) then
    Result := Result + #13 + Format('%s->AddControl(%s);',
      [self.Parent.Name, self.Name]);

end;

function TWxBitmapComboBox.GenerateGUIControlDeclaration: string;
begin
  Result := '';
  Result := Format('%s *%s;', [trim(Self.Wx_Class), trim(Self.Name)]);
end;

function TWxBitmapComboBox.GenerateHeaderInclude: string;
begin
  Result := '';
  Result := '#include <wx/bmpcbox.h>';
end;

function TWxBitmapComboBox.GenerateImageInclude: string;
begin

end;

function TWxBitmapComboBox.GetEventList: TStringList;
begin
  Result := FWx_EventList;
end;

function TWxBitmapComboBox.GetIDName: string;
begin
  Result := '';
  Result := wx_IDName;
end;

function TWxBitmapComboBox.GetIDValue: longint;
begin
  Result := wx_IDValue;
end;

function TWxBitmapComboBox.GetParameterFromEventName(EventName: string): string;
begin
  if EventName = 'EVT_COMBOBOX' then
    Result := 'wxCommandEvent& event '
  else if EventName = 'EVT_TEXT' then
    Result := 'wxCommandEvent& event '
  else if EventName = 'EVT_TEXT_ENTER' then
    Result := 'wxCommandEvent& event'
  else if EventName = 'EVT_UPDATE_UI' then
    Result := 'wxUpdateUIEvent& event';
end;

function TWxBitmapComboBox.GetPropertyList: TStringList;
begin
  Result := FWx_PropertyList;
end;

function TWxBitmapComboBox.GetStretchFactor: integer;
begin
  Result := FWx_StretchFactor;
end;

function TWxBitmapComboBox.GetTypeFromEventName(EventName: string): string;
begin

end;

function TWxBitmapComboBox.GetBorderAlignment: TWxBorderAlignment;
begin
  Result := FWx_BorderAlignment;
end;

procedure TWxBitmapComboBox.SetBorderAlignment(border: TWxBorderAlignment);
begin
  FWx_BorderAlignment := border;
end;

function TWxBitmapComboBox.GetBorderWidth: integer;
begin
  Result := FWx_Border;
end;

procedure TWxBitmapComboBox.SetBorderWidth(width: integer);
begin
  FWx_Border := width;
end;

function TWxBitmapComboBox.GetWxClassName: string;
begin
  if trim(wx_Class) = '' then
    wx_Class := 'wxBitmapComboBox';
  Result := wx_Class;
end;

procedure TWxBitmapComboBox.Loaded;
begin
  inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

procedure TWxBitmapComboBox.SaveControlOrientation(ControlOrientation: TWxControlOrientation);
begin
  wx_ControlOrientation := ControlOrientation;
end;

procedure TWxBitmapComboBox.SetIDName(IDName: string);
begin
  wx_IDName := IDName;
end;

procedure TWxBitmapComboBox.SetIDValue(IDValue: longint);
begin
  Wx_IDValue := IDVAlue;
end;

procedure TWxBitmapComboBox.SetStretchFactor(intValue: integer);
begin
  FWx_StretchFactor := intValue;
end;

procedure TWxBitmapComboBox.SetWxClassName(wxClassName: string);
begin
  wx_Class := wxClassName;
end;

function TWxBitmapComboBox.GetGenericColor(strVariableName:String): string;
begin

end;
procedure TWxBitmapComboBox.SetGenericColor(strVariableName,strValue: string);
begin

end;


function TWxBitmapComboBox.GetFGColor: string;
begin
  Result := FInvisibleFGColorString;
end;

procedure TWxBitmapComboBox.SetFGColor(strValue: string);
begin
  FInvisibleFGColorString := strValue;
  if IsDefaultColorStr(strValue) then
    self.Font.Color := defaultFGColor
  else
    self.Font.Color := GetColorFromString(strValue);
end;

function TWxBitmapComboBox.GetBGColor: string;
begin
  Result := FInvisibleBGColorString;
end;

procedure TWxBitmapComboBox.SetBGColor(strValue: string);
begin
  FInvisibleBGColorString := strValue;
  if IsDefaultColorStr(strValue) then
    self.Color := defaultBGColor
  else
    self.Color := GetColorFromString(strValue);
end;

procedure TWxBitmapComboBox.SetProxyFGColorString(Value: string);
begin
  FInvisibleFGColorString := Value;
  self.Color := GetColorFromString(Value);
end;

procedure TWxBitmapComboBox.SetProxyBGColorString(Value: string);
begin
  FInvisibleBGColorString := Value;
  self.Font.Color := GetColorFromString(Value);
end;

procedure TWxBitmapComboBox.DummyToolBarInsertableInterfaceProcedure;
begin

end;

function TWxBitmapComboBox.GetLHSVariableAssignment:String;
var
    nPos:Integer;
begin
    Result:='';
    if trim(Wx_LHSValue) = '' then
        exit;
    nPos := pos('|',Wx_LHSValue);
    if UpperCase(copy(Wx_LHSValue,0,2)) = 'I:' then
        Result:= Format('%s = %s->GetSelection();',[copy(Wx_LHSValue,3,length(Wx_LHSValue)),self.Name])
    else if (UpperCase(copy(Wx_LHSValue,0,3)) = 'IF:') and (nPos <> -1) then
    begin
        Result:= Format('%s = %s(%s->GetSelection());',[copy(Wx_LHSValue,4,nPos-4),copy(Wx_LHSValue,nPos+1,length(Wx_LHSValue)),self.Name])
    end
    else if (UpperCase(copy(Wx_LHSValue,0,2)) = 'F:') and (nPos <> -1) then
    begin
        Result:= Format('%s = %s(%s->GetValue());',[copy(Wx_LHSValue,3,nPos-3),copy(Wx_LHSValue,nPos+1,length(Wx_LHSValue)),self.Name])
    end
    else
        Result:= Format('%s = %s->GetValue();',[Wx_LHSValue,self.Name]);
end;

function TWxBitmapComboBox.GetRHSVariableAssignment:String;
begin
    Result:='';
    if trim(Wx_RHSValue) = '' then
        exit;
    if UpperCase(copy(Wx_RHSValue,0,2)) = 'I:' then
        Result:= Format('%s->SetSelection(%s);',[self.Name,copy(Wx_RHSValue,3,length(Wx_RHSValue))])
    else
        Result:= Format('%s->SetValue(%s);',[self.Name,Wx_RHSValue]);

end;

function TWxBitmapComboBox.GetValidatorString:TWxValidatorString;
begin
  Result := FWx_ProxyValidatorString;
  Result.FstrValidatorValue := Wx_Validator;
end;

procedure TWxBitmapComboBox.SetValidatorString(Value:TWxValidatorString);
begin
  FWx_ProxyValidatorString.FstrValidatorValue := Value.FstrValidatorValue;
  Wx_Validator := Value.FstrValidatorValue;
end;

function TWxBitmapComboBox.GetValidator:String;
begin
  Result := Wx_Validator;
end;

procedure TWxBitmapComboBox.SetValidator(value:String);
begin
  Wx_Validator := value;
end;

end.