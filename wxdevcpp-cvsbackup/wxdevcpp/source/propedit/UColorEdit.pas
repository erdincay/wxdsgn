unit UColorEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,wxutils, JvExButtons, JvButtons;

type
  TColorEdit = class(TForm)
    Bevel1: TBevel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    rbStandardColor: TRadioButton;
    rbSystemColor: TRadioButton;
    rbCustomColor: TRadioButton;
    cbStandardColor: TComboBox;
    cbSystemColor: TComboBox;
    txtRed: TEdit;
    txtGreen: TEdit;
    txtBlue: TEdit;
    rbDefaultColor: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btChoose: TButton;
    colorDlg: TColorDialog;
    pnlPreview: TPanel;
    Label4: TLabel;
    procedure btChooseClick(Sender: TObject);
    procedure rbDefaultColorClick(Sender: TObject);
    procedure rbStandardColorClick(Sender: TObject);
    procedure rbSystemColorClick(Sender: TObject);
    procedure rbCustomColorClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cbStandardColorChange(Sender: TObject);
    procedure cbSystemColorChange(Sender: TObject);
    procedure txtRedChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strColorString:String;
    function GetColorString:String;
    procedure SetColorString(strValue:String);

  end;

var
  ColorEdit: TColorEdit;

implementation

{$R *.dfm}

procedure TColorEdit.btChooseClick(Sender: TObject);
var
ColorInt: Integer;
begin
    colorDlg.Color:= RGB(StrToInt(txtRed.Text),StrToInt(txtGreen.Text),StrToInt(txtBlue.Text));
    if colorDlg.Execute = false then
        exit;
    ColorInt := ColorToRGB(colorDlg.Color);
    txtRed.Text:=IntToStr(GetRValue(ColorInt));
    txtGreen.Text:=IntToStr(GetGValue(ColorInt));
    txtBlue.Text:=IntToStr(GetBValue(ColorInt));
    
end;

procedure TColorEdit.rbDefaultColorClick(Sender: TObject);
begin
    cbStandardColor.enabled:=not rbDefaultColor.Checked;
    cbSystemColor.enabled:=not rbDefaultColor.Checked;
    btChoose.enabled:=not rbDefaultColor.Checked;
    pnlPreview.Color:=clBtnFace;
end;

procedure TColorEdit.rbStandardColorClick(Sender: TObject);
begin
    cbStandardColor.enabled:=rbStandardColor.Checked;
    cbSystemColor.enabled:=not rbStandardColor.Checked;
    btChoose.enabled:=not rbStandardColor.Checked;
    cbStandardColorChange(self);    
end;

procedure TColorEdit.rbSystemColorClick(Sender: TObject);
begin
    cbStandardColor.enabled:=not rbSystemColor.Checked;
    cbSystemColor.enabled:=rbSystemColor.Checked;
    btChoose.enabled:=not rbSystemColor.Checked;
    cbSystemColorChange(self);
end;

procedure TColorEdit.rbCustomColorClick(Sender: TObject);
begin
    cbStandardColor.enabled:=not rbCustomColor.Checked;
    cbSystemColor.enabled:=not rbCustomColor.Checked;
    btChoose.enabled:=rbCustomColor.Checked;
    txtRedChange(self);
end;

function TColorEdit.GetColorString:String;
begin
    Result:=''+self.strColorString;
end;

procedure TColorEdit.SetColorString(strValue:String);
var
    strChoice,strClr:String;
    ColorInt:Integer;
begin
    rbDefaultColor.Checked:=true;
    strColorString:=strValue;
    strChoice:=copy(strValue,0,4);
    strClr:=copy(strValue,4+1,length(strValue));
    if AnsiSameText(strChoice,'Def:') then
    begin
        rbDefaultColor.Checked:=true;
        
    end;
    if AnsiSameText(strChoice,'STD:') then
    begin
        rbStandardColor.Checked:=true;
        if cbStandardColor.Items.IndexOf(strClr) <> -1 then
        begin
            cbStandardColor.ItemIndex:=cbStandardColor.Items.IndexOf(strClr);
        end;
        cbStandardColorChange(self);

    end;

    if AnsiSameText(strChoice,'SYS:') then
    begin
        rbSystemColor.Checked:=true;
        if cbSystemColor.Items.IndexOf(strClr) <> -1 then
        begin
            cbSystemColor.ItemIndex:=cbSystemColor.Items.IndexOf(strClr);
        end;
        self.cbSystemColorChange(self);        
    end;

    if AnsiSameText(strChoice,'CUS:') then
    begin
        rbCustomColor.Checked:=true;
        strValue:=trim(strValue) ;
        pnlPreview.Color:=GetColorFromString(strValue);
        ColorInt := ColorToRGB(pnlPreview.Color);
        txtRed.Text:=IntToStr(GetRValue(ColorInt));
        txtGreen.Text:=IntToStr(GetGValue(ColorInt));
        txtBlue.Text:=IntToStr(GetBValue(ColorInt));

    end;


end;

procedure TColorEdit.btnOKClick(Sender: TObject);
begin
    if rbDefaultColor.Checked then
    begin
        strColorString:='DEF:';
    end;

    if rbStandardColor.Checked then
    begin
        strColorString:='STD:'+cbStandardColor.Items[cbStandardColor.itemindex];
    end;

    if rbSystemColor.Checked then
    begin
        strColorString:='SYS:'+cbSystemColor.Items[cbSystemColor.itemindex];
    end;
    if rbCustomColor.Checked then
    begin
        strColorString:='CUS:'+txtRed.Text+','+ txtGreen.Text+','+txtBlue.Text;
    end;
    close;
    ModalResult:=mrOk;
end;

procedure TColorEdit.cbStandardColorChange(Sender: TObject);
var
    clr:TColor;
begin
    if cbStandardColor.ItemIndex = -1 then
        exit;
    clr:=GetGeneralColorFromString(cbStandardColor.Items[cbStandardColor.ItemIndex]);
    pnlPreview.Color:=clr;
end;

procedure TColorEdit.cbSystemColorChange(Sender: TObject);
var
    clr:TColor;
begin
    if cbSystemColor.ItemIndex = -1 then
        exit;
    clr:=GetGeneralColorFromString(cbSystemColor.Items[cbSystemColor.ItemIndex]);
    pnlPreview.Color:=clr;
end;

procedure TColorEdit.txtRedChange(Sender: TObject);
var
    clr:TColor;
begin
    clr:= RGB(StrToInt(txtRed.Text),StrToInt(txtGreen.Text),StrToInt(txtBlue.Text)) ;
    pnlPreview.Color:=clr;    
end;

end.
