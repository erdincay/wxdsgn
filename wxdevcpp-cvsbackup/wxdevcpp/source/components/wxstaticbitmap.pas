 { ****************************************************************** }
 {                                                                    }
{ $Id$                                                               }
 {                                                                    }
 {   VCL component TWxStaticBitmap                                    }
 {                                                                    }
 {   Code generated by Component Create for Delphi                    }
 {                                                                    }
 {   Generated from source file wxstaticbitmap2.cd }
 {   on 10 Oct 2004 at 0:51                                           }
 {                                                                    }
 {   Copyright � 2004  by Guru Kathiresan                             }
 {                                                                    }
 { ****************************************************************** }

unit WxStaticBitmap;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls,
  Forms, Graphics, ExtCtrls, WxUtils, Wxcontrolpanel, WxSizerPanel;

type
  TWxStaticBitmap = class(TWxControlPanel, IWxComponentInterface)
  private
    { Private fields of TWxStaticBitmap }
    { Storage for property Picture }
    FPicture: TPicture;
    { Storage for property Wx_Border }
    FWx_Border: integer;
    { Storage for property Wx_Class }
    FWx_Class: string;
    { Storage for property Wx_ControlOrientation }
    FWx_ControlOrientation: TWxControlOrientation;
    { Storage for property Wx_Enabled }
    FWx_Enabled: boolean;
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
    { Storage for property Wx_StretchFactor }
    FWx_StretchFactor: integer;

    { Storage for property Wx_ProxyBGColorString }
    FWx_ProxyBGColorString: TWxColorString;
    { Storage for property Wx_ProxyFGColorString }
    FWx_ProxyFGColorString: TWxColorString;
    FWx_Comments: TStrings;
    { Storage for property Wx_ToolTip }
    FWx_ToolTip: string;
    FImage: TImage;
    FWx_PropertyList: TStringList;
    FInvisibleBGColorString: string;
    FInvisibleFGColorString: string;
    FWx_Alignment: TWxSizerAlignment;
    FWx_BorderAlignment: TWxBorderAlignment;

    { Private methods of TWxStaticBitmap }
    { Method to set variable and property values and create objects }
    procedure AutoInitialize;
    { Method to free any objects created by AutoInitialize }
    procedure AutoDestroy;
    { Read method for property Picture }
    function GetPicture: TPicture;
    { Write method for property Picture }
    procedure SetPicture(Value: TPicture);

  protected
    { Protected fields of TWxStaticBitmap }

    { Protected methods of TWxStaticBitmap }
    procedure Click; override;
    procedure KeyPress(var Key: char); override;
    procedure Loaded; override;
    procedure Paint; override;

  public
    { Public fields and properties of TWxStaticBitmap }
    defaultBGColor: TColor;
    defaultFGColor: TColor;
    { Public methods of TWxStaticBitmap }
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
    procedure SetProxyFGColorString(Value: string);
    procedure SetProxyBGColorString(Value: string);

    function GetBorderAlignment: TWxBorderAlignment;
    procedure SetBorderAlignment(border: TWxBorderAlignment);
    function GetBorderWidth: integer;
    procedure SetBorderWidth(width: integer);
    function GetStretchFactor: integer;
    procedure SetStretchFactor(intValue: integer);


  published
    { Published properties of TWxStaticBitmap }
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
    property OnResize;
    property Picture: TPicture Read GetPicture Write SetPicture;
    property Wx_Class: string Read FWx_Class Write FWx_Class;
    property Wx_ControlOrientation: TWxControlOrientation
      Read FWx_ControlOrientation Write FWx_ControlOrientation;
    property Wx_Enabled: boolean Read FWx_Enabled Write FWx_Enabled default True;
    property Wx_GeneralStyle: TWxStdStyleSet
      Read FWx_GeneralStyle Write FWx_GeneralStyle;
    property Wx_HelpText: string Read FWx_HelpText Write FWx_HelpText;
    property Wx_Hidden: boolean Read FWx_Hidden Write FWx_Hidden default False;
    property Wx_IDName: string Read FWx_IDName Write FWx_IDName;
    property Wx_IDValue: longint Read FWx_IDValue Write FWx_IDValue;
    property Wx_ToolTip: string Read FWx_ToolTip Write FWx_ToolTip;

    property Wx_Border: integer Read GetBorderWidth Write SetBorderWidth default 5;
    property Wx_BorderAlignment: TWxBorderAlignment Read GetBorderAlignment Write SetBorderAlignment default [wxALL];
    property Wx_Alignment: TWxSizerAlignment Read FWx_Alignment Write FWx_Alignment default wxALIGN_CENTER;
    property Wx_StretchFactor: integer Read GetStretchFactor Write SetStretchFactor default 0;

    property Wx_ProxyBGColorString: TWxColorString Read FWx_ProxyBGColorString Write FWx_ProxyBGColorString;
    property Wx_ProxyFGColorString: TWxColorString Read FWx_ProxyFGColorString Write FWx_ProxyFGColorString;
    property InvisibleBGColorString: string Read FInvisibleBGColorString Write FInvisibleBGColorString;
    property InvisibleFGColorString: string Read FInvisibleFGColorString Write FInvisibleFGColorString;

    property Wx_Comments: TStrings Read FWx_Comments Write FWx_Comments;
  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxStaticBitmap with Standard as its
       default page on the Delphi component palette }
  RegisterComponents('Standard', [TWxStaticBitmap]);
