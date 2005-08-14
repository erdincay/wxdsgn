 { ****************************************************************** }
 {                                                                    }
{ $Id$                                                               }
 {                                                                    }
 {   VCL component TWxListBox                                         }
 {                                                                    }
 {   Code generated by Component Create for Delphi                    }
 {                                                                    }
{   Generated from source file e:\backup\delphi\demo\wxdevcpp\source\compon~1\compcode\wxlist~1.cd }
 {   on 13 Oct 2004 at 23:12                                          }
 {                                                                    }
 {   Copyright � 2003 by Guru Kathiresan                              }
 {                                                                    }
 { ****************************************************************** }

unit WxListBox;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls,
  Forms, Graphics, StdCtrls, WxUtils, ExtCtrls, WxSizerPanel;

{
*************IMPORTANT*************
If you want to change any of the wxwidgets components,  you have to use comp screate by David Price.
You can download a copy from

http://torry.net/tools/components/compcreation/cc.zip

***IF YOU FOLLOW THIS YOUR UPDATES WONT BE INCLUDED IN THE DISTRIBUTION****
}

type
  TWxListBox = class(TListBox, IWxComponentInterface)
  private
    { Private fields of TWxListBox }
    FEVT_LISTBOX: string;
    FEVT_LISTBOX_DCLICK: string;
    FEVT_UPDATE_UI: string;
    FWx_BGColor: TColor;
    FWx_Border: integer;
    FWx_Class: string;
    FWx_ControlOrientation: TWxControlOrientation;
    FWx_Enabled: boolean;
    FWx_FGColor: TColor;
    FWx_GeneralStyle: TWxStdStyleSet;
    FWx_HelpText: string;
    FWx_Hidden: boolean;
    FWx_HorizontalAlignment: TWxSizerHorizontalAlignment;
    FWx_IDName: string;
    FWx_IDValue: longint;
    FWx_ListboxStyle: TWxLBxStyleSet;
    FWx_ListboxSubStyle: TWxLBxStyleSubItem;
    FWx_ProxyBGColorString: TWxColorString;
    FWx_ProxyFGColorString: TWxColorString;
    FWx_StretchFactor: integer;
    FWx_ToolTip: string;
    FWx_Validator: string;
    FWx_VerticalAlignment: TWxSizerVerticalAlignment;
    FWx_EventList: TStringList;
    FWx_PropertyList: TStringList;

    FInvisibleBGColorString: string;
    FInvisibleFGColorString: string;

    { Private methods of TWxListBox }
    procedure AutoInitialize;
    procedure AutoDestroy;

  protected
    { Protected fields of TWxListBox }

    { Protected methods of TWxListBox }
    procedure Click; override;
    procedure KeyPress(var Key: char); override;
    procedure Loaded; override;

  public
    { Public fields and properties of TWxListBox }
    { Public fields and properties of TWxGrid }
    defaultBGColor: TColor;
    defaultFGColor: TColor;

    { Public methods of TWxListBox }
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
    function GetStretchFactor: integer;
    function GetTypeFromEventName(EventName: string): string;
    function GetWxClassName: string;
    procedure SaveControlOrientation(ControlOrientation: TWxControlOrientation);
    procedure SetIDName(IDName: string);
    procedure SetIDValue(IDValue: longint);
    procedure SetStretchFactor(intValue: integer);
    procedure SetWxClassName(wxClassName: string);
    function GetFGColor: string;
    procedure SetFGColor(strValue: string);
    function GetBGColor: string;
    procedure SetBGColor(strValue: string);
    procedure SetProxyFGColorString(Value: string);
    procedure SetProxyBGColorString(Value: string);
    function GetListBoxSelectorStyle(Wx_ListboxSubStyle: TWxLBxStyleSubItem)
      : string;

  published
    { Published properties of TWxListBox }
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
    //For Backward compatibility
    property EVT_TEXT: string Read FEVT_LISTBOX;
    property EVT_LISTBOX: string Read FEVT_LISTBOX Write FEVT_LISTBOX;
    property EVT_LISTBOX_DCLICK: string
      Read FEVT_LISTBOX_DCLICK Write FEVT_LISTBOX_DCLICK;
    property EVT_UPDATE_UI: string Read FEVT_UPDATE_UI Write FEVT_UPDATE_UI;
    property Wx_BGColor: TColor Read FWx_BGColor Write FWx_BGColor;
    property Wx_Border: integer Read FWx_Border Write FWx_Border default 5;
    property Wx_Class: string Read FWx_Class Write FWx_Class;
    property Wx_ControlOrientation: TWxControlOrientation
      Read FWx_ControlOrientation Write FWx_ControlOrientation;
    property Wx_Enabled: boolean Read FWx_Enabled Write FWx_Enabled default True;
    property Wx_FGColor: TColor Read FWx_FGColor Write FWx_FGColor;
    property Wx_GeneralStyle: TWxStdStyleSet
      Read FWx_GeneralStyle Write FWx_GeneralStyle;
    property Wx_HelpText: string Read FWx_HelpText Write FWx_HelpText;
    property Wx_Hidden: boolean Read FWx_Hidden Write FWx_Hidden;
    property Wx_HorizontalAlignment: TWxSizerHorizontalAlignment
      Read FWx_HorizontalAlignment Write FWx_HorizontalAlignment default
      wxSZALIGN_CENTER_HORIZONTAL;
    property Wx_IDName: string Read FWx_IDName Write FWx_IDName;
    property Wx_IDValue: longint Read FWx_IDValue Write FWx_IDValue default -1;
    property Wx_ListboxStyle: TWxLBxStyleSet
      Read FWx_ListboxStyle Write FWx_ListboxStyle;
    property Wx_ListboxSubStyle: TWxLBxStyleSubItem
      Read FWx_ListboxSubStyle Write FWx_ListboxSubStyle;
    property Wx_ProxyBGColorString: TWxColorString
      Read FWx_ProxyBGColorString Write FWx_ProxyBGColorString;
    property Wx_ProxyFGColorString: TWxColorString
      Read FWx_ProxyFGColorString Write FWx_ProxyFGColorString;
    property Wx_StrechFactor: integer Read FWx_StretchFactor
      Write FWx_StretchFactor;
    property Wx_StretchFactor: integer Read FWx_StretchFactor
      Write FWx_StretchFactor default 0;
    property Wx_ToolTip: string Read FWx_ToolTip Write FWx_ToolTip;
    property Wx_VerticalAlignment: TWxSizerVerticalAlignment
      Read FWx_VerticalAlignment Write FWx_VerticalAlignment default wxSZALIGN_CENTER_VERTICAL;
    property InvisibleBGColorString: string
      Read FInvisibleBGColorString Write FInvisibleBGColorString;
    property InvisibleFGColorString: string
      Read FInvisibleFGColorString Write FInvisibleFGColorString;
    property Wx_Validator: string Read FWx_Validator Write FWx_Validator;
  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxListBox with wxWidgets as its
       default page on the Delphi component palette }
  RegisterComponents('wxWidgets', [TWxListBox]);
