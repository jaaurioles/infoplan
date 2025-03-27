prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_name=>'Datos Mantenimiento Refrigerante n4v100'
,p_alias=>'DATOS-MANTENIMIENTO-REFRIGERANTE-N4V100'
,p_step_title=>'Datos Mantenimiento Refrigerante n4v100'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15905061527815569)
,p_plug_name=>'Datos Refrigerante'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1742836282655212)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TABLA_CODIGOS_ID,',
'       CODIGO,',
'       DESCRIPCION,',
'       ACTIVO,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY,',
'       TABLA_TIPO_DATOS_ID',
'      ,decode(nvl(ACTIVO,0), 1, ''fa fa-check'' , ''fa fa-times'') as icon',
'      ,decode(nvl(ACTIVO,0), 1, ''green'', ''red'') as icon_color',
'  from TABLA_CODIGOS',
' where TABLA_TIPO_DATOS_ID = 3'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P20_CODIGO'
,p_prn_page_header=>'Datos Profesionales'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(15905075082815569)
,p_name=>'Datos Profesionales'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,21:P21_TABLA_CODIGOS_ID:#TABLA_CODIGOS_ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'AMARTINEZPE'
,p_internal_uid=>24677228859890467
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11168438536095764)
,p_db_column_name=>'TABLA_CODIGOS_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'J'
,p_column_label=>'Tabla Codigos Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11168481283095765)
,p_db_column_name=>'CODIGO'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Codigo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11168605137095766)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11168729270095767)
,p_db_column_name=>'ACTIVO'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Activo'
,p_column_html_expression=>'<span class="#ICON#" style="color: #ICON_COLOR#"></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11168826396095768)
,p_db_column_name=>'CREATED'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11168923480095769)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>60
,p_column_identifier=>'O'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11168978895095770)
,p_db_column_name=>'UPDATED'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11169133647095771)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11169232999095772)
,p_db_column_name=>'TABLA_TIPO_DATOS_ID'
,p_display_order=>90
,p_column_identifier=>'R'
,p_column_label=>'Tabla Tipo Datos Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11169300745095773)
,p_db_column_name=>'ICON'
,p_display_order=>100
,p_column_identifier=>'S'
,p_column_label=>'Icon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11169407660095774)
,p_db_column_name=>'ICON_COLOR'
,p_display_order=>110
,p_column_identifier=>'T'
,p_column_label=>'Icon Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15911932621819781)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'37449'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO:DESCRIPCION:TABLA_CODIGOS_ID:ACTIVO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19316693385416978)
,p_plug_name=>'Filtros'
,p_title=>'Filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(1752708313655220)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107933982220933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19316693385416978)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Buscar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107139734220927)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15905061527815569)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('A\00F1adir Nuevo')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19325065974417041)
,p_name=>'P20_CODIGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19316693385416978)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT CODIGO_expediente FROM PROFESIONAL_EXPEDIENTE'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(1823723210655268)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108766477220935)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15905061527815569)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109342259220937)
,p_event_id=>wwv_flow_imp.id(108766477220935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15905061527815569)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109740822220937)
,p_name=>'refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107933982220933)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110185446220937)
,p_event_id=>wwv_flow_imp.id(109740822220937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15905061527815569)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110589381220938)
,p_name=>'SETVALUE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_CODIGO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111091953220938)
,p_event_id=>wwv_flow_imp.id(110589381220938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   APEX_UTIL.SET_SESSION_STATE( ''P20_CODIGO'', :P20_CODIGO);',
'END;'))
,p_attribute_02=>'P20_CODIGO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
