// $Id$


unit WxDirDialog;

interface

uses
  Windows, Messages, SysUtils, Classes, wxUtils, WxNonVisibleBaseComponent;

type
  TWxDirDialog = class(TWxNonVisibleBaseComponent, IWxComponentInterface)
  private
    { Private declarations }
    FWx_Class: string;
    FWx_Comments: TStrings;
    FWx_PropertyList: TStringList;
    FWx_Message: string;
    FWx_DefaultDir: string;
    FWx_DirDialogStyle: TWxDirDialogStyleSet;
    procedure AutoInitialize;
    procedure AutoDestroy;

  protected

  public
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
  published
    { Published declarations }
    property Wx_Class: string Read FWx_Class Write FWx_Class;
    property Wx_Message: string Read FWx_Message Write FWx_Message;
    property Wx_DefaultDir: string Read FWx_DefaultDir Write FWx_DefaultDir;
    property Wx_DirDialogStyle: TWxDirDialogStyleSet
      Read FWx_DirDialogStyle Write FWx_DirDialogStyle;
    property Wx_Comments: TStrings Read FWx_Comments Write FWx_Comments;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('wxWidgets', [TWxDirDialog]);
end;

{ Method to set variable and property values and create objects }
procedure TWxDirDialog.AutoInitialize;
begin
  FWx_PropertyList := TStringList.Create;
  FWx_Class    := 'wxDirDialog';
  FWx_Message  := 'Choose a directory';
  Glyph.Handle := LoadBitmap(hInstance, 'TWxDirDialog');
  FWx_Comments := TStringList.Create;

end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxDirDialog.AutoDestroy;
begin
  FWx_PropertyList.Destroy;
  FWx_Comments.Destroy;
  Glyph.Assign(nil);
end; { of AutoDestroy }

constructor TWxDirDialog.Create(AOwner: TComponent);
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
  { Code to perform other tasks when the component is created }
  FWx_PropertyList.add('Wx_DirDialogStyle:Dir Dialog Style');
  FWx_PropertyList.add('wxDD_NEW_DIR_BUTTON:wxDD_NEW_DIR_BUTTON');

  FWx_PropertyList.add('Wx_DefaultDir:Default Dir');
  FWx_PropertyList.add('Wx_Message:Message');
  FWx_PropertyList.add('Name:Name');
  FWx_PropertyList.add('Wx_Class:Base Class');
  FWx_PropertyList.add('Wx_Comments:Comments');

end;

destructor TWxDirDialog.Destroy;
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

function TWxDirDialog.GenerateControlIDs: string;
begin
  Result := '';
end;


function TWxDirDialog.GenerateEnumControlIDs: string;
begin
  Result := '';
end;

function TWxDirDialog.GenerateEventTableEntries(CurrClassName: string): string;
begin
  Result := '';
end;

function TWxDirDialog.GenerateXRCControlCreation(IndentString: string): TStringList;
begin

  Result := TStringList.Create;

  try
    Result.Add(IndentString + Format('<object class="%s" name="%s">',
      [self.Wx_Class, self.Name]));
    Result.Add(IndentString + '</object>');
  except
    Result.Free;
    raise;
  end;

end;

function TWxDirDialog.GenerateGUIControlCreation: string;
var
  strType, strStyle: string;
begin
  Result   := '';
  strStyle := GetDirDialogStyleString(self.Wx_DirDialogStyle);
  Result   := GetCommentString(self.FWx_Comments.Text) +
    Format('%s =  new %s(this, %s, %s%s);', [self.Name, self.wx_Class,
    GetCppString(wx_Message), GetCppString(wx_DefaultDir), strStyle]);
end;

function TWxDirDialog.GenerateGUIControlDeclaration: string;
begin
  Result := '';
  Result := Format('%s *%s;', [trim(Self.Wx_Class), trim(Self.Name)]);
end;

function TWxDirDialog.GenerateHeaderInclude: string;
begin
  Result := '';
  Result := '#include <wx/dirdlg.h>';
end;

function TWxDirDialog.GenerateImageInclude: string;
begin

end;

function TWxDirDialog.GetEventList: TStringList;
begin
  Result := nil;
end;

function TWxDirDialog.GetIDName: string;
begin

end;

function TWxDirDialog.GetIDValue: longint;
begin
  Result := 0;
end;

function TWxDirDialog.GetParameterFromEventName(EventName: string): string;
begin

end;

function TWxDirDialog.GetStretchFactor: integer;
begin

end;

function TWxDirDialog.GetPropertyList: TStringList;
begin
  Result := FWx_PropertyList;
end;

function TWxDirDialog.GetTypeFromEventName(EventName: string): string;
begin

end;

function TWxDirDialog.GetWxClassName: string;
begin
  if trim(wx_Class) = '' then
    wx_Class := 'wxDirDialog';
  Result := wx_Class;
end;

procedure TWxDirDialog.SaveControlOrientation(ControlOrientation: TWxControlOrientation);
begin

end;

procedure TWxDirDialog.SetIDName(IDName: string);
begin

end;

procedure TWxDirDialog.SetIDValue(IDValue: longint);
begin

end;

procedure TWxDirDialog.SetStretchFactor(intValue: integer);
begin
end;

procedure TWxDirDialog.SetWxClassName(wxClassName: string);
begin
  wx_Class := wxClassName;
end;

function TWxDirDialog.GetFGColor: string;
begin

end;

procedure TWxDirDialog.SetFGColor(strValue: string);
begin
end;

function TWxDirDialog.GetBGColor: string;
begin
end;

procedure TWxDirDialog.SetBGColor(strValue: string);
begin
end;

procedure TWxDirDialog.SetProxyFGColorString(Value: string);
begin
end;

procedure TWxDirDialog.SetProxyBGColorString(Value: string);
begin
end;

end.
 