{ ****************************************************************** }
{                                                                    }
{   VCL component TWxComboBox                                        }
{                                                                    }
{   Code generated by Component Create for Delphi                    }
{                                                                    }
{   Generated from source file e:\backup\delphi\demo\wxdevcpp\source\compon~1\compcode\wxcomb~1.cd }
{   on 27 Sept 2004 at 23:51                                         }
{                                                                    }
{   Copyright � 2003 by Guru Kathiresan                              }
{                                                                    }
{ ****************************************************************** }

unit WxComboBox;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls, 
     Forms, Graphics, Stdctrls, Wxutils, ExtCtrls, WxSizerPanel;

{
*************IMPORTANT*************
If you want to change any of the wxwidgets components,  you have to use comp screate by David Price.
You can download a copy from

http://torry.net/tools/components/compcreation/cc.zip

***IF YOU FOLLOW THIS YOUR UPDATES WONT BE INCLUDED IN THE DISTRIBUTION****
}

type
  TWxComboBox = class(TComboBox,IWxComponentInterface)
    private
      { Private fields of TWxComboBox }
        { Storage for property EVT_COMBOBOX }
        FEVT_COMBOBOX : String;
        { Storage for property EVT_TEXT }
        FEVT_TEXT : String;
        { Storage for property EVT_UPDATE_UI }
        FEVT_UPDATE_UI : String;
        { Storage for property Wx_Border }
        FWx_Border : Integer;
        { Storage for property Wx_Class }
        FWx_Class : String;
        { Storage for property Wx_ComboboxStyle }
        FWx_ComboboxStyle : TWxCmbStyleSet;
        { Storage for property Wx_ControlOrientation }
        FWx_ControlOrientation : TWxControlOrientation;
        { Storage for property Wx_DefaultItem }
        FWx_DefaultItem : Integer;
        { Storage for property Wx_Enabled }
        FWx_Enabled : Boolean;
        { Storage for property Wx_GeneralStyle }
        FWx_GeneralStyle : TWxStdStyleSet;
        { Storage for property Wx_HelpText }
        FWx_HelpText : String;
        { Storage for property Wx_Hidden }
        FWx_Hidden : Boolean;
        { Storage for property Wx_HorizontalAlignment }
        FWx_HorizontalAlignment : TWxSizerHorizontalAlignment;
        { Storage for property Wx_IDName }
        FWx_IDName : String;
        { Storage for property Wx_IDValue }
        FWx_IDValue : Longint;
        { Storage for property Wx_StrechFactor }
        FWx_StrechFactor : Integer;
        { Storage for property Wx_ToolTip }
        FWx_ToolTip : String;
        { Storage for property Wx_VerticalAlignment }
        FWx_VerticalAlignment : TWxSizerVerticalAlignment;
        FWx_EventList : TStringList;
        FWx_PropertyList : TStringList;

      { Private methods of TWxComboBox }
        { Method to set variable and property values and create objects }
        procedure AutoInitialize;
        { Method to free any objects created by AutoInitialize }
        procedure AutoDestroy;

    protected
      { Protected fields of TWxComboBox }

      { Protected methods of TWxComboBox }
        procedure Change; override;
        procedure Click; override;
        procedure KeyPress(var Key : Char); override;
        procedure Loaded; override;

    public
      { Public fields and properties of TWxComboBox }

      { Public methods of TWxComboBox }
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
      { Published properties of TWxComboBox }
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
        property EVT_COMBOBOX : String read FEVT_COMBOBOX write FEVT_COMBOBOX;
        property EVT_TEXT : String read FEVT_TEXT write FEVT_TEXT;
        property EVT_UPDATE_UI : String
             read FEVT_UPDATE_UI write FEVT_UPDATE_UI;
        property Wx_Border : Integer
             read FWx_Border write FWx_Border
             default 5;
        property Wx_Class : String read FWx_Class write FWx_Class;
        property Wx_ComboboxStyle : TWxCmbStyleSet
             read FWx_ComboboxStyle write FWx_ComboboxStyle;
        property Wx_ControlOrientation : TWxControlOrientation
             read FWx_ControlOrientation write FWx_ControlOrientation;
        property Wx_DefaultItem : Integer
             read FWx_DefaultItem write FWx_DefaultItem
             default -1;
        property Wx_Enabled : Boolean
             read FWx_Enabled write FWx_Enabled
             default True;
        property Wx_GeneralStyle : TWxStdStyleSet
             read FWx_GeneralStyle write FWx_GeneralStyle;
        property Wx_HelpText : String read FWx_HelpText write FWx_HelpText;
        property Wx_Hidden : Boolean read FWx_Hidden write FWx_Hidden;
        property Wx_HorizontalAlignment : TWxSizerHorizontalAlignment
             read FWx_HorizontalAlignment write FWx_HorizontalAlignment
             default wxSZALIGN_CENTER_HORIZONTAL;
        property Wx_IDName : String read FWx_IDName write FWx_IDName;
        property Wx_IDValue : Longint
             read FWx_IDValue write FWx_IDValue
             default -1;
        property Wx_StrechFactor : Integer
             read FWx_StrechFactor write FWx_StrechFactor;
        property Wx_ToolTip : String read FWx_ToolTip write FWx_ToolTip;
        property Wx_VerticalAlignment : TWxSizerVerticalAlignment
             read FWx_VerticalAlignment write FWx_VerticalAlignment
             default wxSZALIGN_CENTER_VERTICAL;

  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxComboBox with wxWidgets as its
       default page on the Delphi component palette }
     RegisterComponents('wxWidgets', [TWxComboBox]);
