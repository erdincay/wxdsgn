 { ****************************************************************** }
 {                                                                    }
{ $Id$                                                               }
 {                                                                    }
 {   VCL component TWxMediaCtrl                                    }
 {                                                                    }
 {   Code generated by Component Create for Delphi                    }
 {                                                                    }
 {   Generated from source file WxMediaCtrl2.cd }
 {   on 10 Oct 2004 at 0:51                                           }
 {                                                                    }
 {   Copyright � 2004  by Guru Kathiresan                             }
 {                                                                    }
 { ****************************************************************** }

unit WxMediaCtrl;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls,
  Forms, Graphics, ExtCtrls, WxUtils, Wxcontrolpanel, WxSizerPanel;

type
  TWxMediaCtrl = class(TWxControlPanel, IWxComponentInterface)
  private
    FEVT_MEDIA_STOP:String;
    FEVT_MEDIA_LOADED:String;
    FEVT_MEDIA_PLAY:String;
    FEVT_MEDIA_PAUSE:String;
    FEVT_MEDIA_FINISHED:String;

    { Private fields of TWxMediaCtrl }
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
    
    FWx_Control:TWxMediaCtrlControl;
    FWx_FileName:string;

    { Storage for property Wx_ProxyBGColorString }
    FWx_ProxyBGColorString: TWxColorString;
    { Storage for property Wx_ProxyFGColorString }
    FWx_ProxyFGColorString: TWxColorString;
    FWx_Comments: TStrings;
    { Storage for property Wx_ToolTip }
    FWx_ToolTip: string;
    FImage: TImage;
    FWx_PropertyList: TStringList;
    FWx_EventList: TStringList;
    FInvisibleBGColorString: string;
    FInvisibleFGColorString: string;
    FWx_Alignment: TWxSizerAlignmentSet;
    FWx_BorderAlignment: TWxBorderAlignment;

    { Private methods of TWxMediaCtrl }
    { Method to set variable and property values and create objects }
    procedure AutoInitialize;
    { Method to free any objects created by AutoInitialize }
    procedure AutoDestroy;
    { Read method for property Picture }
    function GetPicture: TPicture;
    { Write method for property Picture }
    procedure SetPicture(Value: TPicture);

  protected
    { Protected fields of TWxMediaCtrl }

    { Protected methods of TWxMediaCtrl }
    procedure Click; override;
    procedure KeyPress(var Key: char); override;
    procedure Loaded; override;
    procedure Paint; override;

  public
    { Public fields and properties of TWxMediaCtrl }
    defaultBGColor: TColor;
    defaultFGColor: TColor;
    { Public methods of TWxMediaCtrl }
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

    function GetGenericColor(strVariableName:String): string;
    procedure SetGenericColor(strVariableName,strValue: string);

    procedure SetProxyFGColorString(Value: string);
    procedure SetProxyBGColorString(Value: string);

    function GetBorderAlignment: TWxBorderAlignment;
    procedure SetBorderAlignment(border: TWxBorderAlignment);
    function GetBorderWidth: integer;
    procedure SetBorderWidth(width: integer);
    function GetStretchFactor: integer;
    procedure SetStretchFactor(intValue: integer);


  published
    { Published properties of TWxMediaCtrl }
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
    property Wx_ControlOrientation: TWxControlOrientation Read FWx_ControlOrientation Write FWx_ControlOrientation;
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
    property Wx_Alignment: TWxSizerAlignmentSet Read FWx_Alignment Write FWx_Alignment default [wxALIGN_CENTER];
    property Wx_StretchFactor: integer Read GetStretchFactor Write SetStretchFactor default 0;

    property Wx_Comments: TStrings Read FWx_Comments Write FWx_Comments;
    property Wx_Control: TWxMediaCtrlControl Read FWx_Control Write FWx_Control;
    property Wx_FileName: string Read FWx_FileName Write FWx_FileName;

    property EVT_MEDIA_STOP:String Read FEVT_MEDIA_STOP Write FEVT_MEDIA_STOP;
    property EVT_MEDIA_LOADED:String Read FEVT_MEDIA_LOADED Write FEVT_MEDIA_LOADED;
    property EVT_MEDIA_PLAY:String Read FEVT_MEDIA_PLAY Write FEVT_MEDIA_PLAY;
    property EVT_MEDIA_PAUSE:String Read FEVT_MEDIA_PAUSE Write FEVT_MEDIA_PAUSE;
    property EVT_MEDIA_FINISHED:String Read FEVT_MEDIA_FINISHED Write FEVT_MEDIA_FINISHED;

  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxMediaCtrl with Standard as its
       default page on the Delphi component palette }
  RegisterComponents('Standard', [TWxMediaCtrl]);
