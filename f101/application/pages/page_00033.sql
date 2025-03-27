prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_name=>unistr('Duplicar Actuaci\00F3n')
,p_alias=>unistr('DUPLICAR-ACTUACI\00D3N')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Duplicar Actuaci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13894622311184399)
,p_plug_name=>unistr('Duplicar Actuaci\00F3n')
,p_title=>unistr('Duplicar Actuaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13976375172063723)
,p_plug_name=>'Plantillas'
,p_title=>'Generar las plantillas'
,p_parent_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>180
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13975528466063714)
,p_plug_name=>'PLANTILLAS_ASOCIADAS'
,p_title=>'Plantillas asociadas'
,p_parent_plug_id=>wwv_flow_imp.id(13976375172063723)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  apex_item.checkbox2(p_idx   => 2',
'                         , p_value => P.ID_DOCUMENTO) CheckBox, P.ID_DOCUMENTO,',
'                         nvl(p.descripcion, x.descripcion) DESCRIPCION,',
'                         apex_item.checkbox2(p_idx   => 4',
'                         , p_value => P.ID_DOCUMENTO) pf,',
'                         apex_item.checkbox2(p_idx   => 5',
'                         , p_value => P.ID_DOCUMENTO) na',
'FROM  apexWEB.actuacion a, apexWEB.tramite_plantilla tp, xml.plantilla x, apexWEB.plantilla p',
'WHERE A.ID=:ID_ACTUACION',
'and a.id_tramite = tp.id_tramite',
'and tp.id_plantilla = x.id (+) ',
'and tp.id_plantilla = p.id_documento (+) ',
'and  apexweb.consulta.Comprueba_Plantilla_Habilitada(tp.id_plantilla, :ID_ACTUACION) = 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'ID_ACTUACION'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Plantillas asociadas'
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
 p_id=>wwv_flow_imp.id(13975535328063715)
,p_report_id_item=>'ID_ACTUACION'
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DELIA'
,p_internal_uid=>22747689105138613
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13975676542063716)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seleccionar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13975765644063717)
,p_db_column_name=>'ID_DOCUMENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Documento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13975918473063718)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13975968832063719)
,p_db_column_name=>'PF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'PF'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13976056176063720)
,p_db_column_name=>'NA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'NA'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13998862798364249)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'104942'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CHECKBOX:ID_DOCUMENTO:DESCRIPCION:PF:NA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13976465556063724)
,p_plug_name=>'DOCUMENTOS'
,p_title=>'Compartir los documentos anexados'
,p_parent_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>170
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13898835876184442)
,p_plug_name=>'DOCUMENTOS_ANEXADOS'
,p_title=>'Documentos Anexados'
,p_parent_plug_id=>wwv_flow_imp.id(13976465556063724)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  apex_item.checkbox2(1,ID_DOCUMENTO) as Seleccionar,ID_DOCUMENTO, NOMBRE',
'FROM apexWEB.documento_actuacion da, apexWEB.documento d',
'WHERE da.id_actuacion = :ID_ACTUACION and da.id_documento = d.id',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'ID_ACTUACION'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Documentos Anexados'
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
 p_id=>wwv_flow_imp.id(13973426082063693)
,p_report_id_item=>'ID_ACTUACION'
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DELIA'
,p_internal_uid=>22745579859138591
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13973471687063694)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seleccionar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13973575940063695)
,p_db_column_name=>'ID_DOCUMENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Documento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13973689156063696)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13981548578070114)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'104769'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:ID_DOCUMENTO:NOMBRE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16997568173500422859)
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
 p_id=>wwv_flow_imp.id(3506000068519808)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_button_name=>'Duplicar_actuacion'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Duplicar Actuacion'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4329285628053631)
