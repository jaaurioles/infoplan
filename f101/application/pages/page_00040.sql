prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_name=>unistr('B\00FAsqueda Avanzada')
,p_alias=>unistr('B\00DASQUEDA-AVANZADA')
,p_step_title=>unistr('B\00FAsqueda Avanzada')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8445813275341556)
,p_plug_name=>'Expediente'
,p_title=>'Expediente'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8447224221341570)
,p_plug_name=>'Actuacion'
,p_title=>unistr('Actuaci\00F3n')
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
 p_id=>wwv_flow_imp.id(8447307906341571)
,p_plug_name=>'Expedientes'
,p_title=>'Expedientes'
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
 p_id=>wwv_flow_imp.id(8447912889341577)
,p_plug_name=>'Expedientes'
,p_parent_plug_id=>wwv_flow_imp.id(8447307906341571)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    distinct e.codigo,',
'    APEXWEB.consulta.Obtiene_Fecha_Inicio_Exp(e.codigo) AS Fecha,',
'    e.cif_nif,',
'    tablascomunes.consulta.obtiene_nombre_administrado(e.cif_nif) AS Nombre,',
'    e.descripcion,',
' /*   ''<a href="f?p='' || :APP_ID || '':30:'' || :APP_SESSION || '':''|| :REQUEST ||''NO_CLEAR''||'':NO::P30_CODIGO:'' || TO_CHAR(e.codigo) ||  ''"''',
'|| '' title="Mant. expediente">''',
'|| ''<span class="fa fa-edit" aria-hidden="true" style="font-size: 20px;"></span>''',
'|| ''</a>'' AS mantenimiento, */',
'',
'apex_item.checkbox(p_idx   => 1',
'                         , p_value => e.codigo) CAS_MARCAR',
'FROM expediente e',
'',
'JOIN asunto a ON a.codigo = e.codigo_asunto  ',
'LEFT JOIN expediente_observaciones eo ON eo.codigo_expediente = e.codigo',
'LEFT JOIN actuacion ac ON ac.codigo_expediente = e.codigo',
'LEFT JOIN actuacion ac2 ON ac2.codigo_expediente = ac.codigo_expediente',
'left join tablascomunes.administrados ad on ad.cif_nif = e.cif_nif',
'WHERE 1 = 1',
'',
unistr('  -- Expediente C\00F3digo'),
'  AND (:P40_ITM_CODIGO_EXPEDIENTE IS NULL OR e.codigo LIKE :P40_ITM_CODIGO_EXPEDIENTE)',
'  -- Fecha de inicio',
'  AND (',
'    (:P40_ITM_DESDE_FECHA_INICIO IS NULL AND :P40_ITM_HASTA_FECHA_INICIO IS NULL)',
'    OR (:P40_ITM_DESDE_FECHA_INICIO IS NOT NULL and :P40_ITM_HASTA_FECHA_INICIO is null AND APEXWEB.consulta.obtiene_fecha_inicio_exp(e.codigo) >= TO_DATE(:P40_ITM_DESDE_FECHA_INICIO, ''dd/mm/yyyy''))',
'    OR (:P40_ITM_HASTA_FECHA_INICIO IS NOT NULL and :P40_ITM_DESDE_FECHA_INICIO is null AND APEXWEB.consulta.obtiene_fecha_inicio_exp(e.codigo) <= TO_DATE(:P40_ITM_HASTA_FECHA_INICIO, ''dd/mm/yyyy''))',
'    OR (APEXWEB.consulta.obtiene_fecha_inicio_exp(e.codigo) BETWEEN TO_DATE(:P40_ITM_DESDE_FECHA_INICIO, ''dd/mm/yyyy'') AND TO_DATE(:P40_ITM_HASTA_FECHA_INICIO, ''dd/mm/yyyy''))',
'    ',
'  )',
'  -- Asunto',
'  AND (:P40_ITM_DESCRIPCION_ASUNTO IS NULL OR e.codigo_asunto = :P40_ITM_DESCRIPCION_ASUNTO)',
'  -- Unidad Organizativa ',
'  AND (:P40_ITM_DESCRIPCION_UNIDAD_ORG IS NULL OR a.id_unidad_organizativa = :P40_ITM_DESCRIPCION_UNIDAD_ORG)',
unistr('  -- Descripci\00F3n'),
unistr('  AND (:P40_ITM_DESCRIPCION IS NULL OR TRANSLATE(UPPER(e.descripcion), ''\00C1\00C9\00CD\00D3\00DA'', ''AEIOU'') LIKE ''%'' || TRANSLATE(upper(:P40_ITM_DESCRIPCION), ''\00C1\00C9\00CD\00D3\00DA'', ''AEIOU'') || ''%'')'),
'  -- Observaciones',
unistr('  AND (:P40_ITM_OBSERVACIONES IS NULL OR EXISTS(SELECT 1 FROM APEXWEB.expediente_observaciones eo WHERE eo.codigo_expediente = e.codigo AND TRANSLATE(UPPER(eo.observaciones), ''\00C1\00C9\00CD\00D3\00DA'', ''AEIOU'') LIKE ''%'' || TRANSLATE(upper(:P40_ITM_OBSERVACIONES), ''\00C1\00C9\00CD')
||unistr('\00D3\00DA'', ''AEIOU'') || ''%''))'),
'  -- CIF/NIF',
'  AND (:P40_ITM_CIF_NIF IS NULL OR UPPER(e.cif_nif) LIKE :P40_ITM_CIF_NIF)',
'  -- Nombre Administrado',
'  AND (:P40_ITM_NOMBRE_ADMINISTRADO IS NULL OR (',
unistr('    TRANSLATE(UPPER(tablascomunes.consulta.obtiene_nombre_administrado(e.cif_nif, APEXWEB.consulta.obtiene_fecha_inicio_exp(e.codigo))), ''\00C1\00C9\00CD\00D3\00DA'', ''AEIOU'') LIKE ''%'' || TRANSLATE(upper(:P40_ITM_NOMBRE_ADMINISTRADO), ''\00C1\00C9\00CD\00D3\00DA'', ''AEIOU'') ||''%'' '),
unistr('    OR EXISTS (SELECT 1 FROM APEXWEB.expediente_observaciones o WHERE o.codigo_expediente = e.codigo AND TRANSLATE(UPPER(o.observaciones), ''\00C1\00C9\00CD\00D3\00DA'', ''AEIOU'') LIKE ''%'' || TRANSLATE(''TITULAR: '' || upper(:P40_ITM_NOMBRE_ADMINISTRADO), ''\00C1\00C9\00CD\00D3\00DA'', ''AEIOU'')||')
||'''%'')',
'  ))',
'  -- Provincia',
' AND (:P40_ITM_CODIGO_PROVINCIA IS NULL OR ad.codigoprovincia = :P40_ITM_CODIGO_PROVINCIA)',
'  -- Municipio',
'  AND (:P40_ITM_DESCRIPCION_MUNICIPIO IS NULL OR ad.codigomunicipio = :P40_ITM_DESCRIPCION_MUNICIPIO)',
'  ',
unistr('  -- actuaci\00F3n del expediente'),
'  AND (:P40_ITM_DESCRIPCION_TRAMITE IS NULL OR ac.id_tramite = :P40_ITM_DESCRIPCION_TRAMITE)',
'  and (:P40_ITM_USUARIO IS NULL OR ac.login = :P40_ITM_USUARIO)',
'',
'  AND (',
'    (:P40_ITM_DESDE_FECHA_TRAMITE IS NULL AND :P40_ITM_HASTA_FECHA_TRAMITE IS NULL)',
'    OR (:P40_ITM_DESDE_FECHA_TRAMITE IS NOT NULL AND :P40_ITM_HASTA_FECHA_TRAMITE IS NULL AND ac.fecha >= TO_DATE(:P40_ITM_DESDE_FECHA_TRAMITE, ''dd/mm/yyyy''))',
'    OR (:P40_ITM_HASTA_FECHA_TRAMITE IS NOT NULL AND :P40_ITM_DESDE_FECHA_TRAMITE IS NULL AND ac.fecha <= TO_DATE(:P40_ITM_HASTA_FECHA_TRAMITE, ''dd/mm/yyyy''))',
'    OR (ac.fecha BETWEEN TO_DATE(:P40_ITM_DESDE_FECHA_TRAMITE, ''dd/mm/yyyy'') AND TO_DATE(:P40_ITM_HASTA_FECHA_TRAMITE, ''dd/mm/yyyy''))',
'    ',
')',
'',
'',
'    ',
unistr('   -- \00FAltimo tr\00E1mite del expediente'),
'  and ( :P40_CAS_ULTIMA_ACTUACION = 0 or ( :P40_CAS_ULTIMA_ACTUACION = 1 and not exists (select 1 from apexweb.actuacion ac2 ',
'         where ac2.codigo_expediente = ac.codigo_expediente and (ac2.fecha > ac.fecha or',
'                     (ac2.fecha = ac.fecha and ac2.id > ac.id))))',
'        )',
'      ',
'  ',
'ORDER BY e.codigo;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P40_ITM_CODIGO_EXPEDIENTE,P40_ITM_DESCRIPCION_TRAMITE,P40_ITM_DESCRIPCION_ASUNTO,P40_ITM_DESDE_FECHA_TRAMITE,P40_ITM_DESCRIPCION_UNIDAD_ORG,P40_ITM_HASTA_FECHA_TRAMITE,P40_ITM_DESDE_FECHA_INICIO,P40_ITM_USUARIO,P40_ITM_HASTA_FECHA_INICIO,P40_CAS_ULTI'
||'MA_ACTUACION,P40_ITM_DESCRIPCION,P40_ITM_OBSERVACIONES,P40_ITM_CIF_NIF,P40_ITM_NOMBRE_ADMINISTRADO,P40_ITM_DESCRIPCION_PROVINCIA,P40_ITM_DESCRIPCION_MUNICIPIO,P40_ITM_ID_UNIDAD_ORGANIZATIVA,P40_ITM_CODIGO_PROVINCIA'
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
 p_id=>wwv_flow_imp.id(8448025698341578)
,p_max_row_count=>'1000000'
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
,p_owner=>'ALEXANDRA'
,p_internal_uid=>17220179475416476
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8448090128341579)
,p_db_column_name=>'CODIGO'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8449320620341591)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'M'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8449385619341592)
,p_db_column_name=>'CIF_NIF'
,p_display_order=>30
,p_column_identifier=>'N'
,p_column_label=>'Cif Nif'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8449525713341593)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'O'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8449555554341594)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'P'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3989592150952852)
,p_db_column_name=>'CAS_MARCAR'
,p_display_order=>70
,p_column_identifier=>'S'
,p_column_label=>'&nbsp;'
,p_alternative_label=>'&nbsp;'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8646562349582098)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'83307'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO:FECHA:CIF_NIF:NOMBRE:DESCRIPCION:CAS_MARCAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16996841831394780147)
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
 p_id=>wwv_flow_imp.id(316847479342161)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(8447224221341570)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9654896273772932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3988876792952845)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(8447224221341570)
,p_button_name=>'Limpiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>unistr('Limpiar b\00FAsqueda')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3989444531952850)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8447912889341577)
,p_button_name=>'btn_excel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Generar excel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-file-excel-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4498264097068004)
,p_branch_name=>'Go To Page 40'
,p_branch_action=>'f?p=&APP_ID.:40:&SESSION.:APPLICATION_PROCESS=descargar_excel:&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8448747850341579)
,p_name=>'P40_ITM_DESCRIPCION_TRAMITE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8447224221341570)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Tr\00E1mite')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select codigo||'' ''||descripcion , id',
'  from apexweb.tramite',
'where codigo_asunto = :P40_ITM_DESCRIPCION_ASUNTO',
'	  '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P40_ITM_DESCRIPCION_ASUNTO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8448832401341580)
,p_name=>'P40_ITM_DESDE_FECHA_TRAMITE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8447224221341570)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desde'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8448942912341581)
,p_name=>'P40_ITM_HASTA_FECHA_TRAMITE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8447224221341570)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8449016651341582)
,p_name=>'P40_ITM_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8447224221341570)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LST_USUARIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select login , LOGIN||'' ''||UPPER(NOMBRE)||'' ''||UPPER(APELLIDO1)||'' ''||UPPER(APELLIDO2) AS nombre_usuario',
'  from tablascomunes.usuario',
'where fecha_baja is null ',
'order by login',
'	  '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8449122049341583)
,p_name=>'P40_CAS_ULTIMA_ACTUACION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8447224221341570)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>unistr('\00DAltima actuaci\00F3n')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8452038952341580)
,p_name=>'P40_ITM_CODIGO_EXPEDIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('C\00F3digo')
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
 p_id=>wwv_flow_imp.id(8452110109341581)
,p_name=>'P40_ITM_DESCRIPCION_ASUNTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Asunto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select  codigo||''-'' ||descripcion, codigo from asunto'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8452337089341583)
,p_name=>'P40_ITM_DESCRIPCION_UNIDAD_ORG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unidad Organizativa'
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
 p_id=>wwv_flow_imp.id(8452388011341584)
,p_name=>'P40_ITM_DESDE_FECHA_INICIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Iniciado Desde'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8452476725341585)
,p_name=>'P40_ITM_HASTA_FECHA_INICIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8452619856341586)
,p_name=>'P40_ITM_DESCRIPCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_prompt=>unistr('Naturaleza/Denominaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8452771839341587)
,p_name=>'P40_ITM_OBSERVACIONES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_prompt=>'Observaciones'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8452859851341588)
,p_name=>'P40_ITM_CIF_NIF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_prompt=>'CIF/NIF'
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
 p_id=>wwv_flow_imp.id(8452967625341589)
,p_name=>'P40_ITM_NOMBRE_ADMINISTRADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
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
 p_id=>wwv_flow_imp.id(8453007284341590)
,p_name=>'P40_ITM_DESCRIPCION_PROVINCIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Provincia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LST_PROVINCIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(codigoprovincia) a',
'      ,to_char(codigoprovincia)||'' ''||provincia b',
'  from TABLASCOMUNES.PROVINCIAS ',
'  where codigoprovincia > 0',
'  order by provincia'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Selecciona  provincia-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8453128698341591)
,p_name=>'P40_ITM_DESCRIPCION_MUNICIPIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Municipio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select municipio, codigomunicipio   from tablascomunes.municipios',
'where 1=1 ',
'    and codigoprovincia = :P40_ITM_DESCRIPCION_PROVINCIA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Selecciona  municipio-'
,p_lov_cascade_parent_items=>'P40_ITM_DESCRIPCION_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8456191293341622)
,p_name=>'P40_ITM_ID_UNIDAD_ORGANIZATIVA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8456349016341623)
,p_name=>'P40_ITM_CODIGO_PROVINCIA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(8445813275341556)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P40_ITM_CODIGO_PROVINCIA'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16996841987886780146)
,p_name=>'P40_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16996841831394780147)
,p_prompt=>unistr('<b style="color: #FCC215; font-weight: bold; font-size: 18px;">B\00FAsqueda avanzada</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(328595838342193)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(316847479342161)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(329058370342193)
,p_event_id=>wwv_flow_imp.id(328595838342193)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8447912889341577)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(327167344342187)
,p_name=>'ON_CHANGE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_ITM_DESCRIPCION_PROVINCIA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(328152054342193)
,p_event_id=>wwv_flow_imp.id(327167344342187)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'refresh_municipios'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_ITM_DESCRIPCION_MUNICIPIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3988598704952842)
,p_name=>'change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_ITM_DESCRIPCION_ASUNTO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3989319979952849)
,p_event_id=>wwv_flow_imp.id(3988598704952842)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_ITM_DESCRIPCION_UNIDAD_ORG'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	 select to_char(a.id_unidad_organizativa) ',
'     from apexweb.asunto a',
'    where a.codigo = :P40_ITM_DESCRIPCION_ASUNTO ',
''))
,p_attribute_07=>'P40_ITM_DESCRIPCION_ASUNTO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3989022796952846)
,p_name=>'Limpiar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3988876792952845)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3989081012952847)
,p_event_id=>wwv_flow_imp.id(3989022796952846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'clear'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_ITM_DESCRIPCION_TRAMITE,P40_ITM_CODIGO_EXPEDIENTE,P40_ITM_DESDE_FECHA_TRAMITE,P40_ITM_DESCRIPCION_ASUNTO,P40_ITM_HASTA_FECHA_TRAMITE,P40_ITM_DESCRIPCION_UNIDAD_ORG,P40_ITM_USUARIO,P40_ITM_DESDE_FECHA_INICIO,P40_CAS_ULTIMA_ACTUACION,P40_ITM_HASTA_'
||'FECHA_INICIO,P40_ITM_DESCRIPCION,P40_ITM_OBSERVACIONES,P40_ITM_CIF_NIF,P40_ITM_NOMBRE_ADMINISTRADO,P40_ITM_DESCRIPCION_PROVINCIA,P40_ITM_DESCRIPCION_MUNICIPIO,P40_ITM_ID_UNIDAD_ORGANIZATIVA,P40_ITM_CODIGO_PROVINCIA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3989176329952848)
,p_event_id=>wwv_flow_imp.id(3989022796952846)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8447912889341577)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4498167644068003)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'descargar_excel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    --',
'    l_context apex_exec.t_context; ',
'    l_export  apex_data_export.t_export;',
'    --',
'    v_file_name    VARCHAR2(255);',
'    v_query        VARCHAR2(32767);',
'    x_message      VARCHAR2(2500);',
'    X_SET_O        VARCHAR2(255);',
'    X_SET_D        VARCHAR2(255);',
'    l_values VARCHAR2(2000); ',
'     l_value  VARCHAR2(255);',
'',
'    --',
'    e_error exception;',
'    --',
'BEGIN',
'    lrpg_add_log(0, ''--iniciando descargar excel--'');',
unistr('-- Iteramos sobre los valores de la colecci\00F3n'),
'    FOR i IN 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'        l_value := APEX_APPLICATION.G_F01(i);',
'        ',
'        -- Agregamos cada valor entre comillas simples',
'        l_values := l_values || '''''''' || l_value || '''''','';',
'    END LOOP;',
'    ',
unistr('    -- Elimina la \00FAltima coma'),
'    l_values := RTRIM(l_values, '','');',
' ',
'    SELECT to_char(''descargar_expedientes''||''_''|| sysdate||',
'           ''.xlsx'')',
'      INTO v_file_name',
'    FROM DUAL;',
'    --',
' ',
'    x_set_o := ''WE8ISO8859P1'';',
'    x_set_d := ''UTF8'';',
'    --',
'lrpg_add_log(1, ''nombre: ''|| v_file_name);',
'-- generar query para que decsargue en excel lo que devuelve',
' v_query := ''SELECT  ',
'    distinct e.codigo,',
'    APEXWEB.consulta.Obtiene_Fecha_Inicio_Exp(e.codigo) AS Fecha,',
'    e.cif_nif,',
'    tablascomunes.consulta.obtiene_nombre_administrado(e.cif_nif) AS Nombre,',
'    e.descripcion',
'   ',
'FROM expediente e',
'WHERE 1 = 1',
'and e.codigo IN ('' || l_values  || '') ',
'  ',
'ORDER BY e.codigo'';',
'',
' ',
' lrpg_add_log(100,l_values );',
' ',
'',
'lrpg_add_log(2, ''query creada!! inicio descarga'');',
'',
'    --',
'    l_context := apex_exec.open_query_context(',
'        p_location    => apex_exec.c_location_local_db,',
'        p_sql_query   => v_query',
'        );',
'',
'    l_export := apex_data_export.export (',
'        p_context   => l_context,',
'        p_format    => apex_data_export.c_format_xlsx,',
'        p_file_name => v_file_name,',
'        p_csv_separator =>''|'');',
'',
'    lrpg_add_log(1, ''fin de la descarga: ''|| l_context);',
'',
'    apex_exec.close( l_context );',
'    ',
'',
'    apex_data_export.download( p_export => l_export );',
'',
'',
'EXCEPTION',
'    WHEN e_error THEN  ',
'   ',
'        apex_exec.close( l_context );',
'',
'        APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE :=''<style>.t-Alert--page.t-Alert--success{background-color: #ff4444;color: #ffffff;}.t-Alert--defaultIcons.t-Alert--success .t-Alert-icon .t-Icon:before {content: "\e017";}</style><span style="color: w'
||'hite;"> '' || x_message || ''</span>'';',
'    when others THEN        ',
'        apex_exec.close( l_context );',
'        x_message := ''Error: ''||sqlerrm;',
'         lrpg_add_log(-1, x_message);',
'        APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE :=''<style>.t-Alert--page.t-Alert--success{background-color: #ff4444;color: #ffffff;}.t-Alert--defaultIcons.t-Alert--success .t-Alert-icon .t-Icon:before {content: "\e017";}</style><span style="color: w'
||'hite;"> '' || x_message || ''</span>'';',
'        raise;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3989444531952850)
,p_internal_uid=>13270321421142901
);
wwv_flow_imp.component_end;
end;
/
