﻿unit mkm_dbcombobox; // developed and provided by Mr. JOSAURO // v. 3.2.0.7

interface

uses
    uniDBComboBox, uniGUIFrame, uniGUIForm, System.SysUtils, vcl.Graphics,
    System.Classes, uniGUIClasses, uconsts , TypInfo, Data.DB;

procedure rc_UpdateDBComboBox(pForm: TObject; pIn:boolean);

implementation
{------------------------------------------------------------------------------}
procedure rc_UpdateDBComboBox(pForm:TObject;pIn:boolean);
var
  I      : Integer;
  sHints : string;
  iPos   : integer;
  I2     : Integer;
  aOpt  : array[0..500] of string; // v. 4.0.0.6
  I3     : integer;
  cbbx   : TUniDBComboBox;
  cTemp  : string;
  cTemp2 : string;
begin
  // Atualiza o banco de dados conforme o valor definido no Hints para um campo
  // Combobox, onde o valor persistido no banco não é o Indice mas uma string/valor
  //  Ex: Tipo FJ  hints= '[[cbbx:{F,J}]]  será gravado F ou J conforme o ItemIndex do combobox
  //      Estado Civil     hints= '[[cbbx:{S,C,D,E,V,P}]]  Grava no banco a letra conforme o esta civil (Solteiro, Casado, Divorciado,Desquitado,Viuvo, Separado)
  // Quando pIn for false o ItemIndex é setado com o a posição do valor no Hints.
  //        pIn for true  o Field é atualizado com o valor na posição do Hints conforme o ItemIndex.
  I3 := 0;
  for I := 0 to TComponent( pForm ).ComponentCount -1 do  //TUniControl(TComponent( pForm ))
  begin
    if TComponent(pForm).Components[i] is TUniDBComboBox then
    begin
      cbbx   := TUniDBComboBox(TComponent(pForm).Components[i]);
      sHints := cbbx.Hint;
      iPos := pos('cbbx:{', sHints);
      if (iPos > 0) then
      begin
        cTemp := copy(sHints, iPos+6, 200);
        iPos  := pos('}', cTemp);
        if iPos > 0 then
        begin
          cTemp := copy(cTemp, 1, iPos-1);
          I3    := 0;
          while cTemp <> '' do
          begin
            iPos := pos(',', cTemp);
            if iPos > 0 then
            begin
              cTemp2 := copy(cTemp,1, ipos-1);
              cTemp  := trim(copy(cTemp,ipos+1, 200));
              aOpt[I3] := cTemp2;
              inc(I3);
            end
            else
            if cTemp <> '' then
            begin
              aOpt[I3] := cTemp;
              cTemp     := '';
            end;
          end;
        end;
        // Atualiza o Valor do ComboBox ou Atualiza O campo no DataSet;
        if pIn    // Atualiza valor do ComboBox;
        then
        begin
          for I2 := 0 to I3 do
          if cbbx.DataSource.DataSet.FieldByName(cbbx.DataField).Value = aOpt[I2] then
          begin
               cbbx.ItemIndex := I2;
               break;
          end;
        end
        else
        if (cbbx.ItemIndex > -1) and (cbbx.ItemIndex <= I3) then // Atualiza Field no DataSet
           cbbx.DataSource.DataSet.FieldByName(cbbx.DataField).Value := aOpt[cbbx.ItemIndex];
      end;
    end;
  end;
end;
end.
