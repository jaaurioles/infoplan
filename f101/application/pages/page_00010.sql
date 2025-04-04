prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Datos Profesionales'
,p_alias=>'DATOS-PROFESIONALES'
,p_step_title=>'Datos Profesionales'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11631634673632917)
,p_plug_name=>'Datos Profesionales'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1742836282655212)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CODIGO_EXPEDIENTE,',
'       NIF,',
'       TITULACION,',
'       ESPECIALIDAD,',
'       COLEGIO_OFICIAL,',
'       NUMERO_COLEGIADO,',
'       ENTIDAD_SEGURO,',
'       NUMERO_POLIZA,',
'       NUMERO_VISADO',
'  from PROFESIONAL_EXPEDIENTE',
'   -- WHERE 1 = 1 ',
'     --  AND CODIGO_EXPEDIENTE = :P100_CODIGO OR :P100_CODIGO IS NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10_CODIGO'
,p_prn_page_header=>'Datos Profesionales'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11631648228632917)
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
,p_detail_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,:P11_CODIGO_EXPEDIENTE,P11_NIF:\#CODIGO_EXPEDIENTE#\,#NIF#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'AMARTINEZPE'
,p_internal_uid=>20403802005707815
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11632396800632917)
,p_db_column_name=>'CODIGO_EXPEDIENTE'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Expediente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11632842048632917)
,p_db_column_name=>'NIF'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nif'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11633200389632917)
,p_db_column_name=>'TITULACION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Titulaci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11633566014632917)
,p_db_column_name=>'ESPECIALIDAD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Especialidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11634793308632917)
,p_db_column_name=>'ENTIDAD_SEGURO'
,p_display_order=>14
,p_column_identifier=>'G'
,p_column_label=>'Entidad Seguro'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11633982383632917)
,p_db_column_name=>'COLEGIO_OFICIAL'
,p_display_order=>24
,p_column_identifier=>'E'
,p_column_label=>'Colegio Oficial'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11634375353632917)
,p_db_column_name=>'NUMERO_COLEGIADO'
,p_display_order=>34
,p_column_identifier=>'F'
,p_column_label=>unistr('N\00BA Colegiado')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11635177146632917)
,p_db_column_name=>'NUMERO_POLIZA'
,p_display_order=>54
,p_column_identifier=>'H'
,p_column_label=>unistr('N\00BA Poliza')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11635552206632917)
,p_db_column_name=>'NUMERO_VISADO'
,p_display_order=>64
,p_column_identifier=>'I'
,p_column_label=>unistr('N\00BA Visado')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11638505767637129)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'37449'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO_EXPEDIENTE:NIF:TITULACION:ESPECIALIDAD:COLEGIO_OFICIAL:NUMERO_COLEGIADO:ENTIDAD_SEGURO:NUMERO_POLIZA:NUMERO_VISADO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15043266531234326)
,p_plug_name=>'Filtros'
,p_title=>'Filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(1752708313655220)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17010581934982042290)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-bottom-none'
,p_region_attributes=>'style="background-color: #AD303B; display: flex; align-items: center; height: 100%; padding-top: 10px; padding-left: 15px; padding-right: 10px; padding-bottom: 10px;"'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82807326190085)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15043266531234326)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Buscar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82011717190076)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11631634673632917)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('A\00F1adir Nuevo')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:P11_CODIGO_EXPEDIENTE:&P10_EXPEDIENTE_AUX.'
,p_button_condition=>'P10_EXPEDIENTE_AUX'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7323598041732731)
,p_name=>'P10_EXPEDIENTE_AUX'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15049461033234374)
,p_name=>'P10_CODIGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15043266531234326)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17010582415701042297)
,p_name=>'P10_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17010581934982042290)
,p_prompt=>'<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Profesionales</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83704444190092)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11631634673632917)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84238841190094)
,p_event_id=>wwv_flow_imp.id(83704444190092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11631634673632917)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84575646190095)
,p_name=>'refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82807326190085)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85061678190095)
,p_event_id=>wwv_flow_imp.id(84575646190095)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11631634673632917)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85540027190095)
,p_name=>'SETVALUE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_CODIGO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85985486190096)
,p_event_id=>wwv_flow_imp.id(85540027190095)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   APEX_UTIL.SET_SESSION_STATE( ''P10_CODIGO'', :P10_CODIGO);',
'END;'))
,p_attribute_02=>'P10_CODIGO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
