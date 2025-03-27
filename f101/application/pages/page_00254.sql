prompt --application/pages/page_00254
begin
--   Manifest
--     PAGE: 00254
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
 p_id=>254
,p_name=>'expediente objeto declaracion'
,p_alias=>'EXPEDIENTE-OBJETO-DECLARACION'
,p_page_mode=>'MODAL'
,p_step_title=>'expediente objeto declaracion'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*function add(){',
'   var si = ''Y'';',
'   let ids = 0;',
'   let id_incompatible = 0;',
'   var modelo = apex.region("igObjeto").widget().interactiveGrid("getViews", "grid").model;',
'   modelo.forEach(function (fila) {',
'      var valor = modelo.getValue(fila, "CODIGO");',
'      if(valor === si){//Check si',
'        var valor_id = modelo.getValue(fila, "DESCRIPTION");',
'        if (ids === 0){//Primer valor',
'            ids = valor_id;',
'        }',
'        else{',
'            ids = ids + "," + valor_id;',
'        }',
'        var valor_id = modelo.getValue(fila, "CODIGO_OBJETO_INCOMPATIBLE");',
'        console.log(valor_id);',
'        if (!isNaN(valor_id)) {//si tiene incompatibilidad',
'            if (id_incompatible === 0){',
'                id_incompatible = valor_id;',
'                console.log(id_incompatible);',
'            }',
'            else{',
'                id_incompatible = id_incompatible + ":" + valor_id;',
'                console.log(id_incompatible);',
'            }',
'        }',
'      }',
'    });',
'    apex.item("P254_LISTA").setValue(ids);',
'    apex.item("P254_LISTA_INCOMPATIBILIDAD").setValue(id_incompatible);',
'}; */',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// 1. Variable global para almacenar el \00FAltimo checkbox seleccionado'),
'var ultimoSeleccionado = null;',
'',
'// 2. Delegar el evento "click" a los checkboxes dentro del documento',
'document.addEventListener("click", function(event) {',
'  var target = event.target;',
'',
'  // 3. Verificamos si el elemento clicado es un checkbox con nombre "f01"',
'  if (target.matches(''input[name="f01"]'')) {',
'    if (target.checked) {',
'      // 4. Actualizamos la variable global con el valor del checkbox',
'      ultimoSeleccionado = target.value;',
unistr('      console.log("\00DAltimo seleccionado: " + ultimoSeleccionado);'),
'',
'      // 5. Asignamos el valor al item de APEX P254_ULTIMO_ITEM',
'      apex.item("P254_ULTIMO_ITEM").setValue(ultimoSeleccionado);',
'    }',
'  }',
'});',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3048210096030828)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3048452160030831)
,p_plug_name=>'objeto'
,p_region_name=>'igObjeto'
,p_parent_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>160
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DECODE(eod.codigo_expediente, NULL, ''N'', ''Y'') as codigo',
'      --,apex_item.checkbox2(2,od.CODIGO) as codigo_CHECK_2',
'      ,od.CODIGO as codigo_CHECK_2',
'      ,od.CODIGO as description_COD',
'      ,od.DESCRIPCION',
'      ,eod.OBSERVACIONES',
'      ,oda.codigo_objeto_incompatible',
'      ,eod.codigo_objeto_declaracion',
'      ,oda.expediente_anterior',
'      ,eod.codigo_expediente',
',od.modificacion',
'  from OBJETO_DECLARACION od,',
'       OBJETO_DECLARACION_ASUNTO oda,',
'       EXPEDIENTE_OBJETO_DECLARACION eod',
'where od.CODIGO                 = oda.CODIGO_OBJETO_DECLARACION',
'  and oda.CODIGO_ASUNTO         = :P254_CODIGO_ASUNTO',
'  and od.CODIGO                 = eod.CODIGO_OBJETO_DECLARACION(+)',
'  and eod.CODIGO_EXPEDIENTE (+) = :p254_codigo_expediente'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P254_CODIGO_ASUNTO,P254_CODIGO_EXPEDIENTE'
,p_plug_display_condition_type=>'NEVER'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4035859167040106)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Descripci\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
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
 p_id=>wwv_flow_imp.id(4035990850040107)
,p_name=>'OBSERVACIONES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACIONES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Observaciones'
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
 p_id=>wwv_flow_imp.id(4040012255040147)
,p_name=>'CODIGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODIGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4040158115040149)
,p_name=>'CODIGO_OBJETO_INCOMPATIBLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODIGO_OBJETO_INCOMPATIBLE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Codigo Objeto Incompatible'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4040335868040150)
,p_name=>'CODIGO_OBJETO_DECLARACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODIGO_OBJETO_DECLARACION'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Codigo Objeto Declaracion'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4040384927040151)
,p_name=>'EXPEDIENTE_ANTERIOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPEDIENTE_ANTERIOR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Expediente Anterior'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4040470065040152)
,p_name=>'CODIGO_EXPEDIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODIGO_EXPEDIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Codigo Expediente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>12
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
 p_id=>wwv_flow_imp.id(6203948153226926)
,p_name=>'DESCRIPTION_COD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION_COD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'description_COD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6777098509078719)
,p_name=>'MODIFICACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFICACION'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Modificacion'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6778780038078736)
,p_name=>'CODIGO_CHECK_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODIGO_CHECK_2'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Codigo Check 2'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6778931697078737)
,p_name=>'CODIGO_CHECK_2_SEL'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4035788307040105)
,p_internal_uid=>12807942084115003
,p_is_editable=>true
,p_edit_operations=>'u'
,p_edit_row_operations_column=>'CODIGO_CHECK_2'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
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
 p_id=>wwv_flow_imp.id(4089545876556054)