end;

{ Method to set variable and property values and create objects }
procedure TWxComboBox.AutoInitialize;
begin
     FWx_EventList := TStringList.Create;
     FWx_PropertyList := TStringList.Create;
     FWx_Border := 5;
     FWx_Class := 'wxComboBox';
     FWx_DefaultItem := -1;
     FWx_Enabled := True;
     FWx_HorizontalAlignment := wxSZALIGN_CENTER_HORIZONTAL;
     FWx_IDValue := -1;
     FWx_VerticalAlignment := wxSZALIGN_CENTER_VERTICAL;
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxComboBox.AutoDestroy;
begin
     FWx_EventList.Free;
     FWx_PropertyList.Free;
end; { of AutoDestroy }

{ Override OnChange handler from TComboBox,IWxComponentInterface }
procedure TWxComboBox.Change;
begin
     inherited Change;
end;

{ Override OnClick handler from TComboBox,IWxComponentInterface }
procedure TWxComboBox.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

     { Activate click behavior of parent }
     inherited Click;

     { Code to execute after click behavior
       of parent }

end;

{ Override OnKeyPress handler from TComboBox,IWxComponentInterface }
procedure TWxComboBox.KeyPress(var Key : Char);
const
     TabKey = Char(VK_TAB);
     EnterKey = Char(VK_RETURN);
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

constructor TWxComboBox.Create(AOwner: TComponent);
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
     FWx_PropertyList.add('Wx_ComboboxStyle:Combobox Style');
     FWx_PropertyList.add('Items :Items');
     FWx_PropertyList.add('wx_Class:Base Class');
     FWx_PropertyList.add('Wx_Hidden :Hidden');
     FWx_PropertyList.add('Wx_Border : Border ');
     FWx_PropertyList.add('Wx_Default :WxDefault ');
     FWx_PropertyList.add('Wx_HelpText :HelpText ');
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
     FWx_PropertyList.add('Color : Color ');

     FWx_PropertyList.add('Checked : Checked');
     FWx_PropertyList.add('Wx_RadioButtonStyle:Radio Button Style');

     FWx_PropertyList.add('wxRB_GROUP:wxRB_GROUP');
     FWx_PropertyList.add('wxRB_SINGLE:wxRB_SINGLE');


     FWx_PropertyList.add('Wx_HorizontalAlignment : HorizontalAlignment');
     FWx_PropertyList.add('Wx_VerticalAlignment   : VerticalAlignment');

     FWx_PropertyList.add('wxCB_SIMPLE:wxCB_SIMPLE');
     FWx_PropertyList.add('wxCB_DROPDOWN:wxCB_DROPDOWN');
     FWx_PropertyList.add('wxCB_READONLY:wxCB_READONLY');
     FWx_PropertyList.add('wxCB_SORT:wxCB_SORT');

     FWx_EventList.add('EVT_CHECKBOX:OnSelected');
     FWx_EventList.add('EVT_TEXT:OnUpdated');
     FWx_EventList.add('EVT_UPDATE_UI:OnUpdateUI');

end;

destructor TWxComboBox.Destroy;
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

function TWxComboBox.GenerateControlIDs:String;
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

function TWxComboBox.GenerateEventTableEntries(CurrClassName:String):String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';

     if trim(EVT_COMBOBOX) <> '' then
     begin
          Result:=Format('EVT_COMBOBOX(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_COMBOBOX]) +'';
     end;

     if trim(EVT_TEXT) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TEXT(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TEXT]) +'';
     end;

     if trim(EVT_UPDATE_UI) <> '' then
     begin
          Result:=Result+#13+Format('EVT_UPDATE_UI(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_UPDATE_UI]) +'';
     end;

