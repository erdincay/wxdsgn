unit WxScrolledWindow;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms,Graphics,wxUtils,wxSizerPanel;

type
  TWxScrolledWindow = class(TScrollBox,IWxComponentInterface,IWxWindowInterface,IWxContainerInterface,IWxContainerAndSizerInterface)
  private
    { Private declarations }
        FWx_BKColor : TColor;
        FWx_Border : Integer;
        FWx_Class : String;
        FWx_ControlOrientation : TWxControlOrientation;
        FWx_Default : Boolean;
        FWx_Enabled : Boolean;
        FWx_EventList : TstringList;
        FWx_FGColor : TColor;
        FWx_GeneralStyle : TWxStdStyleSet;
        FWx_ScrollWinStyle : TWxScrWinStyleSet; 
        
        FWx_HelpText : String;
        FWx_Hidden : Boolean;
        FWx_HorizontalAlignment : TWxSizerHorizontalAlignment;
        FWx_IDName : String;
        FWx_IDValue : Longint;
        FWx_ProxyBGColorString : TWxColorString;
        FWx_ProxyFGColorString : TWxColorString;
        FWx_StretchFactor : Integer;
        FWx_ToolTip : String;
        FWx_VerticalAlignment : TWxSizerVerticalAlignment;
        FWx_PropertyList : TStringList;
        FInvisibleBGColorString : String;
        FInvisibleFGColorString : String;
        {Event Lisiting}
        FEVT_UPDATE_UI : String;
      { Private methods of TWxPanel }
        procedure AutoInitialize;
        procedure AutoDestroy;
  protected
    { Protected declarations }
  public
    { Public declarations }
      { Public fields and properties of TWxPanel }
       defaultBGColor:TColor;
       defaultFGColor:TColor;
      { Public methods of TWxPanel }
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
        function GenerateLastCreationCode:String;
  published
      { Published properties of TWxPanel }
        property Wx_BKColor : TColor read FWx_BKColor write FWx_BKColor;
        property Wx_Border : Integer read FWx_Border write FWx_Border default 5;
        property Wx_Class : String read FWx_Class write FWx_Class;
        property Wx_ControlOrientation : TWxControlOrientation read FWx_ControlOrientation write FWx_ControlOrientation;
        property Wx_Default : Boolean read FWx_Default write FWx_Default;
        property Wx_Enabled : Boolean read FWx_Enabled write FWx_Enabled default True;
        property Wx_EventList : TstringList read FWx_EventList write FWx_EventList;
        property Wx_FGColor : TColor read FWx_FGColor write FWx_FGColor;
        property Wx_GeneralStyle : TWxStdStyleSet read FWx_GeneralStyle write FWx_GeneralStyle;
        property Wx_ScrollWinStyle : TWxScrWinStyleSet read FWx_ScrollWinStyle write FWx_ScrollWinStyle;
        property Wx_HelpText : String read FWx_HelpText write FWx_HelpText;
        property Wx_Hidden : Boolean read FWx_Hidden write FWx_Hidden;
        property Wx_HorizontalAlignment : TWxSizerHorizontalAlignment read FWx_HorizontalAlignment write FWx_HorizontalAlignment default wxSZALIGN_CENTER_HORIZONTAL;
        property Wx_IDName : String read FWx_IDName write FWx_IDName;
        property Wx_IDValue : Longint read FWx_IDValue write FWx_IDValue default -1;
        property Wx_ProxyBGColorString : TWxColorString read FWx_ProxyBGColorString write FWx_ProxyBGColorString;
        property Wx_ProxyFGColorString : TWxColorString  read FWx_ProxyFGColorString write FWx_ProxyFGColorString;
        property Wx_StretchFactor : Integer read FWx_StretchFactor write FWx_StretchFactor default 0;
	    property Wx_StrechFactor : Integer read FWx_StretchFactor write FWx_StretchFactor;
        property Wx_ToolTip : String read FWx_ToolTip write FWx_ToolTip;
        property Wx_VerticalAlignment : TWxSizerVerticalAlignment read FWx_VerticalAlignment write FWx_VerticalAlignment default wxSZALIGN_CENTER_VERTICAL;
        property InvisibleBGColorString:String read FInvisibleBGColorString write FInvisibleBGColorString;
        property InvisibleFGColorString:String read FInvisibleFGColorString write FInvisibleFGColorString;

        property EVT_UPDATE_UI : String read FEVT_UPDATE_UI write FEVT_UPDATE_UI;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('wxWidgets', [TWxScrolledWindow]);
