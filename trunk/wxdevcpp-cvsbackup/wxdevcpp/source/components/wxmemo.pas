{ ****************************************************************** }
{                                                                    }
{   VCL component TWxMemo                                            }
{                                                                    }
{   Code generated by Component Create for Delphi                    }
{                                                                    }
{   Generated from source file wxmemo.cd }
{   on 10 Oct 2004 at 0:50                                           }
{                                                                    }
{   Copyright � 2003 by Guru Kathiresan                              }
{                                                                    }
{ ****************************************************************** }

unit WxMemo;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls, 
     Forms, Graphics, Stdctrls, Wxutils, ExtCtrls, WxSizerPanel;

type
  TWxMemo = class(TMemo,IWxComponentInterface)
    private
      { Private fields of TWxMemo }
        { Storage for property EVT_TEXT }
        FEVT_TEXT : String;
        { Storage for property EVT_TEXT_ENTER }
        FEVT_TEXT_ENTER : String;
        { Storage for property EVT_TEXT_MAXLEN }
        FEVT_TEXT_MAXLEN : String;
        { Storage for property EVT_TEXT_URL }
        FEVT_TEXT_URL : String;
        { Storage for property EVT_UPDATE_UI }
        FEVT_UPDATE_UI : String;
        { Storage for property Wx_BGColor }
        FWx_BGColor : TColor;
        { Storage for property Wx_Border }
        FWx_Border : Integer;
        { Storage for property Wx_Class }
        FWx_Class : String;
        { Storage for property Wx_ControlOrientation }
        FWx_ControlOrientation : TWxControlOrientation;
        { Storage for property Wx_EditStyle }
        FWx_EditStyle : TWxEdtGeneralStyleSet;
        { Storage for property Wx_Enabled }
        FWx_Enabled : Boolean;
        { Storage for property Wx_FGColor }
        FWx_FGColor : TColor;
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
        { Storage for property Wx_ProxyBGColorString }
        FWx_ProxyBGColorString : TWxColorString;
        { Storage for property Wx_ProxyFGColorString }
        FWx_ProxyFGColorString : TWxColorString;
        { Storage for property Wx_StretchFactor }
        FWx_StretchFactor : Integer;
        { Storage for property Wx_ToolTip }
        FWx_ToolTip : String;
        FWx_MaxLength:Integer;
        
        { Storage for property Wx_VerticalAlignment }
        FWx_VerticalAlignment : TWxSizerVerticalAlignment;
        FWx_EventList : TStringList;
        FWx_PropertyList : TStringList;
        FInvisibleBGColorString : String;
        FInvisibleFGColorString : String;


      { Private methods of TWxMemo }
        { Method to set variable and property values and create objects }
        procedure AutoInitialize;
        { Method to free any objects created by AutoInitialize }
        procedure AutoDestroy;
        { Write method for property Wx_ToolTip }
        procedure SetWx_ToolTip(Value : String);

    protected
      { Protected fields of TWxMemo }

      { Protected methods of TWxMemo }
        procedure Click; override;
        procedure KeyPress(var Key : Char); override;
        procedure Loaded; override;

    public
      { Public fields and properties of TWxMemo }
       defaultBGColor:TColor;	
       defaultFGColor:TColor;
      { Public methods of TWxMemo }
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
        function GetStretchFactor:integer;
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
      { Published properties of TWxMemo }
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
        property EVT_TEXT : String read FEVT_TEXT write FEVT_TEXT;
        property EVT_TEXT_ENTER : String
             read FEVT_TEXT_ENTER write FEVT_TEXT_ENTER;
        property EVT_TEXT_MAXLEN : String
             read FEVT_TEXT_MAXLEN write FEVT_TEXT_MAXLEN;
        property EVT_TEXT_URL : String read FEVT_TEXT_URL write FEVT_TEXT_URL;
        property EVT_UPDATE_UI : String
             read FEVT_UPDATE_UI write FEVT_UPDATE_UI;
        property Wx_BGColor : TColor read FWx_BGColor write FWx_BGColor;
        property Wx_Border : Integer
             read FWx_Border write FWx_Border
             default 5;
        property Wx_Class : String read FWx_Class write FWx_Class;
        property Wx_ControlOrientation : TWxControlOrientation
             read FWx_ControlOrientation write FWx_ControlOrientation;
        property Wx_EditStyle : TWxEdtGeneralStyleSet
             read FWx_EditStyle write FWx_EditStyle;
        property Wx_Enabled : Boolean
             read FWx_Enabled write FWx_Enabled
             default True;
        property Wx_FGColor : TColor read FWx_FGColor write FWx_FGColor;
        property Wx_GeneralStyle : TWxStdStyleSet
             read FWx_GeneralStyle write FWx_GeneralStyle;
        property Wx_HelpText : String read FWx_HelpText write FWx_HelpText;
        property Wx_Hidden : Boolean
             read FWx_Hidden write FWx_Hidden
             default False;
        property Wx_HorizontalAlignment : TWxSizerHorizontalAlignment
             read FWx_HorizontalAlignment write FWx_HorizontalAlignment
             default wxSZALIGN_CENTER_HORIZONTAL;
        property Wx_IDName : String read FWx_IDName write FWx_IDName;
        property Wx_IDValue : Longint
             read FWx_IDValue write FWx_IDValue
             default -1;
        property Wx_ProxyBGColorString : TWxColorString
             read FWx_ProxyBGColorString write FWx_ProxyBGColorString;
        property Wx_ProxyFGColorString : TWxColorString
             read FWx_ProxyFGColorString write FWx_ProxyFGColorString;

	property Wx_StrechFactor : Integer
		read FWx_StretchFactor write FWx_StretchFactor;
	
	property Wx_StretchFactor : Integer
             read FWx_StretchFactor write FWx_StretchFactor
             default 0;
        property Wx_ToolTip : String read FWx_ToolTip write SetWx_ToolTip;

        property Wx_MaxLength : Integer read FWx_MaxLength write FWx_MaxLength;

        property Wx_VerticalAlignment : TWxSizerVerticalAlignment
             read FWx_VerticalAlignment write FWx_VerticalAlignment
             default wxSZALIGN_CENTER_VERTICAL;
        property InvisibleBGColorString:String read FInvisibleBGColorString write FInvisibleBGColorString;
        property InvisibleFGColorString:String read FInvisibleFGColorString write FInvisibleFGColorString;

  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxMemo with wxWidgets as its
       default page on the Delphi component palette }
     RegisterComponents('wxWidgets', [TWxMemo]);