end;

{ Method to set variable and property values and create objects }
procedure TWxListBox.AutoInitialize;
begin
  FWx_EventList := TStringList.Create;
  FWx_PropertyList := TStringList.Create;
  FWx_Border  := 5;
  FWx_Class   := 'wxListBox';
  FWx_Enabled := True;
  FWx_HorizontalAlignment := wxSZALIGN_CENTER_HORIZONTAL;
  FWx_IDValue := -1;
  FWx_StretchFactor := 0;
  FWx_VerticalAlignment := wxSZALIGN_CENTER_VERTICAL;

end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxListBox.AutoDestroy;
begin
  FWx_EventList.Destroy;
  FWx_PropertyList.Destroy;
end; { of AutoDestroy }

{ Override OnClick handler from TListBox,IWxComponentInterface }
procedure TWxListBox.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

  { Activate click behavior of parent }
  inherited Click;

     { Code to execute after click behavior
       of parent }

end;

{ Override OnKeyPress handler from TListBox,IWxComponentInterface }
procedure TWxListBox.KeyPress(var Key: char);
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

constructor TWxListBox.Create(AOwner: TComponent);
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
  FWx_PropertyList.add('Items :Strings');
  FWx_PropertyList.add('Wx_Hidden :Hidden');
  FWx_PropertyList.add('Wx_Border : Border ');
  FWx_PropertyList.add('Wx_Default :WxDefault ');
  FWx_PropertyList.add('Wx_HelpText :HelpText');
  FWx_PropertyList.add('Wx_IDName : IDName ');
  FWx_PropertyList.add('Wx_IDValue : IDValue ');
  FWx_PropertyList.add('Wx_ToolTip :ToolTip ');
  FWx_PropertyList.add('Text:Text');
  FWx_PropertyList.add('Name:Name');
  FWx_PropertyList.add('Wx_Class:Base Class');
  FWx_PropertyList.add('Wx_Enabled:Enabled');
  FWx_PropertyList.add('Left:Left');
  FWx_PropertyList.add('Top:Top');
  FWx_PropertyList.add('Width:Width');
  FWx_PropertyList.add('Height:Height');
  FWx_PropertyList.add('Wx_Validator : Validator code');

  FWx_PropertyList.add('Wx_ProxyBGColorString:Background Color');
  FWx_PropertyList.add('Wx_ProxyFGColorString:Foreground Color');

  FWx_PropertyList.add('Wx_GeneralStyle : General Styles');
  FWx_PropertyList.Add('wxSIMPLE_BORDER:wxSIMPLE_BORDER');
  FWx_PropertyList.Add('wxDOUBLE_BORDER:wxDOUBLE_BORDER');
  FWx_PropertyList.Add('wxSUNKEN_BORDER:wxSUNKEN_BORDER');
  FWx_PropertyList.Add('wxRAISED_BORDER:wxRAISED_BORDER');
  FWx_PropertyList.Add('wxSTATIC_BORDER:wxSTATIC_BORDER');
  FWx_PropertyList.Add('wxTRANSPARENT_WINDOW:wxTRANSPARENT_WINDOW');
  FWx_PropertyList.Add('wxNO_3D:wxNO_3D');
  FWx_PropertyList.Add('wxTAB_TRAVERSAL:wxTAB_TRAVERSAL');
  FWx_PropertyList.Add('wxWANTS_CHARS:wxWANTS_CHARS');
  FWx_PropertyList.Add('wxNO_FULL_REPAINT_ON_RESIZE:wxNO_FULL_REPAINT_ON_RESIZE');
  FWx_PropertyList.Add('wxVSCROLL:wxVSCROLL');
  FWx_PropertyList.Add('wxHSCROLL:wxHSCROLL');
  FWx_PropertyList.Add('wxCLIP_CHILDREN:wxCLIP_CHILDREN');

  FWx_PropertyList.add('Font : Font');
  FWx_PropertyList.add('Checked : Checked');

  FWx_PropertyList.add('Wx_ListboxStyle:Listbox Style');
  FWx_PropertyList.add('Wx_ListboxSubStyle:Listbox Style');
  FWx_PropertyList.add('wxLB_SINGLE:wxLB_SINGLE');
  FWx_PropertyList.add('wxLB_MULTIPLE:wxLB_MULTIPLE');
  FWx_PropertyList.add('wxLB_EXTENDED:wxLB_EXTENDED');
  FWx_PropertyList.add('wxLB_HSCROLL:wxLB_HSCROLL');
  FWx_PropertyList.add('wxLB_ALWAYS_SB:wxLB_ALWAYS_SB');
  FWx_PropertyList.add('wxLB_NEEDED_SB:wxLB_NEEDED_SB');
  FWx_PropertyList.add('wxLB_SORT:wxLB_SORT');
  FWx_PropertyList.add('Wx_StretchFactor   : StretchFactor');

  FWx_PropertyList.add('Wx_HorizontalAlignment : HorizontalAlignment');
  FWx_PropertyList.add('Wx_VerticalAlignment   : VerticalAlignment');

  FWx_EventList.add('EVT_UPDATE_UI:OnUpdateUI');
  FWx_EventList.add('EVT_LISTBOX:OnEnter');
  FWx_EventList.add('EVT_LISTBOX_DCLICK:OnDoubleClicked');

