{ ****************************************************************** }
{                                                                    }
{   VCL component TWxBoxSizer                                        }
{                                                                    }
{   Code generated by Component Create for Delphi                    }
{                                                                    }
{   Generated from source file wxboxsizer.cd }
{   on 10 Oct 2004 at 0:49                                           }
{                                                                    }
{   Copyright � 2004 by Guru Kathiresan                              }
{                                                                    }
{ ****************************************************************** }

unit WXBoxSizer;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls, 
     Forms, Graphics, Extctrls, WxUtils, WxSizerPanel,dbugIntf;

type
  TWxBoxSizer = class(TWxSizerPanel,IWxComponentInterface,IWxContainerAndSizerInterface)
    private
      { Private fields of TWxBoxSizer }
        { Storage for property Orientation }
        FOrientation : TWxSizerOrientation;
        { Storage for property SpaceValue }
        FSpaceValue : Integer;
        { Storage for property Wx_Class }
        FWx_Class : String;
        { Storage for property Wx_ControlOrientation }
        FWx_ControlOrientation : TWxControlOrientation;
        { Storage for property Wx_EventList }
        FWx_EventList : TStringList;
        { Storage for property Wx_HorizontalAlignment }
        FWx_HorizontalAlignment : TWxSizerHorizontalAlignment;
        { Storage for property Wx_IDName }
        FWx_IDName : String;
        { Storage for property Wx_IDValue }
        FWx_IDValue : Integer;
        { Storage for property Wx_StretchFactor }
        FWx_StretchFactor : Integer;
        { Storage for property Wx_VerticalAlignment }
        FWx_VerticalAlignment : TWxSizerVerticalAlignment;
        FWx_PropertyList : TStringList;
        FInvisibleBGColorString : String;
        FInvisibleFGColorString : String;
      { Private methods of TWxBoxSizer }
        { Method to set variable and property values and create objects }
        procedure AutoInitialize;
        { Method to free any objects created by AutoInitialize }
        procedure AutoDestroy;
        { Write method for property Wx_EventList }
        procedure SetWx_EventList(Value : TStringList);

    protected
      { Protected fields of TWxBoxSizer }

      { Protected methods of TWxBoxSizer }
        procedure Click; override;
        procedure KeyPress(var Key : Char); override;
        procedure Resize; override;
        procedure Loaded; override;
        procedure WMPaint(var Message: TWMPaint); message WM_PAINT;

    public
      { Public fields and properties of TWxBoxSizer }

      { Public methods of TWxBoxSizer }
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
        function GenerateLastCreationCode:String;
    published
      { Published properties of TWxBoxSizer }
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
        property Orientation : TWxSizerOrientation
             read FOrientation write FOrientation
             default wxHorizontal;
        property SpaceValue : Integer
             read FSpaceValue write FSpaceValue
             default 5;
        property Wx_Class : String read FWx_Class write FWx_Class;
        property Wx_ControlOrientation : TWxControlOrientation
             read FWx_ControlOrientation write FWx_ControlOrientation;
        property Wx_EventList : TStringList
             read FWx_EventList write SetWx_EventList;
        property Wx_HorizontalAlignment : TWxSizerHorizontalAlignment
             read FWx_HorizontalAlignment write FWx_HorizontalAlignment
             default wxSZALIGN_CENTER_HORIZONTAL;
        property Wx_IDName : String read FWx_IDName write FWx_IDName;
        property Wx_IDValue : Integer
             read FWx_IDValue write FWx_IDValue
             default -1;
        property Wx_StretchFactor : Integer
             read FWx_StretchFactor write FWx_StretchFactor;
	
	property Wx_StrechFactor : Integer
		read FWx_StretchFactor write FWx_StretchFactor;

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
     { Register TWxBoxSizer with wxTest as its
       default page on the Delphi component palette }
     RegisterComponents('wxTest', [TWxBoxSizer]);
end;

{ Method to set variable and property values and create objects }
procedure TWxBoxSizer.AutoInitialize;
begin
	
     FWx_PropertyList := TStringList.Create;
     FOrientation := wxHorizontal;
     FSpaceValue := 5;
     FWx_Class := 'wxBoxSizer';
     FWx_EventList := TStringList.Create;
     FWx_HorizontalAlignment := wxSZALIGN_CENTER_HORIZONTAL;
     FWx_IDValue := -1;
     FWx_VerticalAlignment := wxSZALIGN_CENTER_VERTICAL;
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxBoxSizer.AutoDestroy;
begin
     FWx_PropertyList.Free;
     FWx_EventList.Free;