end;

{ Method to set variable and property values and create objects }
procedure TWxStaticBitmap.AutoInitialize;
begin
  FImage                 := TImage.Create(Self);
  FImage.Parent          := Self;
  FWx_PropertyList       := TStringList.Create;
  FPicture               := TPicture.Create;
  FWx_Border             := 5;
  FWx_Class              := 'wxStaticBitmap';
  FWx_Hidden             := False;
  FWx_Alignment          := wxALIGN_CENTER;
  FWx_BorderAlignment    := [wxAll];
  FWx_StretchFactor      := 0;
  FWx_ProxyBGColorString := TWxColorString.Create;
  FWx_ProxyFGColorString := TWxColorString.Create;
  defaultBGColor         := self.color;
  defaultFGColor         := self.font.color;
  FWx_Comments           := TStringList.Create;

  FImage.Align  := alClient;
  FImage.Center := True;
  self.Caption  := '';
  self.Height   := 15;
  self.Width    := 40;
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxStaticBitmap.AutoDestroy;
begin
  FImage.Destroy;
  FWx_PropertyList.Destroy;
  FWx_ProxyBGColorString.Destroy;
  FWx_ProxyFGColorString.Destroy;
  FPicture.Destroy;
  FWx_Comments.Destroy;
end; { of AutoDestroy }

{ Read method for property Picture }
function TWxStaticBitmap.GetPicture: TPicture;
begin
  Result := FImage.Picture;
end;

{ Write method for property Picture }
procedure TWxStaticBitmap.SetPicture(Value: TPicture);
begin
     { Use Assign method because TPicture is an object type
       and FPicture has been created. }
  FImage.Picture.Assign(Value);

     { If changing this property affects the appearance of
       the component, call Invalidate here so the image will be
       updated. }
  { Invalidate; }

  if FImage.Picture.bitmap.handle <> 0 then
  begin
    self.Height := FImage.Picture.bitmap.Height;
    self.Width  := FImage.Picture.bitmap.Width;
  end;
end;

{ Override OnClick handler from TWxControlPanel,IWxComponentInterface }
procedure TWxStaticBitmap.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

  { Activate click behavior of parent }
  inherited Click;

     { Code to execute after click behavior
       of parent }

end;

{ Override OnKeyPress handler from TWxControlPanel,IWxComponentInterface }
procedure TWxStaticBitmap.KeyPress(var Key: char);
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

