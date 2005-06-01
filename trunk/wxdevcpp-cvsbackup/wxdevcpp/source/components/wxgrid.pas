{ ****************************************************************** }
{                                                                    }
{ $Id$                                                               }
{                                                                    }
{   VCL component TWxGrid                                            }
{                                                                    }
{   Code generated by Component Create for Delphi                    }
{                                                                    }
{   Generated from source file wxgrid.cd }
{   on 11 Oct 2004 at 15:50                                          }
{                                                                    }
{   Copyright � 2004 by Guru Kathiresan                              }
{                                                                    }
{ ****************************************************************** }

unit WxGrid;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls, 
     Forms, Graphics, Grids,wxUtils,WxSizerPanel;

type
  TWxGrid = class(TStringGrid,IWxComponentInterface,IWxWindowInterface)
    private
      { Private fields of TWxGrid }
        FEVT_GRID_CELL_LEFT_CLICK : String ;
        FEVT_GRID_CELL_RIGHT_CLICK : String;
        FEVT_GRID_CELL_LEFT_DCLICK : String;
        FEVT_GRID_CELL_RIGHT_DCLICK : String;
        FEVT_GRID_LABEL_LEFT_CLICK : String;
        FEVT_GRID_LABEL_RIGHT_CLICK : String;
        FEVT_GRID_LABEL_LEFT_DCLICK : String;
        FEVT_GRID_LABEL_RIGHT_DCLICK : String;
        FEVT_GRID_CELL_CHANGE : String;
        FEVT_GRID_SELECT_CELL : String;
        FEVT_GRID_EDITOR_HIDDEN : String;
        FEVT_GRID_EDITOR_SHOWN : String;
        FEVT_GRID_COL_SIZE : String;
        FEVT_GRID_ROW_SIZE : String;
        FEVT_GRID_RANGE_SELECT : String;
        FEVT_GRID_EDITOR_CREATED : String;
        FEVT_UPDATE_UI: String;

        { Storage for property Wx_BGColor }
        FWx_BGColor : TColor;
        FWx_LabelColSize:Integer;
        FWx_LabelRowSize:Integer;
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
        FWx_Comments : TStrings;

        { Storage for property Wx_VerticalAlignment }
        FWx_VerticalAlignment : TWxSizerVerticalAlignment;
        FWx_EventList : TStringList;
        FWx_PropertyList : TStringList;

        FGridSelection:TWxGridSelection;

        FInvisibleBGColorString : String;
        FInvisibleFGColorString : String;


      { Private methods of TWxGrid }
        { Method to set variable and property values and create objects }
        procedure AutoInitialize;
        { Method to free any objects created by AutoInitialize }
        procedure AutoDestroy;
        
	{ Read method for property Wx_EditStyle }
        function GetWx_EditStyle : TWxEdtGeneralStyleSet;
        { Write method for property Wx_EditStyle }
        procedure SetWx_EditStyle(Value : TWxEdtGeneralStyleSet);

        function GetVirtualColCount:Integer;
        procedure SetVirtualColCount(value:Integer);

        function GetVirtualRowCount:Integer;
        procedure SetVirtualRowCount(value:Integer);

        function GetVirtualLabelColSize:Integer;
        procedure SetVirtualLabelColSize(value:Integer);
        function GetVirtualLabelRowSize:Integer;
        procedure SetVirtualLabelRowSize(value:Integer);

    protected
      { Protected fields of TWxGrid }

      { Protected methods of TWxGrid }
        procedure Click; override;
        procedure KeyPress(var Key : Char); override;
        procedure Loaded; override;
        procedure Paint; override;

    public
      { Public fields and properties of TWxGrid }
       defaultBGColor:TColor;	
       defaultFGColor:TColor;

      { Public methods of TWxGrid }
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
      { Published properties of TWxGrid }
        property OnClick;
        property OnDblClick;
        property OnDragDrop;
        property OnDrawCell;
        property OnEnter;
        property OnExit;
        property OnKeyDown;
        property OnKeyPress;
        property OnKeyUp;
        property OnMouseDown;
        property OnMouseMove;
        property OnMouseUp;
        property EVT_GRID_CELL_LEFT_CLICK : String read FEVT_GRID_CELL_LEFT_CLICK write FEVT_GRID_CELL_LEFT_CLICK;
        property EVT_GRID_CELL_RIGHT_CLICK : String read FEVT_GRID_CELL_RIGHT_CLICK write FEVT_GRID_CELL_RIGHT_CLICK;
        property EVT_GRID_CELL_LEFT_DCLICK : String read FEVT_GRID_CELL_LEFT_DCLICK write FEVT_GRID_CELL_LEFT_DCLICK;
        property EVT_GRID_CELL_RIGHT_DCLICK : String read FEVT_GRID_CELL_RIGHT_DCLICK write FEVT_GRID_CELL_RIGHT_DCLICK;
        property EVT_GRID_LABEL_LEFT_CLICK : String read FEVT_GRID_LABEL_LEFT_CLICK write FEVT_GRID_LABEL_LEFT_CLICK;
        property EVT_GRID_LABEL_RIGHT_CLICK : String read FEVT_GRID_LABEL_RIGHT_CLICK write FEVT_GRID_LABEL_RIGHT_CLICK;
        property EVT_GRID_LABEL_LEFT_DCLICK : String read FEVT_GRID_LABEL_LEFT_DCLICK write FEVT_GRID_LABEL_LEFT_DCLICK;
        property EVT_GRID_LABEL_RIGHT_DCLICK : String read FEVT_GRID_LABEL_RIGHT_DCLICK write FEVT_GRID_LABEL_RIGHT_DCLICK;
        property EVT_GRID_CELL_CHANGE : String read FEVT_GRID_CELL_CHANGE write FEVT_GRID_CELL_CHANGE;
        property EVT_GRID_SELECT_CELL : String read FEVT_GRID_SELECT_CELL write FEVT_GRID_SELECT_CELL;
        property EVT_GRID_EDITOR_HIDDEN : String read FEVT_GRID_EDITOR_HIDDEN write FEVT_GRID_EDITOR_HIDDEN;
        property EVT_GRID_EDITOR_SHOWN : String read FEVT_GRID_EDITOR_SHOWN write FEVT_GRID_EDITOR_SHOWN;
        property EVT_GRID_COL_SIZE : String read FEVT_GRID_COL_SIZE write FEVT_GRID_COL_SIZE;
        property EVT_GRID_ROW_SIZE : String read FEVT_GRID_ROW_SIZE write FEVT_GRID_ROW_SIZE;
        property EVT_GRID_RANGE_SELECT : String read FEVT_GRID_RANGE_SELECT write FEVT_GRID_RANGE_SELECT;
        property EVT_GRID_EDITOR_CREATED : String read FEVT_GRID_EDITOR_CREATED write FEVT_GRID_EDITOR_CREATED;
        property EVT_UPDATE_UI : String read FEVT_UPDATE_UI write FEVT_UPDATE_UI;

        property Wx_ColCount :Integer read GetVirtualColCount write SetVirtualColCount default 5;
        property Wx_RowCount :Integer read GetVirtualRowCount write SetVirtualRowCount default 5;

        property Wx_LabelColSize:Integer read GetVirtualLabelColSize write SetVirtualLabelColSize default 5;
        property Wx_LabelRowSize:Integer read GetVirtualLabelRowSize write SetVirtualLabelRowSize default 5;

        property Wx_BGColor : TColor read FWx_BGColor write FWx_BGColor;
        property Wx_Border : Integer read FWx_Border write FWx_Border default 5;
        property Wx_Class : String read FWx_Class write FWx_Class;
        property Wx_ControlOrientation : TWxControlOrientation read FWx_ControlOrientation write FWx_ControlOrientation;
        { TWxEdtGeneralStyleSet }
        property Wx_EditStyle : TWxEdtGeneralStyleSet read GetWx_EditStyle write SetWx_EditStyle;
        property Wx_Enabled : Boolean read FWx_Enabled write FWx_Enabled default True;
        property Wx_FGColor : TColor read FWx_FGColor write FWx_FGColor;
        property Wx_GeneralStyle : TWxStdStyleSet read FWx_GeneralStyle write FWx_GeneralStyle;
        property Wx_HelpText : String read FWx_HelpText write FWx_HelpText;
        property Wx_Hidden : Boolean read FWx_Hidden write FWx_Hidden;
        property Wx_HorizontalAlignment : TWxSizerHorizontalAlignment read FWx_HorizontalAlignment write FWx_HorizontalAlignment default wxSZALIGN_CENTER_HORIZONTAL;
        property Wx_IDName : String read FWx_IDName write FWx_IDName;
        property Wx_IDValue : Longint read FWx_IDValue write FWx_IDValue default -1;
        property Wx_GridSelection:TWxGridSelection read FGridSelection write FGridSelection default wxGridSelectCells;
        property Wx_ProxyBGColorString : TWxColorString read FWx_ProxyBGColorString write FWx_ProxyBGColorString;
        property Wx_ProxyFGColorString : TWxColorString read FWx_ProxyFGColorString write FWx_ProxyFGColorString;
	    property Wx_StrechFactor : Integer read FWx_StretchFactor write FWx_StretchFactor;
	    property Wx_StretchFactor : Integer read FWx_StretchFactor write FWx_StretchFactor default 0;
        property Wx_ToolTip : String read FWx_ToolTip write FWx_ToolTip;
        property Wx_VerticalAlignment : TWxSizerVerticalAlignment read FWx_VerticalAlignment write FWx_VerticalAlignment default wxSZALIGN_CENTER_VERTICAL;
        property InvisibleBGColorString:String read FInvisibleBGColorString write FInvisibleBGColorString;
        property InvisibleFGColorString:String read FInvisibleFGColorString write FInvisibleFGColorString;
        property Wx_Comments : TStrings read FWx_Comments write FWx_Comments;

  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxGrid with wxWidgets as its
       default page on the Delphi component palette }
     RegisterComponents('wxWidgets', [TWxGrid]);
