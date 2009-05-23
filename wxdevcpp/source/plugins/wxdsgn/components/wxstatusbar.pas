 { ****************************************************************** }
 {                                                                    }
{ $Id: wxstatusbar.pas 936 2007-05-15 03:47:39Z gururamnath $                                                               }
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

unit WxStatusBar;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls,
  Forms, Graphics, ComCtrls, WxUtils, WxSizerPanel, Dialogs;

type
  TWxStatusBar = class(TStatusBar, IWxComponentInterface,
    IWxDialogNonInsertableInterface, IWxStatusBarInterface, IWxContainerInterface,
    IWxContainerAndSizerInterface)
  private
    { Private fields of TWxStatusBar }
    FOrientation: TWxSizerOrientation;
    FWx_Caption: string;
    FWx_Class: string;
    FWx_ControlOrientation: TWxControlOrientation;
    FWx_EventList: TStringList;
    FWx_IDName: string;
    FWx_IDValue: integer;
    FWx_StretchFactor: integer;
    FWx_PropertyList: TStringList;
    FInvisibleBGColorString: string;
    FInvisibleFGColorString: string;
    FWx_StatusbarStyleSet: TWxsbrStyleSet;
    FWx_GeneralStyle: TWxStdStyleSet;
    FWx_ToolTip: string;
    FWx_Enabled: boolean;
    FWx_Hidden: boolean;
    FWx_HelpText: string;
    FWx_Border: integer;
    FWx_Comments: TStrings;
    FWx_Alignment: TWxSizerAlignmentSet;
    FWx_BorderAlignment: TWxBorderAlignment;

    { Private methods of TWxStatusBar }
    procedure AutoInitialize;
    procedure AutoDestroy;

  protected
    { Protected fields of TWxStatusBar }

    { Protected methods of TWxStatusBar }
    procedure Click; override;
    procedure Loaded; override;             
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

    function GetGenericColor(strVariableName:String): string;
    procedure SetGenericColor(strVariableName,strValue: string);

    procedure SetProxyFGColorString(Value: string);
    procedure SetProxyBGColorString(Value: string);
    function GenerateLastCreationCode: string;

    function GetBorderAlignment: TWxBorderAlignment;
    procedure SetBorderAlignment(border: TWxBorderAlignment);
    function GetBorderWidth: integer;
    procedure SetBorderWidth(width: integer);
    function GetStretchFactor: integer;
    procedure SetStretchFactor(intValue: integer);

  public
    { Public fields and properties of TWxStatusBar }
    { Public fields and properties of TWxTreeCtrl }
    defaultBGColor: TColor;
    defaultFGColor: TColor;
    { Public methods of TWxStatusBar }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

  published
    { Published properties of TWxStatusBar }
    property OnClick;
    property OnResize;
    property Orientation: TWxSizerOrientation
      Read FOrientation Write FOrientation default wxHorizontal;
    property Wx_Caption: string Read FWx_Caption Write FWx_Caption;
    property Wx_Class: string Read FWx_Class Write FWx_Class;
    property Wx_ControlOrientation: TWxControlOrientation
      Read FWx_ControlOrientation Write FWx_ControlOrientation;
    property Wx_EventList: TStringList Read FWx_EventList Write FWx_EventList;
    property Wx_IDName: string Read FWx_IDName Write FWx_IDName;
    property Wx_IDValue: integer Read FWx_IDValue Write FWx_IDValue default -1;
    property Wx_StatusbarStyleSet: TWxsbrStyleSet
      Read FWx_StatusbarStyleSet Write FWx_StatusbarStyleSet;
    property Wx_GeneralStyle: TWxStdStyleSet
      Read FWx_GeneralStyle Write FWx_GeneralStyle;

    property Wx_Hidden: boolean Read FWx_Hidden Write FWx_Hidden;
    property Wx_ToolTip: string Read FWx_ToolTip Write FWx_ToolTip;
    property Wx_HelpText: string Read FWx_HelpText Write FWx_HelpText;
    property Wx_Enabled: boolean Read FWx_Enabled Write FWx_Enabled;

    property InvisibleBGColorString: string Read FInvisibleBGColorString Write FInvisibleBGColorString;
    property InvisibleFGColorString: string Read FInvisibleFGColorString Write FInvisibleFGColorString;

    property Wx_Border: integer Read GetBorderWidth Write SetBorderWidth default 5;
    property Wx_BorderAlignment: TWxBorderAlignment Read GetBorderAlignment Write SetBorderAlignment default [wxALL];
    property Wx_Alignment: TWxSizerAlignmentSet Read FWx_Alignment Write FWx_Alignment default [wxALIGN_CENTER];
    property Wx_StretchFactor: integer Read GetStretchFactor Write SetStretchFactor default 0;

    property Wx_Comments: TStrings Read FWx_Comments Write FWx_Comments;
  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxStatusBar with wxWidgets as its
       default page on the Delphi component palette }
  RegisterComponents('wxWidgets', [TWxStatusBar]);