end;

{ Method to set variable and property values and create objects }
procedure TWxMediaCtrl.AutoInitialize;
begin
  FImage                 := TImage.Create(Self);
  FImage.Parent          := Self;
  FWx_PropertyList       := TStringList.Create;
  FWx_EventList          := TStringList.Create;
  FPicture               := TPicture.Create;
  FWx_Border             := 5;
  FWx_Class              := 'wxMediaCtrl';
  FWx_Hidden             := False;
  FWx_BorderAlignment    := [wxAll];
  FWx_Alignment          := [wxALIGN_CENTER];
  FWx_StretchFactor      := 0;
  FWx_Control:=wxMEDIACTRLPLAYERCONTROLS_NONE;
  FWx_ProxyBGColorString := TWxColorString.Create;
  FWx_ProxyFGColorString := TWxColorString.Create;
  defaultBGColor         := self.color;
  defaultFGColor         := self.font.color;
  FWx_Comments           := TStringList.Create;

  FImage.Align  := alClient	;
  FImage.Center := True;
  FImage.Stretch:=false ;
  FImage.Picture.Bitmap.Handle :=  LoadBitmap(hInstance, 'MEDIAPLAYERIMG');
  self.Caption  := '';
  self.Height   := 150;
  self.Width    := 150;
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxMediaCtrl.AutoDestroy;
begin
  FImage.Destroy;
  FWx_PropertyList.Destroy;
  FWx_EventList.Destroy;
  FWx_ProxyBGColorString.Destroy;
  FWx_ProxyFGColorString.Destroy;
  FPicture.Destroy;
  FWx_Comments.Destroy;
end; { of AutoDestroy }

{ Read method for property Picture }
function TWxMediaCtrl.GetPicture: TPicture;
begin
  Result := FImage.Picture;
end;

{ Write method for property Picture }
procedure TWxMediaCtrl.SetPicture(Value: TPicture);
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
procedure TWxMediaCtrl.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

  { Activate click behavior of parent }
  inherited Click;

     { Code to execute after click behavior
       of parent }

end;

{ Override OnKeyPress handler from TWxControlPanel,IWxComponentInterface }
procedure TWxMediaCtrl.KeyPress(var Key: char);
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

constructor TWxMediaCtrl.Create(AOwner: TComponent);
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
  PopulateGenericProperties(FWx_PropertyList);

  FWx_PropertyList.add('Wx_FileName:File Name');
  FWx_PropertyList.add('Wx_Controls:Controls');
  FWx_PropertyList.add('wxMEDIACTRLPLAYERCONTROLS_NONE:wxMEDIACTRLPLAYERCONTROLS_NONE');
  FWx_PropertyList.add('wxMEDIACTRLPLAYERCONTROLS_STEP:wxMEDIACTRLPLAYERCONTROLS_STEP');
  FWx_PropertyList.add('wxMEDIACTRLPLAYERCONTROLS_VOLUME:wxMEDIACTRLPLAYERCONTROLS_VOLUME');

  FWx_EventList.add('EVT_MEDIA_STOP:OnMediaStop');
  FWx_EventList.add('EVT_MEDIA_LOADED:OnMediaLoaded');
  FWx_EventList.add('EVT_MEDIA_PLAY:OnMediaPlay');
  FWx_EventList.add('EVT_MEDIA_PAUSE:OnMediaPause');
  FWx_EventList.add('EVT_MEDIA_FINISHED:OnMediaFinished');

end;

destructor TWxMediaCtrl.Destroy;
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

function TWxMediaCtrl.GenerateEnumControlIDs: string;
begin
  Result := '';
  if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
    Result := Format('%s = %d, ', [Wx_IDName, Wx_IDValue]);
end;

function TWxMediaCtrl.GenerateControlIDs: string;
begin
  Result := '';
  if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
    Result := Format('#define %s %d ', [Wx_IDName, Wx_IDValue]);
end;