end;

destructor TWxListBox.Destroy;
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


function TWxListBox.GenerateEnumControlIDs: string;
begin
  Result := '';
  if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
    Result := Format('%s = %d, ', [Wx_IDName, Wx_IDValue]);
end;

function TWxListBox.GenerateControlIDs: string;
begin
  Result := '';
  if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
    Result := Format('#define %s %d ', [Wx_IDName, Wx_IDValue]);
end;


function TWxListBox.GenerateEventTableEntries(CurrClassName: string): string;
  { Internal declarations for method }

  { var }
  { . . . }
begin

  Result := '';

  if trim(EVT_LISTBOX) <> '' then
    Result := Format('EVT_LISTBOX(%s,%s::%s)', [WX_IDName, CurrClassName, EVT_LISTBOX]) + '';

  if trim(EVT_UPDATE_UI) <> '' then
    Result := Result + #13 + Format('EVT_UPDATE_UI(%s,%s::%s)',
      [WX_IDName, CurrClassName, EVT_UPDATE_UI]) + '';

  if trim(EVT_LISTBOX_DCLICK) <> '' then
    Result := Result + #13 + Format('EVT_LISTBOX_DCLICK(%s,%s::%s)',
      [WX_IDName, CurrClassName, EVT_LISTBOX_DCLICK]) + '';

