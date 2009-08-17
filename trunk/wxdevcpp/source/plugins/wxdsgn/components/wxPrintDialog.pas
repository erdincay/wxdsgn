// $Id: wxPrintDialog.pas 936 2007-05-15 03:47:39Z gururamnath $
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


unit wxPrintDialog;

interface

uses
  Windows, Messages, SysUtils, Classes, wxUtils, WxNonVisibleBaseComponent;

type
  TWxPrintDialog = class(TWxNonVisibleBaseComponent, IWxComponentInterface)
  private
    { Private declarations }
    FWx_Class: string;
    FWx_PropertyList: TStringList;
    FWx_FromPage: integer;
    FWx_MaxPage: integer;
    FWx_MinPage: integer;
    FWx_NumberOfCopies: integer;
    FWx_PrintToFile: boolean;
    FWx_Selection: boolean;
    FWx_ToPage: integer;
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
    function GetIDValue: integer;
    function GetParameterFromEventName(EventName: string): string;
    function GetPropertyList: TStringList;
    function GetTypeFromEventName(EventName: string): string;
    function GetWxClassName: string;
    procedure SaveControlOrientation(ControlOrientation: TWxControlOrientation);
    procedure SetIDName(IDName: string);
    procedure SetIDValue(IDValue: integer);
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
    property Wx_FromPage: integer Read FWx_FromPage Write FWx_FromPage;
    property Wx_MaxPage: integer Read FWx_MaxPage Write FWx_MaxPage;
    property Wx_MinPage: integer Read FWx_MinPage Write FWx_MinPage;
    property Wx_NumberOfCopies: integer Read FWx_NumberOfCopies
      Write FWx_NumberOfCopies;
    property Wx_PrintToFile: boolean Read FWx_PrintToFile Write FWx_PrintToFile;
    property Wx_Selection: boolean Read FWx_Selection Write FWx_Selection;
    property Wx_ToPage: integer Read FWx_ToPage Write FWx_ToPage;
    property Wx_Comments: TStrings Read FWx_Comments Write FWx_Comments;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('wxWidgets', [TWxPrintDialog]);
end;

{ Method to set variable and property values and create objects }
procedure TWxPrintDialog.AutoInitialize;
begin
  FWx_PropertyList := TStringList.Create;
  FWx_Class    := 'wxPrintDialog';
  FWx_Comments := TStringList.Create;
  Glyph.Handle := LoadBitmap(hInstance, 'TWxPrintDialog');
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxPrintDialog.AutoDestroy;
begin
  FWx_PropertyList.Destroy;
  FWx_Comments.Destroy;
  Glyph.Assign(nil);
end; { of AutoDestroy }

constructor TWxPrintDialog.Create(AOwner: TComponent);
begin
  { Call the Create method of the container's parent class       }
  inherited Create(AOwner);

  { AutoInitialize method is generated by Component Create.      }
  AutoInitialize;

  { Code to perform other tasks when the component is created }
  { Code to perform other tasks when the component is created }
  FWx_PropertyList.add('Name:Name');
  FWx_PropertyList.add('Wx_Class:Base Class');
  FWx_PropertyList.add('Wx_FromPage:From Page');
  FWx_PropertyList.add('Wx_MaxPage:Max Page');
  FWx_PropertyList.add('Wx_MinPage:Min Page');
  FWx_PropertyList.add('Wx_NumberOfCopies:NumberOfCopies');
  FWx_PropertyList.add('Wx_PrintToFile:PrintToFile');
  FWx_PropertyList.add('Wx_Selection:Selection');
  FWx_PropertyList.add('Wx_ToPage:To Page');
  FWx_PropertyList.add('Wx_Comments:Comments');
end;

destructor TWxPrintDialog.Destroy;
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

function TWxPrintDialog.GenerateControlIDs: string;
begin
  Result := '';
end;

function TWxPrintDialog.GenerateEnumControlIDs: string;
begin
  Result := '';
end;

function TWxPrintDialog.GenerateEventTableEntries(CurrClassName: string): string;
begin
  Result := '';
end;

function TWxPrintDialog.GenerateXRCControlCreation(IndentString: string): TStringList;
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

function TWxPrintDialog.GenerateGUIControlCreation: string;
begin

  Result := '';
  Result := GetCommentString(self.FWx_Comments.Text) +
    self.Name + '_Data = new wxPrintDialogData();';
  Result := Result + #13 + self.Name + '_Data->SetFromPage(' +
    IntToStr(Wx_FromPage) + ');';
  Result := Result + #13 + self.Name + '_Data->SetMaxPage(' +
    IntToStr(Wx_MaxPage) + ');';
  Result := Result + #13 + self.Name + '_Data->SetMinPage(' +
    IntToStr(Wx_MinPage) + ');';
  Result := Result + #13 + self.Name + '_Data->SetNoCopies(' +
    IntToStr(Wx_NumberOfCopies) + ');';
  Result := Result + #13 + self.Name + '_Data->SetToPage(' + IntToStr(Wx_ToPage) + ');';

  if Wx_PrintToFile then
    Result := Result + #13 + self.Name + '_Data->SetPrintToFile(true);'
  else
    Result := Result + #13 + self.Name + '_Data->SetPrintToFile(false);';

  if Wx_Selection then
    Result := Result + #13 + self.Name + '_Data->SetSelection(true);'
  else
    Result := Result + #13 + self.Name + '_Data->SetSelection(false);';

  Result := Result + #13 + Format('%s =  new %s(this, %s);',
    [self.Name, self.wx_Class, self.Name + '_Data']);

