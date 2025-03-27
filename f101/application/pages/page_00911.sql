prompt --application/pages/page_00911
begin
--   Manifest
--     PAGE: 00911
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
 p_id=>911
,p_name=>'Plantilla variable'
,p_alias=>'PLANTILLA-VARIABLE'
,p_step_title=>'Plantilla variable'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13154338954655899)
,p_plug_name=>'Plantilla variable'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'PLANTILLA_VARIABLE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Plantilla variable'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(13154386912655899)
,p_name=>'Plantilla variable'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:912:&APP_SESSION.::&DEBUG.:RP:P912_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Editar" class="fa fa-edit" title="Editar"></span>'
,p_owner=>'FERNANDO'
,p_internal_uid=>21926540689730797
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13155177936655904)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13155543300655906)
,p_db_column_name=>'CODIGO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13155921685655906)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13156310701655906)
,p_db_column_name=>'ID_UNIDAD_ORGANIZATIVA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Unidad Organizativa'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13156725257655907)
,p_db_column_name=>'SELECT_SQL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Select Sql'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13157176103655907)
,p_db_column_name=>'FROM_SQL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'From Sql'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13157510335655907)
,p_db_column_name=>'WHERE_SQL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Where Sql'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13157912001655908)
,p_db_column_name=>'ORDERBY_SQL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Orderby Sql'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13158369638655908)
,p_db_column_name=>'LISTA_ID_TRAMITE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Lista Id Tramite'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13158681148655908)
,p_db_column_name=>'LISTA_CODIGO_ASUNTO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Lista Codigo Asunto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13159165242655909)
,p_db_column_name=>'VARIABLE_PARRAFO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>unistr('Variable P\00E1rrafo')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13163139200662241)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'105982'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:CODIGO:DESCRIPCION:ID_UNIDAD_ORGANIZATIVA:SELECT_SQL:FROM_SQL:WHERE_SQL:ORDERBY_SQL:LISTA_ID_TRAMITE:LISTA_CODIGO_ASUNTO:VARIABLE_PARRAFO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17032241548347434993)
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
 p_id=>wwv_flow_imp.id(2569527482578982)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13154338954655899)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:912:&APP_SESSION.::&DEBUG.:912::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17032242546681435013)
,p_name=>'P911_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17032241548347434993)
,p_prompt=>'<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Plantilla variable</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2570816181578984)
,p_name=>unistr('Editar Informe: Cuadro de Di\00E1logo Cerrado')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13154338954655899)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2571303216578984)
,p_event_id=>wwv_flow_imp.id(2570816181578984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13154338954655899)
);
wwv_flow_imp.component_end;
end;
/