constructor TWxStaticBitmap.Create(AOwner: TComponent);
begin
  { Call the Create method of the container's parent class       }
  inherited Create(AOwner);

  { AutoInitialize sets the initial values of variables          }
  { (including subcomponent variables) and properties;           }
  { also, it creates objects for properties of standard          }
  { Delphi object types (e.g., TFont, TTimer, TPicture)          }
  { and for any variables marked as objects.                     }
  { AutoInitialize method is generated by Component Create.      }
  AutoInitialize;
  
  { Code to perform other tasks when the component is created }
  FWx_PropertyList.add('Wx_Enabled:Enabled');
  FWx_PropertyList.add('Wx_Class:Base Class');
  FWx_PropertyList.add('Wx_Hidden:Hidden');
  FWx_PropertyList.add('Wx_Default:Default');
  FWx_PropertyList.add('Wx_HelpText:Help Text');
  FWx_PropertyList.add('Wx_IDName:ID Name');
  FWx_PropertyList.add('Wx_IDValue:ID Value');
  FWx_PropertyList.add('Wx_ToolTip:Tooltip');
  FWx_PropertyList.add('Wx_Comments:Comments');
  FWx_PropertyList.Add('Wx_Validator:Validator code');
  FWx_PropertyList.add('Wx_ProxyBGColorString:Background Color');
  FWx_PropertyList.add('Wx_ProxyFGColorString:Foreground Color');

  FWx_PropertyList.add('Wx_StretchFactor:Stretch Factor');
  FWx_PropertyList.add('Wx_Alignment:Alignment');
  FWx_PropertyList.add('Wx_Border: Border');
  FWx_PropertyList.add('Wx_BorderAlignment:Borders');
  FWx_PropertyList.add('wxALL:wxALL');
  FWx_PropertyList.add('wxTOP:wxTOP');
  FWx_PropertyList.add('wxLEFT:wxLEFT');
  FWx_PropertyList.add('wxRIGHT:wxRIGHT');
  FWx_PropertyList.add('wxBOTTOM:wxBOTTOM');

  FWx_PropertyList.add('Wx_GeneralStyle:General Styles');
  FWx_PropertyList.Add('wxNO_3D:wxNO_3D');
  FWx_PropertyList.Add('wxNO_BORDER:wxNO_BORDER');
  FWx_PropertyList.Add('wxWANTS_CHARS:wxWANTS_CHARS');
  FWx_PropertyList.Add('wxCLIP_CHILDREN:wxCLIP_CHILDREN');
  FWx_PropertyList.Add('wxSIMPLE_BORDER:wxSIMPLE_BORDER');
  FWx_PropertyList.Add('wxDOUBLE_BORDER:wxDOUBLE_BORDER');
  FWx_PropertyList.Add('wxSUNKEN_BORDER:wxSUNKEN_BORDER');
  FWx_PropertyList.Add('wxRAISED_BORDER:wxRAISED_BORDER');
  FWx_PropertyList.Add('wxSTATIC_BORDER:wxSTATIC_BORDER');
  FWx_PropertyList.Add('wxTAB_TRAVERSAL:wxTAB_TRAVERSAL');
  FWx_PropertyList.Add('wxTRANSPARENT_WINDOW:wxTRANSPARENT_WINDOW');
  FWx_PropertyList.Add('wxNO_FULL_REPAINT_ON_RESIZE:wxNO_FULL_REPAINT_ON_RESIZE');
  FWx_PropertyList.Add('wxVSCROLL:wxVSCROLL');
  FWx_PropertyList.Add('wxHSCROLL:wxHSCROLL');
  
  FWx_PropertyList.add('Font:Font');
  FWx_PropertyList.add('Picture:Picture');
  FWx_PropertyList.add('Name:Name');
  FWx_PropertyList.add('Left:Left');
  FWx_PropertyList.add('Top:Top');
  FWx_PropertyList.add('Width:Width');
  FWx_PropertyList.add('Height:Height');

end;

destructor TWxStaticBitmap.Destroy;
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

function TWxStaticBitmap.GenerateEnumControlIDs: string;
begin
  Result := '';
  if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
    Result := Format('%s = %d, ', [Wx_IDName, Wx_IDValue]);
end;

function TWxStaticBitmap.GenerateControlIDs: string;
begin
  Result := '';
  if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
    Result := Format('#define %s %d ', [Wx_IDName, Wx_IDValue]);
end;

function TWxStaticBitmap.GenerateEventTableEntries(CurrClassName: string): string;
begin
  Result := '';
end;

function TWxStaticBitmap.GenerateXRCControlCreation(IndentString: string): TStringList;
begin

  Result := TStringList.Create;

  try
    Result.Add(IndentString + Format('<object class="%s" name="%s">',
      [self.Wx_Class, self.Name]));
    Result.Add(IndentString + Format('  <IDident>%s</IDident>', [self.Wx_IDName]));
    Result.Add(IndentString + Format('  <ID>%d</ID>', [self.Wx_IDValue]));
    Result.Add(IndentString + Format('  <size>%d,%d</size>', [self.Width, self.Height]));
    Result.Add(IndentString + Format('  <pos>%d,%d</pos>', [self.Left, self.Top]));

    Result.Add(IndentString + '</object>');

  except
    Result.Free;
    raise;
  end;

end;

function TWxStaticBitmap.GenerateGUIControlCreation: string;
var
  strColorStr: string;
  strStyle, parentName, strAlignment, strBitmapArrayName: string;
begin
  Result   := '';
  strStyle := GetStdStyleString(self.Wx_GeneralStyle);
  if trim(strStyle) <> '' then
    strStyle := ',' + strStyle;

  //    if (self.Parent is TForm) or (self.Parent is TWxSizerPanel) then
  //       parentName:=GetWxWidgetParent(self)
  //    else
  //       parentName:=self.Parent.name;

  parentName := GetWxWidgetParent(self);


  if self.Picture.Bitmap.handle = 0 then
    strBitmapArrayName := 'wxNullBitmap'
  else begin
    //Result := ''+'wxBitmap'
    strBitmapArrayName := self.Name + '_BITMAP';
    Result := GetCommentString(self.FWx_Comments.Text) +
      'wxBitmap ' + strBitmapArrayName + '(' + self.Name + '_XPM' + ');';
  end;
  if Result <> '' then
    Result := Result + #13 + Format(
      '%s = new %s(%s, %s, %s, wxPoint(%d,%d), wxSize(%d,%d)%s);',
      [self.Name, self.wx_Class, parentName, GetWxIDString(self.Wx_IDName,
      self.Wx_IDValue),
      strBitmapArrayName, self.Left, self.Top, self.Width, self.Height, strStyle])
  else
    Result := GetCommentString(self.FWx_Comments.Text) +
      Format('%s = new %s(%s, %s, %s, wxPoint(%d,%d), wxSize(%d,%d) %s);',
      [self.Name, self.wx_Class, parentName, GetWxIDString(self.Wx_IDName,
      self.Wx_IDValue),
      strBitmapArrayName, self.Left, self.Top, self.Width, self.Height, strStyle]);


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

  if (self.Parent is TWxSizerPanel) then
  begin
    strAlignment := SizerAlignmentToStr(Wx_Alignment) + ' | ' + BorderAlignmentToStr(Wx_BorderAlignment);
    Result := Result + #13 + Format('%s->Add(%s,%d,%s,%d);',
      [self.Parent.Name, self.Name, self.Wx_StretchFactor, strAlignment,
      self.Wx_Border]);
  end;

