prompt --application/pages/page_00170
begin
--   Manifest
--     PAGE: 00170
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
 p_id=>170
,p_name=>unistr('Plantillas del tr\00E1mite')
,p_alias=>unistr('PLANTILLAS-DEL-TR\00C1MITE')
,p_step_title=>unistr('Plantillas del tr\00E1mite')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*function miMensaje(valor1, valor2, valor3) {',
'  if (valor1 === ''N'') {',
'    alert( valor2 || '' = '' valor3);',
'  } else {',
'    alert(''la variable'' || valor2 || ''es una variable de tabla.'');',
'  }',
'}*/'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10388564018113414)
,p_plug_name=>unistr('Plantillas del tr\00E1mite')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10388873739113417)
,p_name=>'Plantilla'
,p_parent_plug_id=>wwv_flow_imp.id(10388564018113414)
,p_template=>wwv_flow_imp.id(9654960744323932386)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.ID_DOCUMENTO,',
'       p.descripcion "Plantilla",',
unistr('       v.version "Versi\00F3n",'),
'       v.login "Login",',
'       v.fecha_modificacion "Fecha",',
'       length(b.BLOB_DOCUMENTO) descargar,',
'       null "Modificar platilla",',
'       b.id id_blob,',
'       (select NOMBRE from documento where id = v.id) nombre',
'  from PLANTILLA p,',
'       documento_version v,',
'       tramite_plantilla t,',
'       DOCUMENTO_BLOB b',
' where p.ID_DOCUMENTO = v.id',
'   /*and v.version = (select max(version) ',
'                      from documento_version v2',
'                     where v.id = v2.id',
'                    )*/',
'  and p.ID_DOCUMENTO = t.id_plantilla ',
'  and b.ID = v.ID_BLOB',
'  and t.ID_TRAMITE = :P170_TRAMITE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(9654929937255932398)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2485683334552124)
,p_query_column_id=>1
,p_column_alias=>'ID_DOCUMENTO'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2486052864552124)
,p_query_column_id=>2
,p_column_alias=>'Plantilla'
,p_column_display_sequence=>20
,p_column_heading=>'Plantilla'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2486455849552125)
,p_query_column_id=>3
,p_column_alias=>unistr('Versi\00F3n')
,p_column_display_sequence=>30
,p_column_heading=>unistr('Versi\00F3n')
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2486908773552125)
,p_query_column_id=>4
,p_column_alias=>'Login'
,p_column_display_sequence=>40
,p_column_heading=>'Login'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2487253379552125)
,p_query_column_id=>5
,p_column_alias=>'Fecha'
,p_column_display_sequence=>50
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2487735330552126)
,p_query_column_id=>6
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>60
,p_column_heading=>'Descargar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.::P172_NOMBRE,P172_ID_BLOB:#NOMBRE#,#ID_BLOB#'
,p_column_linktext=>'Descargar'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2485319531552122)
,p_query_column_id=>7
,p_column_alias=>'Modificar platilla'
,p_column_display_sequence=>90
,p_column_heading=>'Modificar Platilla'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:171:&SESSION.::&DEBUG.:171:P171_ID_DOCUMENTO:#ID_DOCUMENTO#'
,p_column_linktext=>'<span role="img" aria-label="Editar" class="fa fa-edit" title="Editar"></span>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2488079521552126)
,p_query_column_id=>8
,p_column_alias=>'ID_BLOB'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2488459432552126)
,p_query_column_id=>9
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12444069472260544)
,p_plug_name=>'Variables disponibles'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10388663435113415)
,p_plug_name=>'Variables disponibles'
,p_region_name=>'variable'
,p_parent_plug_id=>wwv_flow_imp.id(12444069472260544)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       CODIGO,',
'       DESCRIPCION,',
'       ORDERBY_SQL,',
'       nvl2( ORDERBY_SQL,''Es una variable de tabla.'', GENERADOR_PLANTILLA.obtiene_valor(:P170_ID_ACTUACION, CODIGO)) as Valor',
'  from PLANTILLA_VARIABLE'))
,p_plug_source_type=>'NATIVE_IG'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11968296502569340)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11968456126569341)
,p_name=>'CODIGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODIGO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('C\00F3digo')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11968490144569342)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Descripci\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>200
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11969728493569354)
,p_name=>'Tabla'
,p_source_type=>'SQL_EXPRESSION'
,p_source_expression=>'nvl2(ORDERBY_SQL, ''Y'', ''N'')'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Tabla'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12443943268260542)
,p_name=>'VALOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Valor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12444021252260543)
,p_name=>'ORDERBY_SQL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDERBY_SQL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(11968254191569339)
,p_internal_uid=>20740407968644237
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(11988844221676073)
,p_interactive_grid_id=>wwv_flow_imp.id(11968254191569339)
,p_static_id=>'95070'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(11989039697676074)
,p_report_id=>wwv_flow_imp.id(11988844221676073)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11989522677676081)
,p_view_id=>wwv_flow_imp.id(11989039697676074)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(11968296502569340)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11990438832676088)
,p_view_id=>wwv_flow_imp.id(11989039697676074)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(11968456126569341)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11991265645676091)
,p_view_id=>wwv_flow_imp.id(11989039697676074)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(11968490144569342)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>825.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12012793185693023)
,p_view_id=>wwv_flow_imp.id(11989039697676074)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(11969728493569354)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13112500689076493)
,p_view_id=>wwv_flow_imp.id(11989039697676074)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(12443943268260542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13118027569081769)
,p_view_id=>wwv_flow_imp.id(11989039697676074)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(12444021252260543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17020439374072625631)
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
 p_id=>wwv_flow_imp.id(2483297654552116)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(10388564018113414)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Asociar plantilla existente'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2482915929552116)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(10388564018113414)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Nueva plantilla'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:171:&SESSION.::&DEBUG.:171::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5396745235806064)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12444069472260544)