end;

function TWxPrintDialog.GenerateGUIControlDeclaration: string;
begin
  Result := '';
  Result := Format('%s *%s;', [trim(Self.Wx_Class), trim(Self.Name)]);
  Result := Result + #13 + Format('wxPrintDialogData *%s_Data;', [trim(Self.Name)]);
end;

function TWxPrintDialog.GenerateHeaderInclude: string;
begin
  Result := '';
  Result := '#include <wx/printdlg.h>';
  Result := Result + #13 + '#include <wx/cmndata.h>';
end;

function TWxPrintDialog.GenerateImageInclude: string;
begin

end;

function TWxPrintDialog.GetEventList: TStringList;
begin
  Result := nil;
end;

function TWxPrintDialog.GetIDName: string;
begin

end;

function TWxPrintDialog.GetIDValue: integer;
begin
  Result := 0;
end;

function TWxPrintDialog.GetParameterFromEventName(EventName: string): string;
begin

end;

function TWxPrintDialog.GetStretchFactor: integer;
begin
    Result := 1;
end;

function TWxPrintDialog.GetPropertyList: TStringList;
begin
  Result := FWx_PropertyList;
end;

function TWxPrintDialog.GetBorderAlignment: TWxBorderAlignment;
begin
  Result := [];
end;

procedure TWxPrintDialog.SetBorderAlignment(border: TWxBorderAlignment);
begin
end;

function TWxPrintDialog.GetBorderWidth: integer;
begin
  Result := 0;
end;

procedure TWxPrintDialog.SetBorderWidth(width: integer);
begin
end;

function TWxPrintDialog.GetTypeFromEventName(EventName: string): string;
begin

end;

function TWxPrintDialog.GetWxClassName: string;
begin
  if trim(wx_Class) = '' then
    wx_Class := 'wxPrintDialog';
  Result := wx_Class;
end;

procedure TWxPrintDialog.SaveControlOrientation(
  ControlOrientation: TWxControlOrientation);
begin

end;

procedure TWxPrintDialog.SetIDName(IDName: string);
begin

end;

procedure TWxPrintDialog.SetIDValue(IDValue: integer);
begin

end;

procedure TWxPrintDialog.SetStretchFactor(intValue: integer);
begin
end;

procedure TWxPrintDialog.SetWxClassName(wxClassName: string);
begin
  wx_Class := wxClassName;
end;

function TWxPrintDialog.GetGenericColor(strVariableName:String): string;
begin

end;
procedure TWxPrintDialog.SetGenericColor(strVariableName,strValue: string);
begin

end;


function TWxPrintDialog.GetFGColor: string;
begin

end;

procedure TWxPrintDialog.SetFGColor(strValue: string);
begin
end;

function TWxPrintDialog.GetBGColor: string;
begin
end;

procedure TWxPrintDialog.SetBGColor(strValue: string);
begin
end;

procedure TWxPrintDialog.SetProxyFGColorString(Value: string);
begin
end;

procedure TWxPrintDialog.SetProxyBGColorString(Value: string);
begin
end;

end.
 