function TWxMediaCtrl.GenerateEventTableEntries(CurrClassName: string): string;
begin
  Result := '';
  if trim(EVT_MEDIA_STOP) <> '' then
    Result := Result + #13 + Format('EVT_MEDIA_STOP(%s,%s::%s)',
      [WX_IDName, CurrClassName, EVT_MEDIA_STOP]) + '';

  if trim(EVT_MEDIA_LOADED) <> '' then
    Result := Result + #13 + Format('EVT_MEDIA_LOADED(%s,%s::%s)',
      [WX_IDName, CurrClassName, EVT_MEDIA_LOADED]) + '';

  if trim(EVT_MEDIA_PLAY) <> '' then
    Result := Result + #13 + Format('EVT_MEDIA_PLAY(%s,%s::%s)',
      [WX_IDName, CurrClassName, EVT_MEDIA_PLAY]) + '';

  if trim(EVT_MEDIA_PAUSE) <> '' then
    Result := Result + #13 + Format('EVT_MEDIA_PAUSE(%s,%s::%s)',
      [WX_IDName, CurrClassName, EVT_MEDIA_PAUSE]) + '';

  if trim(EVT_MEDIA_FINISHED) <> '' then
    Result := Result + #13 + Format('EVT_MEDIA_FINISHED(%s,%s::%s)',
      [WX_IDName, CurrClassName, EVT_MEDIA_FINISHED]) + '';
end;

function TWxMediaCtrl.GenerateXRCControlCreation(IndentString: string): TStringList;
var
flag :string;
begin

  Result := TStringList.Create;
  if ((trim(SizerAlignmentToStr(Wx_Alignment))<>'') and (trim(BorderAlignmentToStr(Wx_BorderAlignment))<>'')) then
    flag := SizerAlignmentToStr(Wx_Alignment) + ' | ' + BorderAlignmentToStr(Wx_BorderAlignment)
  else
    if (trim(SizerAlignmentToStr(Wx_Alignment))<>'') then
      flag := SizerAlignmentToStr(Wx_Alignment)
    else
      if (trim(BorderAlignmentToStr(Wx_BorderAlignment))<>'') then
        flag := BorderAlignmentToStr(Wx_BorderAlignment);


  try
    if not (self.Parent is TWxSizerPanel) then
    begin
      Result.Add(IndentString + '<object class="sizeritem">');
      Result.Add(IndentString + Format('  <flag>%s</flag>',[flag]));
      Result.Add(IndentString + Format('  <border>%s</border>',[self.Wx_Border]));
    end;
    Result.Add(IndentString + Format('<object class="%s" name="%s">',
      [self.Wx_Class, self.Name]));
    Result.Add(IndentString + Format('  <IDident>%s</IDident>', [self.Wx_IDName]));
    Result.Add(IndentString + Format('  <ID>%d</ID>', [self.Wx_IDValue]));
    Result.Add(IndentString + Format('  <size>%d,%d</size>', [self.Width, self.Height]));
    Result.Add(IndentString + Format('  <pos>%d,%d</pos>', [self.Left, self.Top]));

    Result.Add(IndentString + '</object>');
    if not (self.Parent is TWxSizerPanel) then
      Result.Add(IndentString + '</object>');

  except
    Result.Free;
    raise;
  end;

end;

function TWxMediaCtrl.GenerateGUIControlCreation: string;
var
  strColorStr: string;
  strControlString:string;
  strStyle, parentName, strAlignment: string;
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

  if Result <> '' then
    Result := Result + #13 + Format(
      '%s = new %s(%s, %s, %s, wxPoint(%d,%d), wxSize(%d,%d)%s);',
      [self.Name, self.wx_Class, parentName, GetWxIDString(self.Wx_IDName,
      self.Wx_IDValue),GetCppString(Wx_FileName),
      self.Left, self.Top, self.Width, self.Height, strStyle])
  else
    Result := GetCommentString(self.FWx_Comments.Text) +
      Format('%s = new %s(%s, %s,%s, wxPoint(%d,%d), wxSize(%d,%d) %s);',
      [self.Name, self.wx_Class, parentName, GetWxIDString(self.Wx_IDName,
      self.Wx_IDValue),GetCppString(Wx_FileName),
      self.Left, self.Top, self.Width, self.Height, strStyle]);


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

  strColorStr := GetWxFontDeclaration(self.Font);
  if strColorStr <> '' then
    Result := Result + #13 + Format('%s->SetFont(%s);', [self.Name, strColorStr]);

  strControlString := GetMediaCtrlStyle(wx_Control);
  if trim(strControlString) <> '' then
      Result := Result + #13 + Format('%s->ShowPlayerControls(%s);', [self.Name, strControlString]);


  if (self.Parent is TWxSizerPanel) and not (XRCGEN) then
  begin
    strAlignment := SizerAlignmentToStr(Wx_Alignment) + ' | ' + BorderAlignmentToStr(Wx_BorderAlignment);
    Result := Result + #13 + Format('%s->Add(%s,%d,%s,%d);',
      [self.Parent.Name, self.Name, self.Wx_StretchFactor, strAlignment,
      self.Wx_Border]);
  end;

