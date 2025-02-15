﻿unit untCadCIDADES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, untfrmBaseCRUD, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniEdit,
  uniDateTimePicker, uniCheckBox, uniMultiItem, uniComboBox, uniBasicGrid,
  uniDBGrid, uniPanel, uniPageControl, uniButton, uniBitBtn, uniLabel,
  uniGUIBaseClasses, uniDBComboBox, uniDBDateTimePicker, uniDBEdit,
  uniDBCheckBox, uniSpeedButton, uniScrollBox, Vcl.Menus, uniMainMenu,
  uniHTMLFrame, uniSweetAlert;

type
  TfrmCadCIDADES = class(TfrmBaseCRUD)
    pgComplementData: TUniPageControl;
    tabGeral: TUniTabSheet;
    sboxTab1: TUniScrollBox;
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    edCodigo: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel5: TUniLabel;
    cbxUFS: TUniDBComboBox;
    UniDBEdit1: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel1: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);
    procedure dsMasterStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

implementation

{$R *.dfm}

uses untdm_rc, MainModule, untFrmLookUp, mkm_func_web; // untDM_LOOKUPs,



procedure TfrmCadCIDADES.dsMasterStateChange(Sender: TObject);
begin
  inherited;
  rcBlock40.Enabled :=( mm.CONFIG_LANGUAGE = 'pt_BR' );// dsMaster.State = dsInsert;
  rcBlock40.Visible := rcBlock40.Enabled;
  dm_rc.rc_ResizeBlocks( self );
end;

procedure TfrmCadCIDADES.UniBitBtn3Click(Sender: TObject);
begin
  // no frmBaseCRUD já tem a critica de MOVIMENTACAO pra o registro que
  // esta sendo deletado...
  //
  // dm_rc.rc_HasCodeRegistered
  //

  // criticas antes da exclusao
  //

  inherited;

  if mm.varB_OperationProcessed then //dbgSearchCRUD.Tag > 0 then
  begin

       // procedimentos pós-exclusao
       //

  end;

end;
// v. 3.3.2.0
procedure TfrmCadCIDADES.UniFrameCreate(Sender: TObject);
begin
  sqlMaster.close;
  sqlMaster.SQL.Text := ' SELECT [[fields]] ' +
                        '   FROM [[table]] tab ' +
                        '  WHERE tab.[[pk]] = :table_pk ' +  // Apenas cadastro MESTRE é necessário o WHERE( por enquanto )

                        ' [grid] ' + // este 'coringa' indica ao RadCORE o início da query usada na pesquisa padrão

                        ' SELECT ' +

                        '   tab.[[pk-show]], ' +
                        '   tab.Descricao, ' +
                        '   tab.Uf  ' +
                        //'   [[allpks]] ' +   // só é necessário o [[allpks]] aqui se estiver usando ALIAS em um campo CHAVE PRIMARIA

                        ' FROM  [[table]]  tab ' ;

  // usado na formação da query da pesquisa dinâmica do grid( sqlSearchMaster )
  //
  ed_Where_Search.Text    := '' ;
  ed_Order_Search.Text    := 'tab.descricao';

  // se a tabela atual permitir pesquisas por intervalo de datas...
  // parametros de pesquisa especifica por datas( pesq. por periodo )  - ANTES DO INHERITED
  // os periodos de pesq. de data só serão exibidos se houver algum campo adicionado
  //
  // dm_rc.rc_FillSearchFieldsCRUD( Self, cbxSearchCRUDFieldDate.name, 'tab.data' , 'DATA' );

  dbgSearchCRUD.Hint := '[[' +
                        'fieldmasks:'+
                        'grid-resize|'+
                        'model-crud:2(btns-cls:ButtonGray)|'+
                        //'model-crud:2|'+
                        //'no-paged|'+
                        'grid-paginator:center|'+ // v. 4.0.0.0 - paginator
                        'codigo[[align:c]];' + // v. 4.0.0.0
                        ']]';

  inherited;

  // parametros de pesquisa padrao - DEPOIS DO INHERITED
  //
  dm_rc.rc_FillSearchFieldsCRUD( Self, cbxSearchCRUDField1.name   , 'tab.' + ed_PK.Text , 'CÓDIGO' );
  dm_rc.rc_FillSearchFieldsCRUD( Self, cbxSearchCRUDField1.name   , 'tab.descricao'     , 'CIDADE' );

  // parametros de pesquisa composta( opcional )
  //
  // dm_rc.rc_FillSearchFieldsCRUD( Self, cbxSearchCRUDField2.name   , '' , '' );

  // adicione aqui codificação específica para este form, caso seja necessário
  //
end;

initialization
  RegisterClass(TfrmCadCIDADES);

end.
