prompt --application/pages/page_00230
begin
--   Manifest
--     PAGE: 00230
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
 p_id=>230
,p_name=>'Busqueda+'
,p_alias=>'BUSQUEDA'
,p_step_title=>'Busqueda+'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#igUtil#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//function checkRowSelector() {',
'//    var grid = apex.jQuery(''#igAsunto'');',
'//    // Obtener el checkbox de la fila que deseas marcar',
'//    //grid.find(''input[type="checkbox"][name="f01"]'').eq(4);',
'//    var checkbox = grid.find(''input[type="checkbox"][name="APEX$ROW_SELECTOR"]'');',
'//    // Marcar el checkbox',
'//    checkbox.prop(''checked'', true);',
'//}',
'//function checkRowSelectorByID() {',
'//    var rowID = 3;',
unistr('//    // Obtener el selector de la cuadr\00EDcula interactiva por Static ID'),
'//    var grid = apex.jQuery(''#igAsunto'');',
unistr('//    // Encontrar la fila con el ID espec\00EDfico'),
'//    var row = grid.find(''tr[data-id="'' + rowID + ''"]'');',
unistr('//    // Obtener el checkbox de esa fila espec\00EDfica'),
'//    var checkbox = row.find(''input[type="checkbox"][name="f01"]'');',
'//    // Marcar el checkbox',
'//    checkbox.prop(''checked'', true);',
'//    grid.refresh();',
'//',
'//    var grid = apex.jQuery(''#igCriterio'');',
unistr('//    // Encontrar la fila con el ID espec\00EDfico'),
'//    var row = grid.find(''tr[data-id="'' + rowID + ''"]'');',
unistr('//    // Obtener el checkbox de esa fila espec\00EDfica'),
'//    var checkbox = row.find(''input[type="checkbox"][name="f01"]'');',
'//    // Marcar el checkbox',
'//    checkbox.prop(''checked'', true);',
'//    grid.refresh();',
'//}',
'//function lovSelectList() {',
'//    var ig = apex.region("igCriterio").widget().interactiveGrid("getViews", "grid").model;',
'//   var data = ig.getRecords();',
'//    ',
unistr('//    // Limpiar la lista de selecci\00F3n'),
'//    apex.item("LISTA").clear();',
'//',
unistr('//    // Iterar sobre los registros de la cuadr\00EDcula interactiva'),
'//    data.forEach(function (record) {',
'//        // Obtener el valor de la columna "Query"',
'//        var queryValue = record["SQL_DESPLEGABLE"];',
'//',
unistr('//        // A\00F1adir el valor como una opci\00F3n en la lista de selecci\00F3n'),
'//        apex.item("LISTA").addLovItem(queryValue, queryValue);',
'//    });',
'//}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3334660426337513)
,p_plug_name=>'Nuevo'
,p_region_name=>unistr('tc_pesta\00F1as')
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(9654952021211932389)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3337306451337539)
,p_plug_name=>unistr('Criterio b\00FAsqueda')
,p_parent_plug_id=>wwv_flow_imp.id(3334660426337513)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4055520667165542)
,p_plug_name=>'Region_Asunto'
,p_title=>'Asuntos'
,p_parent_plug_id=>wwv_flow_imp.id(3337306451337539)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3334777063337514)
,p_plug_name=>'Asunto'
,p_region_name=>'igAsunto'
,p_parent_plug_id=>wwv_flow_imp.id(4055520667165542)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.CODIGO,',
'       a.DESCRIPCION,',
'       a.CODIGO || '' '' || a.DESCRIPCION Asunto,',
'       a.FORMULARIO,',
'       a.ID_UNIDAD_ORGANIZATIVA,',
'       a.ID_INFORME_ETIQUETA,',
'       a.ID_PLANTILLA_ETIQUETA,',
'       a.ACTIVAR_ROLES_TRAMITACION,',
'       a.OBLIGAR_PROCEDIMIENTO,',
'       a.INCLUYE_TASA,',
'       a.OBLIGAR_EE',
'  from ASUNTO a',
'  where exists(select 1',
'                 from apexweb.usuario_asunto u',
'			     where u.codigo_asunto = a.codigo',
'  			       and u.login = :APP_USER',
'              )',
'  --ORDER BY a.CODIGO'))
,p_plug_source_type=>'NATIVE_IG'
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
 p_id=>wwv_flow_imp.id(3757679501269918)
,p_name=>'CODIGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODIGO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Codigo'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(3757827338269919)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Descripcion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(3757910331269920)
,p_name=>'ASUNTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASUNTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Asunto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>91
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
 p_id=>wwv_flow_imp.id(3758043029269921)
,p_name=>'FORMULARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORMULARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Formulario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>60
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
 p_id=>wwv_flow_imp.id(3758116545269922)
,p_name=>'ID_UNIDAD_ORGANIZATIVA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_UNIDAD_ORGANIZATIVA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Unidad Organizativa'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(3758147264269923)
,p_name=>'ID_INFORME_ETIQUETA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_INFORME_ETIQUETA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Informe Etiqueta'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(3758296341269924)
,p_name=>'ID_PLANTILLA_ETIQUETA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PLANTILLA_ETIQUETA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Plantilla Etiqueta'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(3758359834269925)
,p_name=>'ACTIVAR_ROLES_TRAMITACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVAR_ROLES_TRAMITACION'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Activar Roles Tramitacion'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(3758517018269926)
,p_name=>'OBLIGAR_PROCEDIMIENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBLIGAR_PROCEDIMIENTO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Obligar Procedimiento'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(3758607708269927)
,p_name=>'INCLUYE_TASA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCLUYE_TASA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Incluye Tasa'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(3758653001269928)
,p_name=>'OBLIGAR_EE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBLIGAR_EE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Obligar Ee'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(3760018674269941)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3757619684269917)
,p_internal_uid=>12529773461344815
,p_is_editable=>true
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
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3993539621020785)
,p_interactive_grid_id=>wwv_flow_imp.id(3757619684269917)
,p_static_id=>'127657'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3993689558020786)
,p_report_id=>wwv_flow_imp.id(3993539621020785)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3995555723020798)
,p_view_id=>wwv_flow_imp.id(3993689558020786)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3757679501269918)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3996490800020806)
,p_view_id=>wwv_flow_imp.id(3993689558020786)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3757827338269919)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3997398982020811)
,p_view_id=>wwv_flow_imp.id(3993689558020786)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3757910331269920)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3998171882020814)
,p_view_id=>wwv_flow_imp.id(3993689558020786)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3758043029269921)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3999137569020818)
,p_view_id=>wwv_flow_imp.id(3993689558020786)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3758116545269922)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3999957344020821)
,p_view_id=>wwv_flow_imp.id(3993689558020786)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3758147264269923)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4000925823020825)
,p_view_id=>wwv_flow_imp.id(3993689558020786)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3758296341269924)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4001803748020828)
,p_view_id=>wwv_flow_imp.id(3993689558020786)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3758359834269925)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4002649090020832)
,p_view_id=>wwv_flow_imp.id(3993689558020786)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3758517018269926)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4003589235020835)
,p_view_id=>wwv_flow_imp.id(3993689558020786)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3758607708269927)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4004456385020838)
,p_view_id=>wwv_flow_imp.id(3993689558020786)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3758653001269928)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4055626472165543)
,p_plug_name=>'Region_Busquedas_Almacenadas'
,p_title=>unistr('B\00FAsquedas Almacenadas')
,p_parent_plug_id=>wwv_flow_imp.id(3337306451337539)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3685008743907310)
,p_plug_name=>'Salvar_consulta'
,p_parent_plug_id=>wwv_flow_imp.id(4055626472165543)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4055828445165545)
,p_plug_name=>'Region_Busquedas_Almacenadas_1'
,p_parent_plug_id=>wwv_flow_imp.id(4055626472165543)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3335966768337526)
,p_plug_name=>unistr('B\00FAsqueda almacenada')
,p_region_name=>'igBusqueda'
,p_parent_plug_id=>wwv_flow_imp.id(4055828445165545)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'BUSQUEDA_USUARIO'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'upper(login) = upper(:app_user) or ',
'exists (select 1 from busqueda_usuario_permiso p where p.id_busqueda = id',
'and upper(p.login) = upper(:app_user))'))
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'descripcion'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
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
 p_id=>wwv_flow_imp.id(3758931015269930)
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
 p_id=>wwv_flow_imp.id(3759037649269931)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Descripci\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(3759131618269932)
,p_name=>'LOGIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOGIN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Login'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>6
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
 p_id=>wwv_flow_imp.id(4038131377040128)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4038331289040130)