end;

function TWxMediaCtrl.GenerateGUIControlDeclaration: string;
begin
  Result := '';
  Result := Format('%s *%s;', [trim(Self.Wx_Class), trim(Self.Name)]);
end;

function TWxMediaCtrl.GenerateHeaderInclude: string;
begin
  Result := '';
  Result := '#include <wx/mediactrl.h>';
end;

function TWxMediaCtrl.GenerateImageInclude: string;
begin
  Result := '';
end;

function TWxMediaCtrl.GetEventList: TStringList;
begin
  Result := FWx_EventList;
end;

function TWxMediaCtrl.GetIDName: string;
begin
  Result := wx_IDName;
end;

function TWxMediaCtrl.GetIDValue: longint;
begin
  Result := wx_IDValue;
end;

function TWxMediaCtrl.GetParameterFromEventName(EventName: string): string;
begin
  Result := '';
 if (EventName = 'EVT_MEDIA_STOP') or (EventName = 'EVT_MEDIA_LOADED') or (EventName = 'EVT_MEDIA_PLAY') or
 (EventName = 'EVT_MEDIA_PAUSE') or (EventName = 'EVT_MEDIA_FINISHED') then
  begin
    Result := 'wxMediaEvent& event';
    exit;
  end;
end;

function TWxMediaCtrl.GetPropertyList: TStringList;
begin
  Result := FWx_PropertyList;
end;

function TWxMediaCtrl.GetStretchFactor: integer;
begin
  Result := FWx_StretchFactor;
end;

function TWxMediaCtrl.GetTypeFromEventName(EventName: string): string;
begin

end;

function TWxMediaCtrl.GetBorderAlignment: TWxBorderAlignment;
begin
  Result := FWx_BorderAlignment;
end;

procedure TWxMediaCtrl.SetBorderAlignment(border: TWxBorderAlignment);
begin
  FWx_BorderAlignment := border;
end;

function TWxMediaCtrl.GetBorderWidth: integer;
begin
  Result := FWx_Border;
end;

procedure TWxMediaCtrl.SetBorderWidth(width: integer);
begin
  FWx_Border := width;
end;

function TWxMediaCtrl.GetWxClassName: string;
begin
  if trim(wx_Class) = '' then
    wx_Class := 'wxMediaCtrl';
  Result := wx_Class;
end;

procedure TWxMediaCtrl.Loaded;
begin
  inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

procedure TWxMediaCtrl.Paint;
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

procedure TWxMediaCtrl.SaveControlOrientation(
  ControlOrientation: TWxControlOrientation);
begin
  wx_ControlOrientation := ControlOrientation;
end;

procedure TWxMediaCtrl.SetIDName(IDName: string);
begin
  wx_IDName := IDName;
end;

procedure TWxMediaCtrl.SetIDValue(IDValue: longint);
begin
  Wx_IDValue := IDVAlue;
end;

procedure TWxMediaCtrl.SetStretchFactor(intValue: integer);
begin
  FWx_StretchFactor := intValue;
end;

procedure TWxMediaCtrl.SetWxClassName(wxClassName: string);
begin
  wx_Class := wxClassName;
end;

function TWxMediaCtrl.GetGenericColor(strVariableName:String): string;
begin

end;
procedure TWxMediaCtrl.SetGenericColor(strVariableName,strValue: string);
begin

end;

function TWxMediaCtrl.GetFGColor: string;
begin
  Result := FInvisibleFGColorString;
end;

procedure TWxMediaCtrl.SetFGColor(strValue: string);
begin
  FInvisibleFGColorString := strValue;
  if IsDefaultColorStr(strValue) then
    self.Font.Color := defaultFGColor
  else
    self.Font.Color := GetColorFromString(strValue);
end;

function TWxMediaCtrl.GetBGColor: string;
begin
  Result := FInvisibleBGColorString;
end;

procedure TWxMediaCtrl.SetBGColor(strValue: string);
begin
  FInvisibleBGColorString := strValue;
  if IsDefaultColorStr(strValue) then
    self.Color := defaultBGColor
  else
    self.Color := GetColorFromString(strValue);
end;

procedure TWxMediaCtrl.SetProxyFGColorString(Value: string);
begin
  FInvisibleFGColorString := Value;
  self.Color := GetColorFromString(Value);
end;

procedure TWxMediaCtrl.SetProxyBGColorString(Value: string);
begin
  FInvisibleBGColorString := Value;
  self.Font.Color := GetColorFromString(Value);
end;

end.