,p_button_name=>'btn_excel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Generar excel'
,p_button_position=>'NEXT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-file-excel-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10390660781113420)
,p_name=>'P170_TRAMITE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10388564018113414)
,p_prompt=>unistr('Tr\00E1mite')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('- Selecciona un tr\00E1mite -')
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10391695798113431)
,p_name=>'P170_PLANTILLA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10388564018113414)
,p_prompt=>'Plantilla'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.DESCRIPCION, p.id_documento',
'  from plantilla p',
' where exists (select 1 ',
'                 from tramite_plantilla tp,',
'                       tramite t,',
'                       asunto a',
'                 where p.id_documento = tp.id_plantilla',
'                   and tp.id_tramite = t.id',
'                   and t.codigo_asunto = a.codigo',
'                   and a.id_unidad_organizativa = :P170_ID_UNIDAD_ORGANIZATIVA',
'                   and t.id <> :P170_TRAMITE',
'              )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Selecciona una plantilla -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12445571271260544)
,p_name=>'P170_ID_ACTUACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10388564018113414)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12446561107260554)
,p_name=>'P170_ID_UNIDAD_ORGANIZATIVA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10388564018113414)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17020440141638625650)
,p_name=>'P170_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17020439374072625631)
,p_prompt=>unistr('<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Plantillas del tr\00E1mite</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2493774233552133)
,p_validation_name=>'Descargar'
,p_validation_sequence=>10
,p_validation=>':documento_id is not null'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'No se puede descargar la plantilla'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2494122394552134)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('A\00F1adir plantilla')
,p_process_sql_clob=>'insert into TRAMITE_PLANTILLA (ID_TRAMITE, ID_PLANTILLA) values (:P170_TRAMITE, :P170_PLANTILLA);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2483297654552116)
,p_internal_uid=>11266276171627032
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4390364746600535)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Descargar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'    l_context apex_exec.t_context; ',
'    l_export  apex_data_export.t_export;',
'    p_data CLOB;',
'',
'BEGIN',
'',
' p_data := ''select ID,',
'       CODIGO,',
'       DESCRIPCION,',
'       nvl2( ORDERBY_SQL,''''Es una variable de tabla.'''', GENERADOR_PLANTILLA.obtiene_valor('' || :P170_ID_ACTUACION || '',  CODIGO)) as Valor',
'  from PLANTILLA_VARIABLE',
'  ',
'ORDER BY id'';',
'',
'    l_context := apex_exec.open_query_context(',
'                p_location    => apex_exec.c_location_local_db,',
'                p_sql_query   => p_data );',
'',
'    l_export := apex_data_export.export (',
'        p_context   => l_context,',
'        p_format    => ''CSV'', ',
'        p_file_name =>  ''Variables.csv'' );',
'',
'    apex_exec.close( l_context );',
'',
'    apex_data_export.download( p_export => l_export );',
'',
'',
'EXCEPTION',
'    when others THEN',
'        apex_exec.close( l_context );',
'        raise;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5396745235806064)
,p_internal_uid=>13162518523675433
);
wwv_flow_imp.component_end;
end;
/
