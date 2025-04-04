prompt --application/pages/page_00171
begin
--   Manifest
--     PAGE: 00171
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>114600926961239704
,p_default_application_id=>118
,p_default_id_offset=>8772153777074898
,p_default_owner=>'EIOWNER'
);
wwv_flow_imp_page.create_page(
 p_id=>171
,p_name=>'Plantilla'
,p_alias=>'PLANTILLA'
,p_page_mode=>'MODAL'
,p_step_title=>'Plantilla'
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10408647237116668)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2499651949555336)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10408647237116668)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>unistr('A\00F1adir')
,p_button_condition=>'P171_ID_DOCUMENTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2499305878555336)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10408647237116668)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Modificar'
,p_button_condition=>'P171_ID_DOCUMENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2501752464555339)
,p_branch_action=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10410147212116671)
,p_name=>'P171_ADJUNTAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10408647237116668)
,p_prompt=>'Adjuntar'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
,p_attribute_15=>'20000'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12462672099263771)
,p_name=>'P171_ID_DOCUMENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10408647237116668)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2500851125555338)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('A\00F1adir plantilla')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor c1 is',
'    select *',
'      from apex_application_temp_files',
'      where name = :P171_ADJUNTAR',
'        and application_id = :app_id;',
'  fichero c1%rowtype;',
'l_file_names apex_t_varchar2;',
'    l_id_documento number;',
'    l_id_plantilla number;',
'    l_id_blob number;',
'    l_id_tipo number;',
'    l_extension varchar2(5);',
'begin',
'  open c1;',
'  fetch c1 into fichero;',
'  close c1;',
'',
'    select lower(substr(fichero.filename, -3)) into l_extension from dual;',
'',
'  if (dbms_lob.getlength(fichero.BLOB_CONTENT) < 0 or fichero.BLOB_CONTENT is not null) and l_extension = ''odt'' then',
'      select s_documento_blob.nextval into l_id_blob from dual;',
'      insert into DOCUMENTO_BLOB(id,',
'          BLOB_DOCUMENTO',
'          )',
'      values (',
'          l_id_blob,',
'          fichero.blob_content',
'          --fichero.mime_type',
'          );',
'       select s_documento.nextval into l_id_documento from dual;',
'       ',
'       select CODIGO into l_id_tipo from TIPO_DOCUMENTO where lower(EXTENSION) like ''%'' || l_extension;',
'       insert into DOCUMENTO (ID,  NOMBRE, CODIGO_TIPO) values (l_id_documento, fichero.filename, l_id_tipo); ',
'       insert into PLANTILLA (ID_DOCUMENTO, DESCRIPCION) values (l_id_documento, ''Nueva Plantilla'');',
'       insert into DOCUMENTO_VERSION (ID, id_blob, version, FECHA_MODIFICACION, LOGIN) values (l_id_documento, l_id_blob, 1, sysdate, nvl(wwv_flow.g_user, user));',
'       insert into TRAMITE_PLANTILLA (ID_TRAMITE, ID_PLANTILLA, REGISTRO_SALIDA) values (:p170_tramite , l_id_documento, 0); ',
'  else',
'            raise_application_error(-20001,''No se pudo seleccionar una plantilla''); ',
'  end if;',
'  delete from apex_application_temp_files where fichero.application_id = :APP_ID;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2499651949555336)
,p_internal_uid=>11273004902630236
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2501328776555338)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Modificar plantilla'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor c1 is',
'    select *',
'      from apex_application_temp_files',
'      where name = :P171_ADJUNTAR',
'        and application_id = :app_id;',
'  fichero c1%rowtype;',
'l_file_names apex_t_varchar2;',
'    l_id_documento number := :P171_ID_DOCUMENTO;',
'    l_id_plantilla number;',
'    l_id_blob number;',
'    l_id_tipo number;',
'    l_extension varchar2(5);',
'    l_version number;',
'begin',
'  open c1;',
'  fetch c1 into fichero;',
'  close c1;',
'    select lower(substr(fichero.filename, -3)) into l_extension from dual;',
'',
'  if (dbms_lob.getlength(fichero.BLOB_CONTENT) < 0 or fichero.BLOB_CONTENT is not null) and l_extension = ''odt'' then',
'      select s_documento_blob.nextval into l_id_blob from dual;',
'      select nvl(max(version),0)+1 into l_version from DOCUMENTO_VERSION where ID = :P171_ID_DOCUMENTO;',
'      insert into DOCUMENTO_BLOB(id,',
'          BLOB_DOCUMENTO',
'          )',
'      values (',
'          l_id_blob,',
'          fichero.blob_content',
'          --fichero.mime_type',
'          );',
'      -- select s_documento.nextval into l_id_documento from dual;',
'       select CODIGO into l_id_tipo from TIPO_DOCUMENTO where lower(EXTENSION) like ''%'' || l_extension;',
'       update DOCUMENTO set NOMBRE =fichero.filename, CODIGO_TIPO= l_id_tipo where id = :P171_ID_DOCUMENTO; ',
'       --insert into PLANTILLA (ID_DOCUMENTO, DESCRIPCION) values (l_id_documento, ''Nueva Plantilla'');',
'       insert into DOCUMENTO_VERSION (ID, id_blob, version, FECHA_MODIFICACION, LOGIN) values (:P171_ID_DOCUMENTO, l_id_blob, l_version, sysdate, nvl(wwv_flow.g_user, user));',
'       --insert into TRAMITE_PLANTILLA (ID_TRAMITE, ID_PLANTILLA, REGISTRO_SALIDA) values (:p170_tramite , l_id_documento, 0); ',
'  else',
'            raise_application_error(-20001,''No se pudo seleccionar una plantilla''); ',
'  end if;',
'  delete from apex_application_temp_files where fichero.application_id = :APP_ID;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2499305878555336)
,p_internal_uid=>11273482553630236
);
wwv_flow_imp.component_end;
end;
/