end;

{ Method to set variable and property values and create objects }
procedure TWxMemo.AutoInitialize;
begin
     FWx_EventList := TStringList.Create;
     FWx_PropertyList := TStringList.Create;
     FWx_Border := 5;
     FWx_Class := 'wxTextCtrl';
     FWx_Enabled := True;
     FWx_Hidden := False;
     FWx_HorizontalAlignment := wxSZALIGN_CENTER_HORIZONTAL;
     FWx_IDValue := -1;
     FWx_StretchFactor := 0;
     FWx_VerticalAlignment := wxSZALIGN_CENTER_VERTICAL;
     FWx_ProxyBGColorString := TWxColorString.Create;
     FWx_ProxyFGColorString := TWxColorString.Create;
     defaultBGColor:=self.color;
     defaultFGColor:=self.font.color;
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxMemo.AutoDestroy;
begin
     FWx_EventList.Free;
     FWx_PropertyList.Free;
end; { of AutoDestroy }

{ Write method for property Wx_ToolTip }
procedure TWxMemo.SetWx_ToolTip(Value : String);
begin
     FWx_ToolTip := Value;
end;

{ Override OnClick handler from TMemo,IWxComponentInterface }
procedure TWxMemo.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

     { Activate click behavior of parent }
     inherited Click;

     { Code to execute after click behavior
       of parent }