end;
procedure TWxScrolledWindow.AutoInitialize;
begin
    Caption:='';
     FWx_PropertyList := TStringList.Create;
     FWx_EventList := TstringList.Create;
     FWx_Border := 5;
     FWx_Class := 'wxScrolledWindow';
     FWx_Enabled := True;
     FWx_HorizontalAlignment := wxSZALIGN_CENTER_HORIZONTAL;
     FWx_IDValue := -1;
     FWx_StretchFactor := 0;
     FWx_GeneralStyle:=[wxHSCROLL ,wxVSCROLL];
     FWx_VerticalAlignment := wxSZALIGN_CENTER_VERTICAL;
     FWx_ProxyBGColorString := TWxColorString.Create;
     FWx_ProxyFGColorString := TWxColorString.Create;
     defaultBGColor:=self.color;
     defaultFGColor:=self.font.color;
     
end; { of AutoInitialize }


procedure TWxScrolledWindow.AutoDestroy;
begin
     FWx_PropertyList.Free;
     FWx_EventList.Free;
     FWx_ProxyBGColorString.Destroy;
     FWx_ProxyFGColorString.Destroy;
end; { of AutoDestroy }

constructor TWxScrolledWindow.Create(AOwner: TComponent);
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

     { Code to perform other tasks when the container is created    }
    FWx_PropertyList.add('wx_Class:Base Class');
    FWx_PropertyList.add('Wx_Hidden :Hidden');
    FWx_PropertyList.add('Wx_Border : Border ');
     FWx_PropertyList.add('Wx_HelpText :HelpText ');
     FWx_PropertyList.add('Wx_IDName : IDName ');
     FWx_PropertyList.add('Wx_IDValue : IDValue ');
     FWx_PropertyList.add('Wx_ToolTip :ToolTip ');
     FWx_PropertyList.add('Name : Name');
     FWx_PropertyList.add('Left : Left');
     FWx_PropertyList.add('Top : Top');
     FWx_PropertyList.add('Width : Width');
     FWx_PropertyList.add('Height:Height');
     FWx_PropertyList.add('Wx_ProxyBGColorString:Background Color');
     FWx_PropertyList.add('Wx_ProxyFGColorString:Foreground Color');
     FWx_PropertyList.add('Wx_GeneralStyle: General Styles');
     FWx_PropertyList.add('Wx_ScrollWinStyle: Scrolled Window Styles');
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
     FWx_PropertyList.add('wxRETAINED :wxRETAINED ');
     FWx_PropertyList.add('Wx_HorizontalAlignment : HorizontalAlignment');
     FWx_PropertyList.add('Wx_VerticalAlignment   : VerticalAlignment');
     FWx_PropertyList.add('Wx_StretchFactor   : StretchFactor');
     FWx_EventList.add('EVT_UPDATE_UI:OnUpdateUI');
     
end;

destructor TWxScrolledWindow.Destroy;
begin
     { AutoDestroy, which is generated by Component Create, frees any   }
     { objects created by AutoInitialize.                               }
     AutoDestroy;

     { Last, free the component by calling the Destroy method of the    }
     { parent class.                                                    }
     inherited Destroy;
end;


function TWxScrolledWindow.GenerateEnumControlIDs:String;
begin
     Result:='';
     if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
        Result:=Format('%s = %d , ',[Wx_IDName,Wx_IDValue]);
end;

function TWxScrolledWindow.GenerateControlIDs:String;
begin
     Result:='';
     if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
        Result:=Format('#define %s %d ',[Wx_IDName,Wx_IDValue]);
end;

function TWxScrolledWindow.GenerateEventTableEntries(CurrClassName:String):String;
begin

     Result:='';
     if trim(EVT_UPDATE_UI) <> '' then
     begin
          Result:=Result+#13+Format('EVT_UPDATE_UI(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_UPDATE_UI]) +'';
     end;

end;

function TWxScrolledWindow.GenerateGUIControlCreation:String;
var
     strColorStr:String;
     strStyle,parentName,strAlignment:String;
begin
     Result:='';