end;

{ Method to set variable and property values and create objects }
procedure TWxGrid.AutoInitialize;
begin
     FWx_EventList := TStringList.Create;
     FWx_PropertyList := TStringList.Create;
     
     FWx_Border := 5;
     FWx_Class := 'wxGrid';
     FWx_Enabled := True;
     FWx_HorizontalAlignment := wxSZALIGN_CENTER_HORIZONTAL;
     FWx_IDValue := -1;
     FWx_StretchFactor := 0;
     FWx_VerticalAlignment := wxSZALIGN_CENTER_VERTICAL;
     FWx_ProxyBGColorString := TWxColorString.Create;
     FWx_ProxyFGColorString := TWxColorString.Create;
     defaultBGColor:=self.color;
     defaultFGColor:=self.font.color;
     FWx_Comments := TStringList.Create;

end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxGrid.AutoDestroy;
begin
     FWx_EventList.Free;
     FWx_PropertyList.Free;
     FWx_ProxyBGColorString.Free;
     FWx_ProxyFGColorString.Free;
          
end; { of AutoDestroy }

{ Read method for property Wx_EditStyle }
function TWxGrid.GetWx_EditStyle : TWxEdtGeneralStyleSet;
begin
     Result := FWx_EditStyle;
end;

{ Write method for property Wx_EditStyle }
procedure TWxGrid.SetWx_EditStyle(Value : TWxEdtGeneralStyleSet);
begin