end; { of AutoDestroy }

{ Write method for property Wx_EventList }
procedure TWxBoxSizer.SetWx_EventList(Value : TStringList);
begin
     { Use Assign method because TStringList is an object type
       and FWx_EventList has been created. }
     FWx_EventList.Assign(Value);

     { If changing this property affects the appearance of
       the component, call Invalidate here so the image will be
       updated. }
     { Invalidate; }
end;

{ Override OnClick handler from TWxSizerPanel,IWxComponentInterface }
procedure TWxBoxSizer.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

     { Activate click behavior of parent }
     inherited Click;

     { Code to execute after click behavior
       of parent }

end;

{ Override OnKeyPress handler from TWxSizerPanel,IWxComponentInterface }
procedure TWxBoxSizer.KeyPress(var Key : Char);
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

{ Override OnResize handler from TWxSizerPanel,IWxComponentInterface }
procedure TWxBoxSizer.Resize;
begin
     { Parent's Resize method }
     inherited Resize;

     { Code to perform other actions (e.g., resizing any sub-
       components) needed in response to change in size of this
       component }

end;

constructor TWxBoxSizer.Create(AOwner: TComponent);
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
     FWx_PropertyList.add('Name : Name');
     FWx_PropertyList.add('SpaceValue : Border');
     FWx_PropertyList.add('Orientation : Orientation');
     FWx_PropertyList.add('Wx_HorizontalAlignment : HorizontalAlignment');
     FWx_PropertyList.add('Wx_VerticalAlignment   : VerticalAlignment');
     FWx_PropertyList.add('Wx_StretchFactor   : StretchFactor');
          
end;

destructor TWxBoxSizer.Destroy;
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


function TWxBoxSizer.GenerateEnumControlIDs:String;
begin
     Result:='';
     if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
        Result:=Format('%s = %d , ',[Wx_IDName,Wx_IDValue]);
end;

function TWxBoxSizer.GenerateControlIDs:String;
begin
     Result:='';
     if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
        Result:=Format('#define %s %d ',[Wx_IDName,Wx_IDValue]);
end;



function TWxBoxSizer.GenerateEventTableEntries(CurrClassName:String):String;
begin
     Result:='';
end;

function TWxBoxSizer.GenerateGUIControlCreation:String;
var
     strColorStr:String;
     strOrientation,strAlignment:String;
     parentName:String;
begin
    if Orientation = wxVertical then
       strOrientation:='wxVERTICAL'
    else
       strOrientation:='wxHORIZONTAL';

    Result:=Format('wxBoxSizer* %s = new wxBoxSizer(%s);',[self.Name,strOrientation]);

    strColorStr:=trim(GetwxColorFromString(InvisibleFGColorString));
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetForegroundColour(%s);',[self.Name,strColorStr]);

    strColorStr:=trim(GetwxColorFromString(InvisibleBGColorString));
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetBackgroundColour(%s);',[self.Name,strColorStr]);


    strColorStr:=GetWxFontDeclaration(self.Font);
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetFont(%s);',[self.Name,strColorStr]);

    if ((self.Parent is TForm) or (IsControlWxContainer(self.Parent)) )then
    begin
        if (self.Parent is TForm) then
            parentName:='this'
        else
            parentName:=self.Parent.Name;
         Result:=Result+#13+Format('%s->SetSizer(%s);',[parentName,self.Name]);
         Result:=Result+#13+Format('%s->SetAutoLayout(TRUE);',[parentName]);
    end
    else
    begin

        strAlignment:=SizerAlignmentToStr(Wx_HorizontalAlignment) + ' | '+ SizerAlignmentToStr(Wx_VerticalAlignment) +' | wxALL';
        if wx_ControlOrientation = wxControlVertical then
            strAlignment:=SizerAlignmentToStr(Wx_HorizontalAlignment)+ ' | wxALL';

         if wx_ControlOrientation = wxControlHorizontal then
             strAlignment:=SizerAlignmentToStr(Wx_VerticalAlignment)+ ' | wxALL';

         Result:=Result +#13+Format('%s->Add(%s,%d,%s,%d);',[self.Parent.Name,self.Name,self.Wx_StretchFactor,strAlignment,self.SpaceValue]);

    end;
    

end;

function TWxBoxSizer.GenerateGUIControlDeclaration:String;
begin
     Result:=Format('%s *%s;',[trim(Self.Wx_Class),trim(Self.Name)]);
end;

function TWxBoxSizer.GenerateHeaderInclude:String;
begin
//Result:='#include<wx/button.h>';
end;

function TWxBoxSizer.GenerateImageInclude: string;
begin

end;

function TWxBoxSizer.GetEventList:TStringlist;
begin
Result:=Wx_EventList;
end;

function TWxBoxSizer.GetIDName:String;
begin
Result:=wx_IDName;
end;

function TWxBoxSizer.GetIDValue:LongInt;
begin
Result:=wx_IDValue;
end;

function TWxBoxSizer.GetParameterFromEventName(EventName: string):String;
begin
if EventName = 'EVT_BUTTON' then
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

function TWxBoxSizer.GetPropertyList:TStringList;
begin
     Result:=FWx_PropertyList;
end;

function TWxBoxSizer.GetStretchFactor:Integer;
begin
    result:=Wx_StretchFactor;
end;

function TWxBoxSizer.GetTypeFromEventName(EventName: string):string;
begin

end;

function TWxBoxSizer.GetWxClassName:String;
begin
     if trim(wx_Class) = '' then
        wx_Class:='wxBoxSizer';
Result:=wx_Class;
end;

procedure TWxBoxSizer.Loaded;
begin
     inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

procedure TWxBoxSizer.SaveControlOrientation(ControlOrientation:TWxControlOrientation);
begin
     wx_ControlOrientation:=ControlOrientation;
end;

procedure TWxBoxSizer.SetIDName(IDName:String);
begin
wx_IDName:=IDName;
end;

procedure TWxBoxSizer.SetIDValue(IDValue:longInt);
begin
Wx_IDValue:=IDVAlue;
end;

procedure TWxBoxSizer.SetStretchFactor(intValue:Integer);
begin
    Wx_StretchFactor:=intValue;
end;

procedure TWxBoxSizer.SetWxClassName(wxClassName:String);
begin
wx_Class:=wxClassName;
end;

procedure TWxBoxSizer.WMPaint(var Message: TWMPaint);
var
    maxWidth,maxHt:Integer;
    totalmaxWidth,totalmaxHt:Integer;
    startX,nextX:Integer;
    i:Integer;
    TotalControlCount:Integer;
    coordTop,coordLeft:Integer;
    intAlignment:Integer;
    wxcompInterface: IWxComponentInterface;
    cntIntf:IWxContainerInterface;
begin
    intAlignment:=1;
     { Make this component look like its parent component by calling
       its parent's Paint method. }

     self.Caption:='';

     maxWidth:=0;

     totalmaxWidth:=0;
     totalmaxHt:=0;

     maxHt:=2*self.FSpaceValue;

    for i := 0 to self.ControlCount - 1 do
    begin
        //Calculate the total size for all childens
        if IsControlWxNonVisible(Controls[i]) then
            continue;

        totalmaxWidth:=totalmaxWidth+self.Controls[i].Width+ 2* self.FSpaceValue;
        totalmaxHt:=totalmaxHt+self.Controls[i].Height+2* self.FSpaceValue;

        if self.Controls[i].Width > maxWidth then
        begin
            maxWidth:=self.Controls[i].Width;
        end;

        if self.Controls[i].Height > maxHt then
        begin
            maxHt:=self.Controls[i].Height;
        end;

        //Set the control orientation
      if self.Controls[i].GetInterface(IID_IWxComponentInterface,wxcompInterface) then
      begin
            if Orientation = wxVertical then
                wxcompInterface.SaveControlOrientation(wxControlVertical)
            else
                wxcompInterface.SaveControlOrientation(wxControlHorizontal);
      end;
    end;

    if self.Parent is TForm then
    begin
        if (totalmaxWidth < 100) then
            self.Parent.ClientWidth:=100
        else
        begin
            if self.Orientation = wxHorizontal then
                self.Parent.ClientWidth:=totalmaxWidth
            else
                self.Parent.ClientWidth:=maxWidth+2* self.FSpaceValue;
        end;

        if (totalmaxht < 45)then
            self.Parent.ClientHeight:=35 + GetTotalHtOfAllToolBarAndStatusBar(self.Parent)
        else
        begin
            if self.Orientation = wxHorizontal then
            begin
                if maxht+2*self.FSpaceValue < 35 then
                    self.Parent.ClientHeight:=35 + GetTotalHtOfAllToolBarAndStatusBar(self.Parent)
                else
                    self.Parent.ClientHeight:=maxht+self.FSpaceValue+self.FSpaceValue+ GetTotalHtOfAllToolBarAndStatusBar(self.Parent);
            end
            else
                self.Parent.ClientHeight:=totalmaxht+ GetTotalHtOfAllToolBarAndStatusBar(self.Parent);
        end;
        self.Align:=alClient;
    end
    else
    begin

        if self.parent.GetInterface(IDD_IWxContainerInterface,cntIntf) then
            self.Align:=alClient
        else
            self.Align:=alNone;

        if self.Orientation = wxHorizontal then
        begin

            if maxWidth*self.ControlCount+self.ControlCount*2*self.FSpaceValue = 0 then
                self.Width:=4*self.FSpaceValue
            else
                self.Width:=totalmaxWidth;
            self.Height:=maxHt+2*self.FSpaceValue;
        end
        else
        begin
            if maxWidth = 0 then
                self.Width:=4*self.FSpaceValue
            else
            self.Width:=maxWidth+ 2*self.FSpaceValue;

            if maxHt*self.ControlCount+self.ControlCount* 2 *self.FSpaceValue = 0 then
                self.Height:=4*self.FSpaceValue
            else
                self.Height:=totalmaxHt;
        end;
    end;

 startX:=FSpaceValue;

 if Orientation = wxHorizontal then
 begin
    for i := 0 to self.ControlCount - 1 do
    begin
        if IsControlWxNonVisible(Controls[i]) then
            continue;

        //Top
        if intAlignment = 0 then
        begin
            self.Controls[i].Top:=FSpaceValue;
            self.Controls[i].left:=startX;
            startX:=startX+self.Controls[i].Width+FSpaceValue +self.FSpaceValue;
        end;
        //Center
        if intAlignment = 1 then
        begin
            coordTop:=maxHt+ 2*FSpaceValue - self.Controls[i].Height;
            self.Controls[i].Top:=coordTop div 2;
            self.Controls[i].left:=startX;
            startX:=startX+self.Controls[i].Width+FSpaceValue +self.FSpaceValue;
        end;

    end;
end
else
begin
    for i := 0 to self.ControlCount - 1 do
    begin
        if IsControlWxNonVisible(Controls[i]) then
            continue;    
        //Top
        if intAlignment = 0 then
        begin
            self.Controls[i].left:=FSpaceValue;
            self.Controls[i].Top:=startX;
            startX:=startX+self.Controls[i].Height+FSpaceValue+ self.FSpaceValue;
        end;
        //Center
        if intAlignment = 1 then
        begin
            coordLeft:=maxWidth+ 2*FSpaceValue - self.Controls[i].width;
            self.Controls[i].left:=coordLeft div 2;
            self.Controls[i].Top:=startX;
            startX:=startX+self.Controls[i].Height+FSpaceValue+ self.FSpaceValue;
        end;
    end;
end;


    //if self.parent.GetInterface(IDD_IWxContainerInterface,cntIntf) then
    begin
        if Self.Height > parent.Height then
            parent.Height:=Self.Height;

        if Self.Width > parent.Width then
            parent.Width:=Self.Width  ;
    end;

     //sendDebug('Parent Ht = '+IntToStr(parent.Height) + ' Width = '+IntToStr(parent.Width));
     //sendDebug('Self Ht = '+IntToStr(Self.Height) + ' Width = '+IntToStr(self.Width));
     inherited;

end;

function TWxBoxSizer.GetFGColor:string;
begin
end;

procedure TWxBoxSizer.SetFGColor(strValue:String);
begin
end;

function TWxBoxSizer.GetBGColor:string;
begin
end;

procedure TWxBoxSizer.SetBGColor(strValue:String);
begin
end;

function TWxBoxSizer.GenerateLastCreationCode:String;
begin
    Result:='';
end;


end.