,p_name=>'R'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3758755879269929)
,p_internal_uid=>12530909656344827
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3994233806020790)
,p_interactive_grid_id=>wwv_flow_imp.id(3758755879269929)
,p_static_id=>'127664'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3994369930020790)
,p_report_id=>wwv_flow_imp.id(3994233806020790)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4005428670020841)
,p_view_id=>wwv_flow_imp.id(3994369930020790)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3758931015269930)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4006336166020844)
,p_view_id=>wwv_flow_imp.id(3994369930020790)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3759037649269931)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4007161123020847)
,p_view_id=>wwv_flow_imp.id(3994369930020790)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3759131618269932)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4203001585258940)
,p_view_id=>wwv_flow_imp.id(3994369930020790)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4038331289040130)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4055680368165544)
,p_plug_name=>'Region_Cristerios_Busquedas'
,p_title=>unistr('Criterios de B\00FAsquedas')
,p_parent_plug_id=>wwv_flow_imp.id(3337306451337539)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3336460041337531)
,p_plug_name=>'Criterio'
,p_region_name=>'igCriterio'
,p_parent_plug_id=>wwv_flow_imp.id(4055680368165544)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.ID,',
'       c.DESCRIPCION,',
'       c.TIPO_PARAMETRO,',
'       c.OPERADOR,',
'       c.SENTENCIA_SQL,',
'       c.SQL_DESPLEGABLE,',
'       null numero1,',
'       null numero2,',
'       null texto,',
'       null fecha1,',
'       null fecha2,',
'       null lista,',
'       null texto_descriptivo,',
'       c.DESCRIPCION texto_descriptivo_2,',
'       c.ID Enlace',
'  from CRITERIO_BUSQUEDA c',
'  where (:P230_LISTA_ASUNTOS is null',
'         and ',
'         not exists(select 1',
'                      from apexweb.asunto_criterio_busqueda a',
'  		 		      where a.id_criterio_busqueda = c.id',
'		 		   )',
'        )',
'     or (:P230_LISTA_ASUNTOS is not null',
'         and ',
'         (not exists(select 1',
'                       from apexweb.asunto_criterio_busqueda a',
'					   where a.id_criterio_busqueda = c.id',
'				    )',
'         or',
'	      (select count(codigo_asunto)',
'             from apexweb.asunto_criterio_busqueda a',
'		     where a.id_criterio_busqueda = c.id',
'  		       and a.codigo_asunto in (:P230_LISTA_ASUNTOS)',
'	      ) = (select count(codigo)',
'                 from apexweb.asunto',
'			     where codigo in (:P230_LISTA_ASUNTOS)',
'              )',
'          )',
'         )   ',
'         '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P230_LISTA_ASUNTOS'
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
 p_id=>wwv_flow_imp.id(3759274338269934)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3759407021269935)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Descripci\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(3759451158269936)
,p_name=>'TIPO_PARAMETRO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO_PARAMETRO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Tipo Parametro'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(3759567353269937)
,p_name=>'OPERADOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERADOR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Operador'
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
 p_id=>wwv_flow_imp.id(3759667285269938)
,p_name=>'SENTENCIA_SQL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SENTENCIA_SQL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Sentencia Sql'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
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
 p_id=>wwv_flow_imp.id(3759845027269939)
,p_name=>'SQL_DESPLEGABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SQL_DESPLEGABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Sql Desplegable'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>1000
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
 p_id=>wwv_flow_imp.id(3760620349269947)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3760820387269949)
,p_name=>'NUMERO1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NUMERO1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Numero1'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3760887297269950)
,p_name=>'NUMERO2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NUMERO2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Numero2'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3760975131269951)
,p_name=>'TEXTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEXTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Texto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3761138645269952)
,p_name=>'FECHA1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Fecha1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4035636707040103)
,p_name=>'FECHA2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Fecha2'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4035675792040104)
,p_name=>'LISTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LISTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Lista'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'FUNCTION_BODY'
,p_lov_language=>'PLSQL'
,p_lov_source=>'RETURN  Busqueda_lista_criterio(4);'
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_column_comment=>'SQL_DESPLEGABLE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8288617249676343)
,p_name=>'ENLACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENLACE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Enlace'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:231:&SESSION.::&DEBUG.:231:P231_ID_CRITERIO,P231_TIPO_PARAMETRO,P231_OPERADOR,P231_TEXTO,P231_VALOR1,P231_VALOR2,P231_FECHA1,P231_FECHA2,P231_LISTA,P231_DESCRIPCION:&ID.,&TIPO_PARAMETRO.,&OPERADOR.,&TEXTO.,&NUMERO1.,&NUMERO2.,&FECHA1.,&F'
||'ECHA2.,&LISTA.,&DESCRIPCION.'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8375718590598103)
,p_name=>'TEXTO_DESCRIPTIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEXTO_DESCRIPTIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Texto Descriptivo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8375840892598104)
,p_name=>'TEXTO_DESCRIPTIVO_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEXTO_DESCRIPTIVO_2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Texto Descriptivo 2'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3759174735269933)
,p_internal_uid=>12531328512344831
,p_is_editable=>true
,p_edit_operations=>'u'
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
 p_id=>wwv_flow_imp.id(3994892589020791)
,p_interactive_grid_id=>wwv_flow_imp.id(3759174735269933)
,p_static_id=>'127671'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3995055572020791)
,p_report_id=>wwv_flow_imp.id(3994892589020791)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8771122141065614)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(8375840892598104)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8751723361058144)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3760820387269949)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8750839095058139)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3760887297269950)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8749808849058135)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3760975131269951)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8748814849058131)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3761138645269952)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8747838476058127)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4035636707040103)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4008086862020851)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3759274338269934)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4008966214020854)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3759407021269935)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>552
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4009944207020857)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3759451158269936)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4010784640020860)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3759567353269937)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4011659492020864)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3759667285269938)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4012622065020867)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3759845027269939)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4071327040313832)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4035675792040104)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8368429546475951)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(8288617249676343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8381744373598936)
,p_view_id=>wwv_flow_imp.id(3995055572020791)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(8375718590598103)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3699001116181536)
,p_plug_name=>'Criterio_1'
,p_parent_plug_id=>wwv_flow_imp.id(4055680368165544)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3337442139337540)
,p_plug_name=>'Expediente'
,p_region_name=>'st_expediente'
,p_parent_plug_id=>wwv_flow_imp.id(3334660426337513)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3337827202337544)
,p_plug_name=>'Expedientes'
,p_region_name=>'igExpediente'
,p_parent_plug_id=>wwv_flow_imp.id(3337442139337540)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return apexweb.Busqueda_expediente(nvl(:P230_LISTA_ASUNTOS,'',17'')',
'                                  ,nvl(:P230_LISTA_CRITERIOS,''5'')',
'                                  ,nvl(:P230_LISTA_CAMPOS,''5_1_15,5_2_5006'')',
'                                  );'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P230_LISTA_ASUNTOS.P230_LISTA_CRITERIOS,P230_LISTA_CAMPOS'
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
 p_id=>wwv_flow_imp.id(3337889249337545)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('No ha datos seg\00FAn criterios de b\00FAsqueda.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:30:&SESSION.:NO_CLEAR:&DEBUG.::P30_CODIGO:#CODIGO#'
,p_detail_link_text=>'<span role="img" aria-label="Gestionar Expediente" class="fa fa-edit" title="Gestionar Expediente"></span>'
,p_owner=>'FERNANDO'
,p_internal_uid=>12110043026412443
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5392486509639428)
,p_db_column_name=>unistr('Potencia de la instalaci\00F3n')
,p_display_order=>50
,p_column_identifier=>'K'
,p_column_label=>unistr('Potencia De La Instalaci\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6201969342226906)
,p_db_column_name=>'CODIGO_CHK'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'<input type="checkbox" id="SelectUnSelectall">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6202046393226907)
,p_db_column_name=>'CODIGO'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6202149140226908)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6202271680226909)
,p_db_column_name=>unistr('Direcci\00F3n del titular')
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>unistr('Direcci\00F3n Del Titular')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6202355156226910)
,p_db_column_name=>'Nombre del titular'
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>'Nombre Del Titular'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3693886955126505)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'124661'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('CODIGO_CHK:CODIGO:DESCRIPCION:Potencia de la instalaci\00F3n:')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3378905762918812)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654949482422932390)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(9655013855289932344)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9654894929055932417)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17021063163514940739)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-bottom-none'
,p_region_attributes=>'style="background-color: #AD303B; display: flex; align-items: center; height: 100%; padding-top: 10px; padding-left: 15px; padding-right: 10px; padding-bottom: 10px;"'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3337510844337541)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3335966768337526)
,p_button_name=>'Permisos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Permisos'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4038847122040136)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3335966768337526)
,p_button_name=>'Excecute'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Filtar'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-filter'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4038841122040135)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3337827202337544)
,p_button_name=>'btn_plantilla'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Genera Plantilla'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-level-down'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3684854717907309)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3685008743907310)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Guardar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4051769109165505)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3699001116181536)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'+'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4055915168165546)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3337306451337539)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Buscar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3684815903907308)
,p_name=>'P230_BUSQUEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3685008743907310)
,p_prompt=>'Guardar busqueda'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897621061932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3700434240181550)
,p_name=>'P230_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3699001116181536)
,p_prompt=>'criterio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST_ESTADO_FIRMA'
,p_lov=>'.'||wwv_flow_imp.id(3823690270455304)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3700528718181551)
,p_name=>'P230_NEW_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3699001116181536)
,p_prompt=>'lista'
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
 p_id=>wwv_flow_imp.id(3700642595181552)