end;

function TWxListBox.GenerateXRCControlCreation(IndentString: string): TStringList;
var
  stylestring: string;
  i: integer;
begin

  Result := TStringList.Create;
  Result.Add(IndentString + Format('<object class="%s" name="%s">',
    [self.Wx_Class, self.Name]));
  Result.Add(IndentString + Format('<IDident>%s</IDident>', [self.Wx_IDName]));
  Result.Add(IndentString + Format('<ID>%d</ID>', [self.Wx_IDValue]));
  Result.Add(IndentString + Format('<size>%d,%d</size>', [self.Width, self.Height]));
  Result.Add(IndentString + Format('<pos>%d,%d</pos>', [self.Left, self.Top]));

  stylestring := GetListBoxSelectorStyle(Wx_ListboxSubStyle);
  if trim(stylestring) <> '' then
    stylestring := stylestring + ' | ' + GetListBoxSpecificStyle(
      self.Wx_GeneralStyle, Wx_ListboxStyle);

  Result.Add(IndentString + Format('<style>%s</style>', [stylestring]));

  Result.Add(IndentString + '<content>');
  for i := 0 to self.Items.Count - 1 do
    Result.Add(IndentString + '  <item>' + Items[i] + '</item>');

  Result.Add(IndentString + '</content>');

  Result.Add(IndentString + '</object>');

end;

function TWxListBox.GenerateGUIControlCreation: string;
var
  i: integer;
  strStyle, parentName, strAlignment: string;
  strColorStr: string;
begin
  Result := '';

  //    if (self.Parent is TForm) or (self.Parent is TWxSizerPanel) then
  //       parentName:=GetWxWidgetParent(self)
  //    else
  //       parentName:=self.Parent.name;

  parentName := GetWxWidgetParent(self);

  strStyle := GetListBoxSelectorStyle(Wx_ListboxSubStyle);

  if trim(strStyle) <> '' then
    strStyle := ', ' + strStyle + ' | ' + GetListBoxSpecificStyle(
      self.Wx_GeneralStyle, Wx_ListboxStyle);

  if trim(self.FWx_Validator) <> '' then
    if trim(strStyle) <> '' then
      strStyle := strStyle + ', ' + self.Wx_Validator
    else
      strStyle := ', 0, ' + self.Wx_Validator;

  Result := Format('%s = new %s(%s, %s, wxPoint(%d,%d), wxSize(%d,%d), (wxArrayString)NULL%s);', [self.Name, self.Wx_Class, parentName, GetWxIDString(self.Wx_IDName, self.Wx_IDValue), self.Left, self.Top, self.Width, self.Height, strStyle]);

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
  for i := 0 to self.Items.Count - 1 do
    Result := Result + #13 + Format('%s->Append(%s);',
      [self.Name, GetCppString(self.Items[i])]);

  strColorStr := trim(GetwxColorFromString(InvisibleFGColorString));
  if strColorStr <> '' then
    Result := Result + #13 + Format('%s->SetForegroundColour(%s);', [self.Name, strColorStr]);

  strColorStr := trim(GetwxColorFromString(InvisibleBGColorString));
  if strColorStr <> '' then
    Result := Result + #13 + Format('%s->SetBackgroundColour(%s);', [self.Name, strColorStr]);


  strColorStr := GetWxFontDeclaration(self.Font);
  if strColorStr <> '' then
    Result := Result + #13 + Format('%s->SetFont(%s);', [self.Name, strColorStr]);


  if (self.Parent is TWxSizerPanel) then
  begin
    strAlignment := SizerAlignmentToStr(Wx_HorizontalAlignment) +
      ' | ' + SizerAlignmentToStr(Wx_VerticalAlignment) + ' | wxALL';
    if wx_ControlOrientation = wxControlVertical then
      strAlignment := SizerAlignmentToStr(Wx_HorizontalAlignment) + ' | wxALL';

    if wx_ControlOrientation = wxControlHorizontal then
      strAlignment := SizerAlignmentToStr(Wx_VerticalAlignment) + ' | wxALL';


    Result := Result + #13 + Format('%s->Add(%s,%d,%s,%d);',
      [self.Parent.Name, self.Name, self.Wx_StretchFactor, strAlignment, self.Wx_Border]);
  end;

end;

function TWxListBox.GenerateGUIControlDeclaration: string;
  { Internal declarations for method }

  { var }
  { . . . }
begin
  Result := '';
  Result := Format('%s *%s;', [trim(Self.Wx_Class), trim(Self.Name)]);
end;