end;

function TWxStaticBitmap.GenerateGUIControlDeclaration: string;
begin
  Result := '';
  Result := Format('%s *%s;', [trim(Self.Wx_Class), trim(Self.Name)]);
end;

function TWxStaticBitmap.GenerateHeaderInclude: string;
begin
  Result := '';
  Result := '#include <wx/statbmp.h>';
end;

function TWxStaticBitmap.GenerateImageInclude: string;
begin
  Result := '';
  if self.Picture.Bitmap.Handle <> 0 then
    Result := '#include "' + self.Name + '_XPM.xpm"'
end;

function TWxStaticBitmap.GetEventList: TStringList;
begin
  Result := nil;
end;

function TWxStaticBitmap.GetIDName: string;
begin
  Result := wx_IDName;
end;

function TWxStaticBitmap.GetIDValue: longint;
begin
  Result := wx_IDValue;
end;

function TWxStaticBitmap.GetParameterFromEventName(EventName: string): string;
begin

end;

function TWxStaticBitmap.GetPropertyList: TStringList;
begin
  Result := FWx_PropertyList;
end;

function TWxStaticBitmap.GetStretchFactor: integer;
begin
  Result := FWx_StretchFactor;
end;

function TWxStaticBitmap.GetTypeFromEventName(EventName: string): string;
begin

