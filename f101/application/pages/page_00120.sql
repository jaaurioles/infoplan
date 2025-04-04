prompt --application/pages/page_00120
begin
--   Manifest
--     PAGE: 00120
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
 p_id=>120
,p_name=>'Usuario tramite'
,p_alias=>unistr('USUARIO-TR\00C1MITE')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Usuario tr\00E1mite')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function add(){',
'   var si = ''Y'';',
'   let ids = 0;',
'   var modelo = apex.region("igtramite").widget().interactiveGrid("getViews", "grid").model;',
'   modelo.forEach(function (fila) {',
'      var valor = modelo.getValue(fila, "PT");',
'      if(valor === si){',
'        var valor_id = modelo.getValue(fila, "ID");',
'        if (ids === 0){',
'            ids = valor_id;',
'        }',
'        else{',
'            ids = ids + "," + valor_id;',
'        }',
'      }',
'    });',
'    apex.item("P120_LISTA").setValue(ids);',
'};'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3756875293269910)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(9654986254053932377)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12258126980801744)
,p_plug_name=>unistr('Usuario tr\00E1mite')
,p_title=>unistr('tr\00E1mites del asunto Instalaciones frigor\00EDficas')
,p_region_name=>'igtramite'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id,',
unistr('       codigo || '' '' || descripcion AS "Descripci\00F3n",'),
'       CASE ',
'           WHEN EXISTS (SELECT 1 FROM USUARIO_TRAMITE ',
'                        WHERE UPPER(LOGIN) = UPPER(:P120_USER) ',
'                          AND id_tramite = t.id) ',
'           THEN ''<span class="icon-check">&#9989;</span>''  -- Check verde',
'           ELSE ''<span class="icon-cross">&#10060;</span>'' -- Cruz roja',
'       END AS PT',
'FROM TRAMITE t',
'',
'/*select id,',
unistr('       codigo || '' '' || descripcion "Descripci\00F3n",'),
'       NVL2((select ID_TRAMITE from USUARIO_TRAMITE where upper(LOGIN) = upper(:p120_user) and id_tramite = id) , ''Y'', ''N'') as PT',
'  from TRAMITE */'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P120_USER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('tr\00E1mites del asunto Instalaciones frigor\00EDficas')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7322789807732723)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ALEXANDRA'
,p_internal_uid=>16094943584807621
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7323143986732726)
,p_db_column_name=>'PT'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Pt'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7322899475732724)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7323000372732725)
,p_db_column_name=>unistr('Descripci\00F3n')
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8204833511165143)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'169770'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('PT:ID:Descripci\00F3n')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17032242882555448503)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-bottom-none'
,p_region_attributes=>'style="background-color: #AD303B; display: flex; align-items: center; height: 100%; padding-top: 10px; padding-left: 15px; padding-right: 10px; padding-bottom: 10px;"'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3756791772269909)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3756875293269910)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::P32_ID:&P120_ID_ACTUACION.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2476807606545629)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3756875293269910)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3756701370269908)
,p_name=>'P120_BRANCH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12258126980801744)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3757017208269911)
,p_name=>'P120_ID_ACTUACION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12258126980801744)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11965772368562877)
,p_name=>'P120_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12258126980801744)
,p_item_default=>'select :app_user from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'select :app_user from dual;'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12285515367996646)
,p_name=>'P120_LISTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12258126980801744)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17032244006021448522)
,p_name=>'P120_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17032242882555448503)
,p_prompt=>unistr('<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Usuario tr\00E1mite</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2478261054545637)
,p_name=>'Guardar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2476807606545629)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2478759308545638)
,p_event_id=>wwv_flow_imp.id(2478261054545637)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'add();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2479323191545639)
,p_event_id=>wwv_flow_imp.id(2478261054545637)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_ids VARCHAR2(100) := :p120_lista;',
'    TYPE id_table IS TABLE OF VARCHAR2(10);',
'    t_ids id_table;',
'begin',
'    delete from USUARIO_TRAMITE where login = :p120_user;',
'',
'    SELECT REGEXP_SUBSTR(v_ids, ''[^,]+'', 1, LEVEL) BULK COLLECT INTO t_ids',
'    FROM DUAL',
'    CONNECT BY REGEXP_SUBSTR(v_ids, ''[^,]+'', 1, LEVEL) IS NOT NULL;',
'',
'    for i in 1 .. t_ids.COUNT loop',
'      apex_debug.info(''************DEBUG*****************  id: '' || t_ids(i) );',
'        insert into USUARIO_TRAMITE (login, id_tramite) values (:p120_user, t_ids(i));',
'    end loop;',
'',
'end;'))
,p_attribute_02=>'P120_LISTA,P120_USER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3756512307269906)
,p_event_id=>wwv_flow_imp.id(2478261054545637)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( "Se ha actualizado los permisos" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2480201588545639)
,p_name=>'Al cambiar'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12258126980801744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2480706343545640)
,p_event_id=>wwv_flow_imp.id(2480201588545639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'PT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