end;

{ Method to set variable and property values and create objects }
procedure TWxStatusBar.AutoInitialize;
begin
  FWx_PropertyList    := TStringList.Create;
  FOrientation        := wxHorizontal;
  FWx_Class           := 'wxStatusBar';
  FWx_EventList       := TStringList.Create;
  FWx_BorderAlignment := [wxAll];
  FWx_Alignment       := [wxALIGN_CENTER];
  FWx_IDValue         := -1;
  FWx_StretchFactor   := 0;
  FWx_Enabled         := True;
  FWx_Comments        := TStringList.Create;

end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxStatusBar.AutoDestroy;
begin
  FWx_PropertyList.Destroy;
  FWx_EventList.Destroy;
  FWx_Comments.Destroy;
end; { of AutoDestroy }

{ Override OnClick handler from TStatusBar }
procedure TWxStatusBar.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

  { Activate click behavior of parent }
  inherited Click;

     { Code to execute after click behavior
       of parent }

end;

constructor TWxStatusBar.Create(AOwner: TComponent);
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
  FWx_PropertyList.add('Panels:Fields');
  FWx_PropertyList.add('Wx_StatusbarStyleSet:Statusbar Styles');
  FWx_PropertyList.add('wxST_SIZEGRIP:wxST_SIZEGRIP');

end;

destructor TWxStatusBar.Destroy;
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

procedure TWxStatusBar.Loaded;
begin
  inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

function TWxStatusBar.GenerateEnumControlIDs: string;
begin
  Result := GetWxEnum(self.Wx_IDValue, self.Wx_IDName);
end;

function TWxStatusBar.GenerateControlIDs: string;
begin
  Result := '';
  if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
    Result := Format('#define %s %d ', [Wx_IDName, Wx_IDValue]);
end;

function TWxStatusBar.GenerateEventTableEntries(CurrClassName: string): string;
begin
  Result := '';
end;

function TWxStatusBar.GenerateXRCControlCreation(IndentString: string): TStringList;
var
  I:    integer;
  min1used: boolean;
  temp: string;
begin

  Result := TStringList.Create;

  try
    Result.Add(IndentString + Format('<object class="%s" name="%s">',
      [self.Wx_Class, self.Name]));
    Result.Add(IndentString + Format('  <IDident>%s</IDident>', [self.Wx_IDName]));
    Result.Add(IndentString + Format('  <ID>%d</ID>', [self.Wx_IDValue]));
{   
    if not(UseDefaultSize)then
      Result.Add(IndentString + Format('  <size>%d,%d</size>', [self.Width, self.Height]));
    if not(UseDefaultPos) then
      Result.Add(IndentString + Format('  <pos>%d,%d</pos>', [self.Left, self.Top]));
}
    Result.Add(IndentString + Format('  <fields>%d</fields>', [self.Panels.Count]));

    temp := IndentString + '  <widths>';

    min1used := false;
    for I := 0 to Panels.Count - 2 do    // Iterate
        begin
            if self.Panels.items[i].Width = -1 then
                min1used := true;
            temp := temp + Format('%d, ', [self.Panels.items[i].Width]);
        end;
    if min1used = false then
        temp := temp + '-1</widths>'
    else
        temp := temp + Format('%d, ', [self.Panels.items[Panels.Count-1].Width]) + '</widths>';


    Result.Add(temp);

    Result.Add(IndentString + Format('  <style>%s</style>',
      [GetScrollbarSpecificStyle(self.Wx_GeneralStyle, Wx_StatusbarStyleSet)]));
    Result.Add(IndentString + '</object>');

  except
    Result.Free;
    raise;
  end;

