unit untFrmTHEMES;// v. 3.2.0.7

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,

  // feedback: Mesut from Turkey
  {$ifdef LINUX}
  System.UIConsts,
  {$endif}
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniBasicGrid,
  uniDBGrid, uniEdit, uniLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniButton, uniBitBtn, uniMemo, IniFiles,
  uniHTMLFrame, uniImage, uniColorButton, uniColorPalette, Vcl.Imaging.jpeg,
  uniScrollBox, uniMultiItem, uniComboBox, uniCheckBox, uniSpinEdit, uniPageControl, uniImageList;

type
  TfrmThemes = class(TUniForm)
    UniContainerPanel16: TUniContainerPanel;
    pgConfig: TUniPageControl;
    tabLayout: TUniTabSheet;
    tabConfig: TUniTabSheet;
    sboxLayout: TUniScrollBox;
    paGridB: TUniContainerPanel;
    UniContainerPanel22: TUniContainerPanel;
    UniLabel32: TUniLabel;
    cbFonts: TUniComboBox;
    cbxAllFont: TUniCheckBox;
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel1: TUniLabel;
    cbxTabColor: TUniCheckBox;
    UniContainerPanel3: TUniContainerPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel2: TUniLabel;
    cbxBorderRounded: TUniCheckBox;
    UniContainerPanel5: TUniContainerPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel5: TUniLabel;
    cbxLabelWrap: TUniCheckBox;
    cbxLabelsFormsDefault: TUniCheckBox;
    UniContainerPanel8: TUniContainerPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel6: TUniLabel;
    edOffSet: TUniSpinEdit;
    UniLabel7: TUniLabel;
    UniContainerPanel10: TUniContainerPanel;
    UniContainerPanel13: TUniContainerPanel;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    edMenuFontSize: TUniSpinEdit;
    paTitulo: TUniContainerPanel;
    paCmdButtons: TUniContainerPanel;
    btnExit: TUniBitBtn;
    btnDefault: TUniBitBtn;
    btnOk: TUniBitBtn;
    paSearchContent1: TUniContainerPanel;
    labTitleFrm: TUniLabel;
    labSelectedColor: TUniLabel;
    UniScrollBox1: TUniScrollBox;
    UniContainerPanel49: TUniContainerPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel13: TUniLabel;
    cbLanguage: TUniComboBox;
    UniBitBtn1: TUniBitBtn;
    UniContainerPanel20: TUniContainerPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniContainerPanel23: TUniContainerPanel;
    UniContainerPanel24: TUniContainerPanel;
    UniLabel14: TUniLabel;
    cbDatabase: TUniComboBox;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    edIP: TUniEdit;
    edPort: TUniEdit;
    UniLabel17: TUniLabel;
    edUser: TUniEdit;
    UniLabel18: TUniLabel;
    edPass: TUniEdit;
    UniLabel19: TUniLabel;
    btnTestConnect: TUniBitBtn;
    edDatabaseName: TUniEdit;
    UniLabel20: TUniLabel;
    UniContainerPanel25: TUniContainerPanel;
    UniContainerPanel26: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniLabel23: TUniLabel;
    edEmailPass: TUniEdit;
    UniLabel26: TUniLabel;
    btnMailTest: TUniBitBtn;
    edEmailHost: TUniEdit;
    UniLabel27: TUniLabel;
    edEmail: TUniEdit;
    UniLabel22: TUniLabel;
    edEmailUSer: TUniEdit;
    edEmailSmtpPort: TUniEdit;
    UniLabel24: TUniLabel;
    UniLabel25: TUniLabel;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    UniLabel30: TUniLabel;
    swtEmailConfirm: TUniLabel;
    swtEmailTLS: TUniLabel;
    swtEmailSSL: TUniLabel;
    swtEmailHtml: TUniLabel;
    tabColors: TUniTabSheet;
    sBoxColors: TUniScrollBox;
    paColors: TUniContainerPanel;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel3: TUniLabel;
    pa001Login: TUniContainerPanel;
    labOptLOGIN: TUniLabel;
    paBorderLogin: TUniPanel;
    btnSelColor_Login: TUniPanel;
    pa002Buttons: TUniContainerPanel;
    labOptBUTTONS: TUniLabel;
    paBorderButton_Color: TUniPanel;
    btnSelColor_Button_Color: TUniPanel;
    btnSelColor_Button_Color_Hover: TUniPanel;
    pa003Cruds: TUniContainerPanel;
    labOptBUTTONS_CRUD: TUniLabel;
    paBorderButton_Color_Crud: TUniPanel;
    btnSelColor_Button_Color_Crud: TUniPanel;
    btnSelColor_Button_Color_Crud_Hover: TUniPanel;
    pa004MainMenu: TUniContainerPanel;
    labOptMENU: TUniLabel;
    paBorderMenu: TUniPanel;
    btnSelColor_Menu: TUniPanel;
    pa005MainMenuFont: TUniContainerPanel;
    labOptMENUFONT: TUniLabel;
    paBorderMenuFont: TUniPanel;
    btnSelColor_MenuFont: TUniPanel;
    pa007LookUp: TUniContainerPanel;
    labOptLOOKUP: TUniLabel;
    paBorderLookup: TUniPanel;
    btnSelColor_LookUp: TUniPanel;
    pa008LookUpFont: TUniContainerPanel;
    labOptLOOKUPFONT: TUniLabel;
    paBorderLookupEditFont: TUniPanel;
    btnSelColor_LookUpEditFont: TUniPanel;
    pa009BgColor: TUniContainerPanel;
    labOptBG_COLOR: TUniLabel;
    paBorderBg: TUniPanel;
    btnSelColor_Bg: TUniPanel;
    pa010Edits: TUniContainerPanel;
    labOptEDITFOCO: TUniLabel;
    paBorderEditFoco: TUniPanel;
    btnSelColor_EditFoco: TUniPanel;
    pa006LookUpFontColor: TUniContainerPanel;
    UniLabel4: TUniLabel;
    paBorderLookupFont: TUniPanel;
    btnSelColor_LookUpFont: TUniPanel;
    pa012DefaultPattern: TUniContainerPanel;
    btnBlue: TUniPanel;
    btnGray: TUniPanel;
    btnRed: TUniPanel;
    btnOrange: TUniPanel;
    btnGreen: TUniPanel;
    btnLightBlue: TUniPanel;
    btnDarkGray: TUniPanel;
    btnSalmon: TUniPanel;
    btnChocolate: TUniPanel;
    btnPurple: TUniPanel;
    htmlFrame: TUniHTMLFrame;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel8: TUniLabel;
    paBorderMenuLogoBG: TUniPanel;
    btnSelColor_MenuLogoBG: TUniPanel;
    UniContainerPanel12: TUniContainerPanel;
    UniLabel9: TUniLabel;
    paBorderMenuLogoFont: TUniPanel;
    btnSelColor_MenuLogoFont: TUniPanel;
    paLinkColor: TUniContainerPanel;
    labOptCOLOR_LINK: TUniLabel;
    paBorderLink: TUniPanel;
    btnSelCOLOR_LINK: TUniPanel;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel12: TUniLabel;
    paBorderLinkHover: TUniPanel;
    btnSelCOLOR_LINKHOVER: TUniPanel;
    UniContainerPanel19: TUniContainerPanel;
    labOptFORM: TUniLabel;
    paBorderFormLabel: TUniPanel;
    btnSelColor_FormLabel: TUniPanel;
    UniContainerPanel27: TUniContainerPanel;
    UniContainerPanel28: TUniContainerPanel;
    UniContainerPanel29: TUniContainerPanel;
    UniLabel31: TUniLabel;
    cbxSessionLog: TUniCheckBox;
    UniLabel33: TUniLabel;
    edPanelFactor: TUniSpinEdit;
    edEditFactor: TUniSpinEdit;
    UniLabel34: TUniLabel;
    UniLabel35: TUniLabel;
    edBtnFactor: TUniSpinEdit;
    cbxGridBlockAnim: TUniCheckBox;
    cbxUserBG: TUniCheckBox;
    cbxFormRounded: TUniCheckBox;
    paGridSel: TUniContainerPanel;
    labOptGRIDSELECT: TUniLabel;
    paBorderGridSelect: TUniPanel;
    btnSelColor_GridSelect: TUniPanel;
    UniLabel36: TUniLabel;
    edMaxOpenTabs: TUniSpinEdit;
    paFlag: TUniContainerPanel;
    labFlag: TUniLabel;
    cbxTabsOff: TUniCheckBox;
    procedure btnOkClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniFormCreate(Sender: TObject);
    procedure btnSelColor_LoginClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnDefaultClick(Sender: TObject);
    procedure UniImage1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure htmlFrameAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btnBlueClick(Sender: TObject);
    procedure cbFontsChange(Sender: TObject);
    procedure cbLanguageChange(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure btnTestConnectClick(Sender: TObject);
    procedure btnMailTestClick(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure cbxTabsOffClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure rc_UpdateBorders( pPanel : TUniPanel );
    procedure rc_UpdateColorButtons;
  end;

function frmThemes: TfrmThemes;

implementation

{$R *.dfm}

uses
  uniGUIApplication, ServerModule, MainModule, uConsts,
  Main, mkm_func_web, untdm_rc, mkm_layout, mkm_anim, untFrmTRANSLATE,
  mkm_translate, mkm_email;

function frmThemes: TfrmThemes;
begin
  Result := TfrmThemes(mm.GetFormInstance(TfrmThemes));
end;

procedure TfrmThemes.btnOkClick(Sender: TObject);
var
   inifile : Tinifile;
begin
     IniFile := nil;
     mm.CONFIG_SESSION_LOG                := cbxSessionLog.Checked;
     mm.CONFIG_LAYOUT_APPLY_FONT_ALL      := varIIF( cbxAllFont.Checked       , 'ON', 'OFF' );
     mm.CONFIG_LAYOUT_ROUND_FORM          := varIIF( cbxFormRounded.Checked   , 'ON', 'OFF' );
     mm.CONFIG_LAYOUT_ROUND_EDIT          := varIIF( cbxBorderRounded.Checked , 'ON', 'OFF' );
     mm.CONFIG_LAYOUT_ROUND_EDIT_FACTOR   := edEditFactor.Text;
     mm.CONFIG_LAYOUT_ROUND_PANEL_FACTOR  := edPanelFactor.Text;
     mm.CONFIG_LAYOUT_ROUND_BTN_FACTOR    := edBtnFactor.Text;
     mm.CONFIG_LAYOUT_LABEL_WRAP          := varIIF( cbxLabelWrap.Checked     , 'ON', 'OFF' );
     mm.CONFIG_LAYOUT_USER_BG             := varIIF( cbxUserBG.Checked        , 'ON', 'OFF' );
     mm.CONFIG_LAYOUT_LABEL_FORMS_DEFAULT := varIIF( cbxLabelsFormsDefault.Checked   , 'ON', 'OFF' );
     mm.CONFIG_LAYOUT_GRIDBLOCK_OFFSET    := edOffSet.Text;
     mm.CONFIG_LAYOUT_GRIDBLOCK_ANIM      := varIIF( cbxGridBlockAnim.Checked   , 'ON', 'OFF' );
     mm.CONFIG_LAYOUT_MENUFONT_SIZE       := edMenuFontSize.Text;
     mm.CONFIG_LAYOUT_TAB_MAX_OPENED      := edMaxOpenTabs.Text;
     mm.CONFIG_LAYOUT_TAB_OFF             := varIIF( cbxTabsOff.Checked     , 'ON', 'OFF' );

     dm_rc.rc_SaveTheme( 'active' );
     dm_rc.rc_SaveTheme( mm.CONFIG_LAYOUT_ACTIVE_THEME );
     dm_rc.rc_LoadTheme( 'active' );

     mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER              := edEmail.Text;
     mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_HOST         := edEmailHost.Text;
     mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_SMTP_PORT    := edEmailSmtpPort.Text;
     mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_USER         := edEmailUSer.Text;
     mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_PASS         := edEmailPass.Text;
     mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_CONFIRMATION := IntToStr( swtEmailConfirm.Tag  );// varIIF( swtEmailConfirm.Tag = 1, '1', '0' );
     mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_THREAD       := '0';//IntToStr( swtEmailThread.Tag  );//varIIF( swtEmailThread.Tag = 1 , '1', '0' );
     mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_TLS          := IntToStr( swtEmailTLS.Tag  );//varIIF( swtEmailTLS.Tag = 1    , '1', '0' );
     mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_SSL          := IntToStr( swtEmailSSL.Tag  );//varIIF( swtEmailSSL.Tag = 1    , '1', '0' );

     mm.CONFIG_DATABASE_FIREDAC     := cbDatabase.Text;
     mm.CONFIG_DATABASE_HOST_IP     := edIP.Text;
     mm.CONFIG_DATABASE_PORT        := StrToIntDef( edPort.Text, 0 );
     mm.CONFIG_DATABASE_USERNAME    := edUser.Text;
     mm.CONFIG_DATABASE_PASSWORD    := edPass.Text;
     mm.CONFIG_DATABASE_NAME        := edDatabaseName.Text;

     try
       IniFile := TiniFile.Create( sm.FilesFolderPath + StringReplace( StrTokenClear( APP_NAME ), ' ', '', [rfReplaceAll] ) + '_cfg.ini' ); // v. 3.1.0.60
       // App
       IniFile.WriteString( 'App', 'type'        , mm.CONFIG_APP_TYPE );
       IniFile.WriteString( 'App', 'language'    , mm.CONFIG_LANGUAGE);
       IniFile.WriteString( 'App', 'session_log' , varIIF( mm.CONFIG_SESSION_LOG , '1', '0' ) );
       // Database
       IniFile.WriteString ( 'DataBase', 'dbms'    , mm.CONFIG_DATABASE_FIREDAC);
       IniFile.WriteString ( 'DataBase', 'ip'      , mm.CONFIG_DATABASE_HOST_IP);
       IniFile.WriteInteger( 'DataBase', 'port'    , mm.CONFIG_DATABASE_PORT);
       IniFile.WriteString ( 'DataBase', 'user'    , mm.CONFIG_DATABASE_USERNAME);
       IniFile.WriteString ( 'DataBase', 'password', mm.CONFIG_DATABASE_PASSWORD);
       IniFile.WriteString ( 'DataBase', 'dbname'  , mm.CONFIG_DATABASE_NAME);
       mm.DATABASE_ACTIVE := '';
       // Email
       IniFile.WriteString ( 'Email', 'email'    , mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER);
       IniFile.WriteString ( 'Email', 'host'     , mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_HOST);
       IniFile.WriteString ( 'Email', 'smtpport' , mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_SMTP_PORT);
       IniFile.WriteString ( 'Email', 'user'     , mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_USER);
       IniFile.WriteString ( 'Email', 'password' , mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_PASS);
       IniFile.WriteString ( 'Email', 'confirm'  , mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_CONFIRMATION);
       IniFile.WriteString ( 'Email', 'thread'   , mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_THREAD);
       IniFile.WriteString ( 'Email', 'tls'      , mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_TLS);
       IniFile.WriteString ( 'Email', 'ssl'      , mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_SSL);
       // Layout
       IniFile.WriteString( 'Layout', 'active', mm.CONFIG_LAYOUT_ACTIVE_THEME);

     finally
       IniFile.Free;
     end;

     mm.varB_Yes := True;
     mm.varB_No := False;
     Self.ModalResult := mrOk;

     Close;
end;

procedure TfrmThemes.btnSelColor_LoginClick(Sender: TObject);
begin
     rc_UpdateBorders( TUniPanel(sender) );
end;

procedure TfrmThemes.btnTestConnectClick(Sender: TObject);
var
     tCONFIG_DATABASE_FIREDAC,
     tCONFIG_DATABASE_HOST_IP    : string;
     tCONFIG_DATABASE_PORT  : integer;
     tCONFIG_DATABASE_USERNAME  ,
     tCONFIG_DATABASE_PASSWORD ,
     tDATABASE_ACTIVE,
     tCONFIG_DATABASE_NAME         : string;
begin
     tCONFIG_DATABASE_FIREDAC       := mm.CONFIG_DATABASE_FIREDAC ;
     tCONFIG_DATABASE_HOST_IP       := mm.CONFIG_DATABASE_HOST_IP;
     tCONFIG_DATABASE_PORT          := mm.CONFIG_DATABASE_PORT;
     tCONFIG_DATABASE_USERNAME      := mm.CONFIG_DATABASE_USERNAME;
     tCONFIG_DATABASE_PASSWORD      := mm.CONFIG_DATABASE_PASSWORD;
     tCONFIG_DATABASE_NAME          := mm.CONFIG_DATABASE_NAME;
     tDATABASE_ACTIVE               := mm.DATABASE_ACTIVE;

     mm.CONFIG_DATABASE_FIREDAC     := cbDatabase.Text;
     mm.CONFIG_DATABASE_HOST_IP     := edIP.Text;
     mm.CONFIG_DATABASE_PORT        := StrToIntDef( edPort.Text, 0 );
     mm.CONFIG_DATABASE_USERNAME    := edUser.Text;
     mm.CONFIG_DATABASE_PASSWORD    := edPass.Text;
     mm.CONFIG_DATABASE_NAME        := edDatabaseName.Text;
     mm.DATABASE_ACTIVE             := '';

     try
        mm.varB_OperationProcessed := dm_rc.rc_ConnectFireDAC( mm.CONFIG_DATABASE_FIREDAC , mm.SQLConn );

        if mm.varB_OperationProcessed then
           dm_rc.rc_ShowSweetAlert( 'Config', 'Connected !', 'success' )
        else
           dm_rc.rc_ShowSweetAlert( 'Config', 'Connection Failed !', 'error' );
     finally
        mm.CONFIG_DATABASE_FIREDAC       := tCONFIG_DATABASE_FIREDAC;
        mm.CONFIG_DATABASE_HOST_IP       := tCONFIG_DATABASE_HOST_IP;
        mm.CONFIG_DATABASE_PORT          := tCONFIG_DATABASE_PORT;
        mm.CONFIG_DATABASE_USERNAME      := tCONFIG_DATABASE_USERNAME;
        mm.CONFIG_DATABASE_PASSWORD      := tCONFIG_DATABASE_PASSWORD;
        mm.CONFIG_DATABASE_NAME          := tCONFIG_DATABASE_NAME;
        mm.DATABASE_ACTIVE               := tDATABASE_ACTIVE;
     end;
end;

procedure TfrmThemes.cbFontsChange(Sender: TObject);
begin
     mm.CONFIG_LAYOUT_APP_FONT := cbFonts.Text;
end;

procedure TfrmThemes.cbLanguageChange(Sender: TObject);
var
i : integer;
begin
     cbLanguage.Text := dm_rc.rc_StripHtmlTags( cbLanguage.Text );

     i := dm_rc.rc_GetIndexFromArray( cbLanguage.Text, ARRAY_LANGUAGES ) ;
     mm.CONFIG_LANGUAGE := ARRAY_LANGUAGES[ i ];
     // v. 3.1.0.60
     if i > 0 then
        if ( mm.CONFIG_LANGUAGE <> 'ar' ) then
           sm.ExtLocale  := mm.CONFIG_LANGUAGE;

     dm_rc.rc_SaveTheme( 'active' );
     dm_rc.rc_SaveTheme( mm.CONFIG_LAYOUT_ACTIVE_THEME );
     btnOkClick( self );
     // v. 3.3.0.0
     UniApplication.Cookies.SetCookie('_language' + APP_NAME + mm.vUserEmail, mm.CONFIG_LANGUAGE, 0);
     UniApplication.Cookies.SetCookie('_language_login' + APP_NAME, mm.vUserEmail, 0);

     UniApplication.Restart;
end;

procedure TfrmThemes.cbxTabsOffClick(Sender: TObject);
begin
     if mm.oPgGeneral.PageCount > 1 then
     begin
        dm_rc.rc_ShowMessage( 'Close All Tabs Before Disable Tabs.' );
        cbxTabsOff.Checked := false;
     end
     else
     begin
        if UniApplication.FindComponent('MainForm' ) <> nil then
           if MainForm.FindComponent( 'paBS_Tabs' ) <> nil then
              TUniControl( MainForm.FindComponent( 'paBS_Tabs' ) ).Visible := not cbxTabsOff.Checked;
     end;
end;

procedure TfrmThemes.btnExitClick(Sender: TObject);
begin
     mm.varB_Yes := False;
     mm.varB_No := True;
     Self.ModalResult := mrNone;

     rc_jQueryAnimate( Self, 'left' ,
                             varIIF( mm.RTL , IntTostr( Self.Width*(-1) ), IntTostr( UniSession.UniApplication.ScreenWidth ) ),
                             '200', '', '', '', '', '',
                             'ajaxRequest( ' + MainForm.htmlFrame.JSName + ' , "_CloseForm", ["form=" + ' + QuotedStr( Self.Name ) + '] );' );
end;

procedure TfrmThemes.btnDefaultClick(Sender: TObject);
begin
     dm_rc.rc_LoadTheme( 'default' );
     dm_rc.rc_SaveTheme( 'active' );
     mm.CONFIG_LAYOUT_ACTIVE_THEME := 'default';
     dm_rc.rc_SaveTheme( mm.CONFIG_LAYOUT_ACTIVE_THEME );

     rc_UpdateColorButtons;
end;

procedure TfrmThemes.UniBitBtn1Click(Sender: TObject);
begin
     //exit;
     frmTranslate.WebForm.JSInterface.JSCall( 'addCls' , ['form-noborder']);

     frmTranslate.Show( procedure(Sender: TComponent; Result:Integer)
                            begin
                              //callback....nesse caso, não é necessário tratar o retorno
                            end
                          );
end;

procedure TfrmThemes.btnMailTestClick(Sender: TObject);
var
   cMessage: Tstrings;
begin
       if edEmailUSer.Text = '' then
       begin
            dm_rc.rc_ShowMessage( 'Email:' + mm.MSG_VALIDATE_OR_BLANK_CONTENT );
            Exit;
       end
       else
       begin
           dm_rc.rc_ShowInputBox( 'Email Test' , 'Email to:' , '', '', '', false );

           if mm.varC_InputBox_Result1 = '' then
           begin
             dm_rc.rc_ShowMessage( 'Email:' + mm.MSG_VALIDATE_OR_BLANK_CONTENT );
             Exit;
           end;

           if swtEmailHtml.Tag = 0 then
           begin
             cMessage := TstringList.Create;

             cMessage.Add( ' ' );
             cMessage.Add( APP_NAME + ': Email Test' );
             cMessage.Add( ' ' );
             cMessage.Add( SOFTWAREHOUSE_NAME );
             cMessage.Add( ' ' );
             cMessage.Add( 'Phone: ' + SOFTWAREHOUSE_COMMERCIAL_PHONE );
             cMessage.Add( StringOfChar( '-' , 35 ) );
             cMessage.Add( mm.MSG_EMAIL_DO_NOT_REPLY );
             cMessage.Add( StringOfChar( '-' , 35 ) );
  //           CC := TstringList.Create;
  //           CC.Add( mm.varC_TempString ) ;
           end
           else
           begin
             cMessage := TstringList.Create;

             cMessage.Add( '<html>' );
             cMessage.Add( '<body>' );
             cMessage.Add( '<h1><font color=''red''>' + APP_NAME + ': Email Test </font></h1>' );
             cMessage.Add( '<p><strong>' + SOFTWAREHOUSE_NAME + '</strong></p>' );
             cMessage.Add( '<strong>Phone:</strong>' + SOFTWAREHOUSE_COMMERCIAL_PHONE + '<br>' );
             cMessage.Add( '<hr>' );
             cMessage.Add( mm.MSG_EMAIL_DO_NOT_REPLY + '<br>' );
             cMessage.Add( '<hr>' );
             cMessage.Add( '</body>' );
             cMessage.Add( '</html>' );
           end;

           Sleep(100);

           // dm_rc.ACBrMail.Clear;
           mm.varB_OperationProcessed := rc_MailSend( edEmail.Text ,
                                                      edEmailPass.Text ,
                                                      edEmailHost.Text ,
                                                      edEmailSmtpPort.Text,
                                                      SOFTWAREHOUSE_NAME,
                                                      edEmail.Text ,
                                                      mm.varC_InputBox_Result1,
                                                      '',
                                                      '[' + APP_NAME + '] Email Test',
                                                      cMessage,
                                                      ( swtEmailHtml.Tag = 1 )
                                                    );

           if mm.varB_OperationProcessed then
              dm_rc.rc_ShowSweetAlert( 'Email', 'Sent !', 'success' ) ;
       end;
end;

procedure TfrmThemes.UniFormCreate(Sender: TObject);
var
   I, F : integer;
begin
     f := 0;
     pgConfig.ActivePage := tabColors;

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

     labFlag.Hint     := '[[cls:flag-icon flag-icon-' + ARRAY_LANGUAGES_FLAGS[f] + ']]';

     btnBlue.Color   := COLOR_BLUE;
     btnRed.Color    := COLOR_RED;
     btnOrange.Color := COLOR_ORANGE;
     btnGreen.Color  := COLOR_GREEN;
     btnGray.Color   := COLOR_GRAY;

     htmlFrame.html.Text :=
     '<canvas id="colorCanvas" class="color-canvas" width="250" height="250"></canvas>' +
     '<script>' +
     '    var canvasEl = document.getElementById(''colorCanvas'');' +
     '    var canvasContext = canvasEl.getContext(''2d'');' +
     '' +
     '    var image = new Image(250, 250);' +
     '    image.onload = () => canvasContext.drawImage(image, 0, 0, image.width, image.height); ' +
     '    image.src = "files/images/colortable.jpg";' +
     '' +
     'var rgbToHex = function (rgb) { ' +
     '  var hex = Number(rgb).toString(16);' +
     '  if (hex.length < 2) {' +
     '       hex = "0" + hex;' +
     '  }' +
     '  return hex;' +
     '};    ' +
     'var fullColorHex = function(r,g,b) {   ' +
     '  var red = rgbToHex(r);' +
     '  var green = rgbToHex(g);' +
     '  var blue = rgbToHex(b);' +
     '  return red+green+blue;' +
     '};' +

     '    canvasEl.onclick = function(mouseEvent) ' +
     '    {' +
     '      var imgData = canvasContext.getImageData(mouseEvent.offsetX, mouseEvent.offsetY, 1, 1);' +
     '      var rgba = imgData.data;' +
     '      ajaxRequest( ' + Self.htmlFrame.JSName + '  , "colorpixel", ["color_hex=" + fullColorHex(rgba[0], rgba[1], rgba[2])]);' +// + "," + "color_r=" + rgba[0] + ", " + "color_g=" + rgba[1] + ", " + "color_b=" + rgba[2] ]);' +
//     '      alert("rgba(" + rgba[0] + ", " + rgba[1] + ", " + rgba[2] + ", " + rgba[3] + ")");' +
     '    }' +
     '</script>' ;

     labSelectedColor.Font.Color := btnSelColor_Login.Color;
     rc_UpdateBorders( btnSelColor_Login );

    // controle de cores
    btnSelColor_Menu.Color                    := StringToColor( mm.CONFIG_LAYOUT_MENU_COLOR );// '$00373737';
    btnSelColor_MenuFont.Color                := StringToColor( mm.CONFIG_LAYOUT_MENUFONT_COLOR );// '$00373737';
    btnSelColor_MenuLogoBG.Color              := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_BG_COLOR );// '$00373737';
    btnSelColor_MenuLogoFont.Color            := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_FONT_COLOR );// '$00373737';
    btnSelColor_Login.Color                   := StringToColor( mm.CONFIG_LAYOUT_LOGIN_COLOR );
    btnSelColor_FormLabel.Color               := StringToColor( mm.CONFIG_LAYOUT_LABEL_COLOR );
    btnSelColor_Button_Color.Color            := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR );
    btnSelColor_Button_Color_Crud.Color       := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_CRUD );
    btnSelColor_Button_Color_hover.Color      := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_HOVER );
    btnSelColor_Button_Color_Crud_hover.Color := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_CRUD_HOVER );
    //btnSelColor_EditFoco.Color              := StringToColor( mm.CONFIG_LAYOUT_EDIT_COLOR );//
    //btnSelColor_EditFont.Color              := StringToColor( mm.CONFIG_LAYOUT_EDIT_FONT_COLOR );//
    btnSelColor_GridSelect.Color              := StringToColor( mm.CONFIG_LAYOUT_GRID_SEL_COLOR );
    btnSelColor_EditFoco.Color                := StringToColor( mm.CONFIG_LAYOUT_EDIT_FOCUS_COLOR );//
    btnSelColor_LookUp.Color                  := StringToColor( mm.CONFIG_LAYOUT_EDLKP_COLOR );
    btnSelColor_LookUpFont.Color              := StringToColor( mm.CONFIG_LAYOUT_EDLKP_FONT_COLOR );
    cbxTabColor.Checked                       := ( mm.CONFIG_LAYOUT_TAB_COLOR_FOCUS <> '$00FFFFFF' );
    cbFonts.ItemIndex                         := cbFonts.Items.IndexOf( mm.CONFIG_LAYOUT_APP_FONT );
    cbxSessionLog.Checked                     := mm.CONFIG_SESSION_LOG;
    cbxAllFont.Checked                        := mm.CONFIG_LAYOUT_APPLY_FONT_ALL = 'ON' ;
    cbxFormRounded.Checked                    := mm.CONFIG_LAYOUT_ROUND_FORM = 'ON' ;
    cbxBorderRounded.Checked                  := mm.CONFIG_LAYOUT_ROUND_EDIT = 'ON' ;
    edEditFactor.Text                         := mm.CONFIG_LAYOUT_ROUND_EDIT_FACTOR ;
    edPanelFactor.Text                        := mm.CONFIG_LAYOUT_ROUND_PANEL_FACTOR ;
    edBtnFactor.Text                          := mm.CONFIG_LAYOUT_ROUND_BTN_FACTOR ;
    cbxLabelWrap.Checked                      := mm.CONFIG_LAYOUT_LABEL_WRAP = 'ON' ;
    cbxUserBG.Checked                         := mm.CONFIG_LAYOUT_USER_BG = 'ON' ;
    cbxLabelsFormsDefault.Checked             := mm.CONFIG_LAYOUT_LABEL_FORMS_DEFAULT = 'ON';
    btnSelColor_Bg.Color                      := StringToColor( mm.CONFIG_LAYOUT_BG_COLOR );
    edOffSet.Text                             := mm.CONFIG_LAYOUT_GRIDBLOCK_OFFSET ;
    edMaxOpenTabs.Text                        := mm.CONFIG_LAYOUT_TAB_MAX_OPENED;
    cbxTabsOff.Checked                        := mm.CONFIG_LAYOUT_TAB_OFF = 'ON' ;
    cbxGridBlockAnim.Checked                  := mm.CONFIG_LAYOUT_GRIDBLOCK_ANIM = 'ON' ;
    edMenuFontSize.Text                       := mm.CONFIG_LAYOUT_MENUFONT_SIZE ;
    //bsswt_RoundEdit.Tag                       := varIIF( ROUND_EDIT = 'ON' , 1, 0 );

    // para formulários, deve-se efetuar o ResizeBlocks
    rc_RenderLayout( Self, true, true, true );

    // ammar feedback
    Self.Left := mm.varI_ScreenWidth + 600;
    if mm.RTL then
       Self.Left := 0
    else
       Self.Left := mm.varI_ScreenWidth + 600;
