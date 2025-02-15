﻿unit untFrmTRANSLATE; // v. 4.0.0.0

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, System.TypInfo, // v. 4.0.0.0

  // feedback: Mesut from Turkey
  {$ifdef LINUX}
  System.UIConsts,
  {$endif}

  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniBasicGrid,
  uniDBGrid, uniEdit, uniLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniButton, uniBitBtn, uniMemo,

  IniFiles,

  uniHTMLFrame, uniImage, uniColorButton, uniColorPalette, Vcl.Imaging.jpeg,
  uniScrollBox, uniMultiItem, uniComboBox, uniCheckBox, uniSpinEdit,
  uniPropertyGrid, uniStringGrid;

type
  TfrmTranslate = class(TUniForm)
    UniContainerPanel16: TUniContainerPanel;
    UniScrollBox1: TUniScrollBox;
    paTitulo: TUniContainerPanel;
    paSearchContent1: TUniContainerPanel;
    labTitleFrm: TUniLabel;
    labSelectedColor: TUniLabel;
    paGridB: TUniContainerPanel;
    UniContainerPanel22: TUniContainerPanel;
    UniLabel32: TUniLabel;
    UniContainerPanel17: TUniContainerPanel;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel13: TUniLabel;
    sgProps: TUniStringGrid;
    mmContent: TUniMemo;
    memProps: TFDMemTable;
    dsMemProps: TDataSource;
    cbForm: TUniComboBox;
    cbLanguage: TUniComboBox;
    btnSave: TUniBitBtn;
    bntCancel: TUniBitBtn;
    btnExit: TUniBitBtn;
    procedure UniFormShow(Sender: TObject);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniFormCreate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure sgPropsSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cbLanguageChange(Sender: TObject);
    procedure cbFormChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure bntCancelClick(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    vOldContent : string;

    procedure rc_RefreshFormList;
    procedure rc_RefreshTranslateItems;
  end;

function frmTranslate: TfrmTranslate;

implementation

{$R *.dfm}

uses
  uniGUIApplication, ServerModule, MainModule, uConsts,
  Main, mkm_func_web, untdm_rc, mkm_layout, mkm_anim, mkm_translate, str_func;

function frmTranslate: TfrmTranslate;
begin
  Result := TfrmTranslate(mm.GetFormInstance(TfrmTranslate));
end;

procedure TfrmTranslate.cbFormChange(Sender: TObject);
begin
     if ( cbForm.Text <> '' ) and ( cbLanguage.Text <> '' ) then
     begin
        rc_RefreshTranslateItems;
     end;
end;

procedure TfrmTranslate.cbLanguageChange(Sender: TObject);
begin
     if( cbLanguage.Text <> '' ) then
     begin
        cbLanguage.Text := dm_rc.rc_StripHtmlTags( cbLanguage.Text );
        rc_RefreshFormList;

     end;
end;

procedure TfrmTranslate.rc_RefreshFormList;
var
   i : integer;
   cTemp : string;
   vSR: TSearchRec;
begin
  cTemp := cbLanguage.Text;
  cTemp := sm.FilesFolderPath + 'translate' + BACKSLASH + cTemp ;

  cbForm.Items.Clear;
  cbForm.ItemIndex := -1;
  I := FindFirst( cTemp + BACKSLASH + '*.ini' , faAnyFile, vSR );
  while I = 0 do
  begin
    cbForm.Items.Add( ChangeFileExt(vSR.Name, '' ) );
    I := FindNext( vSR );
  end;

  FindClose(vSR);

  cbForm.ItemIndex := 0;
  rc_RefreshTranslateItems;

end;

procedure TfrmTranslate.rc_RefreshTranslateItems;
var
   i, f, s:          integer;
   IniFile: TMemIniFile; // v. 3.3.0.0
   sl : TStrings;

   cGroup,
   cTemp, cProp, cContent : string;

   aSections : Array [1..8] of String; // v. 3.3.1.0
begin

  i := 0;
  aSections[ 01 ] := 'caption';
  aSections[ 02 ] := 'screenmask.message';
  aSections[ 03 ] := 'emptytext';
  aSections[ 04 ] := 'text';
  aSections[ 05 ] := 'items';
  aSections[ 06 ] := 'grid-col-caption';
  aSections[ 07 ] := 'grid-header'; // v. 3.3.0.0
  aSections[ 08 ] := 'lkpfilter-empty'; // v. 3.3.1.0

  cTemp := cbLanguage.Text;

  cTemp := sm.FilesFolderPath + 'translate' + BACKSLASH + cTemp ;

  cTemp := cTemp + BACKSLASH + lowercase( cbForm.Text ) + '.ini';

  IniFile := TMemIniFile.Create( cTemp, TEncoding.UTF8 ); // v. 3.3.0.0
  try

    sgProps.BeginUpdate;
    sgProps.RowCount := 1000;

    try

      i := -1;

      for s := 1 to Length( aSections )  do
      begin

          sl := TstringList.Create;

          cGroup := aSections[ s ];
          IniFile.ReadSectionValues( cGroup , sl );

          if sl.Count > 0 then
          begin

            if i > 0 then
            begin
               Inc( i );
               sgProps.Cells[ 0, i ] := '';
               sgProps.Cells[ 1, i ] := '';
            end;

            Inc( i );

            sgProps.Cells[ 0, i ] := UpperCase( cGroup );
            sgProps.Cells[ 1, i ] := '';

            for f := 0 to sl.Count - 1   do
            begin

               cProp    := Copy( sl.Strings[ f ] , 1, Pos( '=', sl.Strings[ f ] ) - 1);
               cTemp     := cProp;
               cProp    := StringReplace( Copy( cProp, Pos( '.', cProp ) + 1, 200 ), '.' + cGroup, '', [rfReplaceAll] );
               cContent := Copy( sl.Strings[ f ] , Pos( '=', sl.Strings[ f ] ) + 1, 2000 );

               Inc( i );

               sgProps.Cells[ 0, i ] := cProp;
               sgProps.Cells[ 1, i ] := cContent;
               sgProps.Cells[ 2, i ] := cGroup;
               sgProps.Cells[ 3, i ] := cTemp;

            end;

          end;

          sl.Free;

      end;

    finally

      sgProps.RowCount := i + 1 ;
      sgProps.EndUpdate;

    end;

  finally

    IniFile.Free;

  end;

end;

procedure TfrmTranslate.sgPropsSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin

     mmContent.Lines.Clear;
     mmContent.Lines.Text := sgProps.Cells[ 1, aRow ] ;

     vOldContent          := mmContent.Lines.Text;

     sgProps.tag := aRow;

end;

procedure TfrmTranslate.btnExitClick(Sender: TObject);
begin
     mm.varB_Yes := False;
     mm.varB_No := True;
     Self.ModalResult := mrNone;

     rc_jQueryAnimate( Self, 'left' , IntTostr( UniSession.UniApplication.ScreenWidth ), '200', '', '', '', '', '',
                       'ajaxRequest( ' + MainForm.htmlFrame.JSName + ' , "_CloseForm", ["form=" + ' + QuotedStr( Self.Name ) + '] );' );

end;

procedure TfrmTranslate.btnSaveClick(Sender: TObject);
var
   IniFile : TMemIniFile; // v. 3.3.0.0
   cTemp   : string;
begin

  sgProps.Cells[ 1, sgProps.Tag ] := RemoveLineBreaks ( mmContent.Text );

  cTemp := cbLanguage.Text;
  cTemp := sm.FilesFolderPath + 'translate' + BACKSLASH + cTemp ;
  cTemp := cTemp + BACKSLASH + lowercase( cbForm.Text ) + '.ini';

  IniFile := TMemIniFile.Create( cTemp, TEncoding.UTF8 ); // v. 3.3.0.0
  IniFile.WriteString( sgProps.Cells[ 2, sgProps.Tag ] , sgProps.Cells[ 3, sgProps.Tag ] , sgProps.Cells[ 1, sgProps.Tag ] );
  IniFile.UpdateFile; // v. 3.3.0.0
  IniFile.Free;

  mmContent.Clear;

end;

procedure TfrmTranslate.bntCancelClick(Sender: TObject);
begin
     mmContent.Clear;
end;

procedure TfrmTranslate.UniFormCreate(Sender: TObject);
var
   i, f : integer;
begin
    f := 0;
    // para formulários, deve-se efetuar o ResizeBlocks
    rc_RenderLayout( Self, true, true, true );

    // in development
    rc_Translate( Self, nil , '' , mm.CONFIG_LANGUAGE );

    cbLanguage.Items.Clear;
    for I := 1 to High( ARRAY_LANGUAGES ) do
    begin
         cbLanguage.Items.Add( '<a><span class="flag-icon flag-icon-' + ARRAY_LANGUAGES_FLAGS[i] + '"></span>' + ' ' + ARRAY_LANGUAGES[i] + '</a>' );

         if ( ARRAY_LANGUAGES[i] = mm.CONFIG_LANGUAGE ) then
            f := i;
    end;
    cbLanguage.ItemIndex := f-1;
    cbLanguage.Text := dm_rc.rc_StripHtmlTags( cbLanguage.Text );

    rc_RefreshFormList;

    sgProps.ColWidths[2] := 0;
    sgProps.ColWidths[3] := 0;

    dm_rc.rc_RenderControls( Self );
    dm_rc.rc_BootStrapRender( self );
    dm_rc.rc_AdjustEditColors ( Self );

    Self.Left := mm.varI_ScreenWidth + 600;
End;

procedure TfrmTranslate.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = 27 then
     begin
          mm.varB_Yes := False;
          mm.varB_No := True;
          Self.ModalResult := mrNone;
          Close;
     end;
end;

procedure TfrmTranslate.UniFormReady(Sender: TObject);
begin
     dm_rc.rc_ResizeBlocks( Self, true, true );
end;

procedure TfrmTranslate.UniFormShow(Sender: TObject);
begin

  inherited;

   Self.Height := mm.varI_ScreenHeight;
   Self.Top    := 0;

   rc_jQueryAnimate( Self, 'right' , IntTostr( Self.Left + self.Width ), '200' );
end;

end.


