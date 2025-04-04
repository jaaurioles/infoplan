prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
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
 p_id=>101
,p_name=>'Administrado_Details'
,p_alias=>'ADMINISTRADO-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Administrado_Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11468518557955477)
,p_plug_name=>'Datos del administrdo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12418490224782509)
,p_plug_name=>'Administrado_Details'
,p_parent_plug_id=>wwv_flow_imp.id(11468518557955477)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from tablascomunes.ADMINISTRADOS'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11468620634955478)
,p_plug_name=>'Datos Personales'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13040252661636634)
,p_plug_name=>'datos_personales'
,p_region_name=>'f_datos_personales'
,p_parent_plug_id=>wwv_flow_imp.id(11468620634955478)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from tablascomunes.datos_personales',
'--  where nif = :P101_CIF_NIF'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P101_CIF_NIF'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11468729682955479)
,p_plug_name=>'Direcciones'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>40
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9153304830951102)
,p_plug_name=>'Direcciones_detal'
,p_parent_plug_id=>wwv_flow_imp.id(11468729682955479)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct D.NUMERO_ORDEN',
'      ,D.CIF_NIF',
'      ,D.DOMICILIO',
'      ,D.CODIGO_POSTAL',
'      ,D.CODIGO_PROVINCIA',
'--      ,D.CODIGO_MUNICIPIO',
'      ,D.PERSONA_CONTACTO',
'      --,D.CODIGO_PEDANIA',
'      ,D.TELEFONOS',
'      ,D.FAX',
'      ,D.CORREO_ELECTRONICO',
'      ,D.ID_UTM',
'      ,D.REFERENCIA_CATASTRAL',
'      ,D.CUPS',
'      ,D.DIRECCION_POR_DEFECTO',
'      ,decode(nvl(D.DIRECCION_POR_DEFECTO,0), 1, ''fa fa-check'' , ''fa fa-times'') as icon_DD',
'      ,decode(nvl(D.DIRECCION_POR_DEFECTO,0), 1, ''green'', ''red'') as icon_color_DD',
'      ,D.ID_GNSS',
'      ,(select to_char(mun.codigomunicipio)||'' ''||mun.municipio b',
'          from TABLASCOMUNES.MUNICIPIOS mun',
'          where mun.codigoprovincia = D.CODIGO_PROVINCIA',
'            and mun.codigomunicipio = D.CODIGO_MUNICIPIO',
'            and mun.codigoprovincia > 0 ',
'            and mun.codigomunicipio > 0) as CODIGO_MUNICIPIO',
'      ,(select to_char(ped.CODIGOPEDANIA)||'' ''||ped.PEDANIA b',
'          from TABLASCOMUNES.pedanias ped',
'          where ped.codigoprovincia = D.CODIGO_PROVINCIA',
'            and ped.codigomunicipio = D.CODIGO_MUNICIPIO',
'            and ped.CODIGOPEDANIA = D.CODIGO_PEDANIA',
'            and ped.codigoprovincia > 0 ',
'            and ped.codigomunicipio > 0',
'            and ped.CODIGOPEDANIA > 0) as CODIGO_PEDANIA',
unistr('      ,''Espa\00F1a'' Pais'),
'',
'      ,UTM.X UTM_X',
'      ,UTM.Y UTM_Y',
'      ,UTM.CODIGO_TIPO_UTM UTM_Tipo',
'',
'      ,GNSS.X GNSS_X',
'      ,GNSS.Y GNSS_Y',
'    ',
'  from TABLASCOMUNES.DIRECCION_ADMINISTRADO D',
'      ,tablascomunes.UTM',
'      ,tablascomunes.GNSS',
'  where D.ID_UTM = UTM.ID(+) ',
'    AND D.ID_GNSS = GNSS.ID(+) ',
'    and D.cif_nif = :P101_CIF_NIF  ',
'  order by D.DIRECCION_POR_DEFECTO desc',
'          ,D.NUMERO_ORDEN   '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P101_CIF_NIF'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(9153363511951103)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:CR,102:P102_CIF_NIF,P102_NUMERO_ORDEN:#CIF_NIF#,#NUMERO_ORDEN#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'SAMUEL'
,p_internal_uid=>17925517289026001
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9153468361951104)
,p_db_column_name=>'NUMERO_ORDEN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Numero Orden'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9153606308951105)
,p_db_column_name=>'CIF_NIF'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'CIF/NIF'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9153702520951106)
,p_db_column_name=>'DOMICILIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Domicilio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9153832309951107)
,p_db_column_name=>'CODIGO_POSTAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Codigo Postal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9153866873951108)
,p_db_column_name=>'CODIGO_PROVINCIA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Codigo Provincia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(240676212560912)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(854322076835910)
,p_db_column_name=>'CODIGO_MUNICIPIO'
,p_display_order=>60
,p_column_identifier=>'Q'
,p_column_label=>'Codigo Municipio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9154092781951110)
,p_db_column_name=>'PERSONA_CONTACTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Persona Contacto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9154246866951112)
,p_db_column_name=>'TELEFONOS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Telefonos'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9154412647951113)
,p_db_column_name=>'FAX'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fax'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9154483462951114)
,p_db_column_name=>'CORREO_ELECTRONICO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Correo Electronico'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9154540803951115)
,p_db_column_name=>'ID_UTM'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Id Utm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(1261358223637524)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9154651947951116)
,p_db_column_name=>'REFERENCIA_CATASTRAL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Referencia Catastral'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9154836238951117)
,p_db_column_name=>'CUPS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cups'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9154862338951118)
,p_db_column_name=>'DIRECCION_POR_DEFECTO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Direccion Por Defecto'
,p_column_html_expression=>'<span class="#ICON_DD#" style="color: #ICON_COLOR_DD#"></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9154958952951119)
,p_db_column_name=>'ID_GNSS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Id Gnss'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(854844785835915)
,p_db_column_name=>'CODIGO_PEDANIA'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Codigo Pedania'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6204867084226935)
,p_db_column_name=>'PAIS'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Pais'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6997449375568047)
,p_db_column_name=>'UTM_X'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'UTM X'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6997619539568048)
,p_db_column_name=>'UTM_Y'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'UTM Y'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6997844066568050)
,p_db_column_name=>'GNSS_X'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'GNSS X'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6997878461568051)
,p_db_column_name=>'GNSS_Y'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'GNSS Y'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6998019284568052)
,p_db_column_name=>'UTM_TIPO'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'UTM Tipo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(1261358223637524)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8284605325676303)
,p_db_column_name=>'ICON_DD'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Icon Dd'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8284688375676304)
,p_db_column_name=>'ICON_COLOR_DD'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Icon Color Dd'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9166861224999397)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'87656'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUMERO_ORDEN:CIF_NIF:DOMICILIO:CODIGO_POSTAL:PAIS:CODIGO_PROVINCIA:CODIGO_MUNICIPIO:CODIGO_PEDANIA:PERSONA_CONTACTO:TELEFONOS:FAX:CORREO_ELECTRONICO:REFERENCIA_CATASTRAL:CUPS:DIRECCION_POR_DEFECTO:UTM_TIPO:UTM_X:UTM_Y:GNSS_X:GNSS_Y:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12431491946782535)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654986254053932377)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(402186840080602)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_button_name=>'Historico_Cambio_Nombre'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>unistr('Hist\00F3rico Cambio de Nombre')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(424532571080636)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12431491946782535)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(424875001080637)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12431491946782535)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Borrar'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P101_CIF_NIF'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(425268531080637)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12431491946782535)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'P101_CIF_NIF'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(425646930080637)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12431491946782535)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P101_CIF_NIF'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6203521915226921)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9153304830951102)
,p_button_name=>'Nueva_Direccion'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>unistr('Nueva Direcci\00F3n')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:CR,102:P102_CIF_NIF:&P101_CIF_NIF.'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6112195962126817)
,p_name=>'P101_ERROR_REPRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE     ',
'   V_VALOR VARCHAR(1000);',
'BEGIN    ',
'    IF :P101_CIF_NIF_REPRESENTANTE_LEGAL IS NULL THEN',
'     V_VALOR:=NULL;',
'    END IF;',
'    RETURN V_VALOR;',
'END ;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'NUMEROSOPORTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12420060219782518)
,p_name=>'P101_CIF_NIF'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_prompt=>'NIF'
,p_source=>'CIF_NIF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when=>'P101_CIF_NIF'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12420484326782525)
,p_name=>'P101_TIPODEADMINISTRADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_prompt=>'Tipo de persona'
,p_source=>'TIPODEADMINISTRADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LST_TIPO_PERSONA'
,p_lov=>'.'||wwv_flow_imp.id(241299701560913)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12420937495782528)
,p_name=>'P101_TIPODEDOCUMENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_prompt=>'Tipo de documento'
,p_source=>'TIPODEDOCUMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LST_TIPO_DOCUMENTO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TIPODEDOCUMENTO a',
'      ,DESCRIPCION b',
'  from TABLASCOMUNES.DOCUMENTOSID ',
'  ORDER BY TIPODEDOCUMENTO'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12421320324782528)
,p_name=>'P101_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_prompt=>unistr('Raz\00F3n Social')
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12421673270782528)
,p_name=>'P101_PRIMERAPELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_prompt=>unistr('1\00BA Apellido')
,p_source=>'PRIMERAPELLIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12422132316782529)
,p_name=>'P101_SEGUNDOAPELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_prompt=>unistr('2\00BA Apellido')
,p_source=>'SEGUNDOAPELLIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12422479890782529)
,p_name=>'P101_NOMBREDEPILA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_prompt=>'Nombre'
,p_source=>'NOMBREDEPILA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12422841978782529)
,p_name=>'P101_DOMICILIOSOCIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_source=>'DOMICILIOSOCIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12423243765782529)
,p_name=>'P101_CODIGOPROVINCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_source=>'CODIGOPROVINCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12423738551782531)
,p_name=>'P101_CODIGOMUNICIPIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_source=>'CODIGOMUNICIPIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12424106107782531)
,p_name=>'P101_CODIGOPEDANIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_source=>'CODIGOPEDANIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12424479235782531)
,p_name=>'P101_CODIGOPOSTAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_source=>'CODIGOPOSTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12424888932782531)
,p_name=>'P101_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_prompt=>unistr('Tel\00E9fono')
,p_source=>'TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12425327225782531)
,p_name=>'P101_DIRECCIONEMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_prompt=>unistr('Correo Electr\00F3nico')
,p_source=>'DIRECCIONEMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12425714806782531)
,p_name=>'P101_REPRESENTANTE_LEGAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tablascomunes.consulta.Obtiene_Nombre_Administrado(:P101_CIF_NIF_REPRESENTANTE_LEGAL)',
'  from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Representante Legal'
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
 p_id=>wwv_flow_imp.id(12426065498782533)