end;

{ Override OnKeyPress handler from TMemo,IWxComponentInterface }
procedure TWxMemo.KeyPress(var Key : Char);
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

constructor TWxMemo.Create(AOwner: TComponent);
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
     FWx_PropertyList.add('Lines :Strings');
     FWx_PropertyList.add('Wx_Hidden :Hidden');
     FWx_PropertyList.add('Wx_Border : Border ');
     FWx_PropertyList.add('Wx_Default :WxDefault ');
     FWx_PropertyList.add('Wx_HelpText :HelpText ');
     FWx_PropertyList.add('Wx_IDName : IDName ');
     FWx_PropertyList.add('Wx_IDValue : IDValue ');
     FWx_PropertyList.add('Wx_ToolTip :ToolTip ');
     FWx_PropertyList.add('Wx_MaxLength :MaxLength ');

     FWx_PropertyList.add('Text:Text');
     FWx_PropertyList.add('Name:Name');
     FWx_PropertyList.add('Wx_Class:Base Class');
     FWx_PropertyList.add('Wx_Enabled:Enabled');
     FWx_PropertyList.add('Left:Left');
     FWx_PropertyList.add('Top:Top');
     FWx_PropertyList.add('Width:Width');
     FWx_PropertyList.add('Height:Height');

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

     FWx_PropertyList.Add('Wx_EditStyle:Edit Style');
     FWx_PropertyList.Add('wxTE_PROCESS_ENTER:wxTE_PROCESS_ENTER');
     FWx_PropertyList.Add('wxTE_PROCESS_TAB:wxTE_PROCESS_TAB');
     FWx_PropertyList.Add('wxTE_PASSWORD:wxTE_PASSWORD');
     FWx_PropertyList.Add('wxTE_READONLY:wxTE_READONLY');
     FWx_PropertyList.Add('wxTE_RICH:wxTE_RICH');
     FWx_PropertyList.Add('wxTE_RICH2:wxTE_RICH2');
     FWx_PropertyList.Add('wxTE_AUTO_URL:wxTE_AUTO_URL');
     FWx_PropertyList.Add('wxTE_NOHIDESEL:wxTE_NOHIDESEL');
     FWx_PropertyList.Add('wxTE_LEFT:wxTE_LEFT');
     FWx_PropertyList.Add('wxTE_CENTRE:wxTE_CENTRE');
     FWx_PropertyList.Add('wxTE_RIGHT:wxTE_RIGHT');

     FWx_PropertyList.add('Wx_HorizontalAlignment : HorizontalAlignment');
     FWx_PropertyList.add('Wx_VerticalAlignment   : VerticalAlignment');
     FWx_PropertyList.add('Wx_StretchFactor   : StretchFactor');


     FWx_EventList.add('EVT_TEXT_ENTER:OnEnter');
     FWx_EventList.add('EVT_TEXT:OnUpdated');
     FWx_EventList.add('EVT_UPDATE_UI:OnUpdateUI');
     FWx_EventList.add('EVT_TEXT_MAXLEN:OnMaxLen');
     FWx_EventList.add('EVT_TEXT_URL:OnClickUrl');

end;

destructor TWxMemo.Destroy;
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


function TWxMemo.GenerateEnumControlIDs:String;
begin
     Result:='';
     if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
        Result:=Format('%s = %d , ',[Wx_IDName,Wx_IDValue]);
end;

function TWxMemo.GenerateControlIDs:String;
begin
     Result:='';
     if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
        Result:=Format('#define %s %d ',[Wx_IDName,Wx_IDValue]);
end;