,p_name=>'P230_NEW_1_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3699001116181536)
,p_prompt=>'texto'
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
 p_id=>wwv_flow_imp.id(3756242502269903)
,p_name=>'P230_LISTA_ASUNTOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3334660426337513)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3756289439269904)
,p_name=>'P230_LISTA_CRITERIOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3334660426337513)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3756381495269905)
,p_name=>'P230_LISTA_CAMPOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3334660426337513)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4038694583040134)
,p_name=>'P230_PLANTILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3337827202337544)
,p_prompt=>'Plantilla'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.descripcion a',
'      ,to_char(p.id) b',
'  from xml.plantilla p',
'  where (select count(codigo_asunto) ',
'           from apexweb.busqueda_plantilla b ',
'           where b.id_plantilla = p.id ',
'             and b.codigo_asunto in (select regexp_substr(:P230_LISTA_ASUNTOS',
'                                                         ,''[^,]+''',
'                                                         ,1',
'                                                         ,level) value',
'                                       from dual',
'                                       connect by level <= length(:P230_LISTA_ASUNTOS) - length(replace(:P230_LISTA_ASUNTOS,'',''))+ 1 ',
'                                    )',
'        ) = (select count(codigo) ',
'               from apexweb.asunto ',
'               where codigo in (select regexp_substr(:P230_LISTA_ASUNTOS',
'                                                    ,''[^,]+''',
'                                                    ,1',
'                                                    ,level) value',
'                                  from dual',
'                                  connect by level <= length(:P230_LISTA_ASUNTOS) - length(replace(:P230_LISTA_ASUNTOS,'',''))+ 1 ',
'                               )',
'            )',
'	  '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4051573727165503)
,p_name=>'P230_NEW_1_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3699001116181536)
,p_prompt=>'fecha_1'
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
 p_id=>wwv_flow_imp.id(4051663957165504)
,p_name=>'P230_NEW_1_2_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3699001116181536)
,p_prompt=>'Fecha_2'
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
 p_id=>wwv_flow_imp.id(4389338274600524)