end;

function TWxGrid.GetVirtualColCount:Integer;
begin
    Result:=ColCount-1;
end;

procedure TWxGrid.SetVirtualColCount(value:Integer);
var
  I: Integer;
begin
    if value < 1 then
        value:=1;

    ColCount:=value+1;
    for I := 1 to ColCount - 1 do    // Iterate
    begin
        self.Cols[0].Strings[i]:=IntToStr(i);
    end;    // for
end;

function TWxGrid.GetVirtualRowCount:Integer;
begin
    Result:=RowCount-1;
end;

procedure TWxGrid.SetVirtualRowCount(value:Integer);
var
    i:Integer;
    IncChar:Char;    
begin
    if value < 1 then
        value:=1;
    RowCount:=value+1;
    IncChar:='A';
    for I := 1 to RowCount - 1 do    // Iterate
    begin
        if IncChar = 'Z' then
            IncChar := 'A';    
        self.Rows[0].Strings[i]:=IncChar;
        inc(IncChar);
    end;    // for
end;

function TWxGrid.GetVirtualLabelColSize:Integer;
begin
    Result:=FWx_LabelColSize;
end;
procedure TWxGrid.SetVirtualLabelColSize(value:Integer);
begin
    ColWidths[0]:=value;
    FWx_LabelColSize:=value;