end;

function TWxStaticBitmap.GetBorderAlignment: TWxBorderAlignment;
begin
  Result := FWx_BorderAlignment;
end;

procedure TWxStaticBitmap.SetBorderAlignment(border: TWxBorderAlignment);
begin
  FWx_BorderAlignment := border;
end;

function TWxStaticBitmap.GetBorderWidth: integer;
begin
  Result := FWx_Border;
end;

procedure TWxStaticBitmap.SetBorderWidth(width: integer);
begin
  FWx_Border := width;
end;

function TWxStaticBitmap.GetWxClassName: string;
begin
  if trim(wx_Class) = '' then
    wx_Class := 'wxStaticBitmap';
  Result := wx_Class;
end;

procedure TWxStaticBitmap.Loaded;
begin
  inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

procedure TWxStaticBitmap.Paint;
begin
     { Make this component look like its parent component by calling
       its parent's Paint method. }
  inherited Paint;

     { To change the appearance of the component, use the methods
       supplied by the component's Canvas property (which is of
       type TCanvas).  For example, }

  { Canvas.Rectangle(0, 0, Width, Height); }
  self.Caption   := '';
  FImage.stretch := True;
end;

procedure TWxStaticBitmap.SaveControlOrientation(
  ControlOrientation: TWxControlOrientation);
begin
  wx_ControlOrientation := ControlOrientation;
end;

procedure TWxStaticBitmap.SetIDName(IDName: string);
begin
  wx_IDName := IDName;
end;

procedure TWxStaticBitmap.SetIDValue(IDValue: longint);
begin
  Wx_IDValue := IDVAlue;
end;

procedure TWxStaticBitmap.SetStretchFactor(intValue: integer);
begin
  FWx_StretchFactor := intValue;
end;

procedure TWxStaticBitmap.SetWxClassName(wxClassName: string);
begin
  wx_Class := wxClassName;
end;

function TWxStaticBitmap.GetFGColor: string;
begin
  Result := FInvisibleFGColorString;
end;

procedure TWxStaticBitmap.SetFGColor(strValue: string);
begin
  FInvisibleFGColorString := strValue;
  if IsDefaultColorStr(strValue) then
    self.Font.Color := defaultFGColor
  else
    self.Font.Color := GetColorFromString(strValue);
end;

function TWxStaticBitmap.GetBGColor: string;
begin
  Result := FInvisibleBGColorString;
end;

procedure TWxStaticBitmap.SetBGColor(strValue: string);
begin
  FInvisibleBGColorString := strValue;
  if IsDefaultColorStr(strValue) then
    self.Color := defaultBGColor
  else
    self.Color := GetColorFromString(strValue);
end;

procedure TWxStaticBitmap.SetProxyFGColorString(Value: string);
begin
  FInvisibleFGColorString := Value;
  self.Color := GetColorFromString(Value);
end;

procedure TWxStaticBitmap.SetProxyBGColorString(Value: string);
begin
  FInvisibleBGColorString := Value;
  self.Font.Color := GetColorFromString(Value);
end;

end.