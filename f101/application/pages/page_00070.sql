prompt --application/pages/page_00070
begin
--   Manifest
--     PAGE: 00070
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
 p_id=>70
,p_name=>unistr('Formas de notificaci\00F3n')
,p_alias=>unistr('FORMAS-DE-NOTIFICACI\00D3N')
,p_step_title=>unistr('Formas de notificaci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9602532609236596)
,p_plug_name=>unistr('Formas de notificaci\00F3n')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CODIGO,',
'       DESCRIPCION,',
'       FECHA_BAJA,',
'       REQUIERE_DNI,',
'      ',
'      decode(nvl( REQUIERE_DNI,0), 1, ''fa fa-check'' , ''fa fa-times'') as icon',
'      ,decode(nvl( REQUIERE_DNI,0), 1, ''green'', ''red'') as icon_color',
'  from FORMA_NOTIFICACION'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('Formas de notificaci\00F3n')
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9602628593236596)
,p_name=>unistr('Formas de notificaci\00F3n')
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
,p_detail_link=>'f?p=&APP_ID.:71:&APP_SESSION.::&DEBUG.:RP:P71_CODIGO:\#CODIGO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ALEXANDRA'
,p_internal_uid=>18374782370311494
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9603314987236600)
,p_db_column_name=>'CODIGO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9603738580236602)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9604122004236603)
,p_db_column_name=>'FECHA_BAJA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fecha Baja'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9194529791605887)
,p_db_column_name=>'REQUIERE_DNI'
,p_display_order=>13
,p_column_identifier=>'G'
,p_column_label=>'Requiere Dni'
,p_column_html_expression=>'<span class="#ICON#" style="color: #ICON_COLOR#"></span>'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9194394000605885)
,p_db_column_name=>'ICON'
,p_display_order=>23
,p_column_identifier=>'E'
,p_column_label=>'Icon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9194467422605886)
,p_db_column_name=>'ICON_COLOR'
,p_display_order=>33
,p_column_identifier=>'F'
,p_column_label=>'Icon Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9606990319239037)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'91538'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO:DESCRIPCION:FECHA_BAJA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17011202064102472577)
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
 p_id=>wwv_flow_imp.id(456559361132761)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9602532609236596)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:71:&APP_SESSION.::&DEBUG.:71::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9198104867605896)
,p_name=>'P70_FORMAS_NOTIF_TITLE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17011202574908472580)
,p_name=>'P70_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17011202064102472577)
,p_prompt=>unistr('<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Mantenimiento Formas de Notificaci\00F3n</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(457487302132763)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9602532609236596)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(457967770132763)
,p_event_id=>wwv_flow_imp.id(457487302132763)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9602532609236596)
);
wwv_flow_imp.component_end;
end;
/