function TWxMemo.GenerateEventTableEntries(CurrClassName:String):String;
begin
     Result:='';

     if trim(EVT_TEXT_ENTER) <> '' then
     begin
          Result:=Format('EVT_TEXT_ENTER(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TEXT_ENTER]) +'';
     end;

     if trim(EVT_UPDATE_UI) <> '' then
     begin
          Result:=Result+#13+Format('EVT_UPDATE_UI(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_UPDATE_UI]) +'';
     end;

     if trim(EVT_TEXT) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TEXT(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TEXT]) +'';
     end;

     if trim(EVT_TEXT_MAXLEN) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TEXT_MAXLEN(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TEXT_MAXLEN]) +'';
     end;

     if trim(EVT_TEXT_URL) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TEXT_URL(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TEXT_URL]) +'';
     end;

end;

function TWxMemo.GenerateGUIControlCreation:String;


     var
     strColorStr:String;
     strStyle,parentName,strAlignment:String;
     i:Integer;
begin
     Result:='';


//    if (self.Parent is TForm) or (self.Parent is TWxSizerPanel) then
//       parentName:=GetWxWidgetParent(self)
//    else
//       parentName:=self.Parent.name;

    parentName:=GetWxWidgetParent(self);



    Wx_EditStyle:=Wx_EditStyle+[wxTE_MULTILINE];

    strStyle:=GetEditSpecificStyle(self.Wx_GeneralStyle,self.Wx_EditStyle);

    //if trim(strStyle) <> '' then
    //   strStyle:=',' +strStyle;

    Result:=Format('%s =  new %s(%s, %s, "" , wxPoint(%d,%d),wxSize(%d,%d) %s);',[self.Name,self.wx_Class,parentName,GetWxIDString(self.Wx_IDName,self.Wx_IDValue),self.Left,self.Top,self.width,self.Height,strStyle] );

    if trim(self.Wx_ToolTip) <> '' then
        Result:=Result + #13+Format('%s->SetToolTip(wxT(_("%s")));',[self.Name,GetCppString(self.Wx_ToolTip)]);

    Result:=Result + #13+Format('%s->SetMaxLength(%d);',[self.Name,self.Wx_MaxLength]);

    if self.Wx_Hidden then
        Result:=Result + #13+Format('%s->Show(false);',[self.Name]);

    if not Wx_Enabled then
        Result:=Result + #13+Format('%s->Enable(false);',[self.Name]);

    if trim(self.Wx_HelpText) <> '' then
        Result:=Result +#13+Format('%s->SetHelpText(_("%s"));',[self.Name,GetCppString(self.Wx_HelpText)]);

    for i:= 0 to self.Lines.count -1 Do
    begin
        if i = self.Lines.count -1 then
           Result:=Result +#13+Format('%s->AppendText(_("%s"));',[self.Name,GetCppString(self.Lines[i])])
        else
            Result:=Result +#13+Format('%s->AppendText(_("%s\n"));',[self.Name,GetCppString(self.Lines[i])]);
    end;

    strColorStr:=trim(GetwxColorFromString(InvisibleFGColorString));
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetForegroundColour(%s);',[self.Name,strColorStr]);

    strColorStr:=trim(GetwxColorFromString(InvisibleBGColorString));
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetBackgroundColour(%s);',[self.Name,strColorStr]);


    strColorStr:=GetWxFontDeclaration(self.Font);
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetFont(%s);',[self.Name,strColorStr]);

    if(self.Parent is TWxSizerPanel) then
    begin
        strAlignment:=SizerAlignmentToStr(Wx_HorizontalAlignment) + ' | '+ SizerAlignmentToStr(Wx_VerticalAlignment) +' | wxALL';
        if wx_ControlOrientation = wxControlVertical then
            strAlignment:=SizerAlignmentToStr(Wx_HorizontalAlignment)+ ' | wxALL';

         if wx_ControlOrientation = wxControlHorizontal then
             strAlignment:=SizerAlignmentToStr(Wx_VerticalAlignment)+ ' | wxALL';


         Result:=Result +#13+Format('%s->Add(%s,%d,%s,%d);',[self.Parent.Name,self.Name,self.Wx_StretchFactor,strAlignment,self.Wx_Border]);
    end;

