// $Id: WxOpenFileDialog.pas 936 2007-05-15 03:47:39Z gururamnath $
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

unit WxOpenFileDialog;

interface

uses
  Windows, Messages, SysUtils, Classes, wxUtils, WxNonVisibleBaseComponent;

type
  TWxOpenFileDialog = class(TWxNonVisibleBaseComponent, IWxComponentInterface)
  private
    { Private declarations }
    FWx_Class: string;
    FWx_PropertyList: TStringList;
    FWx_Message: string;
    FWx_Extensions: string;
    FWx_DefaultFile: string;
    FWx_DefaultDir: string;
    FWx_DialogStyle: TWxFileDialogStyleSet;
    FWx_Comments: TStrings;


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
    { Published declarations }
    property Wx_Class: string Read FWx_Class Write FWx_Class;
    property Wx_Message: string Read FWx_Message Write FWx_Message;
    property Wx_Extensions: string Read FWx_Extensions Write FWx_Extensions;
    property Wx_DefaultFile: string Read FWx_DefaultFile Write FWx_DefaultFile;
    property Wx_DefaultDir: string Read FWx_DefaultDir Write FWx_DefaultDir;
    property Wx_DialogStyle: TWxFileDialogStyleSet
      Read FWx_DialogStyle Write FWx_DialogStyle;
    property Wx_Comments: TStrings Read FWx_Comments Write FWx_Comments;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('wxWidgets', [TWxOpenFileDialog]);
end;

{ Method to set variable and property values and create objects }
procedure TWxOpenFileDialog.AutoInitialize;
begin
  FWx_PropertyList := TStringList.Create;
  FWx_Class    := 'wxFileDialog';
  Glyph.Handle := LoadBitmap(hInstance, 'TWXOPENFILEDIALOG');
  self.FWx_Extensions := '*.*';
  self.wx_Message := 'Choose a file';
  FWx_Comments := TStringList.Create;

end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxOpenFileDialog.AutoDestroy;
begin
  FWx_PropertyList.Destroy;
  FWx_Comments.Destroy;
  Glyph.Assign(nil);
end; { of AutoDestroy }

constructor TWxOpenFileDialog.Create(AOwner: TComponent);
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
  FWx_PropertyList.add('Wx_DialogStyle:File Dialog Style');

  FWx_PropertyList.add('wxHIDE_READONLY:wxHIDE_READONLY');
  FWx_PropertyList.add('wxMULTIPLE:wxMULTIPLE');
  FWx_PropertyList.add('wxCHANGE_DIR:wxCHANGE_DIR');
  FWx_PropertyList.add('wxFILE_MUST_EXIST:wxFILE_MUST_EXIST');

  FWx_PropertyList.add('Wx_DefaultDir:Default Dir');
  FWx_PropertyList.add('Wx_DefaultFile:Default File');
  FWx_PropertyList.add('Wx_Extensions:Extensions');
  FWx_PropertyList.add('Wx_Message:Message');
  FWx_PropertyList.add('Name:Name');
  FWx_PropertyList.add('Wx_Class:Base Class');
  FWx_PropertyList.add('Wx_Comments:Comments');

end;

destructor TWxOpenFileDialog.Destroy;
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

function TWxOpenFileDialog.GenerateControlIDs: string;
begin
  Result := '';
end;

function TWxOpenFileDialog.GenerateEnumControlIDs: string;
begin
  Result := '';
end;

function TWxOpenFileDialog.GenerateEventTableEntries(CurrClassName: string): string;
begin
  Result := '';
end;

function TWxOpenFileDialog.GenerateXRCControlCreation(IndentString: string): TStringList;
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

function TWxOpenFileDialog.GenerateGUIControlCreation: string;
var
  strType, strStyle: string;
begin
  Result   := '';
  strType  := 'wxOPEN';
  strStyle := GetFileDialogStyleString(self.Wx_DialogStyle);

  Result := GetCommentString(self.FWx_Comments.Text) +
    Format('%s =  new %s(this, %s, %s, %s, %s, %s);',
    [self.Name, self.wx_Class, GetCppString(wx_Message), GetCppString(
    wx_DefaultDir), GetCppString(wx_DefaultFile), GetCppString(wx_Extensions), strType + strStyle]);
end;

function TWxOpenFileDialog.GenerateGUIControlDeclaration: string;
begin
  Result := '';
  Result := Format('%s *%s;', [trim(Self.Wx_Class), trim(Self.Name)]);
end;

function TWxOpenFileDialog.GenerateHeaderInclude: string;
begin
  Result := '';
  Result := '#include <wx/filedlg.h>';
end;

function TWxOpenFileDialog.GenerateImageInclude: string;
begin

end;

function TWxOpenFileDialog.GetEventList: TStringList;
begin
  Result := nil;
end;

function TWxOpenFileDialog.GetIDName: string;
begin

end;

function TWxOpenFileDialog.GetIDValue: longint;
begin
  Result := 0;
end;

function TWxOpenFileDialog.GetParameterFromEventName(EventName: string): string;
begin

end;

function TWxOpenFileDialog.GetStretchFactor: integer;
begin
    Result := 1;
end;

function TWxOpenFileDialog.GetPropertyList: TStringList;
begin
  Result := FWx_PropertyList;
end;

function TWxOpenFileDialog.GetBorderAlignment: TWxBorderAlignment;
begin
  Result := [];
end;

procedure TWxOpenFileDialog.SetBorderAlignment(border: TWxBorderAlignment);
begin
end;

function TWxOpenFileDialog.GetBorderWidth: integer;
begin
  Result := 0;
end;

procedure TWxOpenFileDialog.SetBorderWidth(width: integer);
begin
end;

function TWxOpenFileDialog.GetTypeFromEventName(EventName: string): string;
begin

end;

function TWxOpenFileDialog.GetWxClassName: string;
begin
  if trim(wx_Class) = '' then
    wx_Class := 'wxFileDialog';
  Result := wx_Class;
end;

procedure TWxOpenFileDialog.SaveControlOrientation(
  ControlOrientation: TWxControlOrientation);
begin

end;

procedure TWxOpenFileDialog.SetIDName(IDName: string);
begin

end;

procedure TWxOpenFileDialog.SetIDValue(IDValue: longint);
begin

end;

procedure TWxOpenFileDialog.SetStretchFactor(intValue: integer);
begin
end;

procedure TWxOpenFileDialog.SetWxClassName(wxClassName: string);
begin
  wx_Class := wxClassName;
end;

function TWxOpenFileDialog.GetGenericColor(strVariableName:String): string;
begin

end;
procedure TWxOpenFileDialog.SetGenericColor(strVariableName,strValue: string);
begin

end;


function TWxOpenFileDialog.GetFGColor: string;
begin

end;

procedure TWxOpenFileDialog.SetFGColor(strValue: string);
begin
end;

function TWxOpenFileDialog.GetBGColor: string;
begin
end;

procedure TWxOpenFileDialog.SetBGColor(strValue: string);
begin
end;

procedure TWxOpenFileDialog.SetProxyFGColorString(Value: string);
begin
end;

procedure TWxOpenFileDialog.SetProxyBGColorString(Value: string);
begin
end;

end.
 