end;
function TWxGrid.GetVirtualLabelRowSize:Integer;
begin
    Result:=FWx_LabelRowSize;
end;
procedure TWxGrid.SetVirtualLabelRowSize(value:Integer);
begin
    RowHeights[0]:=value;
    FWx_LabelRowSize:=value;
end;

{ Override OnClick handler from TStringGrid }
procedure TWxGrid.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

     { Activate click behavior of parent }
     inherited Click;

     { Code to execute after click behavior
       of parent }

end;

{ Override OnKeyPress handler from TStringGrid }
procedure TWxGrid.KeyPress(var Key : Char);
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

constructor TWxGrid.Create(AOwner: TComponent);
begin
     { Call the Create method of the parent class }
     inherited Create(AOwner);

     { AutoInitialize sets the initial values of variables and      }
     { properties; also, it creates objects for properties of       }
     { standard Delphi object types (e.g., TFont, TTimer,           }
     { TPicture) and for any variables marked as objects.           }
     { AutoInitialize method is generated by Component Create.      }
     AutoInitialize;
     
     self.DefaultColWidth:=50;
     self.DefaultRowHeight:=25;

     self.Wx_LabelColSize:=50;
     self.Wx_LabelRowSize:=25;

	 self.RowCount:=5;
     self.ColCount:=5;

    SetVirtualRowCount(self.RowCount);
    SetVirtualColCount(self.ColCount);    

     { Code to perform other tasks when the component is created }
     { Code to perform other tasks when the component is created }
     FWx_PropertyList.add('Wx_Enabled :Enabled');
     FWx_PropertyList.add('Wx_Class :Base Class');
     FWx_PropertyList.add('Wx_Hidden :Hidden');
     FWx_PropertyList.add('Wx_Border : Border ');
     FWx_PropertyList.add('Wx_HelpText :HelpText ');
     FWx_PropertyList.add('Wx_IDName : IDName ');
     FWx_PropertyList.add('Wx_IDValue : IDValue ');
     FWx_PropertyList.add('Wx_ToolTip :ToolTip ');
     FWx_PropertyList.add('Wx_Enable :Enabled');
     FWx_PropertyList.add('Wx_Visible :Visible');
     FWx_PropertyList.add('Text : Text ');
     FWx_PropertyList.add('Name : Name');
     FWx_PropertyList.add('Left : Left');
     FWx_PropertyList.add('Top : Top');
     FWx_PropertyList.add('Width : Width');
     FWx_PropertyList.add('Height:Height');

     FWx_PropertyList.add('Wx_ProxyBGColorString:Background Color');
     FWx_PropertyList.add('Wx_ProxyFGColorString:Foreground Color');

     FWx_PropertyList.add('Wx_Comments:Comments');

     FWx_PropertyList.Add('Wx_RowCount:Row Count');
     FWx_PropertyList.Add('Wx_ColCount:Column Count');
     FWx_PropertyList.Add('DefaultColWidth:Column Width');
     FWx_PropertyList.Add('DefaultRowHeight:Row Height');

     FWx_PropertyList.Add('Wx_LabelColSize:Label Column Width');
     FWx_PropertyList.Add('Wx_LabelRowSize:Label Row Height');


    FWx_PropertyList.Add('Wx_GridSelection:Grid Selection');


     FWx_PropertyList.add('Wx_GeneralStyle: General Styles');
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
     FWx_PropertyList.Add('wxCLIP_CHILDREN:wxCLIP_CHILDREN');

     FWx_PropertyList.add('Font : Font');

     FWx_PropertyList.add('Wx_HorizontalAlignment : HorizontalAlignment');
     FWx_PropertyList.add('Wx_VerticalAlignment   : VerticalAlignment');

     FWx_PropertyList.add('Wx_StretchFactor   : StretchFactor');

    FWx_EventList.add('EVT_GRID_CELL_LEFT_CLICK:OnCellLeftClick');
    FWx_EventList.add('EVT_GRID_CELL_RIGHT_CLICK:OnCellRightClick');
    FWx_EventList.add('EVT_GRID_CELL_LEFT_DCLICK:OnCellLeftDoubleClick');
    FWx_EventList.add('EVT_GRID_CELL_RIGHT_DCLICK:OnCellRightDoubleClick');
    FWx_EventList.add('EVT_GRID_LABEL_LEFT_CLICK:OnLabelLeftClick');
    FWx_EventList.add('EVT_GRID_LABEL_RIGHT_CLICK:OnLabelRightClick');
    FWx_EventList.add('EVT_GRID_LABEL_LEFT_DCLICK:OnLabelLeftDoubleClick');
    FWx_EventList.add('EVT_GRID_LABEL_RIGHT_DCLICK:OnLabelRightDoubleClick');
    FWx_EventList.add('EVT_GRID_CELL_CHANGE:OnCellChange');
    FWx_EventList.add('EVT_GRID_SELECT_CELL:OnSelectCell');
    FWx_EventList.add('EVT_GRID_EDITOR_HIDDEN:OnEditorHidden');
    FWx_EventList.add('EVT_GRID_EDITOR_SHOWN:OnEditorShown');
    FWx_EventList.add('EVT_GRID_COL_SIZE:OnColumnSize');
    FWx_EventList.add('EVT_GRID_ROW_SIZE:OnRowSize');
    FWx_EventList.add('EVT_GRID_RANGE_SELECT:OnRangeSelect');
    FWx_EventList.add('EVT_GRID_EDITOR_CREATED:OnEditorCreated');
    FWx_EventList.add('EVT_UPDATE_UI:OnUpdateUI');