end;

function TWxMemo.GenerateGUIControlDeclaration:String;
begin
     Result:='';
     Result:=Format('%s *%s;',[Self.wx_Class,Self.Name]);
end;

function TWxMemo.GenerateHeaderInclude:String;
begin
     Result:='';
Result:='#include <wx/textctrl.h>';
end;

function TWxMemo.GenerateImageInclude: string;
begin

end;

function TWxMemo.GetEventList:TStringlist;
begin
Result:=FWx_EventList;
end;

function TWxMemo.GetIDName:String;
begin
     Result:=wx_IDName;
end;

function TWxMemo.GetIDValue:LongInt;
begin
     Result:=wx_IDValue;
end;

function TWxMemo.GetParameterFromEventName(EventName: string):String;
begin
if EventName = 'EVT_TEXT' then
begin
 Result:='wxCommandEvent& event';
 exit;
end;
if EventName = 'EVT_TEXT_MAXLEN' then
begin
 Result:='wxCommandEvent& event';
 exit;
end;
if EventName = 'EVT_TEXT_URL' then
begin
 Result:='wxTextUrlEvent& event';
 exit;
end;
if EventName = 'EVT_TEXT_ENTER' then
begin
 Result:='wxCommandEvent& event';
 exit;
end;
if EventName = 'EVT_UPDATE_UI' then
begin
 Result:='wxUpdateUIEvent& event';
 exit;
end;

end;

function TWxMemo.GetPropertyList:TStringList;
begin
     Result:=FWx_PropertyList;
end;

function TWxMemo.GetStretchFactor:integer;
begin
    result:=Wx_StretchFactor;
end;

function TWxMemo.GetTypeFromEventName(EventName: string):string;
begin

end;

function TWxMemo.GetWxClassName:String;
begin
     if wx_Class = '' then
        wx_Class:='wxTextCtrl';
     Result:=wx_Class;
end;

procedure TWxMemo.Loaded;
begin
     inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }
     self.ScrollBars:=ssVertical;
end;

procedure TWxMemo.SaveControlOrientation(ControlOrientation:TWxControlOrientation);
begin
     wx_ControlOrientation:=ControlOrientation;
end;

procedure TWxMemo.SetIDName(IDName:String);
begin
     wx_IDName:=IDName;
end;

procedure TWxMemo.SetIDValue(IDValue:longInt);
begin
     Wx_IDValue:=IDVAlue;
end;

procedure TWxMemo.SetStretchFactor(intValue:Integer);
begin
    Wx_StretchFactor:=intValue;
end;

procedure TWxMemo.SetWxClassName(wxClassName:String);
begin
     wx_Class:=wxClassName;
end;

function TWxMemo.GetFGColor:string;
begin
   Result:=FInvisibleFGColorString;
end;

procedure TWxMemo.SetFGColor(strValue:String);
begin
    FInvisibleFGColorString:=strValue;
   if IsDefaultColorStr(strValue) then
	self.Font.Color:=defaultFGColor
   else
	self.Font.Color:=GetColorFromString(strValue);
end;
    
function TWxMemo.GetBGColor:string;
begin
   Result:=FInvisibleBGColorString;
end;

procedure TWxMemo.SetBGColor(strValue:String);
begin
    FInvisibleBGColorString:=strValue;
   if IsDefaultColorStr(strValue) then
	self.Color:=defaultBGColor
   else
	self.Color:=GetColorFromString(strValue);
end;
procedure TWxMemo.SetProxyFGColorString(value:String);
begin
    FInvisibleFGColorString:=value;
    self.Color:=GetColorFromString(value);
end;

procedure TWxMemo.SetProxyBGColorString(value:String);
begin
   FInvisibleBGColorString:=value;
   self.Font.Color:=GetColorFromString(value);
end;

end.