,p_name=>'ITM_ID_TRAMITE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13896286460184416)
,p_name=>'ITM_CODIGO_TRAMITE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tramite'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CODIGO',
'from apexweb.tramite',
'where ID=:ITM_ID_TRAMITE',
'and codigo_asunto=:EXP_CODIGOASUNTO'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13896446687184417)
,p_name=>'ITM_TRAMITE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Descripci\00F3n Tr\00E1mite')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion',
'from apexweb.tramite',
'where ID=:ITM_ID_TRAMITE',
'and codigo_asunto=:EXP_CODIGOASUNTO'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13896502009184418)
,p_name=>'ITM_CODIGO_EXPEDIENTES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_prompt=>'Expedientes'
,p_display_as=>'NATIVE_SELECT_MANY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT E.CODIGO, E.CODIGO EXPEDIENTE',
'FROM apexweb.expediente e',
'WHERE  e.codigo_asunto=:EXP_CODIGOASUNTO',
'and e.codigo<>:EXP_CODIGO;',
''))
,p_lov_cascade_parent_items=>'ID_ACTUACION'
,p_ajax_items_to_submit=>'ID_ACTUACION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897541585932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'CONTAINS'
,p_attribute_02=>'N'
,p_attribute_04=>'N'
,p_attribute_09=>'0'
,p_attribute_13=>'Y'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13896747440184420)
,p_name=>'ITM_OBSERVACIONES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_prompt=>'Observaciones'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13896784846184421)
,p_name=>'CAS_COMPROBAR_EXISTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_prompt=>unistr('No crear la actuaci\00F3n si ya existe el tr\00E1mite en la misma fecha')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>unistr('title="No crear la actuaci\00F3n si ya existe el tr\00E1mite en la misma fecha"')
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13896932855184422)
,p_name=>'CAS_LOGIN_DESTINO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_prompt=>unistr('Duplicar tambi\00E9n el login de destino')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>unistr('title="Si el expediente ya tiene una actuaci\00F3n del tr\00E1mite en la misma fecha no se crear\00E1 otra"')
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13897024067184423)
,p_name=>'CAS_DATOS_ESPECIFICOS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select 1',
'  from apexweb.actuacion_registro_entrada',
'  where id_actuacion = :ID_ACTUACION'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Duplicar datos adicionales'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>unistr('title="Si la actuaci\00F3n original tiene datos adicionales tambi\00E9n se duplicar\00E1n"')
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13978373553063742)
,p_name=>'ID_ACTUACION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_source=>'1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13978455970063743)
,p_name=>'ADM_NIF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13978543899063744)
,p_name=>'EXP_CODIGOASUNTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13978586390063745)
,p_name=>'EXP_CODIGO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13978753082063746)
,p_name=>'EXP_TABLADATOS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13978858670063747)
,p_name=>'EXP_IDUNIDADORGANIZATIVA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13894622311184399)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13979387812063753)
,p_name=>'P33_MENSAJE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16997568386489422859)
,p_name=>'P33_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16997568173500422859)
,p_prompt=>unistr('<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Duplicar Actuaci\00F3n</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4329631284053634)
,p_name=>'CLEAR'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4329660037053635)
,p_event_id=>wwv_flow_imp.id(4329631284053634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'ITM_CODIGO_EXPEDIENTES,ITM_OBSERVACIONES,CAS_COMPROBAR_EXISTE,CAS_LOGIN_DESTINO,CAS_DATOS_ESPECIFICOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4329822409053636)
,p_name=>'INICIALIZAR'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4329847521053637)
,p_event_id=>wwv_flow_imp.id(4329822409053636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'CAS_COMPROBAR_EXISTE,CAS_LOGIN_DESTINO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3515880865519836)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DUPLICAR_ACTUACION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'  DECLARE',
' l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' v_documentos varchar2(10000);',
' v_plantillas varchar2(10000);',
' v_ListaPortafirmas varchar2(10000); ',
' v_ListaNotificacionAutomatica varchar2(10000);',
' v_ListaNotificarAnexos varchar2(10000);',
' nIdNuevaActuacion NUMBER;',
' sMensajeError varchar2(10000);',
' bresultado boolean; ',
'',
'  begin',
'',
'  :P33_MENSAJE:=null;',
'  v_documentos:='','';',
'  v_plantillas:='','';',
'  v_ListaPortafirmas:='','';',
'  v_ListaPortafirmas:='','';',
'  v_ListaNotificacionAutomatica:='','';',
'--Recorremos documentos y cargamos los seleccionados en una variable de docuementos, separada por ,',
'',
'FOR i in 1 .. APEX_APPLICATION.g_f01.COUNT LOOP',
'   v_documentos:=v_documentos|| APEX_APPLICATION.g_f01(i)||'','';',
' end loop;',
'',
' --Recorremos las plantillas y cargamos los seleccionados en una variable de plantillas, separada por ,',
'',
'  FOR i in 1 .. APEX_APPLICATION.g_f02.COUNT LOOP',
'   v_plantillas:=v_plantillas||APEX_APPLICATION.g_f02(i)||'','';',
' end loop;',
'',
' ---Recorremos los expedientes marcados con PF (portafirmas)',
'  FOR i in 1 .. APEX_APPLICATION.g_f04.COUNT LOOP   ',
unistr('   --Si exist\00EDa en la lista de plantillas entonces se manda al portafirmas'),
'   IF INSTR(V_PLANTILLAS,APEX_APPLICATION.g_f04(i)||'','')<>0 THEN',
'       v_ListaPortafirmas:=v_ListaPortafirmas|| APEX_APPLICATION.g_f04(i)||'','';',
'   END if;',
' end loop;',
'',
unistr('  ---Recorremos los expedientes marcados con NA (nofificaci\00F3n autom\00E1tica)'),
'  FOR i in 1 .. APEX_APPLICATION.g_f05.COUNT LOOP   ',
unistr('   --Si exist\00EDa en la lista de plantillas entonces se manda a notificacion autom\00E1tica'),
'   IF INSTR(V_PLANTILLAS,APEX_APPLICATION.g_f05(i)||'','')<>0 THEN',
'        v_ListaNotificacionAutomatica:= v_ListaNotificacionAutomatica||APEX_APPLICATION.g_f05(i)||'','';',
'   END if;',
' end loop;',
'',
'--FALTAN COMPROBACIONES DE NOTIFICACIONES PARA VER SI SE PUEDE O NO MARCAR LA NOTIFICACION ',
'--AUTOMATICA Y SI HAY QUE PONERLO EN ANEXOS O NO',
'-- FALTA EL CAMPO ADM_NIF',
' -- nResultado :=  apex.consulta.notificacion_automatica(var.GlobalEXP_IdActuacion, :BLQ_PLANTILLAS_ASOCIADAS.ITM_ID_PLANTILLA,',
' --                                                         var.GlobalADM_NIF , nNotificarAnexos);',
'--PROVISIONALMENTE SE IGUALAN LAS LISTAS',
' v_ListaNotificacionAutomatica:=v_ListaNotificarAnexos;',
' ',
'--Recorremos los expedientes seleccionador a duplicar',
'',
'l_selected := APEX_UTIL.STRING_TO_TABLE(:ITM_CODIGO_EXPEDIENTES);',
'',
'',
'',
'if l_selected.count=0 then',
'apex_error.add_error(p_message          => ''Debe indicar al menos un expediente para duplicar'',               ',
'                     p_display_location => apex_error.c_inline_in_notification           );',
'end if;',
'',
'',
'',
'',
'  FOR i in 1..l_selected.count',
'LOOP',
unistr(' /*:P33_MENSAJE:=''Par\00E1metros ''||''-Actuaci\00F3n-''||TO_NUMBER(:ID_ACTUACION)||''-Expediente-''||l_selected(i)||''-Observaciones-''||'),
'         :ITM_OBSERVACIONES||''-Existe-''||TO_NUMBER(:CAS_COMPROBAR_EXISTE)||''-Login destino-''|| ',
'    	TO_NUMBER(:CAS_LOGIN_DESTINO)||''-Datos especificos-''|| ',
'    	TO_NUMBER(:CAS_DATOS_ESPECIFICOS)||''-Documentos-''||',
'    	v_documentos||''-Plantillas-''|| ',
'    	v_plantillas||''-Portafirmas-''||',
'    	v_ListaPortafirmas||''-Notificaciones-''|| ',
unistr('    	v_ListaNotificacionAutomatica||''-Notificaci\00F3n anexos-''||'),
'    	v_ListaNotificarAnexos;',
'',
'        apex_error.add_error(p_message          =>:P33_MENSAJE,',
'                   p_display_location => apex_error.c_inline_in_notification           );*/',
'  bResultado := apexweb.duplicar_actuacion.duplica_actuacion(TO_NUMBER(:ID_ACTUACION),',
'    	l_selected(i), :ITM_OBSERVACIONES,',
'    	TO_NUMBER(:CAS_COMPROBAR_EXISTE), ',
'    	TO_NUMBER(:CAS_LOGIN_DESTINO), ',
'    	TO_NUMBER(:CAS_DATOS_ESPECIFICOS),',
'    	v_documentos, ',
'    	v_plantillas,',
'    	v_ListaPortafirmas, ',
'    	v_ListaNotificacionAutomatica,',
'    	v_ListaNotificarAnexos,',
'    	nIdNuevaActuacion,',
'    	sMensajeError);',
'  ',
'        if bResultado then ',
unistr('          apex_application.g_print_success_message := ''Se ha duplicado correctamente la actuaci\00F3n'';'),
'',
'          commit;',
'       else',
'          :P33_MENSAJE:=:P33_MENSAJE||''-''||smensajeError||''-''||TO_NUMBER(:ID_ACTUACION)||''-''||l_selected(i)||''-''||',
'         :ITM_OBSERVACIONES||''-''||TO_NUMBER(:CAS_COMPROBAR_EXISTE)||''-''|| ',
'    	TO_NUMBER(:CAS_LOGIN_DESTINO)||''-''|| ',
'    	TO_NUMBER(:CAS_DATOS_ESPECIFICOS)||''-''||',
'    	v_documentos||''-''|| ',
'    	v_plantillas||''-''||',
'    	v_ListaPortafirmas||''-''|| ',
'    	v_ListaNotificacionAutomatica||''-''||',
'    	v_ListaNotificarAnexos||''-''||',
'    	nIdNuevaActuacion;',
'',
'        apex_error.add_error(p_message          =>:P33_MENSAJE,',
'                   p_display_location => apex_error.c_inline_in_notification           );',
'       end if;',
'END LOOP;',
'',
'',
'  ',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3506000068519808)
,p_internal_uid=>12288034642594734
);
wwv_flow_imp.component_end;
end;
/