end;

destructor TWxGrid.Destroy;
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

procedure TWxGrid.Loaded;
begin
     inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

procedure TWxGrid.Paint;
begin
     { Make this component look like its parent component by calling
       its parent's Paint method. }
     inherited Paint;

     { To change the appearance of the component, use the methods 
       supplied by the component's Canvas property (which is of 
       type TCanvas).  For example, }

     { Canvas.Rectangle(0, 0, Width, Height); }
end;


function TWxGrid.GenerateEnumControlIDs:String;
begin
     Result:='';
     if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
        Result:=Format('%s = %d, ',[Wx_IDName,Wx_IDValue]);
end;

function TWxGrid.GenerateControlIDs:String;
begin
     Result:='';
     if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
        Result:=Format('#define %s %d ',[Wx_IDName,Wx_IDValue]);
end;

function TWxGrid.GenerateEventTableEntries(CurrClassName:String):String;
begin

     Result:='';

     if trim(EVT_GRID_CELL_LEFT_CLICK) <> '' then
     begin
          Result:=Format('EVT_GRID_CELL_LEFT_CLICK(%s::%s)',[CurrClassName,EVT_GRID_CELL_LEFT_CLICK]) +'';
     end;

     if trim(EVT_GRID_CELL_RIGHT_CLICK) <> '' then
     begin
          Result:=Result+#13+Format('EVT_GRID_CELL_RIGHT_CLICK(%s::%s)',[CurrClassName,EVT_GRID_CELL_RIGHT_CLICK]) +'';
     end;

     if trim(EVT_GRID_CELL_LEFT_DCLICK) <> '' then
     begin
          Result:=Result+#13+Format('EVT_GRID_CELL_LEFT_DCLICK(%s::%s)',[CurrClassName,EVT_GRID_CELL_LEFT_DCLICK]) +'';
     end;

     if trim(EVT_GRID_CELL_RIGHT_DCLICK) <> '' then
     begin
          Result:=Result+#13+Format('EVT_GRID_CELL_RIGHT_DCLICK(%s::%s)',[CurrClassName,EVT_GRID_CELL_RIGHT_DCLICK]) +'';
     end;

     if trim(EVT_GRID_LABEL_LEFT_CLICK) <> '' then
     begin
          Result:=Result+#13+Format('EVT_GRID_LABEL_LEFT_CLICK(%s::%s)',[CurrClassName,EVT_GRID_LABEL_LEFT_CLICK]) +'';
     end;
     if trim(EVT_GRID_LABEL_RIGHT_CLICK) <> '' then
     begin
          Result:=Format('EVT_GRID_LABEL_RIGHT_CLICK(%s::%s)',[CurrClassName,EVT_GRID_LABEL_RIGHT_CLICK]) +'';
     end;

     if trim(EVT_GRID_LABEL_LEFT_DCLICK) <> '' then
     begin
          Result:=Result+#13+Format('EVT_GRID_LABEL_LEFT_DCLICK(%s::%s)',[CurrClassName,EVT_GRID_LABEL_LEFT_DCLICK]) +'';
     end;

     if trim(EVT_GRID_LABEL_RIGHT_DCLICK) <> '' then
     begin
          Result:=Result+#13+Format('EVT_GRID_LABEL_RIGHT_DCLICK(%s::%s)',[CurrClassName,EVT_GRID_LABEL_RIGHT_DCLICK]) +'';
     end;

     if trim(EVT_GRID_CELL_CHANGE) <> '' then
     begin
          Result:=Result+#13+Format('EVT_GRID_CELL_CHANGE(%s::%s)',[CurrClassName,EVT_GRID_CELL_CHANGE]) +'';
     end;

     if trim(EVT_GRID_SELECT_CELL) <> '' then
     begin
          Result:=Result+#13+Format('EVT_GRID_SELECT_CELL(%s::%s)',[CurrClassName,EVT_GRID_SELECT_CELL]) +'';
     end;
     if trim(EVT_GRID_EDITOR_HIDDEN) <> '' then
     begin
          Result:=Result+#13+Format('EVT_GRID_EDITOR_HIDDEN(%s::%s)',[CurrClassName,EVT_GRID_EDITOR_HIDDEN]) +'';
     end;

     if trim(EVT_GRID_EDITOR_SHOWN) <> '' then
     begin
          Result:=Result+#13+Format('EVT_GRID_EDITOR_SHOWN(%s::%s)',[CurrClassName,EVT_GRID_EDITOR_SHOWN]) +'';
     end;

     if trim(EVT_GRID_COL_SIZE) <> '' then
     begin
        Result:=Result+#13+Format('EVT_GRID_COL_SIZE(%s::%s)',[CurrClassName,EVT_GRID_COL_SIZE]) +'';
     end;
    if trim(EVT_GRID_ROW_SIZE) <> '' then
     begin
        Result:=Result+#13+Format('EVT_GRID_ROW_SIZE(%s::%s)',[CurrClassName,EVT_GRID_ROW_SIZE]) +'';
     end;
     
     if trim(EVT_GRID_RANGE_SELECT) <> '' then
     begin
        Result:=Result+#13+Format('EVT_GRID_RANGE_SELECT(%s::%s)',[CurrClassName,EVT_GRID_RANGE_SELECT]) +'';
     end;
          if trim(EVT_GRID_EDITOR_CREATED) <> '' then
     begin
        Result:=Result+#13+Format('EVT_GRID_EDITOR_CREATED(%s::%s)',[CurrClassName,EVT_GRID_EDITOR_CREATED]) +'';
     end;