,p_name=>'P101_PAGINA_WEB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_prompt=>unistr('P\00E1gina Web')
,p_source=>'PAGINA_WEB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12426518658782533)
,p_name=>'P101_CIF_NIF_REPRESENTANTE_LEGAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_prompt=>'CIF/NIF Representante Legal'
,p_source=>'CIF_NIF_REPRESENTANTE_LEGAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12426939584782533)
,p_name=>'P101_NUMEROSOPORTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_item_source_plug_id=>wwv_flow_imp.id(12418490224782509)
,p_source=>'NUMEROSOPORTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13060417532636669)
,p_name=>'P101_NIF'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13040252661636634)
,p_item_source_plug_id=>wwv_flow_imp.id(13040252661636634)
,p_source=>'NIF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13060590840636670)
,p_name=>'P101_FECHA_NACIMIENTO_1'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13040252661636634)
,p_item_source_plug_id=>wwv_flow_imp.id(13040252661636634)
,p_prompt=>'Fecha de Nacimiento'
,p_source=>'FECHA_NACIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13060619050636671)
,p_name=>'P101_CODIGO_PAIS_NACIONALIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13040252661636634)
,p_item_source_plug_id=>wwv_flow_imp.id(13040252661636634)
,p_prompt=>unistr('Pa\00EDs/Nacionalidad')
,p_source=>'CODIGO_PAIS_NACIONALIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST_PAIS_NACIONALIDAD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select codigo',
'      ,descripcion',
'  from tablascomunes.pais ',
'  order by descripcion'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13060777857636672)
,p_name=>'P101_SEXO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13040252661636634)
,p_item_source_plug_id=>wwv_flow_imp.id(13040252661636634)
,p_prompt=>'Sexo'
,p_source=>'SEXO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LST_TIPO_SEXO'
,p_lov=>'.'||wwv_flow_imp.id(242371911560917)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(426719645080638)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(424532571080636)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(427222588080638)
,p_event_id=>wwv_flow_imp.id(426719645080638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6111471223126810)
,p_name=>'CHANGE DNI REPRESENTANTE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_CIF_NIF_REPRESENTANTE_LEGAL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6111566716126811)
,p_event_id=>wwv_flow_imp.id(6111471223126810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'VALOR REPRESENTANTE'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_REPRESENTANTE_LEGAL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare           ',
'  v_representante varchar2(2000);',
'begin',
'v_representante := ',
'	tablascomunes.consulta.obtiene_nombre_administrado(:P101_CIF_NIF_REPRESENTANTE_LEGAL',
'                                                      ,sysdate);',
'',
'  RETURN V_REPRESENTANTE;',
'end;'))
,p_attribute_07=>'P101_CIF_NIF_REPRESENTANTE_LEGAL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P101_CIF_NIF_REPRESENTANTE_LEGAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6112129556126816)
,p_event_id=>wwv_flow_imp.id(6111471223126810)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'ERROR_REPRE'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_ERROR_REPRE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare           ',
'  V_ERROR varchar2(2000);',
'  v_representante  varchar2(2000);',
'begin',
'v_representante := ',
'	tablascomunes.consulta.obtiene_nombre_administrado(:P101_CIF_NIF_REPRESENTANTE_LEGAL',
'                                                      ,sysdate);',
' --apex_error.add_error(p_message          =>''REPRE ''||v_representante,               ',
'   --                 p_display_location => apex_error.c_inline_in_notification           );',
' IF V_REPRESENTANTE IS NULL AND :P101_CIF_NIF_REPRESENTANTE_LEGAL IS NOT NULL THEN',
'    V_ERROR:=''SI'';',
'  ELSE V_ERROR:=''NO'';',
'  END IF;',
'  -- apex_error.add_error(p_message          =>''ERROR ''||V_ERROR,               ',
'     --               p_display_location => apex_error.c_inline_in_notification           );',
'  RETURN V_ERROR;',
'end;'))
,p_attribute_07=>'P101_CIF_NIF_REPRESENTANTE_LEGAL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6112311951126818)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_ERROR_REPRE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6112423986126819)
,p_event_id=>wwv_flow_imp.id(6112311951126818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe introducir un CIF-NIF que exista como representante legal'
,p_attribute_02=>'Error representante'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P101_ERROR_REPRE'
,p_client_condition_expression=>'SI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6112542679126820)
,p_event_id=>wwv_flow_imp.id(6112311951126818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_CIF_NIF_REPRESENTANTE_LEGAL'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P101_ERROR_REPRE'
,p_client_condition_expression=>'SI'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6112605533126821)
,p_name=>'CHANGE DNI'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_CIF_NIF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6112680754126822)
,p_event_id=>wwv_flow_imp.id(6112605533126821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_TIPODEADMINISTRADO'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P101_CIF_NIF'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6112797171126823)
,p_name=>'CHANGE ADMINISTRADO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_TIPODEADMINISTRADO'
,p_condition_element=>'P101_TIPODEADMINISTRADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'F'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6995179332568024)
,p_event_id=>wwv_flow_imp.id(6112797171126823)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_FECHA_NACIMIENTO_1,P101_CODIGO_PAIS_NACIONALIDAD,P101_SEXO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6995300334568025)
,p_event_id=>wwv_flow_imp.id(6112797171126823)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#f_datos_personales'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6995347848568026)
,p_event_id=>wwv_flow_imp.id(6112797171126823)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#f_datos_personales'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6112866083126824)
,p_event_id=>wwv_flow_imp.id(6112797171126823)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PRIMERAPELLIDO,P101_SEGUNDOAPELLIDO,P101_NOMBREDEPILA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6995528363568027)
,p_event_id=>wwv_flow_imp.id(6112797171126823)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PRIMERAPELLIDO,P101_SEGUNDOAPELLIDO,P101_NOMBREDEPILA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6112959931126825)
,p_name=>'INICIAR'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6113063780126826)
,p_event_id=>wwv_flow_imp.id(6112959931126825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PRIMERAPELLIDO,P101_SEGUNDOAPELLI00DO,P101_NOMBREDEPILA'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P101_TIPODEADMINISTRADO'
,p_client_condition_expression=>'J'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6113412996126829)
,p_event_id=>wwv_flow_imp.id(6112959931126825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_NOMBRE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P101_TIPODEADMINISTRADO'
,p_client_condition_expression=>'J'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6113165157126827)
,p_event_id=>wwv_flow_imp.id(6112959931126825)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PRIMERAPELLIDO,P101_SEGUNDOAPELLI00DO,P101_NOMBREDEPILA'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P101_TIPODEADMINISTRADO'
,p_client_condition_expression=>'F'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6113536297126830)
,p_event_id=>wwv_flow_imp.id(6112959931126825)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_NOMBRE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P101_TIPODEADMINISTRADO'
,p_client_condition_expression=>'F'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6203550022226922)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9153304830951102)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6203715050226923)
,p_event_id=>wwv_flow_imp.id(6203550022226922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9153304830951102)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6204658119226933)
,p_name=>'Aciso'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(402186840080602)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6204801577226934)
,p_event_id=>wwv_flow_imp.id(6204658119226933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('No solicitado en esta aplicaci\00F3n piloto.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(413858917080617)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12418490224782509)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Administrado_Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9186012694155515
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(853947668835907)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert_Datos_Personales'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  null;',
'  insert into tablascomunes.datos_personales(NIF',
'                                            ,FECHA_NACIMIENTO',
'                                            ,CODIGO_PAIS_NACIONALIDAD',
'                                            ,SEXO',
'                                            )',
'    values(:P101_CIF_NIF',
'          ,:P101_FECHA_NACIMIENTO_1',
'          ,:P101_CODIGO_PAIS_NACIONALIDAD',
'          ,:P101_SEXO',
'          );',
'  commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(425646930080637)
,p_process_when=>'P101_CIF_NIF'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>9626101445910805
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(854062879835908)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update_Datos_Personales'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  null;',
'  update tablascomunes.datos_personales',
'    set FECHA_NACIMIENTO = :P101_FECHA_NACIMIENTO_1',
'       ,CODIGO_PAIS_NACIONALIDAD = :P101_CODIGO_PAIS_NACIONALIDAD',
'       ,SEXO = :P101_SEXO',
'    where NIF = :P101_CIF_NIF;',
'  commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(425268531080637)
,p_process_when=>'P101_CIF_NIF'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>9626216656910806
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(854219079835909)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete_Datos_Personales'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  null;',
'  delete ',
'    from tablascomunes.datos_personales',
'    where NIF = :P101_CIF_NIF;',
'  commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(424875001080637)
,p_process_when=>'P101_CIF_NIF'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>9626372856910807
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(426268931080638)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9198422708155536
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(413518675080616)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12418490224782509)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Administrado_Details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9185672452155514
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(423818269080635)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13040252661636634)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Administrado_Details_personales'
,p_internal_uid=>9195972046155533
);
wwv_flow_imp.component_end;
end;
/