function TWxListBox.GenerateHeaderInclude: string;
  { Internal declarations for method }

  { var }
  { . . . }
begin
  Result := '';
  Result := '#include <wx/listbox.h>';

end;

function TWxListBox.GenerateImageInclude: string;
  { Internal declarations for method }

  { var }
  { . . . }
begin

end;

function TWxListBox.GetEventList: TStringList;
  { Internal declarations for method }

  { var }
  { . . . }
begin
  Result := FWx_EventList;
end;

function TWxListBox.GetIDName: string;
  { Internal declarations for method }

  { var }
  { . . . }
begin
  Result := wx_IDName;
end;

function TWxListBox.GetIDValue: longint;
  { Internal declarations for method }

  { var }
  { . . . }
begin
  Result := wx_IDValue;
end;

function TWxListBox.GetParameterFromEventName(EventName: string): string;
  { Internal declarations for method }

  { var }
  { . . . }
begin

end;

function TWxListBox.GetPropertyList: TStringList;
  { Internal declarations for method }

  { var }
  { . . . }
begin
  Result := FWx_PropertyList;
end;

function TWxListBox.GetStretchFactor: integer;
  { Internal declarations for method }

  { var }
  { . . . }
begin

end;

function TWxListBox.GetTypeFromEventName(EventName: string): string;
begin

  if EventName = 'EVT_LISTBOX' then
  begin
    Result := 'wxCommandEvent& event';
    exit;
  end;

  if EventName = 'EVT_UPDATE_UI' then
  begin
    Result := 'wxUpdateUIEvent& event';
    exit;
  end;

  if EventName = 'EVT_LISTBOX_DCLICK' then
  begin
    Result := 'wxCommandEvent& event';
    exit;
  end;
end;

function TWxListBox.GetWxClassName: string;
begin
  if trim(wx_Class) = '' then
    wx_Class := 'wxListBox';
  Result := wx_Class;
end;

procedure TWxListBox.Loaded;
begin
  inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

procedure TWxListBox.SaveControlOrientation(ControlOrientation: TWxControlOrientation);
{ Internal declarations for method }

 { var }
 { . . . }
begin
  wx_ControlOrientation := ControlOrientation;
end;

procedure TWxListBox.SetIDName(IDName: string);
{ Internal declarations for method }

 { var }
 { . . . }
begin
  wx_IDName := IDName;
end;

procedure TWxListBox.SetIDValue(IDValue: longint);
{ Internal declarations for method }

 { var }
 { . . . }
begin
  Wx_IDValue := IDVAlue;
end;

procedure TWxListBox.SetStretchFactor(intValue: integer);
{ Internal declarations for method }

 { var }
 { . . . }
begin

end;

procedure TWxListBox.SetWxClassName(wxClassName: string);
{ Internal declarations for method }

 { var }
 { . . . }
begin
  wx_Class := wxClassName;
end;

function TWxListBox.GetFGColor: string;
begin
  Result := FInvisibleFGColorString;
end;

procedure TWxListBox.SetFGColor(strValue: string);
begin
  FInvisibleFGColorString := strValue;
  if IsDefaultColorStr(strValue) then
    self.Font.Color := defaultFGColor
  else
    self.Font.Color := GetColorFromString(strValue);
end;

function TWxListBox.GetBGColor: string;
begin
  Result := FInvisibleBGColorString;
end;

procedure TWxListBox.SetBGColor(strValue: string);
begin
  FInvisibleBGColorString := strValue;
  if IsDefaultColorStr(strValue) then
    self.Color := defaultBGColor
  else
    self.Color := GetColorFromString(strValue);
end;

procedure TWxListBox.SetProxyFGColorString(Value: string);
begin
  FInvisibleFGColorString := Value;
  self.Color := GetColorFromString(Value);
end;

procedure TWxListBox.SetProxyBGColorString(Value: string);
begin
  FInvisibleBGColorString := Value;
  self.Font.Color := GetColorFromString(Value);
end;

function TWxListBox.GetListBoxSelectorStyle(Wx_ListboxSubStyle: TWxLBxStyleSubItem)
: string;
begin
  Result := '';
  if Wx_ListboxSubStyle = wxLB_SINGLE then
  begin
    Result := 'wxLB_SINGLE';
    exit;
  end;
  if Wx_ListboxSubStyle = wxLB_MULTIPLE then
  begin
    Result := 'wxLB_MULTIPLE';
    exit;
  end;
  if Wx_ListboxSubStyle = wxLB_EXTENDED then
  begin
    Result := 'wxLB_EXTENDED';
    exit;
  end;
end;

end.