end;

function TWxGrid.GenerateGUIControlCreation:String;
var
     strColorStr,strSelectionStr:String;
     strStyle,parentName,strAlignment:String;
begin
     Result:='';

//    if (self.Parent is TForm) or (self.Parent is TWxSizerPanel) then
//       parentName:=GetWxWidgetParent(self)
//    else
//       parentName:=self.Parent.name;

    parentName:=GetWxWidgetParent(self);

   strStyle:=GetEditSpecificStyle(self.Wx_GeneralStyle,self.Wx_EditStyle);

    Result:= GetCommentString(self.FWx_Comments.Text)+ Format('%s = new %s(%s, %s, wxPoint(%d,%d), wxSize(%d,%d)%s);',[self.Name,self.wx_Class,parentName,GetWxIDString(self.Wx_IDName,self.Wx_IDValue),self.Left,self.Top,self.width,self.Height,strStyle] );

    if trim(self.Wx_ToolTip) <> '' then
        Result:=Result + #13+Format('%s->SetToolTip(%s);',[self.Name,GetCppString(self.Wx_ToolTip)]);

    if self.Wx_Hidden then
        Result:=Result + #13+Format('%s->Show(false);',[self.Name]);

    if not Wx_Enabled then
        Result:=Result + #13+Format('%s->Enable(false);',[self.Name]);

    if trim(self.Wx_HelpText) <> '' then
        Result:=Result +#13+Format('%s->SetHelpText(%s);',[self.Name,GetCppString(self.Wx_HelpText)]);

    strColorStr:=trim(GetwxColorFromString(InvisibleFGColorString));
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetForegroundColour(%s);',[self.Name,strColorStr]);

    strColorStr:=trim(GetwxColorFromString(InvisibleBGColorString));
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetBackgroundColour(%s);',[self.Name,strColorStr]);


    strColorStr:=GetWxFontDeclaration(self.Font);
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetFont(%s);',[self.Name,strColorStr]);

    strSelectionStr:=GetGridSelectionToString(self.Wx_GridSelection);
    strSelectionStr:='wxGrid::'+strSelectionStr;

    Result:=Result+#13+Format('%s->SetDefaultColSize(%d);',[self.Name,DefaultColWidth]);
    Result:=Result+#13+Format('%s->SetDefaultRowSize(%d);',[self.Name,DefaultRowHeight]);

    Result:=Result+#13+Format('%s->SetColLabelSize(%d);',[self.Name,Wx_LabelColSize]);
    Result:=Result+#13+Format('%s->SetRowLabelSize(%d);',[self.Name,Wx_LabelRowSize]);

	Result:=Result+#13+Format('%s->CreateGrid(%d,%d,%s);',[self.Name,wx_RowCount,wx_ColCount,strSelectionStr]);


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