End;

procedure TfrmThemes.UniFormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmThemes.UniFormReady(Sender: TObject);
begin
     dm_rc.rc_ResizeBlocks( Self, true, true );
end;

procedure TfrmThemes.UniFormShow(Sender: TObject);
begin
  inherited;
    // database
    cbDatabase.ItemIndex := cbDatabase.Items.IndexOf( mm.CONFIG_DATABASE_FIREDAC );
    edDatabaseName.Text  := mm.CONFIG_DATABASE_NAME;
    edIp.Text            := mm.CONFIG_DATABASE_HOST_IP;
    edPort.Text          := mm.CONFIG_DATABASE_PORT.ToString;
    edUser.Text          := mm.CONFIG_DATABASE_USERNAME;
    edPass.Text          := mm.CONFIG_DATABASE_PASSWORD;

    // email
    edEmail.Text         := mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER;
    edEmailHost.Text     := mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_HOST;
    edEmailSmtpPort.Text := mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_SMTP_PORT;
    edEmailUSer.Text     := mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_USER;
    edEmailPass.Text     := mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_PASS;
    swtEmailConfirm.Tag  := varIIF( mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_CONFIRMATION = 'S', 1, 0 );
    swtEmailHtml.Tag     := 0;//varIIF( mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_THREAD = 'S', 1, 0 );
    swtEmailTLS.Tag      := varIIF( mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_TLS = 'S', 1, 0 );
    swtEmailSSL.Tag      := varIIF( mm.CONFIG_EMAIL_SOFTWAREHOUSE_SENDER_SSL = 'S', 1, 0 );

    dm_rc.rc_SwtCheck( self, 'swtEmailConfirm', ( swtEmailConfirm.Tag = 1 ), true );

    Self.Height := mm.varI_ScreenHeight;
    Self.Top    := 0;

    rc_jQueryAnimate( Self, 'right' , IntTostr( Self.Left + self.Width ), '200' );

    btnOk.SetFocus;