//    if (self.Parent is TForm) or (self.Parent is TWxSizerPanel) then
//       parentName:=GetWxWidgetParent(self)
//    else
//       parentName:=self.Parent.name;

    parentName:=GetWxWidgetParent(self);



    strStyle:=GetScrolledWindowSpecificStyle(self.Wx_GeneralStyle,self.Wx_ScrollWinStyle);

    Result:=Format('%s =  new %s(%s, %s, wxPoint(%d,%d),wxSize(%d,%d) %s);',[self.Name,self.wx_Class,parentName,GetWxIDString(self.Wx_IDName,self.Wx_IDValue),self.Left,self.Top,self.width,self.Height,strStyle] );

    if trim(self.Wx_ToolTip) <> '' then
        Result:=Result + #13+Format('%s->SetToolTip(wxT(_("%s")));',[self.Name,GetCppString(self.Wx_ToolTip)]);

    if self.Wx_Hidden then
        Result:=Result + #13+Format('%s->Show(false);',[self.Name]);

    if not Wx_Enabled then
        Result:=Result + #13+Format('%s->Enable(false);',[self.Name]);

    if trim(self.Wx_HelpText) <> '' then
        Result:=Result +#13+Format('%s->SetHelpText(_("%s"));',[self.Name,GetCppString(self.Wx_HelpText)]);

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

function TWxScrolledWindow.GenerateGUIControlDeclaration:String;
begin
     Result:='';
     Result:=Format('%s *%s;',[Self.wx_Class,Self.Name]);
end;

function TWxScrolledWindow.GenerateHeaderInclude:String;
begin
     Result:='';
Result:='#include <wx/scrolwin.h>';
end;

function TWxScrolledWindow.GenerateImageInclude: string;
begin

end;

function TWxScrolledWindow.GetEventList:TStringlist;
begin
Result:=FWx_EventList;
end;

function TWxScrolledWindow.GetIDName:String;
begin
     Result:='';
     Result:=wx_IDName;
end;

function TWxScrolledWindow.GetIDValue:LongInt;
begin
     Result:=wx_IDValue;
end;

function TWxScrolledWindow.GetParameterFromEventName(EventName: string):String;
begin
    if EventName = 'EVT_UPDATE_UI' then
    begin
        Result:='wxUpdateUIEvent& event';
        exit;
    end;
end;

function TWxScrolledWindow.GetPropertyList:TStringList;
begin
     Result:=FWx_PropertyList;
end;

function TWxScrolledWindow.GetStretchFactor:integer;
begin
    result:=Wx_StretchFactor;
end;

function TWxScrolledWindow.GetTypeFromEventName(EventName: string):string;
begin

end;

function TWxScrolledWindow.GetWxClassName:String;
begin
     if trim(wx_Class) = '' then
        wx_Class:='wxScrolledWindow';
     Result:=wx_Class;
end;

procedure TWxScrolledWindow.SaveControlOrientation(ControlOrientation:TWxControlOrientation);
begin
wx_ControlOrientation:=ControlOrientation;
end;

procedure TWxScrolledWindow.SetIDName(IDName:String);
begin
     wx_IDName:=IDName;
end;

procedure TWxScrolledWindow.SetIDValue(IDValue:longInt);
begin
     Wx_IDValue:=IDVAlue;
end;

procedure TWxScrolledWindow.SetStretchFactor(intValue:Integer);
begin
    Wx_StretchFactor:=intValue;
end;

procedure TWxScrolledWindow.SetWxClassName(wxClassName:String);
begin
     wx_Class:=wxClassName;
end;

function TWxScrolledWindow.GetFGColor:string;
begin
   Result:=FInvisibleFGColorString;
end;

procedure TWxScrolledWindow.SetFGColor(strValue:String);
begin
    FInvisibleFGColorString:=strValue;
   if IsDefaultColorStr(strValue) then
	self.Font.Color:=defaultFGColor
   else
	self.Font.Color:=GetColorFromString(strValue);
end;
    
function TWxScrolledWindow.GetBGColor:string;
begin
   Result:=FInvisibleBGColorString;
end;

procedure TWxScrolledWindow.SetBGColor(strValue:String);
begin
    FInvisibleBGColorString:=strValue;
   if IsDefaultColorStr(strValue) then
	self.Color:=defaultBGColor
   else
	self.Color:=GetColorFromString(strValue);
end;

procedure TWxScrolledWindow.SetProxyFGColorString(value:String);
begin
    FInvisibleFGColorString:=value;
    self.Color:=GetColorFromString(value);
end;

procedure TWxScrolledWindow.SetProxyBGColorString(value:String);
begin
   FInvisibleBGColorString:=value;
   self.Font.Color:=GetColorFromString(value);
end;

function TWxScrolledWindow.GenerateLastCreationCode:String;
begin
    Result:='';
end;


end.
