// $Id$
//

unit WxSaveFileDialog;

interface

uses
  Windows, Messages, SysUtils, Classes,wxUtils,WxNonVisibleBaseComponent;

type
  TWxSaveFileDialog = class(TWxNonVisibleBaseComponent,IWxComponentInterface)
  private
    { Private declarations }
        FWx_Class : String;
        FWx_PropertyList : TStringList;
        FWx_Message: String;
        FWx_Extensions: String;
        FWx_DefaultFile: String;
        FWx_DefaultDir: String;
        FWx_DialogStyle : TWxFileDialogStyleSet;
        procedure AutoInitialize;
        procedure AutoDestroy;

  protected

  public
        constructor Create(AOwner: TComponent); override;
        destructor Destroy; override;
        function GenerateControlIDs:String;
        function GenerateEnumControlIDs:String;
        function GenerateEventTableEntries(CurrClassName:String):String;
        function GenerateGUIControlCreation:String;
        function GenerateGUIControlDeclaration:String;
        function GenerateHeaderInclude:String;
        function GenerateImageInclude: string;
        function GetEventList:TStringlist;
        function GetIDName:String;
        function GetIDValue:LongInt;
        function GetParameterFromEventName(EventName: string):String;
        function GetPropertyList:TStringList;
        function GetStretchFactor:Integer;
        function GetTypeFromEventName(EventName: string):string;
        function GetWxClassName:String;
        procedure SaveControlOrientation(ControlOrientation:TWxControlOrientation);
        procedure SetIDName(IDName:String);
        procedure SetIDValue(IDValue:longInt);
        procedure SetStretchFactor(intValue:Integer);
        procedure SetWxClassName(wxClassName:String);
        function GetFGColor:string;
        procedure SetFGColor(strValue:String);
        function GetBGColor:string;
        procedure SetBGColor(strValue:String);
        procedure SetProxyFGColorString(value:String);
        procedure SetProxyBGColorString(value:String);
  published
    { Published declarations }
        property Wx_Class : String read FWx_Class write FWx_Class;
        property Wx_Message: String read FWx_Message write FWx_Message;
        property Wx_Extensions: String read FWx_Extensions write FWx_Extensions;
        property Wx_DefaultFile: String read FWx_DefaultFile write FWx_DefaultFile;
        property Wx_DefaultDir: String read FWx_DefaultDir write FWx_DefaultDir;
        property Wx_DialogStyle:TWxFileDialogStyleSet read FWx_DialogStyle write FWx_DialogStyle;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('wxWidgets', [TWxSaveFileDialog]);
end;

{ Method to set variable and property values and create objects }
procedure TWxSaveFileDialog.AutoInitialize;
begin
     FWx_PropertyList := TStringList.Create;
     FWx_Class := 'wxFileDialog';
     Glyph.Handle:=LoadBitmap(hInstance, 'TWxSaveFileDialog');
     self.FWx_Extensions:= '*.*';
     self.wx_Message:='Choose a file';
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxSaveFileDialog.AutoDestroy;
begin
     FWx_PropertyList.Free;
end; { of AutoDestroy }

constructor TWxSaveFileDialog.Create(AOwner: TComponent);
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
     FWx_PropertyList.add('wxOVERWRITE_PROMPT:wxOVERWRITE_PROMPT');
     FWx_PropertyList.add('wxMULTIPLE:wxMULTIPLE');
     FWx_PropertyList.add('wxCHANGE_DIR:wxCHANGE_DIR');

     FWx_PropertyList.add('Wx_DefaultDir:Default Dir');
     FWx_PropertyList.add('Wx_DefaultFile:Default File');
     FWx_PropertyList.add('Wx_Extensions:Extensions');
     FWx_PropertyList.add('Wx_Message:Message');
     FWx_PropertyList.add('Name:Name');
     FWx_PropertyList.add('Wx_Class:Base Class');
end;

destructor TWxSaveFileDialog.Destroy;
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

function TWxSaveFileDialog.GenerateControlIDs:String;
begin
     Result:='';
end;

function TWxSaveFileDialog.GenerateEnumControlIDs:String;
begin
     Result:='';
end;

function TWxSaveFileDialog.GenerateEventTableEntries(CurrClassName:String):String;
begin
     Result:='';
end;

function TWxSaveFileDialog.GenerateGUIControlCreation:String;
var
     strType,strStyle:String;
begin
     Result:='';
    strType:='wxSAVE';
    strStyle:=GetFileDialogStyleString(self.Wx_DialogStyle);

    Result:=Format('%s =  new %s(this, "%s" , "%s" , "%s" , "%s", %s);',[self.Name,self.wx_Class,GetCppString(wx_Message),GetCppString(wx_DefaultDir),GetCppString(wx_DefaultFile),wx_Extensions,strType+strStyle] );
end;

function TWxSaveFileDialog.GenerateGUIControlDeclaration:String;
begin
     Result:='';
     Result:=Format('%s *%s;',[trim(Self.Wx_Class),trim(Self.Name)]);
end;

function TWxSaveFileDialog.GenerateHeaderInclude:String;
begin
     Result:='';
     Result:='#include <wx/filedlg.h>';
end;

function TWxSaveFileDialog.GenerateImageInclude: string;
begin

end;

function TWxSaveFileDialog.GetEventList:TStringlist;
begin
Result:=nil;
end;

function TWxSaveFileDialog.GetIDName:String;
begin

end;

function TWxSaveFileDialog.GetIDValue:LongInt;
begin
Result:=0;
end;

function TWxSaveFileDialog.GetParameterFromEventName(EventName: string):String;
begin

end;

function TWxSaveFileDialog.GetStretchFactor:Integer;
begin
//
end;

function TWxSaveFileDialog.GetPropertyList:TStringList;
begin
     Result:=FWx_PropertyList;
end;

function TWxSaveFileDialog.GetTypeFromEventName(EventName: string):string;
begin

end;

function TWxSaveFileDialog.GetWxClassName:String;
begin
     if trim(wx_Class) = '' then
        wx_Class:='wxFileDialog';
     Result:=wx_Class;
end;

procedure TWxSaveFileDialog.SaveControlOrientation(ControlOrientation:TWxControlOrientation);
begin
    //
end;

procedure TWxSaveFileDialog.SetIDName(IDName:String);
begin

end;

procedure TWxSaveFileDialog.SetIDValue(IDValue:longInt);
begin

end;

procedure TWxSaveFileDialog.SetStretchFactor(intValue:Integer);
begin
end;

procedure TWxSaveFileDialog.SetWxClassName(wxClassName:String);
begin
     wx_Class:=wxClassName;
end;

function TWxSaveFileDialog.GetFGColor:string;
begin

end;

procedure TWxSaveFileDialog.SetFGColor(strValue:String);
begin
end;
    
function TWxSaveFileDialog.GetBGColor:string;
begin
end;

procedure TWxSaveFileDialog.SetBGColor(strValue:String);
begin
end;
procedure TWxSaveFileDialog.SetProxyFGColorString(value:String);
begin
end;

procedure TWxSaveFileDialog.SetProxyBGColorString(value:String);
begin
end;

end.
 