,p_name=>'P230_LISTA_EXPEDIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3334660426337513)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5392946338639433)
,p_name=>'P230_BUSQUEDA_COD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3685008743907310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5393837212639441)
,p_name=>'P230_CONTROL_BUSCADOR_ACTIVO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3334660426337513)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17021064008477940742)
,p_name=>'P230_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17021063163514940739)
,p_prompt=>'<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Busqueda+</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4037695740040124)
,p_name=>'Guardar_Busqueda'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3684854717907309)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4037769061040125)
,p_event_id=>wwv_flow_imp.id(4037695740040124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'igUtil.selectedPKs(''igAsunto'', ''P230_LISTA_ASUNTOS'', ''Sin asunto'');',
'igUtil.selectedPKs(''igCriterio'', ''P230_LISTA_CRITERIOS'', ''Sin criterio'');',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4037863853040126)
,p_event_id=>wwv_flow_imp.id(4037695740040124)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' l_secuencia number;',
'v_NUMERO_1	NUMBER;',
'v_NUMERO_2	NUMBER;',
'v_TEXTO	VARCHAR2(1000 BYTE);',
'v_FECHA_1	DATE;',
'v_FECHA_2	DATE;',
'v_DESPLEGABLE	VARCHAR2(1000 BYTE);',
'begin',
'',
'    select S_BUSQUEDA_USUARIO.nextval into l_secuencia from dual;',
'    insert into BUSQUEDA_USUARIO (ID, DESCRIPCION, LOGIN) values (l_secuencia, :P230_BUSQUEDA, :APP_USER );',
'    insert into busqueda_usuario_permiso (ID_BUSQUEDA, LOGIN) values (l_secuencia, :APP_USER );',
'--   for i in (select :P230_LISTA_ASUNTOS as id from dual) loop',
'    --guardamos asunto',
'    for i in (SELECT REGEXP_SUBSTR(:P230_LISTA_ASUNTOS, ''[^,]+'', 1, level) AS id',
'                FROM dual',
'                CONNECT BY REGEXP_SUBSTR(:P230_LISTA_ASUNTOS, ''[^,]+'', 1, level) IS NOT NULL) loop    ',
'        insert into BUSQUEDA_USUARIO_ASUNTO (ID_BUSQUEDA, CODIGO_ASUNTO) values (l_secuencia, i.id);',
'    end loop;',
'    --for i in (select :P230_LISTA_CRITERIOS as id from dual) loop',
'    --buscamos criterios',
'    for i in (SELECT REGEXP_SUBSTR(:P230_LISTA_CRITERIOS, ''[^,]+'', 1, level) AS id',
'                 FROM dual',
'                 CONNECT BY REGEXP_SUBSTR(:P230_LISTA_CRITERIOS, ''[^,]+'', 1, level) IS NOT NULL) loop',
'      --guardamos filtros de los criterios',
'      v_NUMERO_1:='''';',
'      v_NUMERO_2:='''';',
'      v_TEXTO:='''';',
'      v_FECHA_1:='''';',
'      v_FECHA_2:='''';',
'      v_DESPLEGABLE:='''';',
'      for j in (SELECT a.id_fila',
'                      ,a.id_campo',
'                      ,a.valor',
'                  FROM TABLE(apexweb.split_ident_field_val(:P230_LISTA_CAMPOS)) a',
'                  WHERE a.id_fila = i.id) loop',
'        if j.id_campo = 1 then v_NUMERO_1:=j.valor; end if;',
'        if j.id_campo = 2 then v_NUMERO_2:=j.valor; end if;',
'        if j.id_campo = 3 then v_TEXTO:=j.valor; end if;',
'        if j.id_campo = 4 then v_FECHA_1:=to_date(j.valor,''DD/MM/YYYY''); end if;',
'        if j.id_campo = 5 then v_FECHA_2:=to_date(j.valor,''DD/MM/YYYY''); end if;',
'        if j.id_campo = 6 then v_DESPLEGABLE:=j.valor; end if;',
'      end loop;',
'        insert into BUSQUEDA_USUARIO_CRITERIO (ID_BUSQUEDA, ID_CRITERIO',
'                                              ,NUMERO_1, NUMERO_2, TEXTO, FECHA_1, FECHA_2, DESPLEGABLE) ',
'          values (l_secuencia, i.id',
'                 ,v_NUMERO_1, v_NUMERO_2, v_TEXTO, v_FECHA_1, v_FECHA_2, v_DESPLEGABLE);',
'',
'    end loop;',
'end;'))
,p_attribute_02=>'P230_BUSQUEDA,P230_LISTA_CRITERIOS,P230_LISTA_ASUNTOS,P230_LISTA_CAMPOS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4389607563600527)
,p_event_id=>wwv_flow_imp.id(4037695740040124)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3335966768337526)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4038362232040131)
,p_name=>'Cargar'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3335966768337526)
,p_triggering_element=>'R'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4038448463040132)
,p_event_id=>wwv_flow_imp.id(4038362232040131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'checkRowSelectorByID(2);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4388963418600521)
,p_name=>'Guarda_Expedientes'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4038841122040135)
,p_condition_element=>'P230_PLANTILLA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4389124269600522)
,p_event_id=>wwv_flow_imp.id(4388963418600521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('igUtil.selectedPKs(''igExpediente'', ''P230_LISTA_EXPEDIENTE'', ''Debe marcar alg\00FAn expediente'');')
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4389454174600526)
,p_event_id=>wwv_flow_imp.id(4388963418600521)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Primero debe seleccionar una plantilla de la lista.'
,p_attribute_04=>'fa-warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4389406243600525)
,p_event_id=>wwv_flow_imp.id(4388963418600521)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- genera el documento',
'declare',
'    l_descripcion varchar2(100);',
'    sRutaFichero  varchar2(100);',
'  sSql            VARCHAR2(30000);  ',
'  sExtension      VARCHAR2(4);',
' -- lpSql           PARAMLIST;',
'  sSqlAux         VARCHAR2(30000);  ',
'  nAux1			  NUMBER;',
'  nAux2			  NUMBER;',
'  bEsLiteral      BOOLEAN;',
'  sVariable       VARCHAR2(2000);',
'  sValor          VARCHAR2(20000);  ',
'  nPosicion       NUMBER;',
'  nPosicion2      NUMBER;',
'  nPosicionIni    NUMBER;',
'  clDatos         CLOB;    ',
'  clDocumentoXML  CLOB;',
'  sNombreFichero  VARCHAR2(250);  ',
' -- fFichero        CLIENT_TEXT_IO.FILE_TYPE;',
'  sTexto          VARCHAR2(30000);',
'begin',
'    select DESCRIPCION into l_descripcion from PLANTILLA where ID_DOCUMENTO = :P230_PLANTILLA;',
'  -- 1. obtiene la sentencia SQL de la plantilla',
'  select p.sentencia_sql, t.extension',
'    into sSql, sExtension',
'    from xml.plantilla p, xml.tipo_documento t',
'   where p.codigo_tipo_documento = t.codigo',
'     and p.id = :P230_PLANTILLA;',
'  ',
'  -- 2. sustituye las variables por su valor',
'  nPosicionIni := 1;  ',
'  LOOP',
'  	nPosicion := instr(sSql, '':'', nPosicionIni);  	',
'  	IF nPosicion = 0 OR nPosicion IS NULL THEN',
'  		EXIT;',
'  	END IF;  	',
'  	--Comprueba si el caracter : es un literal segun haya numero par o impar de ''',
'  	sSqlAux:=substr(sSql,1,nPosicion);',
'  	nAux1:=length(sSqlAux);',
'  	sSqlAux:=REPLACE(sSqlAux,'''''''','''');',
'  	nAux2:=length(sSqlAux);',
'  	bEsLiteral := FALSE;',
'  	IF nAux1-nAux2>0 THEN',
'  		IF (nAux1-nAux2) MOD 2 = 1 THEN',
'  			bEsLiteral := TRUE;',
'  			nPosicionIni := nPosicion + 1;',
'  		END IF;',
'  	END IF;  	',
'  	IF NOT bEsLiteral THEN',
'    	-- encuentra la variable',
'    	nPosicion2 := instr(sSql, '' '', nPosicion);',
'  	  IF nPosicion2 = 0 THEN',
'  		  nPosicion2 := length(sSql) + 1;',
'  	  END IF;',
'  	  -- obtiene la variable',
'  	  sVariable := substr(sSql, nPosicion, nPosicion2 - nPosicion);',
'      -- obtiene el valor',
' --     sValor := NAME_IN(sVariable);',
unistr('      -- si es alfanum\00E9rico a\00F1ade comillas'),
'      IF sValor is null ',
'      	then sValor := ''NULL'';',
'      ELSE',
unistr('      	-- si es una variable global el tipo es texto, a\00F1ade comillas'),
'      	IF upper(substr(sVariable, 2, 6)) = ''GLOBAL'' THEN',
'          sValor := '''''''' || sValor || '''''''';',
' --       ELSIF GET_ITEM_PROPERTY(substr(sVariable, 2), DATATYPE) = ''CHAR'' THEN',
'      	  sValor := '''''''' || sValor || '''''''';',
' --       ELSIF GET_ITEM_PROPERTY(substr(sVariable, 2), DATATYPE) = ''DATE'' or GET_ITEM_PROPERTY(substr(sVariable, 2), DATATYPE) = ''NUMBER'' THEN',
'          sValor := ''TO_CHAR(''''''||sValor||'''''')'';',
'        END IF;',
'      END IF;',
'      sSql := replace(sSql, sVariable, sValor);',
'      nPosicionIni := nPosicion + 1;',
'    END IF; ',
'  END LOOP;    ',
'  ',
'  -- 3. genera los datos',
'  IF xml.datos.genera_datos_xml(sSql, ''INFORME'', ''REGISTRO'', clDatos) = FALSE THEN',
' --   Mensaje(''GENERAR DOCUMENTO'', ''No se pudo generar los datos'');',
' null;',
'  END IF;',
'  IF nvl(dbms_lob.getlength(clDatos), 0) = 0 THEN',
' --   Mensaje(''GENERAR DOCUMENTO'', ''No se encontraron datos'');',
'  null;',
'  END IF;',
'',
'  -- 4. genera el documento XML',
'  IF xml.gestion_xml.genera_documento_xml(:P230_PLANTILLA, clDatos, clDocumentoXML) <> 0 THEN',
' --   Mensaje(''GENERAR DOCUMENTO'', ''No se pudo generar el documento'');',
'  null;',
'  END IF;',
'',
'  -- 5. obtiene un nombre de archivo',
'  sNombreFichero := l_descripcion || ''.'' || sExtension;',
'  psRutaFichero := :RutaTemp || sNombreFichero;',
'',
'	-- 6. escribe el contenido del documento en el fichero 		',
'	nPosicion := 1;	',
'	fFichero := CLIENT_TEXT_IO.FOPEN(psRutaFichero, ''w'');',
'	LOOP',
unistr('		-- en grupos de 30000 por el l\00EDmite de varchar2'),
'		sTexto := dbms_lob.substr(clDocumentoXML, 30000, nPosicion);		',
'    client_Text_IO.put(fFichero, sTexto);    ',
unistr('    Synchronize; -- extra\00F1o pero necesario'),
'		nPosicion := nPosicion + 30000;',
'		IF nPosicion >= dbms_lob.getlength(clDocumentoXML) THEN',
'			EXIT;',
'		END IF;',
'	END LOOP;',
'',
'  CLIENT_TEXT_IO.FCLOSE(fFichero);',
unistr('  Synchronize; -- extra\00F1o pero necesario'),
'  RETURN TRUE;',
'END;'))
,p_attribute_02=>'P230_LISTA_EXPEDIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6202759955226914)
,p_event_id=>wwv_flow_imp.id(4388963418600521)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6203013985226916)
,p_event_id=>wwv_flow_imp.id(4388963418600521)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("Plantilla");',
'(function() {',
'console.log("Paso 1");',
'    let selectedCodes = [];',
'    let columnIndex = null;',
'console.log("Paso 2");',
'   ',
unistr('    // // Buscar el \00EDndice de la columna que contiene "C\00F3digo"'),
'    //$("#irExpediente thead th").each(function(index) {',
'    //$("#irExpediente").find("tbody tr th").each(function(index) {',
'    //$("#irExpediente th").each(function(index) {',
'    //$("#irExpediente tbody tr:first td").each(function(index) {',
'    //$("#irExpediente tbody tr:first th").each(function(index) {',
'    $("#igExpediente").find("tbody tr").each(function() {',
'console.log("Paso 2-1");',
'        //let $rowcol = $(this);',
'        //$(this).find("td").each(function(index) {',
'        $(this).find("th").each(function(index) {',
'console.log("Paso 2-1-1");',
'        //let $checkboxcol = $rowcol.find("a[class=''a-IRR-headerLink'']");',
'            let textoCelda = $(this).text().trim().toUpperCase();',
'console.log("Paso 2-1-2");',
unistr('        //if ($checkboxcol.length && $checkboxcol.toUpperCase().includes("C\00D3DIGO")) {'),
unistr('            if (textoCelda === "C\00D3DIGO") {'),
'console.log("Paso 2-2");',
'            columnIndex = index;',
'console.log("Paso 2-3");',
'console.log("columnIndex: ", columnIndex);',
'            return false; // Salir del bucle',
'        }',
'console.log("Paso 2-5");',
'        });',
'console.log("Paso 2-6");',
'        if (columnIndex !== null) return false; // Si ya tenemos la columna, salir del bucle principal',
'console.log("Paso 2-7");',
'    });',
'console.log("Paso 2-8");',
'',
'    if (columnIndex === null) {',
'console.log("Paso 2-7");',
unistr('        console.warn("No se encontr\00F3 la columna ''C\00F3digo'' en el reporte.");'),
'console.log("Paso 2-8");',
'        return;',
'    }',
'console.log("Paso 2-9");',
'',
'    // Buscar todas las filas del IR que tengan el checkbox marcado',
'    $("#igExpediente").find("tbody tr").each(function() {',
'console.log("Paso 3");',
'        let $row = $(this);',
'console.log("Paso 4");',
'        //let $checkbox = $row.find(".chk-expediente");',
'        //let $checkbox = $row.find(".u-TC");',
'        //let $checkbox = $row.find(".u-TC input[type=''checkbox'']");',
'        let $checkbox = $row.find("input[type=''checkbox'']");',
'console.log("Paso 5");',
'',
'        //if ($checkbox.is(":checked")) {',
'        if ($checkbox.length && $checkbox.prop("checked")) {',
'console.log("Paso 6");',
unistr('            // Obtener el valor de la columna "C\00F3digo" seg\00FAn su \00EDndice'),
'            let codigo = $row.find("td").eq(columnIndex).text().trim();',
'console.log("Paso 7");',
'console.log("codigo: ", codigo);',
'            if (codigo) {',
'console.log("Paso 8");',
'                selectedCodes.push(codigo);',
'console.log("Paso 9");',
'            }',
'console.log("Paso 10");',
'        }',
'console.log("Paso 11");',
'    });',
'console.log("Paso 12");',
'',
unistr('    // Guardar la lista de c\00F3digos en el \00EDtem'),
'    apex.item("P230_LISTA_EXPEDIENTE").setValue(selectedCodes.join(","));',
'console.log("Paso 13");',
'})();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4954365377649538)
,p_name=>'Guardar cambios Asunto'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3334777063337514)
,p_condition_element_type=>'ITEM'
,p_condition_element=>'P230_CONTROL_BUSCADOR_ACTIVO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4954472476649539)
,p_event_id=>wwv_flow_imp.id(4954365377649538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let miVariable = 2;',
'console.log(miVariable);',
'',
'',
unistr('let itemDestino = "#P230_LISTA_ASUNTOS"; // Reempl\00E1zalo con el nombre real de tu item'),
'let ig$ = apex.region("igAsunto").widget(); // Cambia "mi_interactive_grid" por el Static ID de tu IG',
unistr('// Verificamos que la regi\00F3n del IG existe antes de continuar'),
'if (ig$) {',
'miVariable = 3;',
'console.log(miVariable);',
'    let view = ig$.interactiveGrid("getViews", "grid"); ',
'    let model = view.model;',
'miVariable = 4;',
'console.log(miVariable);',
'',
'    function actualizarItem() {',
'        let seleccionados = [];',
'miVariable = 5;',
'console.log(miVariable);',
'',
'        view.getSelectedRecords().forEach(function(record) {',
'miVariable = 6;',
'console.log(miVariable);',
'//            seleccionados.push(record["DESCRIPCION"]); // Reemplaza "cod" con el nombre real de la columna clave',
'//            let id = model.getValue(record, "DESCRIPCION"); // Reemplaza "COD" por el nombre real de la columna',
'////            let id = model.getValue(record, "Descripcion"); // Reemplaza "COD" por el nombre real de la columna',
'seleccionados.push(record["CODIGO"]);',
'let id = model.getValue(record, "CODIGO");',
'console.log(id);',
'            if (id) {',
'                seleccionados.push(id);',
'console.log(seleccionados);',
'            }',
'        });',
'',
'miVariable = 7;',
'console.log(miVariable);',
'',
'console.log( seleccionados.join('','') );       ',
'        // Unimos los valores seleccionados y los asignamos al item destino',
'        $(itemDestino).val(seleccionados.join('',''));',
'        //apex.item("P230_LISTA_ASUNTOS").setValue(seleccionados.join('',''));',
'console.log( $(itemDestino) );       ',
'    }',
'/*',
'miVariable = 8;',
'console.log(miVariable);',
'',
unistr('    // Manejar cambios en la selecci\00F3n de filas'),
'    view.subscribe({',
'        onSelectionChange: function() {',
'let miVariable = 9;',
'console.log(miVariable);',
'            actualizarItem();',
'        }',
'    });',
'*/',
'miVariable = 10;',
'console.log(miVariable);',
'    ',
unistr('    // Ejecutar la funci\00F3n al cargar la p\00E1gina para incluir selecciones iniciales'),
'    actualizarItem();',
'miVariable = 11;',
'console.log(miVariable);',
'',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4955511358649549)
,p_event_id=>wwv_flow_imp.id(4954365377649538)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P230_LISTA_ASUNTOS := :P230_LISTA_ASUNTOS;',
':P230_LISTA_CRITERIOS := '''';',
':P230_LISTA_CAMPOS := '''';'))
,p_attribute_02=>'P230_LISTA_ASUNTOS'
,p_attribute_03=>'P230_LISTA_ASUNTOS,P230_LISTA_CRITERIOS,P230_LISTA_CAMPOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4954883007649543)
,p_name=>'Guardar cambios Criterio'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3336460041337531)
,p_condition_element_type=>'ITEM'
,p_condition_element=>'P230_CONTROL_BUSCADOR_ACTIVO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4955037710649544)
,p_event_id=>wwv_flow_imp.id(4954883007649543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('let itemDestino = "#P230_LISTA_CRITERIOS"; // Reempl\00E1zalo con el nombre real de tu item'),
'let itemDestinoCampos = "#P230_LISTA_CAMPOS";',
'let ig$ = apex.region("igCriterio").widget(); // Cambia "mi_interactive_grid" por el Static ID de tu IG',
unistr('// Verificamos que la regi\00F3n del IG existe antes de continuar'),
'console.log("itemDestino: ",itemDestino);',
'if (ig$) {',
'    let view = ig$.interactiveGrid("getViews", "grid"); ',
'    let model = view.model;',
'    function actualizarItem() {',
'        let seleccionados = [];',
'console.log("seleccionados: ",seleccionados);',
'        let seleccionadosCampos = [];',
'        view.getSelectedRecords().forEach(function(record) {',
'            //seleccionados.push(record["DESCRIPCION"]); // Reemplaza "cod" con el nombre real de la columna clave',
'            let id = model.getValue(record, "ID"); // Reemplaza "COD" por el nombre real de la columna',
'console.log("id: ",id);',
'            let idDescripcion = model.getValue(record, "DESCRIPCION"); // Reemplaza "COD" por el nombre real de la columna',
'console.log("idDescripcion: ",idDescripcion);',
'            let idNumero1 = model.getValue(record, "NUMERO1"); // Reemplaza "COD" por el nombre real de la columna',
'            let idNumero2 = model.getValue(record, "NUMERO2"); // Reemplaza "COD" por el nombre real de la columna',
'            let idTexto = model.getValue(record, "TEXTO"); // Reemplaza "COD" por el nombre real de la columna',
'            let idFecha1 = model.getValue(record, "FECHA1"); // Reemplaza "COD" por el nombre real de la columna',
'            let idFecha2 = model.getValue(record, "FECHA2"); // Reemplaza "COD" por el nombre real de la columna',
'            let idLista = model.getValue(record, "LISTA").v; // Reemplaza "COD" por el nombre real de la columna',
'//            let id = model.getValue(record, "Descripcion"); // Reemplaza "COD" por el nombre real de la columna',
'            if (idDescripcion) {',
'console.log("seleccionados: ",seleccionados);',
'                //seleccionados.push(id+"_"+idDescripcion);',
'                seleccionados.push(id);',
'console.log("seleccionados: ",seleccionados);',
'            }',
'            if (idNumero1){',
'                seleccionadosCampos.push(id+"_1_"+idNumero1);',
'            }',
'            if (idNumero2){',
'                seleccionadosCampos.push(id+"_2_"+idNumero2);',
'            }',
'            if (idTexto){',
'                seleccionadosCampos.push(id+"_3_"+idTexto);',
'            }',
'            if (idFecha1){',
'                seleccionadosCampos.push(id+"_4_"+idFecha1);',
'            }',
'            if (idFecha2){',
'                seleccionadosCampos.push(id+"_5_"+idFecha2);',
'            }',
'            if (idLista){',
'                seleccionadosCampos.push(id+"_6_"+idLista);',
'            }',
'        });',
'        // Unimos los valores seleccionados y los asignamos al item destino',
'console.log("$(itemDestino): ",$(itemDestino));',
'        $(itemDestino).val(seleccionados.join('',''));',
'console.log("$(itemDestino): ",$(itemDestino));',
'        //apex.item("P230_LISTA_ASUNTOS").setValue(seleccionados.join('',''));',
'        $(itemDestinoCampos).val(seleccionadosCampos.join('',''));',
'    }',
unistr('    // Ejecutar la funci\00F3n al cargar la p\00E1gina para incluir selecciones iniciales'),
'    actualizarItem();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4955553174649550)
,p_event_id=>wwv_flow_imp.id(4954883007649543)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P230_LISTA_CRITERIOS := :P230_LISTA_CRITERIOS;',
':P230_LISTA_CAMPOS := :P230_LISTA_CAMPOS;'))
,p_attribute_02=>'P230_LISTA_CRITERIOS,P230_LISTA_CAMPOS'
,p_attribute_03=>'P230_LISTA_CRITERIOS,P230_LISTA_CAMPOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4955121774649545)
,p_name=>'Cambio_asunto_sel'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_LISTA_ASUNTOS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4955241850649546)
,p_event_id=>wwv_flow_imp.id(4955121774649545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3336460041337531)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5390112093639404)
,p_name=>'Buscar_expedientes'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4055915168165546)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5390316470639406)
,p_event_id=>wwv_flow_imp.id(5390112093639404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3337827202337544)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6201929140226905)
,p_event_id=>wwv_flow_imp.id(5390112093639404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_PLANTILLA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5390167872639405)
,p_event_id=>wwv_flow_imp.id(5390112093639404)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('$("#tc_pesta\00F1as .t-Tabs-link:eq(1)").trigger("click");'),
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5392615944639429)
,p_name=>'Mostrar_Mensaje_Permisos'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3337510844337541)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5392741093639430)
,p_event_id=>wwv_flow_imp.id(5392615944639429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('No est\00E1 el form busqueda+_permisos.fmb')
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5392816357639431)
,p_name=>'Carga_Nombre_Guardada'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3335966768337526)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5392907098639432)
,p_event_id=>wwv_flow_imp.id(5392816357639431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let miVariable = 2;',
'console.log(miVariable);',
'',
'',
unistr('let itemDestino = "#P230_BUSQUEDA_COD"; // Reempl\00E1zalo con el nombre real de tu item'),
'let ig$ = apex.region("igBusqueda").widget(); // Cambia "mi_interactive_grid" por el Static ID de tu IG',
unistr('// Verificamos que la regi\00F3n del IG existe antes de continuar'),
'if (ig$) {',
'miVariable = 3;',
'console.log(miVariable);',
'    let view = ig$.interactiveGrid("getViews", "grid"); ',
'    let model = view.model;',
'miVariable = 4;',
'console.log(miVariable);',
'',
'    function actualizarItem() {',
'        let seleccionados = [];',
'miVariable = 5;',
'console.log(miVariable);',
'',
'        view.getSelectedRecords().forEach(function(record) {',
'miVariable = 6;',
'console.log(miVariable);',
'//            seleccionados.push(record["DESCRIPCION"]); // Reemplaza "cod" con el nombre real de la columna clave',
'//            let id = model.getValue(record, "DESCRIPCION"); // Reemplaza "COD" por el nombre real de la columna',
'////            let id = model.getValue(record, "Descripcion"); // Reemplaza "COD" por el nombre real de la columna',
'seleccionados.push(record["ID"]);',
'let id = model.getValue(record, "ID");',
'console.log(id);',
'            if (id) {',
'                seleccionados.push(id);',
'console.log(seleccionados);',
'            }',
'        });',
'',
'miVariable = 7;',
'console.log(miVariable);',
'',
'console.log( seleccionados.join('','') );       ',
'        // Unimos los valores seleccionados y los asignamos al item destino',
'        $(itemDestino).val(seleccionados.join('',''));',
'        //apex.item("P230_LISTA_ASUNTOS").setValue(seleccionados.join('',''));',
'console.log( $(itemDestino) );       ',
'    }',
'/*',
'miVariable = 8;',
'console.log(miVariable);',
'',
unistr('    // Manejar cambios en la selecci\00F3n de filas'),
'    view.subscribe({',
'        onSelectionChange: function() {',
'let miVariable = 9;',
'console.log(miVariable);',
'            actualizarItem();',
'        }',
'    });',
'*/',
'miVariable = 10;',
'console.log(miVariable);',
'    ',
unistr('    // Ejecutar la funci\00F3n al cargar la p\00E1gina para incluir selecciones iniciales'),
'    actualizarItem();',
'miVariable = 11;',
'console.log(miVariable);',
'',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6201667929226903)
,p_name=>'Inicializar_GRIDs_Boton_Buscar'
,p_event_sequence=>99
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4038847122040136)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6201833171226904)
,p_event_id=>wwv_flow_imp.id(6201667929226903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("LIMPIAR_GRIDS");',
'(function seleccionarRowSelector() {',
'    var igAsunto$ = apex.region("igAsunto").widget().interactiveGrid("getViews", "grid");',
'    var igCritrio$ = apex.region("igCriterio").widget().interactiveGrid("getViews", "grid");',
'',
unistr('    // \D83D\DD39 Buscar solo en el Interactive Grid "igAsunto"'),
'    igAsunto$.view$.find("tr").each(function() {',
'        var row$ = $(this);',
unistr('        // \D83D\DD39 Simular clic en el Row Selector de esta fila'),
'        if (row$.hasClass("is-selected")) { ',
'console.log("Antes de simular");',
'            row$.find(".a-GV-selHeader").trigger("click");',
'            //row$.find(".a-GV-rowSelector").trigger("click");',
'console.log("Despues de simular");',
'        }',
'    });',
'',
'setTimeout(function() {',
unistr('    // \D83D\DD39 Buscar solo en el Interactive Grid "igCritrio"'),
'    igCritrio$.view$.find("tr").each(function() {',
'        var row$ = $(this);',
unistr('        // \D83D\DD39 Simular clic en el Row Selector de esta fila'),
'        if (row$.hasClass("is-selected")) { ',
'console.log("Antes de simular");',
'            row$.find(".a-GV-selHeader").trigger("click");',
'        }',
'    });',
unistr('}, 500); // Ajusta el tiempo seg\00FAn la velocidad de carga del IG'),
'})();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5393069790639434)
,p_name=>'Cargar_Criterios_Busqueda'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4038847122040136)
,p_condition_element=>'P230_BUSQUEDA_COD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5393296668639436)
,p_event_id=>wwv_flow_imp.id(5393069790639434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P230_LISTA_ASUNTOS := '''';',
':P230_LISTA_CRITERIOS := '''';',
':P230_LISTA_CAMPOS := '''';',
'--rellenamos los asuntos',
'for i in (select CODIGO_ASUNTO',
'            from apexweb.busqueda_usuario_asunto',
'            --where ID_BUSQUEDA = :P230_BUSQUEDA_COD',
'            where ID_BUSQUEDA in (SELECT REGEXP_SUBSTR(:P230_BUSQUEDA_COD, ''[^,]+'', 1, level) AS parts',
'                                    FROM dual',
'                                    CONNECT BY REGEXP_SUBSTR(:P230_BUSQUEDA_COD, ''[^,]+'', 1, level) IS NOT NULL',
'                                 )',
'         ) loop',
'  :P230_LISTA_ASUNTOS := :P230_LISTA_ASUNTOS ||'',''|| i.CODIGO_ASUNTO;',
'end loop;',
'--rellenamos los criterios',
'for i in (select ID_CRITERIO',
'            from apexweb.busqueda_usuario_criterio',
'            --where ID_BUSQUEDA = :P230_BUSQUEDA_COD',
'            where ID_BUSQUEDA in (SELECT REGEXP_SUBSTR(:P230_BUSQUEDA_COD, ''[^,]+'', 1, level) AS parts',
'                                    FROM dual',
'                                    CONNECT BY REGEXP_SUBSTR(:P230_BUSQUEDA_COD, ''[^,]+'', 1, level) IS NOT NULL',
'                                 )',
'         ) loop',
'  :P230_LISTA_CRITERIOS := :P230_LISTA_CRITERIOS ||'',''|| i.ID_CRITERIO;',
'end loop;',
'--rellenamos los campos',
'for i in (select ID_CRITERIO, NUMERO_1, NUMERO_2, TEXTO, FECHA_1, FECHA_2, DESPLEGABLE',
'            from apexweb.busqueda_usuario_criterio',
'            --where ID_BUSQUEDA = :P230_BUSQUEDA_COD',
'            where ID_BUSQUEDA in (SELECT REGEXP_SUBSTR(:P230_BUSQUEDA_COD, ''[^,]+'', 1, level) AS parts',
'                                    FROM dual',
'                                    CONNECT BY REGEXP_SUBSTR(:P230_BUSQUEDA_COD, ''[^,]+'', 1, level) IS NOT NULL',
'                                 )',
'         ) loop',
'  --:P230_LISTA_CAMPOS := :P230_LISTA_CAMPOS',
'  --                     ||'',''||nvl2(i.NUMERO_1   ,i.ID_CRITERIO||''_''||i.NUMERO_1,'''')',
'  --                     ||'',''||nvl2(i.NUMERO_2   ,i.ID_CRITERIO||''_''||i.NUMERO_2,'''')',
'  --                     ||'',''||nvl2(i.TEXTO      ,i.ID_CRITERIO||''_''||i.TEXTO,'''')',
'  --                     ||'',''||nvl2(i.FECHA_1    ,i.ID_CRITERIO||''_''||i.FECHA_1,'''')',
'  --                     ||'',''||nvl2(i.FECHA_2    ,i.ID_CRITERIO||''_''||i.FECHA_2,'''')',
'  --                     ||'',''||nvl2(i.DESPLEGABLE,i.ID_CRITERIO||''_''||i.DESPLEGABLE,'''');',
'  if i.NUMERO_1 is not null then',
'    :P230_LISTA_CAMPOS := :P230_LISTA_CAMPOS ||'',''|| i.ID_CRITERIO||''_1_''||i.NUMERO_1;',
'  end if;  ',
'  if i.NUMERO_2 is not null then',
'    :P230_LISTA_CAMPOS := :P230_LISTA_CAMPOS ||'',''|| i.ID_CRITERIO||''_2_''||i.NUMERO_2;',
'  end if;  ',
'  if i.TEXTO is not null then',
'    :P230_LISTA_CAMPOS := :P230_LISTA_CAMPOS ||'',''|| i.ID_CRITERIO||''_3_''||i.TEXTO;',
'  end if;  ',
'  if i.FECHA_1 is not null then',
'    :P230_LISTA_CAMPOS := :P230_LISTA_CAMPOS ||'',''|| i.ID_CRITERIO||''_4_''||i.FECHA_1;',
'  end if;  ',
'  if i.FECHA_2 is not null then',
'    :P230_LISTA_CAMPOS := :P230_LISTA_CAMPOS ||'',''|| i.ID_CRITERIO||''_5_''||i.FECHA_2;',
'  end if;  ',
'  if i.DESPLEGABLE is not null then',
'    :P230_LISTA_CAMPOS := :P230_LISTA_CAMPOS ||'',''|| i.ID_CRITERIO||''_6_''||i.DESPLEGABLE;',
'  end if;  ',
'end loop;',
'',
'--:P230_CONTROL_BUSCADOR_ACTIVO := 1;',
''))
,p_attribute_02=>'P230_BUSQUEDA_COD'
,p_attribute_03=>'P230_LISTA_ASUNTOS,P230_LISTA_CRITERIOS,P230_LISTA_CAMPOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5394128824639444)
,p_event_id=>wwv_flow_imp.id(5393069790639434)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_CONTROL_BUSCADOR_ACTIVO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5393545323639438)
,p_event_id=>wwv_flow_imp.id(5393069790639434)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("ASUNTOS");',
'(function seleccionarRowSelector() {',
'//  setTimeout(function() {',
'    var listaCodigos = $v("P230_LISTA_ASUNTOS").split(","); // Convierte la cadena en un array',
'    var ig$ = apex.region("igAsunto").widget().interactiveGrid("getViews", "grid");',
'    var model = ig$.model;',
'',
unistr('    // \D83D\DD39 Buscar solo en el Interactive Grid "igAsunto"'),
'    ig$.view$.find(".a-GV-row").each(function() {',
'        var row$ = $(this);',
'        var rowId = row$.attr("data-id"); // ID de la fila en el modelo',
'        var record = model.getRecord(rowId); // Obtener datos de la fila',
'',
'        if (!record) return; // Evita errores si no encuentra el registro',
'',
'        var valores = Object.values(record); // Convertimos a array',
'console.log("valores encontrado:", valores);',
unistr('        var codigo = valores[0]; // Ajusta este \00EDndice seg\00FAn la posici\00F3n de "CODIGO"'),
unistr('console.log("C\00F3digo encontrado:", codigo);'),
'',
'        if (listaCodigos.includes(codigo)) {',
unistr('            // \D83D\DD39 Simular clic en el Row Selector de esta fila'),
'            //row$.find(".a-GV-rowSelector").trigger("click");',
'console.log("Antes de simular");',
'            row$.find(".a-GV-selHeader").trigger("click");',
'console.log("Despues de simular");',
'        }',
'    });',
unistr('//}, 500); // Ajusta el tiempo seg\00FAn la velocidad de carga del IG'),
'',
'})();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5394258235639446)
,p_event_id=>wwv_flow_imp.id(5393069790639434)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3336460041337531)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5394009757639443)
,p_event_id=>wwv_flow_imp.id(5393069790639434)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("CRITRIOS");',
'(function seleccionarRowSelector() {',
unistr('    // Obtener los datos de los \00EDtems'),
'    var listaCriterios = $v("P230_LISTA_CRITERIOS").split(",");',
'    var listaCampos = $v("P230_LISTA_CAMPOS").split(",");',
'    // Obtener la referencia del Interactive Grid',
'    var region = apex.region("igCriterio");',
'region.refresh();    ',
'    var grid = region.widget().interactiveGrid("getViews", "grid");',
'    var model = grid.model;',
'    // Damos tiempo al Grid para cargarse',
'    setTimeout(function() {',
'console.log("Paso 3-2");',
'console.log("cantidad de lineas: ", grid.view$.find("tr.a-GV-row[data-id]").length);',
'    // Iterar sobre las filas del Interactive Grid',
'    grid.view$.find("tr.a-GV-row[data-id]").each(function() {',
'console.log("Paso 4");',
'        var row$ = $(this);',
'console.log("row$: ", row$);',
'console.log("Paso 5");',
'        var rowId = row$.attr("data-id"); // ID de la fila en el modelo',
'console.log("rowId: ", rowId);',
unistr('        if (!rowId) return; // Evita errores si data-id no est\00E1 definido'),
'console.log("rowId: ", rowId);        ',
'console.log("Paso 6");',
'        var record = model.getRecord(rowId); // Obtener datos de la filafila',
'console.log("Paso 7");',
'        if (!record) return; // Evita errores si no encuentra el registro',
'console.log("record: ", record);        ',
'console.log("Paso 8");',
'        var valores = Object.values(record); // Convertimos a array',
'console.log("Paso 9");',
'console.log("valores encontrado:", valores);',
unistr('        var codigo = valores[0]; // Ajusta este \00EDndice seg\00FAn la posici\00F3n de "CODIGO"'),
'console.log("Paso 10");',
unistr('console.log("C\00F3digo encontrado:", codigo);'),
'        if (listaCriterios.includes(codigo)) {',
'console.log("Paso 11");',
unistr('            // \D83D\DD39 Simular clic en el Row Selector de esta fila'),
'console.log("Antes de simular");',
'            row$.find(".a-GV-selHeader").trigger("click");',
'console.log("Paso 12");',
'console.log("Despues de simular");',
'        }',
'console.log("Paso 13");',
'    });',
'console.log("Paso 14");',
'',
'// Iterar sobre los datos de P230_LISTA_CAMPOS y asignarlos en las celdas correspondientes',
'listaCampos.forEach(function(entry) {',
'console.log("Paso 14-1");',
'    var partes = entry.split("_");',
'console.log("Paso 14-2");',
'    if (partes.length === 3) {',
'console.log("Paso 14-3");',
'        var valorFila = partes[0];',
'        var valorColumna = partes[1];',
'        var valorDato = partes[2];',
'console.log("Paso 14-4");',
'',
'        // Buscar la fila correspondiente en el IG',
'        grid.model.forEach(function(record) {',
'console.log("Paso 14-5");',
'console.log("valorFila:", valorFila);',
'console.log("record[0]:", record[0]);',
'            if (record[0] === valorFila) { // Ajusta ''CODIGO'' al identificador correcto de la fila',
'console.log("Paso 14-6");',
'console.log("valorColumna:", valorColumna);',
'console.log("valorDato:", valorDato);',
'                if (valorColumna == 1) { grid.model.setValue(record, ''NUMERO1'', valorDato); }',
'                if (valorColumna == 2) { grid.model.setValue(record, ''NUMERO2'', valorDato); }',
'                if (valorColumna == 3) { grid.model.setValue(record, ''TEXTO'', valorDato); }',
'                if (valorColumna == 4) { grid.model.setValue(record, ''FECHA1'', valorDato); }',
'                if (valorColumna == 5) { grid.model.setValue(record, ''FECHA2'', valorDato); }',
'                if (valorColumna == 6) { grid.model.setValue(record, ''LISTA'', valorDato); }',
'console.log("Paso 14-7");',
'            }',
'        });',
'    }',
'});',
'',
'console.log("Paso 14-8");',
unistr('}, 500); // Ajusta el tiempo seg\00FAn la velocidad de carga del IG'),
'console.log("Paso 14-9");',
'//});',
'console.log("Paso 15");',
'})();',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5393850980639442)
,p_event_id=>wwv_flow_imp.id(5393069790639434)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_CONTROL_BUSCADOR_ACTIVO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5394428153639447)
,p_name=>'Inicializar_GRIDs_Page_Load'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5394478156639448)
,p_event_id=>wwv_flow_imp.id(5394428153639447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("LIMPIAR_GRIDS");',
'(function seleccionarRowSelector() {',
'  setTimeout(function() {',
'    var igAsunto$ = apex.region("igAsunto").widget().interactiveGrid("getViews", "grid");',
'    var igCritrio$ = apex.region("igCriterio").widget().interactiveGrid("getViews", "grid");',
'',
unistr('    // \D83D\DD39 Buscar solo en el Interactive Grid "igAsunto"'),
'    igAsunto$.view$.find("tr").each(function() {',
'        var row$ = $(this);',
unistr('        // \D83D\DD39 Simular clic en el Row Selector de esta fila'),
'        if (row$.hasClass("is-selected")) { ',
'console.log("Antes de simular");',
'            row$.find(".a-GV-selHeader").trigger("click");',
'            //row$.find(".a-GV-rowSelector").trigger("click");',
'console.log("Despues de simular");',
'        }',
'    });',
'',
unistr('    // \D83D\DD39 Buscar solo en el Interactive Grid "igCritrio"'),
'    igCritrio$.view$.find("tr").each(function() {',
'        var row$ = $(this);',
unistr('        // \D83D\DD39 Simular clic en el Row Selector de esta fila'),
'        if (row$.hasClass("is-selected")) { ',
'console.log("Antes de simular");',
'            row$.find(".a-GV-selHeader").trigger("click");',
'        }',
'    });',
unistr('}, 500); // Ajusta el tiempo seg\00FAn la velocidad de carga del IG'),
'})();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6202540824226911)
,p_name=>'SelectAll'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#SelectUnSelectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#igExpediente'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6202586737226912)
,p_event_id=>wwv_flow_imp.id(6202540824226911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $("#SelectUnSelectall").is(":checked") ) {',
'    $("#igExpediente input[type=checkbox][name=f01]").prop("checked",true);',
'} else {',
'    $("#igExpediente input[type=checkbox][name=f01]").prop("checked",false);',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6203156998226918)
,p_name=>'Genera_plantilla'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_LISTA_EXPEDIENTE'
,p_condition_element=>'P230_LISTA_EXPEDIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6203297823226919)
,p_event_id=>wwv_flow_imp.id(6203156998226918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El proceso de generar plantilla no esta implementado en este momento.'
,p_attribute_02=>unistr('Informaci\00F3n')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6203352039226920)
,p_event_id=>wwv_flow_imp.id(6203156998226918)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe de marcar alg\00FAn expediente.')
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8377076389598117)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>'apex_debug.info(''************DEBUG***************** TEST SAMU'' );'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17149230166673015
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3685170486907312)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Recupera_busqueda'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  nCriterio  number;',
'  nCampo     number;',
'BEGIN ',
'',
'  -- inicializa variables    ',
'  :ITM_LISTA_ASUNTOS := null;',
'  :ITM_LISTA_CRITERIOS := null;',
'  :ITM_LISTA_CAMPOS := null;',
' -- Var.tbCriterios.delete;',
'  ',
'  -- recupera los asuntos',
'  for cAsunto in (select codigo_asunto ',
'                    from busqueda_usuario_asunto ',
'                   where id_busqueda = :ITM_ID_BUSQUEDA',
'                   order by codigo_asunto) loop',
unistr('    -- a\00F1ade el asunto a la lista'),
'    if :ITM_LISTA_ASUNTOS is not null then',
'    	:ITM_LISTA_ASUNTOS := :ITM_LISTA_ASUNTOS || '','';',
'    end if;',
'    :ITM_LISTA_ASUNTOS := :ITM_LISTA_ASUNTOS || to_char(cAsunto.codigo_asunto);',
'  end loop;',
'  ',
'  -- recupera los criterios',
'  for cCriterios in (select id_criterio, numero_1, numero_2, texto, fecha_1, fecha_2, desplegable ',
'                       from busqueda_usuario_criterio ',
'                      where id_busqueda = :ITM_ID_BUSQUEDA ',
'                      order by id_criterio) loop',
unistr('    -- a\00F1ade el criterio a la lista                      	'),
'    if :ITM_LISTA_CRITERIOS is not null then',
'    	:ITM_LISTA_CRITERIOS := :ITM_LISTA_CRITERIOS || '','';',
'    end if;',
'    :ITM_LISTA_CRITERIOS := :ITM_LISTA_CRITERIOS || to_char(cCriterios.id_criterio);',
'    -- guarda el criterio',
'   /* nCriterio := nvl(Var.tbCriterios.last, 0) + 1;',
'    Var.tbCriterios(nCriterio).nIdCriterio := cCriterios.id_criterio;',
'    Var.tbCriterios(nCriterio).nNumero1 := cCriterios.numero_1;',
'    Var.tbCriterios(nCriterio).nNumero2 := cCriterios.numero_2;',
'    Var.tbCriterios(nCriterio).sTexto:= cCriterios.texto;',
'    Var.tbCriterios(nCriterio).dtFecha1:= cCriterios.fecha_1;',
'    Var.tbCriterios(nCriterio).dtFecha2 := cCriterios.fecha_2;',
'    Var.tbCriterios(nCriterio).sDesplegable := cCriterios.desplegable;   */',
'    null; ',
'  end loop;',
'  ',
'  -- llena la tabla con los asuntos seleccionados',
'  :CAS_ASUNTOS_SELECCIONADOS := 1;  ',
'  --Llena_Asuntos_Marcados;',
'',
'  -- llena la tabla con los criterios seleccionados',
'  --Actualiza_Criterios;',
'  :CAS_CRITERIOS_SELECCIONADOS := 1;  ',
'  --Llena_Criterios_Marcados;',
'',
'  -- recupera los campos',
'  for cCampos in (select c.id, c.etiqueta, c.sentencia_sql, c.ancho',
'                    from busqueda_usuario_campo b, campo_busqueda c',
'                   where b.id_campo_busqueda = c.id',
'                     and b.id_busqueda = :ITM_ID_BUSQUEDA ',
'                   order by id_busqueda, numero_orden) loop',
unistr('    -- a\00F1ade el campo a la lista                      	'),
'    if :ITM_LISTA_CAMPOS is not null then',
'    	:ITM_LISTA_CAMPOS := :ITM_LISTA_CAMPOS || '','';',
'    end if;',
'    :ITM_LISTA_CAMPOS := :ITM_LISTA_CAMPOS || to_char(cCampos.id);',
'    -- guarda el campo',
' /*   nCampo := nvl(Var.tbCampos.last, 0) + 1;',
'    Var.tbCampos(nCampo).nId := cCampos.id;',
'    Var.tbCampos(nCampo).sEtiqueta := cCampos.etiqueta;',
'    Var.tbCampos(nCampo).sSentenciaSql := cCampos.sentencia_sql;',
'    Var.tbCampos(nCampo).nAncho:= cCampos.ancho;*/',
'  end loop;         ',
unistr('  -- muestra los campos de la b\00FAsqueda'),
'  --Muestra_Campos;',
'  ',
unistr('  -- copia el nombre de la b\00FAsqueda por si se quiere modificar  '),
'  :ITM_NUEVA_BUSQUEDA := :ITM_DESCRIPCION_BUSQUEDA;',
'  ',
unistr('  -- vuelve al bloque de b\00FAsquedas almacenadas                  '),
'  --go_block(''BLQ_BUSQUEDA_ALMACENADA'');                 ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>12457324263982210
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3760128097269942)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3334777063337514)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('Asunto: Guardar Datos de Cuadr\00EDcula Interactiva')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>12532281874344840
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3760745608269948)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3336460041337531)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('Criterio: Guardar Datos de Cuadr\00EDcula Interactiva')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>12532899385344846
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4038198144040129)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3335966768337526)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('B\00FAsqueda almacenada: Guardar Datos de Cuadr\00EDcula Interactiva')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>12810351921115027
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6203105154226917)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crear_Plantilla'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  --Comprobamos primero si hay algo seleccionado',
'  if APEX_APPLICATION.G_F01.COUNT > 0 then',
'    null;',
'    :P230_LISTA_EXPEDIENTE := 1;',
'    for i in 1..APEX_APPLICATION.G_F01.COUNT loop',
'      null;',
'    end loop;',
'  else  ',
'    apex_error.add_error(p_message          => ''Debe seleccionar algun Expediente.''',
'                        ,p_display_location => apex_error.c_inline_in_notification',
'                        );',
'    :P230_LISTA_EXPEDIENTE := 0;',
'  end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4038841122040135)
,p_process_when_type=>'NEVER'
,p_internal_uid=>14975258931301815
);
wwv_flow_imp.component_end;
end;
/