end;

function TWxStatusBar.GenerateGUIControlCreation: string;
var
  I: integer;
  strColorStr: string;
  strStyle, parentName, strAlignment: string;
  min1used: boolean;
begin
  Result := '';

    { if (self.Parent is TForm) or (self.Parent is TWxSizerPanel) then
       parentName:=GetWxWidgetParent(self)
    else
       parentName:=self.Parent.name; }

  parentName := GetWxWidgetParent(self, False);

  strStyle := GetScrollbarSpecificStyle(self.Wx_GeneralStyle, Wx_StatusbarStyleSet);

  if (trim(strStyle) <> '') then
    strStyle := ', ' + strStyle;

  
  if (XRCGEN) and not  (self.Parent is TForm) then
 begin//generate xrc loading code
  Result := GetCommentString(self.FWx_Comments.Text) +
    Format('%s = XRCCTRL(*%s, %s("%s"), %s);',
    [self.Name, parentName, StringFormat, self.Name, self.wx_Class]);   
 end
 else
 begin
  Result := GetCommentString(self.FWx_Comments.Text) +
    Format('%s = new %s(%s, %s%s);', [self.Name, self.wx_Class, parentName,
    GetWxIDString(self.Wx_IDName, self.Wx_IDValue), strStyle]);

  if self.Panels.Count > 0 then
  begin
    Result := Result + #13 + Format('%s->SetFieldsCount(%d);',
      [self.Name, self.Panels.Count]);
    for I := 0 to Panels.Count - 1 do    // Iterate
      Result := Result + #13 + Format('%s->SetStatusText(%s,%d);',
        [self.Name, GetCppString(self.Panels.items[i].Text), I]);    // for

    Result := Result + #13 + Format('int %s_Widths[%d];',
      [self.Name, self.Panels.Count]);

    min1used := false;
    for I := 0 to Panels.Count - 1 do    // Iterate
      if I = (Panels.Count - 1) then
          if min1used = false then
              Result := Result + #13 + Format('%s_Widths[%d] = %d;', [self.Name, I, -1])
          else
              Result := Result + #13 + Format('%s_Widths[%d] = %d;',
          [self.Name, I, self.Panels.items[i].Width])
      else
          begin
              if self.Panels.items[i].Width = -1 then
                  min1used := true;

              Result := Result + #13 + Format('%s_Widths[%d] = %d;',
              [self.Name, I, self.Panels.items[i].Width]);    
          end;
            // for loop end
            
    Result := Result + #13 + Format('%s->SetStatusWidths(%d,%s_Widths);',
      [self.Name, self.Panels.Count, self.Name]);

  end;
end; //not xrcgen

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


  //strColorStr:=GetWxFontDeclaration(self.Font);
  //if strColorStr <> '' then
  //Result:=Result+#13+Format('%s->SetFont(%s);',[self.Name,strColorStr]);
if not (XRCGEN) then //NUKLEAR ZELPH
  if (self.Parent is TWxSizerPanel) then
  begin
    strAlignment := SizerAlignmentToStr(Wx_Alignment) + ' | ' + BorderAlignmentToStr(Wx_BorderAlignment);
    Result := Result + #13 + Format('%s->Add(%s,%d,%s,%d);',
      [self.Parent.Name, self.Name, self.Wx_StretchFactor, strAlignment,
      self.Wx_Border]);
  end;

