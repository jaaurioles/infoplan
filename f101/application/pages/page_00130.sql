prompt --application/pages/page_00130
begin
--   Manifest
--     PAGE: 00130
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
 p_id=>130
,p_name=>'Documento Portafirmas'
,p_alias=>'DOCUMENTO-PORTAFIRMAS'
,p_step_title=>'Documento Portafirmas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(855739237835924)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-bottom-none'
,p_region_attributes=>'style="background-color: #AD303B; display: flex; align-items: center; height: 100%; padding-top: 10px; padding-left: 15px; padding-right: 10px; padding-bottom: 10px;"'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(855834999835925)
,p_plug_name=>'Cuerpo'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2235340021416633)
,p_plug_name=>'Documento Portafirmas'
,p_parent_plug_id=>wwv_flow_imp.id(855834999835925)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from apexweb.documento_portafirmas dp',
'      ,apexweb.documento do',
'  where dp.id_documento = do.id(+)',
'    --and dp.id_documento = :GLOBAL.DOC_Id ',
'    --and dp.version = :GLOBAL.DOC_Version'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Documento Portafirmas'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2235405841416633)
,p_name=>'Documento Portafirmas'
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
,p_detail_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131:P131_ID_DOCUMENTO,P131_VERSION,P131_PAG_ORIGEN:\#ID_DOCUMENTO#\,#VERSION#,130'
,p_detail_link_text=>'<span role="img" aria-label="Editar" class="fa fa-edit" title="Editar"></span>'
,p_owner=>'SAMUEL'
,p_internal_uid=>11007559618491531
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2236064936416637)
,p_db_column_name=>'ID_DOCUMENTO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Documento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2236483145416638)
,p_db_column_name=>'VERSION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2236895995416639)
,p_db_column_name=>'LOGIN_FIRMA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Login Firma'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2237288732416639)
,p_db_column_name=>'ID_SOLICITUD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Id Solicitud'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2237737593416639)
,p_db_column_name=>'ID_DOCUMENTO_PORTAFIRMAS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Id Documento Portafirmas'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238090006416640)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Codigo Estado'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238498345416640)
,p_db_column_name=>'MENSAJE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mensaje'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2239006208416641)
,p_db_column_name=>'LOGIN_SEGUNDA_FIRMA'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Login Segunda Firma'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2239494878416641)
,p_db_column_name=>'FLUJO_FIRMA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Flujo Firma'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2239941201416642)
,p_db_column_name=>'FECHA_FIRMA'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Fecha Firma'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2240269665416642)
,p_db_column_name=>'LOGIN_ENVIO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Login Envio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2240739273416642)
,p_db_column_name=>'FECHA_ENVIO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Fecha Envio'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2241059660416643)
,p_db_column_name=>'LISTA_ANEXOS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Lista Anexos'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2241540768416643)
,p_db_column_name=>'NOTIFICACION_AUTOMATICA'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Notificacion Automatica'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2241912955416644)
,p_db_column_name=>'NOTIFICACION_AUTOMATICA_ANEXOS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Notificacion Automatica Anexos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2242296007416644)
,p_db_column_name=>'LOGIN_TERCERA_FIRMA'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Login Tercera Firma'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2242676342416644)
,p_db_column_name=>'DOCUMENTO_ELECTRONICO'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Documento Electronico'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2243118939416645)
,p_db_column_name=>'CODIGO_CLASE_DOCUMENTO'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Codigo Clase Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2243531408416645)
,p_db_column_name=>'LOGIN_CUARTA_FIRMA'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Login Cuarta Firma'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2243918088416645)
,p_db_column_name=>'LOGIN_SEG_ENVIO'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Login Seg Envio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2244259215416646)
,p_db_column_name=>'LOGIN_TER_ENVIO'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Login Ter Envio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2244680650416646)
,p_db_column_name=>'ID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2245068257416647)
,p_db_column_name=>'CODIGO_TIPO'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Codigo Tipo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2245481847416647)
,p_db_column_name=>'NOMBRE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2245898071416648)
,p_db_column_name=>'CLASE_DOCUMENTO'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Clase Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2249264983427564)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'110215'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_DOCUMENTO:VERSION:LOGIN_FIRMA:ID_SOLICITUD:ID_DOCUMENTO_PORTAFIRMAS:CODIGO_ESTADO:MENSAJE:LOGIN_SEGUNDA_FIRMA:FLUJO_FIRMA:FECHA_FIRMA:LOGIN_ENVIO:FECHA_ENVIO:LISTA_ANEXOS:NOTIFICACION_AUTOMATICA:NOTIFICACION_AUTOMATICA_ANEXOS:LOGIN_TERCERA_FIRMA:D'
||'OCUMENTO_ELECTRONICO:CODIGO_CLASE_DOCUMENTO:LOGIN_CUARTA_FIRMA:LOGIN_SEG_ENVIO:LOGIN_TER_ENVIO:ID:CODIGO_TIPO:NOMBRE:CLASE_DOCUMENTO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2246382385416648)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2235340021416633)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('A\00F1adir Nuevo')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:131:&APP_SESSION.::&DEBUG.:131::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(855896605835926)
,p_name=>'P130_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(855739237835924)
,p_prompt=>'<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Documentos Portafirmas</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2246704035416649)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2235340021416633)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2247189729416650)
,p_event_id=>wwv_flow_imp.id(2246704035416649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2235340021416633)
);
wwv_flow_imp.component_end;
end;
/