end;
procedure TfrmThemes.htmlFrameAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
     if EventName = 'colorpixel' then
     begin
          labSelectedColor.Font.color := RGB(
                                            StrToInt( '$' + Copy(Params.Values['color_hex'], 1, 2)),
                                            StrToInt( '$' + Copy(Params.Values['color_hex'], 3, 2)),
                                            StrToInt( '$' + Copy(Params.Values['color_hex'], 5, 2))
                                          ) ;
          // CUIDADO:
          // se for alterar uma propriedade de CSS, remova a cláusula !important, pois, pelo menos
          // em meus testes, não consegui alterar em runtime
          TUniPanel( FindComponent( labSelectedColor.caption ) ).Color := RGB(
                                            StrToInt( '$' + Copy(Params.Values['color_hex'], 1, 2)),
                                            StrToInt( '$' + Copy(Params.Values['color_hex'], 3, 2)),
                                            StrToInt( '$' + Copy(Params.Values['color_hex'], 5, 2))
                                          ) ;

          //uniColorPal.Visible := not uniColorPal.Visible;

          // controle de cores
          mm.CONFIG_LAYOUT_MENU_COLOR              := ColorToString( btnSelColor_Menu.Color );
          mm.CONFIG_LAYOUT_MENUFONT_COLOR          := ColorToString( btnSelColor_MenuFont.Color );
          mm.CONFIG_LAYOUT_MENU_LOGO_BG_COLOR      := ColorToString( btnSelColor_MenuLogoBG.Color );
          mm.CONFIG_LAYOUT_MENU_LOGO_FONT_COLOR    := ColorToString( btnSelColor_MenuLogoFont.Color );
          mm.CONFIG_LAYOUT_LOGIN_COLOR             := ColorToString( btnSelColor_Login.Color );
          mm.CONFIG_LAYOUT_LABEL_COLOR             := ColorToString( btnSelColor_FormLabel.Color );
          mm.CONFIG_LAYOUT_BUTTON_COLOR            := ColorToString( btnSelColor_Button_Color.Color );
          mm.CONFIG_LAYOUT_BUTTON_COLOR_CRUD       := ColorToString( btnSelColor_Button_Color_Crud.Color );
          mm.CONFIG_LAYOUT_BUTTON_COLOR_HOVER      := ColorToString( btnSelColor_Button_Color_hover.Color );
          mm.CONFIG_LAYOUT_BUTTON_COLOR_CRUD_HOVER := ColorToString( btnSelColor_Button_Color_Crud_hover.Color );
          mm.CONFIG_LAYOUT_EDIT_COLOR              := '$00FFFFFF';//ColorToString( btnSelColor_EditFoco.Color );
          mm.CONFIG_LAYOUT_GRID_SEL_COLOR          := ColorToString( btnSelColor_GridSelect.Color );
          mm.CONFIG_LAYOUT_EDIT_FOCUS_COLOR        := ColorToString( btnSelColor_EditFoco.Color );
          mm.CONFIG_LAYOUT_EDIT_FONT_COLOR         := '$00000000';//ColorToString( //btnSelColor_EditFont.Color );
          mm.CONFIG_LAYOUT_EDLKP_COLOR             := ColorToString( btnSelColor_LookUp.Color );
          mm.CONFIG_LAYOUT_EDLKP_FONT_COLOR        := ColorToString( btnSelColor_LookUpFont.Color );
          mm.CONFIG_LAYOUT_BG_COLOR                := ColorToString( btnSelColor_Bg.Color );
          mm.CONFIG_LAYOUT_LINK_COLOR              := ColorToString( btnSelCOLOR_LINK.Color );
          mm.CONFIG_LAYOUT_LINKHOVER_COLOR         := ColorToString( btnSelCOLOR_LINKHOVER.Color );
          mm.CONFIG_LAYOUT_TAB_COLOR_FOCUS         := varIIF( cbxTabColor.Checked, StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_CRUD ), '$00FFFFFF' );

          dm_rc.rc_RenderControls( MainForm );

          //menu tree
          UniSession.AddJS('$(''.x-treelist-nav .x-treelist-item-text'').css({ ''color'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_MENUFONT_COLOR ) ) ) + ''' })' );

          //botoes
          UniSession.AddJS('$(''.ButtonTheme'').css({ ''background'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR ) ) ) + ''' })' );

          if MainForm.FindComponent( 'paLayoutLogo' ) <> nil then
             TUniContainerPanel( MainForm.FindComponent( 'paLayoutLogo' ) ).Color := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_BG_COLOR );

          if MainForm.FindComponent( 'labAppName' ) <> nil then
             TUniLabel( MainForm.FindComponent( 'labAppName' ) ).font.Color       := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_FONT_COLOR );


          // selecao de itens no combobox