end;

function TWxStatusBar.GenerateGUIControlDeclaration: string;
begin
  Result := '';
  Result := Format('%s *%s;', [Self.wx_Class, Self.Name]);
end;

function TWxStatusBar.GenerateHeaderInclude: string;
begin
  Result := '';
  Result := '#include <wx/statusbr.h>';
end;

function TWxStatusBar.GenerateImageInclude: string;
begin
  Result := '';
end;

function TWxStatusBar.GetEventList: TStringList;
begin
  Result := FWx_EventList;
end;

function TWxStatusBar.GetIDName: string;
begin
  Result := '';
  Result := wx_IDName;
end;

function TWxStatusBar.GetIDValue: longint;
begin
  Result := wx_IDValue;
end;

function TWxStatusBar.GetParameterFromEventName(EventName: string): string;
begin
  Result := '';
end;

function TWxStatusBar.GetPropertyList: TStringList;
begin
  Result := FWx_PropertyList;
end;

function TWxStatusBar.GetStretchFactor: integer;
begin
  Result := FWx_StretchFactor;
end;

function TWxStatusBar.GetTypeFromEventName(EventName: string): string;
begin
  Result := '';
end;

function TWxStatusBar.GetBorderAlignment: TWxBorderAlignment;
begin
  Result := FWx_BorderAlignment;
end;

procedure TWxStatusBar.SetBorderAlignment(border: TWxBorderAlignment);
begin
  FWx_BorderAlignment := border;
end;

function TWxStatusBar.GetBorderWidth: integer;
begin
  Result := FWx_Border;
end;

procedure TWxStatusBar.SetBorderWidth(width: integer);
begin
  FWx_Border := width;
end;

function TWxStatusBar.GetWxClassName: string;
begin
  if trim(wx_Class) = '' then
    wx_Class := 'wxStatusBar';
  Result := wx_Class;
end;

procedure TWxStatusBar.SaveControlOrientation(ControlOrientation: TWxControlOrientation);
begin
  wx_ControlOrientation := ControlOrientation;
end;

procedure TWxStatusBar.SetIDName(IDName: string);
begin
  wx_IDName := IDName;
end;

procedure TWxStatusBar.SetIDValue(IDValue: longint);
begin
  Wx_IDValue := IDVAlue;
end;

procedure TWxStatusBar.SetStretchFactor(intValue: integer);
begin
  FWx_StretchFactor := intValue;
end;

procedure TWxStatusBar.SetWxClassName(wxClassName: string);
begin
  wx_Class := wxClassName;
end;

function TWxStatusBar.GetGenericColor(strVariableName:String): string;
begin

end;
procedure TWxStatusBar.SetGenericColor(strVariableName,strValue: string);
begin

end;

function TWxStatusBar.GetFGColor: string;
begin
  Result := FInvisibleFGColorString;
end;

procedure TWxStatusBar.SetFGColor(strValue: string);
begin
  FInvisibleFGColorString := strValue;
  if IsDefaultColorStr(strValue) then
    self.Font.Color := defaultFGColor
  else
    self.Font.Color := GetColorFromString(strValue);
end;

function TWxStatusBar.GetBGColor: string;
begin
  Result := FInvisibleBGColorString;
end;

procedure TWxStatusBar.SetBGColor(strValue: string);
begin
  FInvisibleBGColorString := strValue;
  if IsDefaultColorStr(strValue) then
    self.Color := defaultBGColor
  else
    self.Color := GetColorFromString(strValue);
end;

procedure TWxStatusBar.SetProxyFGColorString(Value: string);
begin
  FInvisibleFGColorString := Value;
  self.Color := GetColorFromString(Value);
end;

procedure TWxStatusBar.SetProxyBGColorString(Value: string);
begin
  FInvisibleBGColorString := Value;
  self.Font.Color := GetColorFromString(Value);
end;

function TWxStatusBar.GenerateLastCreationCode: string;
begin
  Result := '';
end;

end.