,p_interactive_grid_id=>wwv_flow_imp.id(4035788307040105)
,p_static_id=>'128617'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4089742251556054)
,p_report_id=>wwv_flow_imp.id(4089545876556054)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8766741294029027)
,p_view_id=>wwv_flow_imp.id(4089742251556054)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4040012255040147)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8750698787948690)
,p_view_id=>wwv_flow_imp.id(4089742251556054)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4040158115040149)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8749660725948687)
,p_view_id=>wwv_flow_imp.id(4089742251556054)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4040335868040150)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8748636962948684)
,p_view_id=>wwv_flow_imp.id(4089742251556054)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4040384927040151)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>46
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8747640250948681)
,p_view_id=>wwv_flow_imp.id(4089742251556054)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4040470065040152)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4090160356556057)
,p_view_id=>wwv_flow_imp.id(4089742251556054)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4035859167040106)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>199
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4091081314556062)
,p_view_id=>wwv_flow_imp.id(4089742251556054)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4035990850040107)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6380631629974584)
,p_view_id=>wwv_flow_imp.id(4089742251556054)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6203948153226926)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6831387163537916)
,p_view_id=>wwv_flow_imp.id(4089742251556054)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(6777098509078719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6895270183350724)
,p_view_id=>wwv_flow_imp.id(4089742251556054)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(6778780038078736)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7123225867788915)
,p_plug_name=>'objeto_test'
,p_parent_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>170
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select codigo, descripcion, seleccionar from (',
'',
'select DECODE(eod.codigo_expediente, NULL, ''N'', ''Y'') as codigo',
',CASE ',
'  WHEN ('','' || :P254_LISTA_IR || '','') LIKE (''%,'' || od.CODIGO || '',%'')',
'    THEN apex_item.checkbox2(1, od.CODIGO, ''CHECKED'')',
'  ELSE ',
'    apex_item.checkbox2(1, od.CODIGO)',
'END AS Seleccionar',
'      --,apex_item.checkbox2(1,od.CODIGO) as codigo_CHECK_2',
'      --,od.CODIGO as codigo_CHECK_2',
'      ,od.CODIGO as description_COD',
'      ,od.DESCRIPCION',
'      ,eod.OBSERVACIONES',
'      ,oda.codigo_objeto_incompatible',
'      ,eod.codigo_objeto_declaracion',
'      ,oda.expediente_anterior',
'      ,eod.codigo_expediente',
',od.modificacion',
'',
'  from OBJETO_DECLARACION od,',
'       OBJETO_DECLARACION_ASUNTO oda,',
'       EXPEDIENTE_OBJETO_DECLARACION eod',
'where od.CODIGO                 = oda.CODIGO_OBJETO_DECLARACION',
'  and oda.CODIGO_ASUNTO         = :P254_CODIGO_ASUNTO',
'  and od.CODIGO                 = eod.CODIGO_OBJETO_DECLARACION(+)',
'  and eod.CODIGO_EXPEDIENTE (+) = :p254_codigo_expediente',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P254_CODIGO_ASUNTO,P254_CODIGO_EXPEDIENTE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7124523210788928)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'ALEXANDRA'
,p_internal_uid=>15896676987863826
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7125960852788943)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'&nbsp;'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7124626616788929)
,p_db_column_name=>'CODIGO'
,p_display_order=>20
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7124920956788932)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7243743554499078)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'160159'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:DESCRIPCION:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3049027841030836)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>unistr('Mant. objeto declaraci\00F3n')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4038975192040137)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_button_name=>'Confirmar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Confirmar'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4039132806040138)
,p_branch_name=>'Ir a 250'
,p_branch_action=>'f?p=&APP_ID.:250:&SESSION.::&DEBUG.::P250_CODIGO_EXPEDIENTE:&P254_CODIGO_EXPEDIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(4038975192040137)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3048343488030829)
,p_name=>'P254_CODIGO_EXPEDIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_prompt=>unistr('C\00F3digo expediente')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3048382800030830)
,p_name=>'P254_COD_EXP_RELACIONADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_prompt=>unistr('C\00F3digo expediente anterior')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4038589107040133)
,p_name=>'P254_CODIGO_ASUNTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_source=>'SELECT :P30_ASUNTO FROM DUAL'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4039377103040141)
,p_name=>'P254_LISTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_prompt=>'P254_LISTA_oculto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4388460677600516)
,p_name=>'P254_LISTA_INCOMPATIBILIDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_prompt=>'P254_LISTA_INCOMPATIBILIDAD_oculto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4388640908600517)
,p_name=>'P254_ERROR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'P254_ERROR_oculto'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6048656621722651)
,p_name=>'P254_ULTIMO_SELECCIONADO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6114971872126845)
,p_name=>'P254_EXISTE_EXP_REL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6777478280078723)
,p_name=>'P254_EXPEDIENTE_ANTERIOR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6778627830078734)
,p_name=>'P254_LISTA_CARGA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_prompt=>'P254_LISTA_CARGA_oculto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6993558870568008)
,p_name=>'P254_RESPUESTA_INCOMPATIBLE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'P254_RESPUESTA_INCOMPATIBLE_oculto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6994436554568016)
,p_name=>'P254_CONTROL_INCOMPATIBILIDAD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'P254_CONTROL_INCOMPATIBILIDAD_oculto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7002021927595311)
,p_name=>'P254_RESPUESTA_IR'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7126337165788946)
,p_name=>'P254_LISTA_IR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7126658134788950)
,p_name=>'P254_ULTIMO_ITEM'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7321139567732706)
,p_name=>'P254_LISTA_IR_PREVIA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3048210096030828)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4039159846040139)
,p_name=>'Marcar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4038975192040137)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4039321312040140)
,p_event_id=>wwv_flow_imp.id(4039159846040139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'add();'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4039487817040142)
,p_event_id=>wwv_flow_imp.id(4039159846040139)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_ids VARCHAR2(100) := :P254_LISTA;',
'    v_incompatible varchar(100) := :P254_LISTA_INCOMPATIBILIDAD;',
'    TYPE id_table IS TABLE OF VARCHAR2(10);',
'    t_ids id_table;',
'    v_consulta number;',
'begin',
'    apex_debug.info(''************DEBUG*****************  Inicio '');',
unistr('    apex_debug.info(''************DEBUG*****************  Selecci\00F3n: '' || v_ids);'),
'    apex_debug.info(''************DEBUG*****************  Incompatibilidad: '' || v_incompatible);',
'',
'    SELECT REGEXP_SUBSTR(v_ids, ''[^,]+'', 1, LEVEL) BULK COLLECT INTO t_ids',
'    FROM DUAL',
'    CONNECT BY REGEXP_SUBSTR(v_ids, ''[^,]+'', 1, LEVEL) IS NOT NULL;',
'',
'    for i in 1 .. t_ids.COUNT loop',
'        select nvl((select 1 from dual where ''%:'' || v_incompatible || '':%'' like (''%:'' || t_ids(i) || '':%'')),0) into v_consulta from dual;',
'        apex_debug.info(''************DEBUG***************** '' || t_ids(i) || '' incompatibilidad: '' || v_consulta );',
'        if  1 = v_consulta then ',
'            select 1 into :P254_ERROR from dual;',
'            RAISE_APPLICATION_ERROR(-20001, ''Los objetos son incompatibles.'');',
'        end if;',
'    end loop;',
'',
'    ',
'    delete from EXPEDIENTE_OBJETO_DECLARACION where CODIGO_EXPEDIENTE = :P254_CODIGO_EXPEDIENTE;',
'    apex_debug.info(''************DEBUG*****************  Limpiar tabla'');',
'    ',
'',
'    for i in 1 .. t_ids.COUNT loop',
'      apex_debug.info(''************DEBUG*****************  id: '' || t_ids(i) );',
'        insert into EXPEDIENTE_OBJETO_DECLARACION (CODIGO_EXPEDIENTE, CODIGO_OBJETO_DECLARACION) values (:P254_CODIGO_EXPEDIENTE, t_ids(i));',
'    end loop;',
'    select 0 into :P254_ERROR from dual;',
'',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        DBMS_OUTPUT.PUT_LINE(SQLERRM);',
'end;'))
,p_attribute_02=>'P254_LISTA,P254_LISTA_INCOMPATIBILIDAD'
,p_attribute_03=>'P254_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4388276572600514)
,p_event_id=>wwv_flow_imp.id(4039159846040139)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( "Se ha actualizado el listado" );'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P254_ERROR'
,p_client_condition_expression=>'0'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4388697828600518)
,p_event_id=>wwv_flow_imp.id(4039159846040139)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se ha detectado incompatibilidad en los objetos'
,p_attribute_04=>'fa-exclamation-circle'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P254_ERROR'
,p_client_condition_expression=>'1'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4388411394600515)
,p_event_id=>wwv_flow_imp.id(4039159846040139)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'guardar'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6778319242078731)
,p_name=>'Marcar_lineas_cargar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_LISTA_CARGA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6778475434078733)
,p_event_id=>wwv_flow_imp.id(6778319242078731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("Objeto_Carga");',
'(function seleccionarRowSelector() {',
'  setTimeout(function() {',
'console.log("Paso 1");',
'    var listaCodigos = $v("P254_LISTA_CARGA").split(","); // Convierte la cadena en un array',
'console.log("Paso 2");',
'    var ig$ = apex.region("igObjeto").widget().interactiveGrid("getViews", "grid");',
'console.log("Paso 3");',
'    var model = ig$.model;',
'console.log("Paso 4");',
'',
'    // Buscar solo en el Interactive Grid "igAsunto"',
'    //ig$.view$.find(".a-GV-row").each(function() {        ',
'    ig$.view$.find("tbody tr").each(function() {        ',
'console.log("Paso 5");',
'        var row$ = $(this);',
'console.log("row$",row$);',
'console.log("Paso 5-1");',
'        var rowId = row$.attr("data-id"); // ID de la fila en el modelo',
'console.log("Paso 5-2");',
'        var record = model.getRecord(rowId); // Obtener datos de la fila',
'console.log("Paso 6");',
'',
'        if (!record) return; // Evita errores si no encuentra el registro',
'console.log("Paso 7");',
'',
'        var valores = Object.values(record); // Convertimos a array',
'console.log("valores encontrado:", valores);',
unistr('        var codigo = valores[7]; // Ajusta este \00EDndice seg\00FAn la posici\00F3n de "CODIGO"'),
unistr('console.log("C\00F3digo encontrado:", codigo);'),
'console.log("Paso 8");',
'',
'        if (listaCodigos.includes(codigo)) {',
'console.log("Paso 9");',
unistr('            // \D83D\DD39 Simular clic en el Row Selector de esta fila'),
'            //row$.find(".a-GV-rowSelector").trigger("click");',
'console.log("Antes de simular");',
'            row$.find(".a-GV-selHeader").trigger("click");',
'console.log("Despues de simular");',
'        }',
'',
'console.log("Paso 10");',
'    });',
'console.log("Paso 11");',
unistr('}, 500); // Ajusta el tiempo seg\00FAn la velocidad de carga del IG'),
'',
'console.log("Paso 12");',
'})();',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6203805458226924)
,p_name=>'Seleccionar_Compatibilidades'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3048452160030831)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6203870925226925)
,p_event_id=>wwv_flow_imp.id(6203805458226924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("MarcarCompatibilidades");',
unistr('let itemLista = "#P254_LISTA"; // Reempl\00E1zalo con el nombre real de tu item'),
'let itemExpedienteAnterior = "#P254_EXPEDIENTE_ANTERIOR";',
'//let itemModificacion = "#P254_MODIFICACION";',
'let igObjeto$ = apex.region("igObjeto").widget(); // Cambia "mi_interactive_grid" por el Static ID de tu IG',
unistr('// Verificamos que la regi\00F3n del IG existe antes de continuar'),
'if (igObjeto$) {',
'    let view = igObjeto$.interactiveGrid("getViews", "grid"); ',
'    let model = view.model;',
'console.log("$(itemLista): ",$(itemLista));',
'    function actualizarItem() {',
'        let seleccionados = [];',
'        let seleccionadosExpedienteAnterior = [];',
'console.log("seleccionados: ",seleccionados);',
'$(itemExpedienteAnterior).val('''');',
'//$(itemModificacion).val('''');',
'//$(itemRowUltimoClick).val('''');',
'        view.getSelectedRecords().forEach(function(record) {',
'            let id = model.getValue(record, "DESCRIPTION_COD");',
'            let idCODIGO = model.getValue(record, "CODIGO");',
'            let idExpedienteAnterior = model.getValue(record, "EXPEDIENTE_ANTERIOR");',
'            let idModificacion = model.getValue(record, "MODIFICACION");',
'console.log("id: ",id);',
'console.log("idCODIGO: ",idCODIGO);',
'            if (idCODIGO) {',
'console.log("seleccionados: ",seleccionados);',
'                seleccionados.push(id);',
'//                seleccionadosExpedienteAnterior.push(idExpedienteAnterior);',
'$(itemExpedienteAnterior).val(idExpedienteAnterior);',
'//$(itemModificacion).val(idModificacion);',
'console.log("seleccionados: ",seleccionados);',
'            }',
'        });',
'console.log("$(itemLista): ",$(itemLista));',
'        // Unimos los valores seleccionados y los asignamos al item destino',
'        $(itemLista).val(seleccionados.join('',''));',
'//        $(itemExpedienteAnterior).val(seleccionadosExpedienteAnterior);',
'console.log("$(itemLista): ",$(itemLista));',
'    }',
unistr('    // Ejecutar la funci\00F3n al cargar la p\00E1gina para incluir selecciones iniciales'),
'    actualizarItem();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6204251285226929)
,p_event_id=>wwv_flow_imp.id(6203805458226924)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P254_LISTA := :P254_LISTA;',
'APEX_UTIL.SET_SESSION_STATE(''P254_LISTA'',:P254_LISTA);',
':P254_EXPEDIENTE_ANTERIOR := :P254_EXPEDIENTE_ANTERIOR;'))
,p_attribute_02=>'P254_EXPEDIENTE_ANTERIOR'
,p_attribute_03=>'P254_EXPEDIENTE_ANTERIOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7013344699756179)
,p_name=>'Guardar ultima Fila Seleccionada'
,p_event_sequence=>31
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3048452160030831)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7013734922756180)
,p_event_id=>wwv_flow_imp.id(7013344699756179)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("GuardaUltimaSeleccion");',
'$(document).on("click", "#igObjeto tbody tr", function() {',
'    var region$ = apex.region("igObjeto").widget();',
'    var grid = region$.interactiveGrid("getViews", "grid");',
'    var model = grid.model;',
'',
'    // Obtener el ID de la fila seleccionada',
'    var rowId = $(this).attr("data-id");',
'',
'    if ((rowId) && ($(this).hasClass("is-selected")) ){',
'        var record = model.getRecord(rowId);',
'        var rowIndex = model.indexOf(record);',
'',
'        console.log("Fila clicada:", rowIndex + 1);',
'',
unistr('        // Guardar el valor en el \00EDtem de APEX'),
'        apex.item("P254_ULTIMO_SELECCIONADO").setValue(rowIndex + 1);',
'        apex.item("P254_CONTROL_INCOMPATIBILIDAD").setValue(0);',
'console.log("Indica Linea Seleccionada");',
'    }',
'    else{',
'        apex.item("P254_CONTROL_INCOMPATIBILIDAD").setValue(-2);',
'console.log("Indica Linea Deselccionada");',
'    }',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6114277815126838)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_CODIGO_EXPEDIENTE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6114365478126839)
,p_event_id=>wwv_flow_imp.id(6114277815126838)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P254_COD_EXP_RELACIONADO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_exp_rel varchar2(100);',
'',
'begin',
'  select ',
'   CODIGO_EXPEDIENTE_RELACIONADO ',
'  into v_exp_rel',
'  from APEXWEB.EXPEDIENTE_RELACIONADO ',
'  where CODIGO_EXPEDIENTE = :P254_CODIGO_EXPEDIENTE;',
' return v_exp_rel;',
' exception',
'   when others then ',
'      return '''';',
' end;'))
,p_attribute_07=>'P254_CODIGO_EXPEDIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6114454289126840)
,p_name=>'New_1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_COD_EXP_RELACIONADO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6114582980126841)
,p_event_id=>wwv_flow_imp.id(6114454289126840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe indicar un expediente diferente'
,p_attribute_02=>'Error expediente relacionado'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P254_COD_EXP_RELACIONADO'
,p_client_condition_expression=>'&P254_CODIGO_EXPEDIENTE.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6114653689126842)
,p_event_id=>wwv_flow_imp.id(6114454289126840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P254_COD_EXP_RELACIONADO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P254_COD_EXP_RELACIONADO'
,p_client_condition_expression=>'&P254_CODIGO_EXPEDIENTE.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6114933787126844)
,p_event_id=>wwv_flow_imp.id(6114454289126840)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P254_EXISTE_EXP_REL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'   v_existe boolean;',
'   V_ASUNTO NUMBER;',
'begin',
'v_existe:=apexweb.consulta.Obtiene_asunto_expediente(:P254_COD_EXP_RELACIONADO, V_ASUNTO);',
'if v_existe then',
'   return ''SI'';',
'else',
'   return ''NO'';',
'END IF;',
'end;'))
,p_attribute_07=>'P254_COD_EXP_RELACIONADO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P254_COD_EXP_RELACIONADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6115418907126849)
,p_name=>'New_2'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_EXISTE_EXP_REL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6115556417126851)
,p_event_id=>wwv_flow_imp.id(6115418907126849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No existe el expediente en el asunto actual'
,p_attribute_02=>'Error expediente Relacionado'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P254_EXISTE_EXP_REL'
,p_client_condition_expression=>'NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6115459544126850)
,p_event_id=>wwv_flow_imp.id(6115418907126849)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P254_COD_EXP_RELACIONADO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P254_EXISTE_EXP_REL'
,p_client_condition_expression=>'NO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6462329188869803)
,p_name=>'New_3'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_COD_EXP_RELACIONADO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6462425033869804)
,p_event_id=>wwv_flow_imp.id(6462329188869803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Expediente bloqueado por comunicaci\00F3n de embargo por parte de la Agencia Tributaria')
,p_attribute_02=>'Error expediente relacionado'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P254_COD_EXP_RELACIONADO'
,p_client_condition_expression=>'3E08BT008017'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6462453223869805)
,p_event_id=>wwv_flow_imp.id(6462329188869803)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P254_COD_EXP_RELACIONADO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P254_COD_EXP_RELACIONADO'
,p_client_condition_expression=>'3E08BT008017'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6777651394078725)
,p_name=>'Ocultar_COD_EXP_RELACIONADO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_EXPEDIENTE_ANTERIOR'
,p_condition_element=>'P254_EXPEDIENTE_ANTERIOR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6777800124078726)
,p_event_id=>wwv_flow_imp.id(6777651394078725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P254_COD_EXP_RELACIONADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6777877765078727)
,p_event_id=>wwv_flow_imp.id(6777651394078725)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P254_COD_EXP_RELACIONADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6993418285568006)
,p_name=>'Cambio_y miramos_incampatibilidad'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_ULTIMO_SELECCIONADO'
,p_condition_element=>'P254_CONTROL_INCOMPATIBILIDAD'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'-2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6993515564568007)
,p_event_id=>wwv_flow_imp.id(6993418285568006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_SQLCODE varchar2(1000);',
'v_SQLERRM varchar2(1000);',
'begin',
'if :P254_ULTIMO_SELECCIONADO is not null ',
'  AND :P254_CONTROL_INCOMPATIBILIDAD > -2',
'  and :P254_LISTA is not null then',
':P254_RESPUESTA_INCOMPATIBLE := apexweb.FU_INCOMPATIBILIDADES_OBJETO(p_lista => :P254_LISTA',
'                                           ,p_rownum_ultimo_sel => :P254_ULTIMO_SELECCIONADO',
'                                           ,p_codigo_asunto => :P254_CODIGO_ASUNTO',
'                                           ,p_codigo_expediente => :P254_CODIGO_EXPEDIENTE',
'                                           );',
'else',
'  :P254_RESPUESTA_INCOMPATIBLE := 1;',
'end if;',
'exception',
'  when others then',
'    v_SQLCODE := SQLCODE;',
'    v_SQLERRM := SQLERRM;',
'    null;',
'    :P254_RESPUESTA_INCOMPATIBLE := v_SQLCODE || '' - '' ||v_SQLERRM;',
'end;',
''))
,p_attribute_02=>'P254_LISTA,P254_ULTIMO_SELECCIONADO,P254_CODIGO_ASUNTO,P254_CODIGO_EXPEDIENTE,P254_CONTROL_INCOMPATIBILIDAD'
,p_attribute_03=>'P254_RESPUESTA_INCOMPATIBLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6993792141568010)
,p_name=>'Mostrar_mensaje'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_RESPUESTA_INCOMPATIBLE'
,p_condition_element=>'P254_RESPUESTA_INCOMPATIBLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6993895281568011)
,p_event_id=>wwv_flow_imp.id(6993792141568010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El objeto de declaraci\00F3n seleccionado, no es compatible con los otros objetos seleccionados')
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6994217774568014)
,p_event_id=>wwv_flow_imp.id(6993792141568010)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("Deseleccionar_Linea");',
'(function seleccionarRowSelector() {',
'  setTimeout(function() {',
'console.log("Paso 1");',
'    var listaCodigos = $v("P254_ULTIMO_SELECCIONADO").split(","); // Convierte la cadena en un array',
'console.log("listaCodigos -> ",listaCodigos);',
'console.log("Paso 2");',
'    var ig$ = apex.region("igObjeto").widget().interactiveGrid("getViews", "grid");',
'console.log("Paso 3");',
'    var model = ig$.model;',
'console.log("Paso 4");',
'',
'    // Buscar solo en el Interactive Grid "igAsunto"',
'    //ig$.view$.find(".a-GV-row").each(function() {        ',
'    ig$.view$.find("tbody tr").each(function() {        ',
'console.log("Paso 5");',
'        var row$ = $(this);',
'console.log("row$",row$);',
'console.log("Paso 5-1");',
'        //var rowId = row$.attr("data-id"); // ID de la fila en el modelo',
'        var rowId = row$.attr("data-rownum");',
'console.log("Paso 5-2");',
'console.log("rowId:", rowId);',
'        //var record = model.getRecord(rowId); // Obtener datos de la fila',
'console.log("Paso 6");',
'',
'        //if (!record) return; // Evita errores si no encuentra el registro',
'console.log("Paso 7");',
'',
'        //var valores = Object.values(record); // Convertimos a array',
'//console.log("valores encontrado:", valores);',
unistr('        //var codigo = valores[7]; // Ajusta este \00EDndice seg\00FAn la posici\00F3n de "CODIGO"'),
unistr('//console.log("C\00F3digo encontrado:", codigo);'),
'console.log("Paso 8");',
'',
'        //if (listaCodigos.includes(codigo)) {',
'        if (listaCodigos.includes(rowId)) {',
'console.log("Paso 9");',
unistr('            // \D83D\DD39 Simular clic en el Row Selector de esta fila'),
'            //row$.find(".a-GV-rowSelector").trigger("click");',
'console.log("Antes de simular");',
'            row$.find(".a-GV-selHeader").trigger("click");',
'console.log("Despues de simular");',
'        }',
'',
'console.log("Paso 10");',
'    });',
'console.log("Paso 11");',
unistr('}, 500); // Ajusta el tiempo seg\00FAn la velocidad de carga del IG'),
'',
'console.log("Paso 12");',
'})();',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7125660386788940)
,p_name=>'New_4'
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7123225867788915)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7321153548732707)
,p_event_id=>wwv_flow_imp.id(7125660386788940)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--SALVAGUARDAR LA LISTA_IR antes de que sea modificada.',
':P254_LISTA_IR_PREVIA := :P254_LISTA_IR;',
'   -- APEX_UTIL.SET_SESSION_STATE(''P254_LISTA_IR_PREVIA'',:P254_LISTA_IR);',
'END;'))
,p_attribute_02=>'P254_LISTA_IR'
,p_attribute_03=>'P254_LISTA_IR_PREVIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7126570185788949)
,p_event_id=>wwv_flow_imp.id(7125660386788940)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P254_LISTA_IR'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Recorrer todos los checkboxes con name "f01" que est\00E9n seleccionados'),
'var lista = [];',
'document.querySelectorAll(''input[name="f01"]:checked'').forEach(function(checkbox) {',
'  lista.push(checkbox.value);',
'});',
'',
'// Unir los valores con comas',
'var resultado = lista.join('','');',
'',
'// Asignar el resultado al item P254_LISTA_IR',
unistr('// Aseg\00FArate de que el item tenga el atributo id="P254_LISTA_IR" en la p\00E1gina.'),
'document.getElementById(''P254_LISTA_IR'').value = resultado;',
unistr('// Para depuraci\00F3n, tambi\00E9n puedes imprimir en consola'),
'console.log("Lista actualizada: " + resultado);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7126760742788951)
,p_event_id=>wwv_flow_imp.id(7125660386788940)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P254_ULTIMO_ITEM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// 1. Declaramos la variable global',
'var ultimoSeleccionado = null;',
'',
'// 2. Seleccionamos todos los checkboxes con el nombre "f01" y les asignamos un listener',
'document.querySelectorAll(''input[name="f01"]'').forEach(function(checkbox) {',
'  checkbox.addEventListener(''click'', function() {',
'    // 3. Verificamos si el checkbox fue marcado',
'    if (this.checked) {',
'      // 4. Actualizamos la variable global con el valor del checkbox',
'      ultimoSeleccionado = this.value;',
unistr('      console.log("\00DAltimo seleccionado: " + ultimoSeleccionado);'),
'      ',
unistr('      // 5. (Opcional) Asignamos el valor al item de p\00E1gina P254_ULTIMO_ITEM'),
'      var ultimoItem = document.getElementById(''P254_ULTIMO_ITEM'');',
'      if (ultimoItem) {',
'        ultimoItem.value = ultimoSeleccionado;',
'      }',
'    }',
'  });',
'});',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7320810391732703)
,p_event_id=>wwv_flow_imp.id(7125660386788940)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --APEX_UTIL.SET_SESSION_STATE(''P254_LISTA_IR'',:P254_LISTA_IR);',
'     :P254_LISTA_IR := :P254_LISTA_IR;',
'     :P254_ULTIMO_ITEM := :P254_ULTIMO_ITEM;',
'END;'))
,p_attribute_02=>'P254_LISTA_IR,P254_ULTIMO_ITEM'
,p_attribute_03=>'P254_LISTA_IR,P254_ULTIMO_ITEM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7002275378595314)
,p_event_id=>wwv_flow_imp.id(7125660386788940)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_RESPUESTA NUMBER;',
'BEGIN',
'V_RESPUESTA := FU_INCOMPATIBILIDADES_OBJETO_IR2(:P254_LISTA_IR',
'                                           , :P254_ULTIMO_ITEM',
'                                           , :P254_CODIGO_ASUNTO',
'                                           ,:P254_CODIGO_EXPEDIENTE',
'                                           );',
' ',
'   :P254_RESPUESTA_IR:= V_RESPUESTA;',
'',
'   -- APEX_UTIL.SET_SESSION_STATE(''P254_RESPUESTA_IR'',:P254_RESPUESTA_IR);',
'     ',
'',
'END;'))
,p_attribute_02=>'P254_LISTA_IR,P254_ULTIMO_ITEM,P254_CODIGO_ASUNTO,P254_CODIGO_EXPEDIENTE'
,p_attribute_03=>'P254_RESPUESTA_IR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P254_ULTIMO_ITEM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7002423646595315)
,p_name=>'cambia_valor_respuesta'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_RESPUESTA_IR'
,p_condition_element=>'P254_RESPUESTA_IR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7002475755595316)
,p_event_id=>wwv_flow_imp.id(7002423646595315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El objeto de declaraci\00F3n seleccionado, no es compatible con los otros objetos seleccionados')
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7002641703595317)
,p_event_id=>wwv_flow_imp.id(7002423646595315)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  -- v_lista       VARCHAR2(4000);  -- Lista de anexos seleccionados',
' --  v_documentos_a_desmarcar VARCHAR2(4000);  -- El campo que contiene los valores a desmarcar (separados por un delimitador)',
'BEGIN',
'',
'  if :P254_RESPUESTA_IR=0 then',
' -- lrpg_add_log(1,''entrando en desmarcar checks'');',
unistr('   -- Obtener la lista de anexos seleccionados (puede ser un campo de la p\00E1gina)'),
'   /*v_lista := :P254_LISTA_ir;',
'   lrpg_add_log(2,''Lista: ''|| v_lista);',
'',
'   -- Obtener el valor del campo con los documentos a desmarcar (puede estar separado por comas, guiones, etc.)',
'   v_documentos_a_desmarcar := :P254_ULTIMO_ITEM;  -- Asumimos que este es el campo',
' lrpg_add_log(3,''Item a desmarcar: ''|| v_documentos_a_desmarcar);',
unistr('   -- Recorremos la colecci\00F3n g_f01 (que contiene los checkboxes seleccionados)'),
'   FOR i IN 1 .. APEX_APPLICATION.g_f01.COUNT LOOP',
'    lrpg_add_log(4,''dentro del loop ''|| APEX_APPLICATION.g_f01(i) );',
'',
unistr('      -- Si el valor de g_f01 est\00E1 en la lista de documentos a desmarcar, lo eliminamos de v_lista'),
'      IF INSTR(v_documentos_a_desmarcar, APEX_APPLICATION.g_f01(i)) > 0 THEN',
'         v_lista := REPLACE(v_lista, ''-'' || APEX_APPLICATION.g_f01(i), '''');',
'             lrpg_add_log(5,''valor de v_vista ''|| v_lista );',
'',
'      END IF;',
'   END LOOP; */',
'',
unistr('   -- Asignamos la lista actualizada al item de p\00E1gina'),
'   --:P254_LISTA_ir := v_lista;',
'',
'    --APEX_UTIL.SET_SESSION_STATE(''P254_RESPUESTA_IR'',null);',
'    :P254_RESPUESTA_IR := 1;',
'    :P254_ULTIMO_ITEM := null;',
'',
'       --APEX_UTIL.SET_SESSION_STATE(''P254_LISTA_IR'',:P254_LISTA_IR_PREVIA);',
'       :P254_LISTA_IR := :P254_LISTA_IR_PREVIA;',
'       lrpg_add_log(1, ''valor de la lista_ir ''|| :P254_LISTA_IR);',
'',
unistr('   -- Para depuraci\00F3n (opcional), puedes imprimir la nueva lista'),
'   -- DBMS_OUTPUT.PUT_LINE(''Lista Actualizada: '' || v_lista_anexos);',
'  end if;',
'END;'))
,p_attribute_02=>'P254_RESPUESTA_IR,P254_LISTA_IR_PREVIA'
,p_attribute_03=>'P254_LISTA_IR,P254_RESPUESTA_IR,P254_ULTIMO_ITEM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7321012850732705)
,p_event_id=>wwv_flow_imp.id(7002423646595315)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7123225867788915)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7321687013732712)
,p_name=>'AFTER_REFRESH'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7123225867788915)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7321364054732709)
,p_event_id=>wwv_flow_imp.id(7321687013732712)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P254_ULTIMO_ITEM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// 1. Declaramos la variable global',
'var ultimoSeleccionado = null;',
'',
'// 2. Seleccionamos todos los checkboxes con el nombre "f01" y les asignamos un listener',
'document.querySelectorAll(''input[name="f01"]'').forEach(function(checkbox) {',
'  checkbox.addEventListener(''click'', function() {',
'    // 3. Verificamos si el checkbox fue marcado',
'    if (this.checked) {',
'      // 4. Actualizamos la variable global con el valor del checkbox',
'      ultimoSeleccionado = this.value;',
unistr('      console.log("\00DAltimo seleccionado: " + ultimoSeleccionado);'),
'      ',
unistr('      // 5. (Opcional) Asignamos el valor al item de p\00E1gina P254_ULTIMO_ITEM'),
'      var ultimoItem = document.getElementById(''P254_ULTIMO_ITEM'');',
'      if (ultimoItem) {',
'        ultimoItem.value = ultimoSeleccionado;',
'      }',
'    }',
'  });',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7002901951595320)
,p_name=>'New_5'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_LISTA_IR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7002965955595321)
,p_event_id=>wwv_flow_imp.id(7002901951595320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P254_LISTA_IR is not null then',
'SELECT max(oda.expediente_anterior) into :P254_EXPEDIENTE_ANTERIOR ',
'    from apexweb.OBJETO_DECLARACION_ASUNTO oda',
'    where ',
'       REGEXP_LIKE(oda.codigo_OBJETO_DECLARACION, ''^('' || REPLACE(:P254_LISTA_IR, '','', ''|'') || '')$'')',
'      and oda.CODIGO_ASUNTO         = :P254_CODIGO_ASUNTO;   ',
'else',
'  :P254_EXPEDIENTE_ANTERIOR :=0;',
'end if;',
'',
' end; '))
,p_attribute_02=>'P254_LISTA_IR,P254_CODIGO_ASUNTO'
,p_attribute_03=>'P254_EXPEDIENTE_ANTERIOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6462615212869806)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_ASOCIADO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P254_COD_EXP_RELACIONADO IS NOT NULL THEN',
'BEGIN',
'  ',
' INSERT INTO  APEXWEB.EXPEDIENTE_RELACIONADO  (CODIGO_EXPEDIENTE, CODIGO_EXPEDIENTE_RELACIONADO)',
'  VALUES (:P254_CODIGO_EXPEDIENTE, :P254_COD_EXP_RELACIONADO);',
'  COMMIT;',
'',
'EXCEPTION ',
'  WHEN OTHERS THEN ',
'    UPDATE APEXWEB.EXPEDIENTE_RELACIONADO',
'      SET CODIGO_EXPEDIENTE_RELACIONADO=:P254_COD_EXP_RELACIONADO',
'     WHERE CODIGO_EXPEDIENTE=:P254_CODIGO_EXPEDIENTE;',
'     COMMIT;',
'END;',
'',
'END IF;',
'',
'begin',
'-- Guardar cambios expediente_objeto_declaracion',
'',
'-- limpiamos la tablas',
'delete apexweb.expediente_objeto_declaracion where codigo_expediente = :P254_CODIGO_EXPEDIENTE ;',
'',
'FOR i IN 1 .. APEX_APPLICATION.g_f01.COUNT LOOP',
'',
unistr('      -- Si el valor de g_f01 est\00E1 en la lista de documentos a desmarcar, lo eliminamos de v_lista'),
'      Insert into apexweb.expediente_objeto_declaracion(codigo_expediente, codigo_objeto_declaracion)',
'      values(:P254_CODIGO_EXPEDIENTE,  APEX_APPLICATION.g_f01(i));',
'END LOOP; ',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'guardar'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>15234768989944704
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4036325931040110)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3048452160030831)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('objeto: Guardar Datos de Cuadr\00EDcula Interactiva')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4038975192040137)
,p_process_when_type=>'NEVER'
,p_internal_uid=>12808479708115008
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7321342645732708)
,p_process_sequence=>20
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_LINEAS_MARCADAS_IR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_lista VARCHAR2(4000);',
'  v_modificado VARCHAR2(4000);',
'  v_exp_anterior VARCHAR2(4000);',
'BEGIN',
'  SELECT LISTAGG(od.codigo, '','') WITHIN GROUP (ORDER BY od.codigo)',
'        ,max(od.MODIFICACION)',
'        ,max(oda.EXPEDIENTE_ANTERIOR)',
'    INTO v_lista',
'        ,v_modificado',
'        ,v_exp_anterior',
'    from OBJETO_DECLARACION od',
'        ,OBJETO_DECLARACION_ASUNTO oda',
'        ,EXPEDIENTE_OBJETO_DECLARACION eod',
'    where od.CODIGO                 = oda.CODIGO_OBJETO_DECLARACION',
'      and od.CODIGO                 = eod.CODIGO_OBJETO_DECLARACION(+)',
'      and oda.CODIGO_ASUNTO         = :P254_CODIGO_ASUNTO',
'      and eod.CODIGO_EXPEDIENTE (+) = :p254_codigo_expediente',
'      AND eod.codigo_expediente IS NOT NULL;',
'',
'  :P254_LISTA_IR := v_lista;',
'  --:P254_LISTA := v_lista;',
'  :P254_EXPEDIENTE_ANTERIOR := v_exp_anterior;',
'',
'  :P254_LISTA_IR_PREVIA := NULL;',
'  :P254_RESPUESTA_IR := 1;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16093496422807606
);
wwv_flow_imp.component_end;
end;
/