function TWxGrid.GenerateGUIControlDeclaration:String;
begin
     Result:='';
     Result:=Format('%s *%s;',[Self.wx_Class,Self.Name]);
end;

function TWxGrid.GenerateHeaderInclude:String;
begin
     Result:='';
Result:='#include <wx/grid.h>';
end;

function TWxGrid.GenerateImageInclude: string;
begin

end;

function TWxGrid.GetEventList:TStringlist;
begin
Result:=FWx_EventList;
end;

function TWxGrid.GetIDName:String;
begin
     Result:='';
     Result:=wx_IDName;
end;

function TWxGrid.GetIDValue:LongInt;
begin
     Result:=wx_IDValue;
end;

function TWxGrid.GetParameterFromEventName(EventName: string):String;
begin
     Result:='';

     if trim(EVT_GRID_CELL_LEFT_CLICK) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;

     if trim(EVT_GRID_CELL_RIGHT_CLICK) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;

     if trim(EVT_GRID_CELL_LEFT_DCLICK) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;

     if trim(EVT_GRID_CELL_RIGHT_DCLICK) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;

     if trim(EVT_GRID_LABEL_LEFT_CLICK) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;
     if trim(EVT_GRID_LABEL_RIGHT_CLICK) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;

     if trim(EVT_GRID_LABEL_LEFT_DCLICK) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;

     if trim(EVT_GRID_LABEL_RIGHT_DCLICK) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;

     if trim(EVT_GRID_CELL_CHANGE) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;

     if trim(EVT_GRID_SELECT_CELL) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;
     if trim(EVT_GRID_EDITOR_HIDDEN) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;

     if trim(EVT_GRID_EDITOR_SHOWN) <> '' then
     begin
          Result:='wxGridEvent& event';
          exit;
     end;

     if trim(EVT_GRID_COL_SIZE) <> '' then
     begin
          Result:='wxGridSizeEvent& event';
          exit;
     end;
    if trim(EVT_GRID_ROW_SIZE) <> '' then
     begin
          Result:='wxGridSizeEvent& event';
          exit;
     end;
     
     if trim(EVT_GRID_RANGE_SELECT) <> '' then
     begin
          Result:='wxGridRangeSelectEvent& event';
          exit;
     end;
          if trim(EVT_GRID_EDITOR_CREATED) <> '' then
     begin
          Result:='wxGridEditorCreatedEvent& event';
          exit;
     end;

