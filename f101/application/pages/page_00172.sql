prompt --application/pages/page_00172
begin
--   Manifest
--     PAGE: 00172
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
 p_id=>172
,p_name=>'Descarga'
,p_alias=>'DESCARGA'
,p_step_title=>'Descarga'
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12464097709266243)
,p_name=>'P172_ID_BLOB'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12464140920266244)
,p_name=>'P172_NOMBRE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2504339940557831)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Descarga'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    l_blob blob;',
'    l_extension varchar2(8);',
'begin',
'   select BLOB_DOCUMENTO into l_blob from DOCUMENTO_BLOB where ID = :P172_id_blob;',
'',
'   --limpiar header',
'   sys.htp.flush;',
'   sys.htp.init;',
'   ',
'   --set mine type',
'   select lower(substr(:P172_NOMBRE, -3)) into l_extension from dual;',
'   if l_extension = ''odt'' then',
'    sys.owa_util.mime_header(''application/vnd.oasis.opendocument.text'', FALSE, ''UTF-8'');',
'   else',
'    sys.owa_util.mime_header(''application/pdf'', FALSE, ''UTF-8'');',
'   end if;',
'   --set size browser',
'   sys.htp.p(''Content-length: '' || dbms_lob.getlength(l_blob));',
'',
'   --asignar nombre del fichero',
'   sys.htp.p(''Content-Disposition: attachment; filename="'' || :P172_NOMBRE || ''"'');',
'',
'   --cerrar header',
'   sys.owa_util.http_header_close;',
'',
'   -- Descarga del archivo',
'   wpg_docload.download_file(l_blob);',
'',
'   apex_application.stop_apex_engine;',
'',
'   exception',
'   when apex_application.e_stop_apex_engine then',
'       raise;',
'    when others then ',
'    sys.htp.prn(''error al descargar: '' || sqlerrm);',
'    apex_application.stop_apex_engine;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11276493717632729
);
wwv_flow_imp.component_end;
end;
/
