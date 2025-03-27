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
,p_protection_level=>'C'
,p_page_component_map=>'21'
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
'select id,',
unistr('       codigo || '' '' || descripcion "Descripci\00F3n",'),
'       NVL2((select ID_TRAMITE from USUARIO_TRAMITE where upper(LOGIN) = upper(:p120_user) and id_tramite = id) , ''Y'', ''N'') as PT',
'  from TRAMITE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P120_USER'
,p_prn_page_header=>unistr('Usuario tr\00E1mite')
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11962636205562854)
,p_name=>'PT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'PT'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11962776461562855)
,p_name=>unistr('Descripci\00F3n')
,p_source_type=>'DB_COLUMN'
,p_source_expression=>unistr('Descripci\00F3n')
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Descripci\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12281047615996609)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(12258634879801745)
,p_internal_uid=>21030788656876643
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(12259071293801746)
,p_interactive_grid_id=>wwv_flow_imp.id(12258634879801745)
,p_static_id=>'97851'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(12259200160801747)
,p_report_id=>wwv_flow_imp.id(12259071293801746)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12272719010920494)
,p_view_id=>wwv_flow_imp.id(12259200160801747)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(11962636205562854)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>43.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12276093986939129)
,p_view_id=>wwv_flow_imp.id(12259200160801747)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(11962776461562855)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12289521058003642)
,p_view_id=>wwv_flow_imp.id(12259200160801747)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12281047615996609)
,p_is_visible=>true
,p_is_frozen=>false
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
,p_attribute_01=>'Y'
,p_item_comment=>'select :app_user from dual;'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12285515367996646)
,p_name=>'P120_LISTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12258126980801744)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
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