end;

function TWxGrid.GetPropertyList:TStringList;
begin
     Result:=FWx_PropertyList;
end;

function TWxGrid.GetStretchFactor:integer;
begin
    result:=Wx_StretchFactor;
end;

function TWxGrid.GetTypeFromEventName(EventName: string):string;
begin

end;

function TWxGrid.GetWxClassName:String;
begin
     if trim(wx_Class) = '' then
        wx_Class:='wxGrid';
     Result:=wx_Class;
end;

procedure TWxGrid.SaveControlOrientation(ControlOrientation:TWxControlOrientation);
begin
wx_ControlOrientation:=ControlOrientation;
end;

procedure TWxGrid.SetIDName(IDName:String);
begin
     wx_IDName:=IDName;
end;

procedure TWxGrid.SetIDValue(IDValue:longInt);
begin
     Wx_IDValue:=IDVAlue;
end;

procedure TWxGrid.SetStretchFactor(intValue:Integer);
begin
    Wx_StretchFactor:=intValue;
end;

procedure TWxGrid.SetWxClassName(wxClassName:String);
begin
     wx_Class:=wxClassName;
end;

function TWxGrid.GetFGColor:string;
begin
   Result:=FInvisibleFGColorString;
end;

procedure TWxGrid.SetFGColor(strValue:String);
begin
    FInvisibleFGColorString:=strValue;
   if IsDefaultColorStr(strValue) then
	self.Font.Color:=defaultFGColor
   else
	self.Font.Color:=GetColorFromString(strValue);
end;
    
function TWxGrid.GetBGColor:string;
begin
   Result:=FInvisibleBGColorString;
end;

procedure TWxGrid.SetBGColor(strValue:String);
begin
    FInvisibleBGColorString:=strValue;
   if IsDefaultColorStr(strValue) then
	self.Color:=defaultBGColor
   else
	self.Color:=GetColorFromString(strValue);
end;
procedure TWxGrid.SetProxyFGColorString(value:String);
begin
    FInvisibleFGColorString:=value;
    self.Color:=GetColorFromString(value);
end;

procedure TWxGrid.SetProxyBGColorString(value:String);
begin
   FInvisibleBGColorString:=value;
   self.Font.Color:=GetColorFromString(value);
end;


end.