//          UniSession.AddJS('$(''.x-boundlist-item-over'').css({ ''background'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_EDIT_FOCUS_COLOR ) ) ) + ''' })' );
//          UniSession.AddJS('$(''.x-boundlist-item-over'').css({ ''color'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_EDIT_FONT_COLOR ) ) ) + ''' })' );
//          UniSession.AddJS('$(''.x-boundlist-selected'').css({ ''color'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_EDIT_FONT_COLOR ) ) ) + ''' })' );
          //

          // ajustar cores dos edits
          dm_rc.rc_AdjustEditColors( MainForm );
     end;
end;

procedure TfrmThemes.UniImage1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
myColor:TColor;
Pxl:TBitmap;
begin
   // feedback: Mesut from Turkey
   Pxl:=TBitmap.Create;
   Pxl.Width  := 1;
   Pxl.Height := 1;
   {$ifdef MSWINDOWS}
   BitBlt( Pxl.Canvas.Handle , 0 , 0 , 1 , 1 , GetDC(0) , x , y , SRCCOPY);
   {$endif}
   {$ifdef LINUX}
   //mesut
   {$endif}
   myColor := Pxl.Canvas.Pixels[0,0];

  // Retornar a cor
  labTitleFrm.Caption := ColorToString( myColor );
  // Retornar o número da cor
  labTitleFrm.Caption := labTitleFrm.Caption+' - '+IntToStr(  ColorToRGB( myColor ) );

  labTitleFrm.Font.color := StringToColor( ( ColorToString( ColorToRGB(myColor)) ));