end;

function TWxComboBox.GenerateGUIControlCreation:String;
     { Internal declarations for method }
     { type }
     { . . . }
     var
     i:Integer;
     strStyle,parentName,strAlignment:String;
begin
    if (self.Parent is TForm) or (self.Parent is TWxSizerPanel) then
       parentName:='this'
    else
       parentName:=self.Parent.name;

     Result:='';
    strStyle:=GetcomboBoxSpecificStyle(Wx_GeneralStyle,Wx_ComboboxStyle);
    //if trim(strStyle) <> '' then
    //   strStyle:=',' +strStyle;

    //Last comma is removed because it depends on the user selection of the properties.
    Result:=Format('%s =  new %s(%s, %s ,_("%s") ,wxPoint(%d,%d),wxSize(%d,%d), (wxArrayString)NULL  %s );',[self.Name,self.Wx_Class,ParentName,GetWxIDString(self.Wx_IDName,self.Wx_IDValue),self.Caption,self.Left,self.Top,self.width,self.Height,strStyle] );

    if trim(self.Wx_ToolTip) <> '' then
        Result:=Result + #13+Format('%s->SetToolTip(wxT("%s"));',[self.Name,self.Wx_ToolTip]);

    if self.Wx_Hidden then
        Result:=Result + #13+Format('%s->Show(false);',[self.Name]);

    if not Wx_Enabled then
        Result:=Result + #13+Format('%s->Enable(false);',[self.Name]);

    if trim(self.Wx_HelpText) <> '' then
        Result:=Result +#13+Format('%s->SetHelpText(_("%s"));',[self.Name,self.Wx_HelpText]);
    for i:= 0 to self.Items.count -1 Do
        Result:=Result +#13+Format('%s->Append(_("%s"));',[self.Name,self.Items[i]]);
    if(self.Parent is TWxSizerPanel) then
    begin
        strAlignment:=SizerAlignmentToStr(Wx_HorizontalAlignment) + ' | '+ SizerAlignmentToStr(Wx_VerticalAlignment) +' | wxALL';
        if wx_ControlOrientation = wxControlVertical then
            strAlignment:=SizerAlignmentToStr(Wx_HorizontalAlignment)+ ' | wxALL';

         if wx_ControlOrientation = wxControlHorizontal then
             strAlignment:=SizerAlignmentToStr(Wx_VerticalAlignment)+ ' | wxALL';


         Result:=Result +#13+Format('%s->Add(%s,%d,%s,%d);',[self.Parent.Name,self.Name,self.Wx_StrechFactor,strAlignment,self.Wx_Border]);
    end;


end;

function TWxComboBox.GenerateGUIControlDeclaration:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';
     Result:=Format('%s *%s;',[trim(Self.Wx_Class),trim(Self.Name)]);
end;

function TWxComboBox.GenerateHeaderInclude:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';
Result:='#include <wx/combobox.h>';
end;

function TWxComboBox.GenerateImageInclude: string;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

function TWxComboBox.GetEventList:TStringlist;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=FWx_EventList;
end;

function TWxComboBox.GetIDName:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';
     Result:=wx_IDName;
end;

function TWxComboBox.GetIDValue:LongInt;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=wx_IDValue;
end;

function TWxComboBox.GetParameterFromEventName(EventName: string):String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
if EventName = 'EVT_COMBOBOX' then
begin
 Result:='wxCommandEvent& event ';
 exit;
end;
if EventName = 'EVT_TEXT' then
begin
 Result:='wxCommandEvent& event ';
 exit;
end;
if EventName = 'EVT_UPDATE_UI' then
begin
 Result:='wxUpdateUIEvent& event';
 exit;
end;

end;

function TWxComboBox.GetPropertyList:TStringList;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=FWx_PropertyList;
end;

function TWxComboBox.GetTypeFromEventName(EventName: string):string;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

function TWxComboBox.GetWxClassName:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     if trim(wx_Class) = '' then
        wx_Class:='wxComboBox';
     Result:=wx_Class;
end;

procedure TWxComboBox.Loaded;
begin
     inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

procedure TWxComboBox.SaveControlOrientation(ControlOrientation:TWxControlOrientation);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
wx_ControlOrientation:=ControlOrientation;
end;

procedure TWxComboBox.SetIDName(IDName:String);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     wx_IDName:=IDName;
end;

procedure TWxComboBox.SetIDValue(IDValue:longInt);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Wx_IDValue:=IDVAlue;
end;

procedure TWxComboBox.SetWxClassName(wxClassName:String);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     wx_Class:=wxClassName;
end;


end.
