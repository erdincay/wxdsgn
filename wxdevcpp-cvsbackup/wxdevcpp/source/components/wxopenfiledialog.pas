{ ****************************************************************** }
{                                                                    }
{   VCL component TWxOpenFileDialog                                  }
{                                                                    }
{   Code generated by Component Create for Delphi                    }
{                                                                    }
{   Generated from source file e:\backup\delphi\demo\wxdevcpp\source\components\compcode\wxopenfiledialog.cd }
{   on 18 July 2004 at 3:52                                          }
{                                                                    }
{   Copyright � 2003 by Guru Kathiresan                              }
{                                                                    }
{ ****************************************************************** }

unit WxOpenFileDialog;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls, 
     Forms, Graphics, Buttons, Wxutils;

type
  TWxOpenFileDialog = class(TSpeedButton,IWxComponentInterface)
    private
      { Private fields of TWxOpenFileDialog }
        { Storage for property Wx_Class }
        FWx_Class : String;
        { Storage for property Wx_DefaultDir }
        FWx_DefaultDir : String;
        { Storage for property Wx_DefaultFile }
        FWx_DefaultFile : String;
        { Storage for property Wx_DialogStyle }
        FWx_DialogStyle : TWxFileDialogStyleSet;
        { Storage for property Wx_Extensions }
        FWx_Extensions : String;
        { Storage for property Wx_GeneralStyle }
        FWx_GeneralStyle : TWxStdStyleSet;
        { Storage for property Wx_HelpText }
        FWx_HelpText : String;
        { Storage for property Wx_Hidden }
        FWx_Hidden : Boolean;
        { Storage for property Wx_IDName }
        FWx_IDName : String;
        { Storage for property Wx_IDValue }
        FWx_IDValue : Longint;
        { Storage for property Wx_Message }
        FWx_Message : String;
        { Storage for property Wx_PropertyList }
        FWx_PropertyList : TStringlist;
        { Storage for property Wx_ToolTip }
        FWx_ToolTip : String;

      { Private methods of TWxOpenFileDialog }
        { Method to set variable and property values and create objects }
        procedure AutoInitialize;
        { Method to free any objects created by AutoInitialize }
        procedure AutoDestroy;
        { Write method for property Wx_PropertyList }
        procedure SetWx_PropertyList(Value : TStringlist);
        procedure WMSize(var Message: TWMSize); message WM_PAINT;

    protected
      { Protected fields of TWxOpenFileDialog }

      { Protected methods of TWxOpenFileDialog }
        procedure Click; override;
        procedure Loaded; override;
        procedure Paint; override;

    public
      { Public fields and properties of TWxOpenFileDialog }

      { Public methods of TWxOpenFileDialog }
        constructor Create(AOwner: TComponent); override;
        destructor Destroy; override;
        function GenerateControlIDs:String;
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
        function GetTypeFromEventName(EventName: string):string;
        function GetWxClassName:String;
        procedure SaveControlOrientation(ControlOrientation:TWxControlOrientation);
        procedure SetIDName(IDName:String);
        procedure SetIDValue(IDValue:longInt);
        procedure SetWxClassName(wxClassName:String);

    published
      { Published properties of TWxOpenFileDialog }
        property OnClick;
        property OnDblClick;
        property OnDragDrop;
        property OnMouseDown;
        property OnMouseMove;
        property OnMouseUp;
        property Wx_Class : String read FWx_Class write FWx_Class;
        property Wx_DefaultDir : String
             read FWx_DefaultDir write FWx_DefaultDir;
        property Wx_DefaultFile : String
             read FWx_DefaultFile write FWx_DefaultFile;
        property Wx_DialogStyle : TWxFileDialogStyleSet
             read FWx_DialogStyle write FWx_DialogStyle;
        property Wx_Extensions : String
             read FWx_Extensions write FWx_Extensions;
        property Wx_GeneralStyle : TWxStdStyleSet
             read FWx_GeneralStyle write FWx_GeneralStyle;
        property Wx_HelpText : String read FWx_HelpText write FWx_HelpText;
        property Wx_Hidden : Boolean read FWx_Hidden write FWx_Hidden;
        property Wx_IDName : String read FWx_IDName write FWx_IDName;
        property Wx_IDValue : Longint read FWx_IDValue write FWx_IDValue;
        property Wx_Message : String read FWx_Message write FWx_Message;
        property Wx_PropertyList : TStringlist
             read FWx_PropertyList write SetWx_PropertyList;
        property Wx_ToolTip : String read FWx_ToolTip write FWx_ToolTip;

  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxOpenFileDialog with wxWidgets as its
       default page on the Delphi component palette }
     RegisterComponents('wxWidgets', [TWxOpenFileDialog]);
end;

{ Method to set variable and property values and create objects }
procedure TWxOpenFileDialog.AutoInitialize;
begin
     FWx_Class := 'wxFileDialog';
     FWx_PropertyList := TStringlist.Create;
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxOpenFileDialog.AutoDestroy;
begin
     FWx_PropertyList.Free;
end; { of AutoDestroy }

{ Write method for property Wx_PropertyList }
procedure TWxOpenFileDialog.SetWx_PropertyList(Value : TStringlist);
begin
     { Use Assign method because TStringlist is an object type
       and FWx_PropertyList has been created. }
     FWx_PropertyList.Assign(Value);

     { If changing this property affects the appearance of
       the component, call Invalidate here so the image will be
       updated. }
     { Invalidate; }