end;

procedure TfrmThemes.btnBlueClick(Sender: TObject);
var
   cTheme : string;
begin
     mm.CONFIG_LAYOUT_ACTIVE_THEME := lowercase( Copy( TUniPanel(Sender).Name ,4, 20 ) );

     cTheme := mm.CONFIG_LAYOUT_ACTIVE_THEME;

     dm_rc.rc_LoadTheme( mm.CONFIG_LAYOUT_ACTIVE_THEME );

     mm.CONFIG_LAYOUT_ACTIVE_THEME := cTheme;

     dm_rc.rc_SaveTheme( 'active' );
     dm_rc.rc_SaveTheme( cTheme );

     mm.CONFIG_LAYOUT_ACTIVE_THEME := cTheme;

     TUniPanel(Sender).tag := 1;

     rc_UpdateColorButtons;
end;

procedure TfrmThemes.rc_UpdateBorders( pPanel : TUniPanel );
var
   cNameComp : string;
begin
     // LIGAR/DESLIGAR a borda doo panel de cor selecionado
     //desligar o anterior
     if TUniPanel( Self.FindComponent( labSelectedColor.Caption ) ) <> nil then
     begin
          cNameComp := StringReplace( lowercase( labSelectedColor.Caption ), '_hover' , '', [rfReplaceAll] );

          TUniPanel( Self.FindComponent( 'paBorder' + Copy( cNameComp , Pos( '_' , cNameComp ) + 1 , 100 ) ) ).Tag   := 0;
          TUniPanel( Self.FindComponent( 'paBorder' + Copy( cNameComp , Pos( '_' , cNameComp ) + 1 , 100 ) ) ).Color := clBlack;
     end;

     labSelectedColor.Caption := pPanel.Name;

     cNameComp := StringReplace( lowercase( labSelectedColor.Caption ), '_hover' , '', [rfReplaceAll] );

     //ligar o atual
     TUniPanel( Self.FindComponent( 'paBorder' + Copy( cNameComp , Pos( '_' , cNameComp ) + 1 , 100 ) ) ).Tag := 1;
     TUniPanel( Self.FindComponent( 'paBorder' + Copy( cNameComp , Pos( '_' , cNameComp ) + 1 , 100 ) ) ).Color := clSkyBlue;

     // ajusta novos cores
     btnSelColor_Menu.Color                    := StringToColor( mm.CONFIG_LAYOUT_MENU_COLOR );
     btnSelColor_MenuFont.Color                := StringToColor( mm.CONFIG_LAYOUT_MENUFONT_COLOR );
     btnSelColor_MenuLogoBG.Color              := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_BG_COLOR );
     btnSelColor_MenuLogoFont.Color            := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_FONT_COLOR );
     btnSelColor_Login.Color                   := StringToColor( mm.CONFIG_LAYOUT_LOGIN_COLOR );
     btnSelColor_FormLabel.Color               := StringToColor( mm.CONFIG_LAYOUT_LABEL_COLOR );
     btnSelColor_Button_Color.Color            := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR );
     btnSelColor_Button_Color_Crud.Color       := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_CRUD );
     btnSelColor_Button_Color_hover.Color      := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_HOVER );
     btnSelColor_Button_Color_Crud_hover.Color := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_CRUD_HOVER );
     btnSelColor_Bg.Color                      := StringToColor( mm.CONFIG_LAYOUT_BG_COLOR );
     btnSelColor_Link.Color                    := StringToColor( mm.CONFIG_LAYOUT_LINK_COLOR );
     btnSelCOLOR_LINKHOVER.Color               := StringToColor( mm.CONFIG_LAYOUT_LINKHOVER_COLOR );
     btnSelColor_GridSelect.Color              := StringToColor( mm.CONFIG_LAYOUT_GRID_SEL_COLOR );
     btnSelColor_EditFoco.Color                := StringToColor( mm.CONFIG_LAYOUT_EDIT_FOCUS_COLOR );
     btnSelColor_LookUp.Color                  := StringToColor( mm.CONFIG_LAYOUT_EDLKP_COLOR );
     btnSelColor_LookUpFont.Color              := StringToColor( mm.CONFIG_LAYOUT_EDLKP_FONT_COLOR );

     dm_rc.rc_RenderControls( MainForm );

     //menu tree
     UniSession.AddJS('$(''.x-treelist-nav .x-treelist-item-text'').css({ ''color'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_MENUFONT_COLOR ) ) ) + ''' })' );

     if MainForm.FindComponent( 'paLayoutLogo' ) <> nil then
        TUniContainerPanel( MainForm.FindComponent( 'paLayoutLogo' ) ).Color := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_BG_COLOR );

     if MainForm.FindComponent( 'labAppName' ) <> nil then
        TUniLabel( MainForm.FindComponent( 'labAppName' ) ).font.Color       := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_FONT_COLOR );

     //botoes
     UniSession.AddJS('$(''.ButtonThemeCrud'').css({ ''background'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_CRUD ) ) ) + ''' })' );
     UniSession.AddJS('$(''.ButtonThemeCrud'').css({ ''border-color'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_CRUD ) ) ) + ''' })' );
     UniSession.AddJS('$(''.ButtonTheme'').css({ ''background'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR ) ) ) + ''' })' );
     UniSession.AddJS('$(''.ButtonTheme'').css({ ''border-color'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR ) ) ) + ''' })' );

     // ajustar cores dos edits
     dm_rc.rc_AdjustEditColors( MainForm );
end;

procedure TfrmThemes.rc_UpdateColorButtons;
begin
     // controle de cores
     btnSelColor_Menu.Color                    := StringToColor( mm.CONFIG_LAYOUT_MENU_COLOR );
     btnSelColor_MenuFont.Color                := StringToColor( mm.CONFIG_LAYOUT_MENUFONT_COLOR );
     btnSelColor_MenuLogoBG.Color              := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_BG_COLOR );
     btnSelColor_MenuLogoFont.Color            := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_FONT_COLOR );
     btnSelColor_Login.Color                   := StringToColor( mm.CONFIG_LAYOUT_LOGIN_COLOR );
     btnSelColor_FormLabel.Color               := StringToColor( mm.CONFIG_LAYOUT_LABEL_COLOR );
     btnSelColor_Button_Color.Color            := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR );
     btnSelColor_Button_Color_Crud.Color       := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_CRUD );
     btnSelColor_Button_Color_hover.Color      := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_HOVER );
     btnSelColor_Button_Color_Crud_hover.Color := StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR_CRUD_HOVER );
     // btnSelColor_EditFoco.Color              := StringToColor( mm.CONFIG_LAYOUT_EDIT_COLOR );//
     //btnSelColor_EditFont.Color              := StringToColor( mm.CONFIG_LAYOUT_EDIT_FONT_COLOR );//
     btnSelColor_GridSelect.Color              := StringToColor( mm.CONFIG_LAYOUT_GRID_SEL_COLOR );//
     btnSelColor_EditFoco.Color                := StringToColor( mm.CONFIG_LAYOUT_EDIT_FOCUS_COLOR );//
     btnSelColor_LookUp.Color                  := StringToColor( mm.CONFIG_LAYOUT_EDLKP_COLOR );
     btnSelColor_Bg.Color                      := StringToColor( mm.CONFIG_LAYOUT_BG_COLOR );
     btnSelCOLOR_LINK.Color                    := StringToColor( mm.CONFIG_LAYOUT_LINK_COLOR );
     btnSelCOLOR_LINKHOVER.Color               := StringToColor( mm.CONFIG_LAYOUT_LINKHOVER_COLOR );
     btnSelColor_LookUpFont.Color              := StringToColor( mm.CONFIG_LAYOUT_EDLKP_FONT_COLOR );

     dm_rc.rc_RenderControls( MainForm );

     if MainForm.FindComponent( 'paLayoutLogo' ) <> nil then
        TUniContainerPanel( MainForm.FindComponent( 'paLayoutLogo' ) ).Color := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_BG_COLOR );

     if MainForm.FindComponent( 'labAppName' ) <> nil then
        TUniLabel( MainForm.FindComponent( 'labAppName' ) ).font.Color       := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_FONT_COLOR );

     //menu tree
     UniSession.AddJS('$(''.x-treelist-nav .x-treelist-item-text'').css({ ''color'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_MENUFONT_COLOR ) ) ) + ''' })' );
     //botoes
//     UniSession.AddJS('$(''.ButtonTheme'').css({ ''background'': ''' + ( ColorToHtml( StringToColor( BUTTON_COLOR ) ) ) + ''' })' );
     //botoes
     UniSession.AddJS('$(''.ButtonTheme'').css({ ''background'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR ) ) ) + ''' })' );

     //UniSession.AddJS('$(''.ButtonThemeCrud'').css({ ''background'': ''' + ( ColorToHtml( StringToColor( mm.CONFIG_LAYOUT_BUTTON_COLOR ) ) ) + ''' })' );

     // ajustar cores dos edits
     dm_rc.rc_AdjustEditColors( MainForm );
end;
end.