end;

{ Override OnClick handler from TSpeedButton,IWxComponentInterface }
procedure TWxOpenFileDialog.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

     { Activate click behavior of parent }
     inherited Click;

     { Code to execute after click behavior
       of parent }

end;

constructor TWxOpenFileDialog.Create(AOwner: TComponent);
var
  Bitmap:TBitmap;
begin
     { Call the Create method of the parent class }
     inherited Create(AOwner);

     { AutoInitialize sets the initial values of variables and      }
     { properties; also, it creates objects for properties of       }
     { standard Delphi object types (e.g., TFont, TTimer,           }
     { TPicture) and for any variables marked as objects.           }
     { AutoInitialize method is generated by Component Create.      }
     AutoInitialize;

     {Set the Default nonvisible properties}
     flat:=true;
     height:=29;
     width:=29;
    { draw control bitmap }
        Bitmap := TBitmap.Create;
        try
            Bitmap.Handle := LoadBitmap(hInstance, Pchar(trim(UpperCase(Classname))) );
            Glyph.Assign(Bitmap);
        finally // wrap up
            Bitmap.Free;
        end; // try/finally


     { Code to perform other tasks when the component is created }
     FWx_PropertyList.add('FWx_DialogType:Dialog Type');
     FWx_PropertyList.add('FWx_DialogStyle:File Dialog Style');
     FWx_PropertyList.add('Wx_IDName : IDName ');
     FWx_PropertyList.add('Wx_IDValue : IDValue ');
     FWx_PropertyList.add('Wx_ToolTip :ToolTip ');
     FWx_PropertyList.add('wx_DefaultDir:Default Dir');
     FWx_PropertyList.add('wx_DefaultFile:Default File');
     FWx_PropertyList.add('wx_Extensions:Extensions');
     FWx_PropertyList.add('wx_Message:Message');
     FWx_PropertyList.add('Name:Name');
     FWx_PropertyList.add('Wx_Class:Base Class');
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

function TWxOpenFileDialog.GenerateControlIDs:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';
     if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
        Result:=Format('#define %s %d ',[Wx_IDName,Wx_IDValue]);
end;

function TWxOpenFileDialog.GenerateEventTableEntries(CurrClassName:String):String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';
end;

function TWxOpenFileDialog.GenerateGUIControlCreation:String;
     { Internal declarations for method }
     { type }
     { . . . }
      var
     strStyle:String;
     strType:String;
begin
     Result:='';
    strType:='wxOPEN';
    Result:=Format('%s =  new %s(this, "%s" , "%s" , "%s" , "%s", %s);',[self.Name,self.wx_Class,wx_Message,wx_DefaultDir,wx_DefaultFile,wx_Extensions,strType+strStyle] );
end;

function TWxOpenFileDialog.GenerateGUIControlDeclaration:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';
     Result:=Format('%s *%s;',[trim(Self.Wx_Class),trim(Self.Name)]);
end;

function TWxOpenFileDialog.GenerateHeaderInclude:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';
     Result:='#include <wx/filedlg.h>'
end;

function TWxOpenFileDialog.GenerateImageInclude: string;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

function TWxOpenFileDialog.GetEventList:TStringlist;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
Result:=nil;
end;

function TWxOpenFileDialog.GetIDName:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=wx_IDName;
end;

function TWxOpenFileDialog.GetIDValue:LongInt;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=wx_IDValue;
end;

function TWxOpenFileDialog.GetParameterFromEventName(EventName: string):String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

function TWxOpenFileDialog.GetPropertyList:TStringList;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=FWx_PropertyList;
end;

function TWxOpenFileDialog.GetTypeFromEventName(EventName: string):string;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

function TWxOpenFileDialog.GetWxClassName:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=wx_Class;
end;

procedure TWxOpenFileDialog.Loaded;
begin
     inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

procedure TWxOpenFileDialog.Paint;
begin
     { Make this component look like its parent component by calling
       its parent's Paint method. }
     inherited Paint;

     { To change the appearance of the component, use the methods
       supplied by the component's Canvas property (which is of
       type TCanvas).  For example, }

     { Canvas.Rectangle(0, 0, Width, Height); }
end;

procedure TWxOpenFileDialog.SaveControlOrientation(ControlOrientation:TWxControlOrientation);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

procedure TWxOpenFileDialog.SetIDName(IDName:String);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Wx_IDName:=IDName;
end;

procedure TWxOpenFileDialog.SetIDValue(IDValue:longInt);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     wx_IDValue:=IDValue;
end;

procedure TWxOpenFileDialog.SetWxClassName(wxClassName:String);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     wx_Class:=wxClassName;
end;

procedure TWxOpenFileDialog.WMSize(var Message: TWMSize);
var
     W, H: Integer;
begin
     inherited;

     { Copy the new width and height of the component
       so we can use SetBounds to change both at once }
     Width:=29;
     Height:=29;

     W := Width;
     H := Height;

     { Code to check and adjust W and H }

     { Update the component size if we adjusted W or H }
     //if (W <> Width) or (H <> Height) then
        inherited SetBounds(Left, Top, W, H);

     { Code to update dimensions of any owned sub-components
       by reading their Height and Width properties and updating
       via their SetBounds methods }

     Message.Result := 0;
end;


end.
