prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_name=>'Expediente'
,p_alias=>'EXPEDIENTE'
,p_step_title=>'Expediente'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Espera a que el documento se cargue completamente',
'$(document).ready(function() {',
'    // Selecciona las notificaciones de Oracle APEX (pueden ser de tipo "success", "error", "info", "warning")',
'    setTimeout(function() {',
'        $(".t-Alert").each(function() {',
unistr('            // Establece un temporizador para cada notificaci\00F3n'),
'            var notification = $(this);',
unistr('            // Despu\00E9s de 5 segundos, oculta la notificaci\00F3n'),
'            setTimeout(function() {',
unistr('                notification.fadeOut(); // Hace desaparecer la notificaci\00F3n suavemente'),
'            }, 5000); // 5000 ms = 5 segundos',
'        });',
'    }, 0);',
'});',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.actions.add([{',
'    name:"descargar",',
'    action:function(event,element, args){',
'',
'    apex.item("P30_ID_AUX_DOCU").setValue(args.idDocu);',
'    //apex.item("P32_ID_AUX_P").setValue(args.idPlantilla);',
'    apex.event.trigger(document,"action-descargar");',
'',
'    }',
'}]);',
'apex.actions.add([{',
'    name:"delete",',
'    action:function(event,element, args){',
'',
'    apex.item("P30_ID_AUX_DOCU").setValue(args.idDocu);',
'    apex.item("P30_ID_AUX_VERSION").setValue(args.idVersion);',
'    apex.event.trigger(document,"action-delete");',
'',
'    }',
'}]);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Button  { /*cuadraditos */',
'    margin-top: 15px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14247109746200674)
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
 p_id=>wwv_flow_imp.id(14247266373200675)
,p_plug_name=>'Expe1'
,p_parent_plug_id=>wwv_flow_imp.id(14247109746200674)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14247898678200682)
,p_plug_name=>'Expe2_tabs'
,p_region_name=>'datos_observaciones'
,p_parent_plug_id=>wwv_flow_imp.id(14247109746200674)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(9654952021211932389)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14248427722200687)
,p_plug_name=>'Datos del expediente'
,p_title=>'Datos del expediente y observaciones (&P30_CONTADOR_OBS.)'
,p_parent_plug_id=>wwv_flow_imp.id(14247898678200682)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14250304989200706)
,p_plug_name=>'Observaciones'
,p_parent_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       CODIGO_EXPEDIENTE,',
'       fecha_hora,',
'       LOGIN_USUARIO,',
'       OBSERVACIONES',
'  from EXPEDIENTE_OBSERVACIONES',
'  where codigo_expediente = :P30_CODIGO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_CODIGO'
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
 p_id=>wwv_flow_imp.id(12600458966085773)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP,31:P31_CODIGO_EXPEDIENTE,P31_FECHA_HORA:#CODIGO_EXPEDIENTE#,#FECHA_HORA#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ALEXANDRA'
,p_internal_uid=>21372612743160671
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12600517585085774)
,p_db_column_name=>'CODIGO_EXPEDIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Expediente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12600767840085776)
,p_db_column_name=>'LOGIN_USUARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Login'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12600879939085777)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12807673309741754)
,p_db_column_name=>'FECHA_HORA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12800665604420288)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'101185'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO_EXPEDIENTE:LOGIN_USUARIO:OBSERVACIONES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14248552021200688)
,p_plug_name=>'Actuaciones'
,p_title=>'Actuaciones (&P30_CONTADOR_ACTS.)'
,p_parent_plug_id=>wwv_flow_imp.id(14247898678200682)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P30_CODIGO'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14251321647200716)
,p_plug_name=>'Actuaciones'
,p_parent_plug_id=>wwv_flow_imp.id(14248552021200688)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       a.FECHA itm_fecha,',
'       --a.FECHA_HORA_REGISTRO,',
'       a.CODIGO_EXPEDIENTE,',
'       a.LOGIN as itm_login,',
'       a.LOGIN_USUARIO_DESTINO as itm_login_usuario_destino,',
unistr('       --''<span id="seleccionar_tabla_datos" class="fa fa-share-square fa-rotate-180" aria-hidden="true" title="Ir a notificaci\00F3n sede" style="cursor:pointer";></span>'' as btn_seleccionar_tabla_datos, -- redirije segun el tramite a un formulario u ot')
||'ro',
'    CASE ',
unistr('        WHEN t.id = 31 THEN ''<span id="seleccionar_tabla_datos" class="fa fa-share-square fa-rotate-180" aria-hidden="true" title="Ir a notificaci\00F3n sede" style="cursor:pointer;"></span>'''),
'        ELSE NULL',
'    END AS btn_seleccionar_tabla_datos,',
'      -- a.OBSERVACIONES,',
'       trim(trim(''.'' from trim(apexweb.consulta.obtiene_otros_datos_actuacion(a.id) || ''. '' || a.observaciones))) as itm_otros_datos,',
'       --a.TIPO_ENVIO_DOCUMENTOS',
'      -- '' '' btn_seleccionar_tabla_datos,',
'       t.codigo||''-''|| t.descripcion as itm_tramite',
'  from ACTUACION a',
'  left join expediente e on e.codigo = a.codigo_expediente',
'  left join tramite t on t.id = a.id_tramite',
'  WHERE a.CODIGO_EXPEDIENTE = :P30_CODIGO',
'',
'  order by a.fecha desc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_CODIGO'
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
 p_id=>wwv_flow_imp.id(14251423512200717)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP,:P32_ID:#ID#'
,p_detail_link_text=>unistr('<span role="img" aria-label="Datos Actuaci\00F3n" class="fa fa-edit" title="Datos Actuaci\00F3n"></span>')
,p_owner=>'AMARTINEZPE'
,p_internal_uid=>23023577289275615
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14251578309200718)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14251810103200721)
,p_db_column_name=>'CODIGO_EXPEDIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Codigo Expediente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3986970611952826)
,p_db_column_name=>'ITM_FECHA'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3987095626952827)
,p_db_column_name=>'ITM_LOGIN'
,p_display_order=>60
,p_column_identifier=>'O'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3987181802952828)
,p_db_column_name=>'ITM_LOGIN_USUARIO_DESTINO'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'Destino'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3987408625952830)
,p_db_column_name=>'ITM_OTROS_DATOS'
,p_display_order=>90
,p_column_identifier=>'R'
,p_column_label=>'Datos adicionales'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3987543992952831)
,p_db_column_name=>'ITM_TRAMITE'
,p_display_order=>100
,p_column_identifier=>'S'
,p_column_label=>unistr('Tr\00E1mite')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3987633417952832)
,p_db_column_name=>'BTN_SELECCIONAR_TABLA_DATOS'
,p_display_order=>110
,p_column_identifier=>'T'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::P73_ID_ACTUACION,P73_EXPEDIENTE_CODIGO,P73_EXP_IDUNIDADORGANIZATIVA,P73_GITM_TELEFONO_NOTIFICACION,P73_GITM_CORREO_ELEC_NOTIFICACION,P73_GITM_NOTIFICACION_ELECTRONICA,P73_ID_ACTUACION_1:#ID#,#CODIGO_EXPEDIENTE#,&P3'
||'0_ITM_ID_UNIDAD_ORGANIZATIVA.,&P30_ITM_TELEFONO_NOTIFICACION.,&P30_ITM_CORREO_ELEC_NOTIFICACION.,&P30_ITM_NOTIFICACION_ELECTRONICA_D.,#ID#'
,p_column_linktext=>'#BTN_SELECCIONAR_TABLA_DATOS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14755435687607935)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'42573'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ITM_FECHA:ITM_LOGIN:ITM_TRAMITE:ITM_OTROS_DATOS:BTN_SELECCIONAR_TABLA_DATOS:ITM_LOGIN_USUARIO_DESTINO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14248642347200689)
,p_plug_name=>'Documentos'
,p_title=>'Documentos (&P30_CONTADOR_DOCS.)'
,p_parent_plug_id=>wwv_flow_imp.id(14247898678200682)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P30_CODIGO'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6044992680722614)
,p_plug_name=>'documentos_region'
,p_parent_plug_id=>wwv_flow_imp.id(14248642347200689)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_region_attributes=>'style="height: 300px ;  overflow: scroll;"'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14747209821606878)
,p_plug_name=>'Documentos'
,p_parent_plug_id=>wwv_flow_imp.id(6044992680722614)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct',
'    -- LIENZO 1 DOCUMENTO',
'    DECODE(de.origen_documento, 1, ''A'', 2, ''E'', 3, ''S'', 4, ''X'', 5, ''R'', 6, ''F'', 7, ''C'') as O,',
'    nvl2(de.referencia, 1, 0) as documento_electronico,',
'    de.nombre_documento,',
'    ''<span id="btn_descarga_documento"  aria-label="Descarga documento" class="fa fa-cloud-download btn-descargar" title="Descargar documento" style="cursor:pointer";></span>'' as descarga_documento,',
'    ''<span id="btn_sube_documento_existente"  aria-label="Sube documento existente" class="fa fa-cloud-arrow-up btn-sube_documento" aria-hidden="true" title="Sube documento"></span>'' as BTN_SUBIR_DOCUMENTO_EXISTENTE,',
'    ''<span id="btn_eliminar_documento" aria-label="Elimina documento" class="fa fa-trash-o btn_elimina_docu" aria-hidden="true" data-id-docu="'' || de.id_documento || ''" ''||'' data-id-version="'' || de.version || ''" title="Eliminar Documento"></span>'' a'
||'s elimina_documento,',
'',
'    -- LIENZO 2 DOCUMENTO',
'    de.login as itm_login,',
'    de.fecha_modificacion as ITM_FECHA_MODIFICACION,',
'    ((select to_char(a.fecha, ''dd/mm/yy '') from apexweb.actuacion where id = de.id_actuacion) || t.descripcion) ',
'    AS ITM_DESCRIPCION_TRAMITE,',
'    ''<input type="checkbox" name="CAS_FILTRO_ACTUACION" value="''||de.id_actuacion||''" /> '' AS cas_filtro_actuacion,',
unistr('    ''<span id="btn_editar_act" aria-label="Editar" class="fa fa-edit"  aria-hidden="true" title="Editar actuaci\00F3n"></span>'' as BTN_SELECCIONAR_TRAMITE,'),
'    --t.id as BTN_SELECCIONAR_TRAMITE,',
'',
'    ''<input type="checkbox" name="CAS_HAY_FICHERO" value="''||0||''" /> '' AS CAS_HAY_FICHERO,',
'    case when de.origen_documento <= 2 then apexweb.consulta.obtiene_estado_firma(de.id_documento, de.version) else null end AS ITM_ESTADO_PORTAFIRMAS,',
'    decode(nvl(case when de.origen_documento <= 2 then apexweb.consulta.obtiene_estado_firma(de.id_documento, de.version) else null end, 0), 2, ''green'', 3, ''green'', 4, ''red'') AS ITM_ESTADO_PORTAFIRMAS_COLOR,',
'    case when de.origen_documento <= 2 then apexweb.consulta.consulta_estado_notificacion(de.id_documento, de.version) else null end as ITM_ESTADO_NOTIFICACION,',
'    decode(nvl(case when de.origen_documento <= 2 then apexweb.consulta.consulta_estado_notificacion(de.id_documento, de.version) else null end, 0), 0, ''red'', 3, ''green'', 4, ''red'') as ITM_ESTADO_NOTIFICACION_COLOR,',
'    o.observaciones as ITM_OBSERVACIONES,',
'    ''<span id="BTN_EDITOR_OBSERVACIONES" aria-label="Editar observaciones" class="fa fa-edit" aria-hidden="true" title="Editar observaciones"></span>'' as BTN_EDITOR_OBSERVACIONES,',
'    --apexweb.consulta.obtiene_carpeta(o.id_tipo_documento_expediente) as ITM_CARPETA,',
'    --apexweb.consulta.obtiene_subcarpeta(o.id_tipo_documento_expediente, o.id_subtipo_documento_exp) as ITM_SUBCARPETA,',
'     apex_item.checkbox2(p_idx   => 1',
'                         , p_value => d.ID) Cas_zip,',
'',
'    ',
'    ---para mandarlas por parametro',
'    db.id id_blob,',
'    de.codigo_expediente,',
'    de.origen_documento,',
'    de.id_actuacion ,',
'    de.id_documento,',
'    de.version',
'    --',
'FROM apexweb.v_documento_expediente de',
'left JOIN apexweb.tramite t ON de.id_tramite = t.codigo',
'left JOIN apexweb.documento d ON de.id_documento = d.id',
'left JOIN apexweb.documento_observaciones o ON de.id_documento = o.id_documento',
'inner join apexweb.documento_version dv ON de.id_documento = dv.id',
'left JOIN apexweb.actuacion a ON de.id_actuacion = a.id',
'left JOIN apexweb.documento_blob db on db.id = dv.id_blob ',
'',
'WHERE de.codigo_expediente = :P30_CODIGO',
'--AND de.id_actuacion IS NOT NULL ',
'AND de.id_documento IS NOT NULL',
'and de.version is not null',
'--AND NVL(de.id_documento, de.referencia) = o.id_documento',
'--and (:CAS_FILTRO_ACTUACION is null or de.id_actuacion = :CAS_FILTRO_ACTUACION)',
'',
'AND ((:P30_VERSION =1 AND de.version = de.ultima_version) OR (:P30_VERSION = 2 ))',
'',
'ORDER BY de.id_documento DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_CODIGO,P30_VERSION'
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
 p_id=>wwv_flow_imp.id(14747315636606879)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AMARTINEZPE'
,p_internal_uid=>23519469413681777
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13135600442871485)
,p_db_column_name=>'NOMBRE_DOCUMENTO'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Nombre Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13135853521871488)
,p_db_column_name=>'ITM_LOGIN'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13136001494871489)
,p_db_column_name=>'ITM_FECHA_MODIFICACION'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13136017558871490)
,p_db_column_name=>'ITM_DESCRIPCION_TRAMITE'
,p_display_order=>80
,p_column_identifier=>'L'
,p_column_label=>unistr('Actuaci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13638206240080149)
,p_db_column_name=>'ITM_ESTADO_PORTAFIRMAS'
,p_display_order=>130
,p_column_identifier=>'T'
,p_column_label=>'P'
,p_column_html_expression=>'<span style="color: #ITM_ESTADO_PORTAFIRMAS_COLOR#">#ITM_ESTADO_PORTAFIRMAS#</span>'
,p_column_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131:P131_PAG_ORIGEN,P131_ID_DOCUMENTO,P131_VERSION,P131_EXP_CODIGO:30,#ID_DOCUMENTO#,#VERSION#,#CODIGO_EXPEDIENTE##VERSION#,&P30_CODIGO.'
,p_column_linktext=>'#ITM_ESTADO_PORTAFIRMAS#'
,p_column_link_attr=>unistr('style="color: #ITM_ESTADO_PORTAFIRMAS_COLOR#" title="Env\00EDo Portafirmas"')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(3823690270455304)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3698028078181526)
,p_db_column_name=>'ITM_ESTADO_PORTAFIRMAS_COLOR'
,p_display_order=>140
,p_column_identifier=>'AC'
,p_column_label=>'Itm Estado Portafirmas Color'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3697940841181525)
,p_db_column_name=>'ITM_ESTADO_NOTIFICACION'
,p_display_order=>150
,p_column_identifier=>'AB'
,p_column_label=>'N'
,p_column_html_expression=>'<span style="color: #ITM_ESTADO_NOTIFICACION_COLOR#">#ITM_ESTADO_NOTIFICACION#</span>'
,p_column_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73:P73_ID_DOCUMENTO,P73_ID_ACTUACION:#ID_DOCUMENTO#,#ID_ACTUACION#'
,p_column_linktext=>'#ITM_ESTADO_NOTIFICACION#'
,p_column_link_attr=>unistr('style="color: #ITM_ESTADO_NOTIFICACION_COLOR#" title="Env\00EDo Notificaci\00F3n Sede"')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(3820732437449785)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3698089789181527)
,p_db_column_name=>'ITM_ESTADO_NOTIFICACION_COLOR'
,p_display_order=>160
,p_column_identifier=>'AD'
,p_column_label=>'Itm Estado Notificacion Color'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13638317109080151)
,p_db_column_name=>'ITM_OBSERVACIONES'
,p_display_order=>170
,p_column_identifier=>'V'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13638436282080152)
,p_db_column_name=>'BTN_EDITOR_OBSERVACIONES'
,p_display_order=>180
,p_column_identifier=>'W'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::P35_ID_DOCUMENTO,P35_OBSERVACIONES,P35_ORIGEN:#ID_DOCUMENTO#,#ITM_OBSERVACIONES#,#ORIGEN_DOCUMENTO#'
,p_column_linktext=>'#BTN_EDITOR_OBSERVACIONES#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3859974622170211)
,p_db_column_name=>'DESCARGA_DOCUMENTO'
,p_display_order=>280
,p_column_identifier=>'AK'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.::P172_ID_BLOB:#ID_BLOB#'
,p_column_linktext=>'#DESCARGA_DOCUMENTO#'
,p_column_link_attr=>'style="color: black"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3860368767170215)
,p_db_column_name=>'ID_DOCUMENTO'
,p_display_order=>290
,p_column_identifier=>'AN'
,p_column_label=>'Id Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3860816059170219)
,p_db_column_name=>'ID_BLOB'
,p_display_order=>300
,p_column_identifier=>'AP'
,p_column_label=>'Id Blob'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3985331821952809)
,p_db_column_name=>'CAS_ZIP'
,p_display_order=>310
,p_column_identifier=>'AQ'
,p_column_label=>'Cas Zip'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3986854249952825)
,p_db_column_name=>'BTN_SELECCIONAR_TRAMITE'
,p_display_order=>320
,p_column_identifier=>'AR'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::P32_ID_TRAMITE,P32_ID:#ITM_DESCRIPCION_TRAMITE#,#ID_ACTUACION#'
,p_column_linktext=>'#BTN_SELECCIONAR_TRAMITE#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4840067570343405)
,p_db_column_name=>'ORIGEN_DOCUMENTO'
,p_display_order=>330
,p_column_identifier=>'AS'
,p_column_label=>'Origen Documento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4843803066343442)
,p_db_column_name=>'DOCUMENTO_ELECTRONICO'
,p_display_order=>340
,p_column_identifier=>'AT'
,p_column_label=>'DE'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5153407148205310)
,p_db_column_name=>'CAS_FILTRO_ACTUACION'
,p_display_order=>350
,p_column_identifier=>'AU'
,p_column_label=>'F'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5153458758205311)
,p_db_column_name=>'BTN_SUBIR_DOCUMENTO_EXISTENTE'
,p_display_order=>360
,p_column_identifier=>'AV'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::P50_CODIGO_EXPEDIENTE,P50_CODIGO_PROCEDIMIENTO,P50_ID_DOCUMENTO,P50_DOC_VERSION,P50_EXPEDIENTE_CERRADO,P50_PERMISO_ELECTRONICO:&P30_CODIGO.,&P30_PROCEDIMIENTO.,#ID_DOCUMENTO#,#VERSION#,&P30_ITM_EXPEDIENTE_CERRADO.,'
||'&P30_ITM_PERMISO_ELECTRONICO.#VERSION#'
,p_column_linktext=>'#BTN_SUBIR_DOCUMENTO_EXISTENTE#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5153593838205312)
,p_db_column_name=>'CAS_HAY_FICHERO'
,p_display_order=>370
,p_column_identifier=>'AW'
,p_column_label=>'Hay Fichero'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5154512260205321)
,p_db_column_name=>'CODIGO_EXPEDIENTE'
,p_display_order=>380
,p_column_identifier=>'AX'
,p_column_label=>'Codigo Expediente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5155471348205331)
,p_db_column_name=>'ID_ACTUACION'
,p_display_order=>410
,p_column_identifier=>'BA'
,p_column_label=>'Id Actuacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5155691657205333)
,p_db_column_name=>'VERSION'
,p_display_order=>420
,p_column_identifier=>'BC'
,p_column_label=>'Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6044223878722606)
,p_db_column_name=>'ELIMINA_DOCUMENTO'
,p_display_order=>440
,p_column_identifier=>'BE'
,p_column_label=>'&nbsp;'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7322743182732722)
,p_db_column_name=>'O'
,p_display_order=>450
,p_column_identifier=>'BF'
,p_column_label=>'O'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14798038019491156)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'42999'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'O:DOCUMENTO_ELECTRONICO:NOMBRE_DOCUMENTO:DESCARGA_DOCUMENTO:BTN_SUBIR_DOCUMENTO_EXISTENTE:ITM_LOGIN:ITM_FECHA_MODIFICACION:ITM_DESCRIPCION_TRAMITE:ITM_ESTADO_PORTAFIRMAS:ITM_ESTADO_NOTIFICACION:ITM_OBSERVACIONES:BTN_EDITOR_OBSERVACIONES:VERSION:CAS_H'
||'AY_FICHERO:CAS_FILTRO_ACTUACION:CAS_ZIP:BTN_SELECCIONAR_TRAMITE:ELIMINA_DOCUMENTO:'
,p_sort_column_1=>'ID_DOCUMENTO'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14750449730606910)
,p_plug_name=>'buttons'
,p_parent_plug_id=>wwv_flow_imp.id(14248642347200689)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654986254053932377)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14248754489200690)
,p_plug_name=>unistr('Expediente electr\00F3nico')
,p_title=>unistr('Expediente electr\00F3nico (&P30_VAR_ELECT.)')
,p_parent_plug_id=>wwv_flow_imp.id(14247898678200682)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P30_CODIGO'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14832447797631574)
,p_plug_name=>unistr('Expediente electr\00F3nico')
,p_parent_plug_id=>wwv_flow_imp.id(14248754489200690)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16996837892593649170)
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
 p_id=>wwv_flow_imp.id(2683999571734792)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_button_name=>'BTN_IMPRIMIR_ETIQUETA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Imprimir etiqueta'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Muestra una pantalla con todos los documentos generados durante la tramitaci\00F3n del expediente.'),
''))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2705038110734826)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14750449730606910)
,p_button_name=>'download_zip'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'ZIP'
,p_button_condition=>'P30_VERSION'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-folder-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2703822179734825)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14750449730606910)
,p_button_name=>'Imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Imprimir'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2684392133734792)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_button_name=>'BTN_NOTIFICACION_DIR_TITULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Not.'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>unistr('title ="Notificaci\00F3n del titular"')
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_button_comment=>'Boton utilizado para mostrar el formulario de mantenimiento del dato de un campo.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2704209530734825)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14750449730606910)
,p_button_name=>'Carpetas'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Carpetas'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-folder'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_button_comment=>unistr('esta funcionalidad no se incluir\00E1')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2704552932734825)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(14750449730606910)
,p_button_name=>'Excel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Excel'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-excel-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2684808628734793)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_button_name=>'btn_mant_administrado'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Mant. Administrado'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::P101_CIF_NIF:&P30_ITM_CIF_NIF.'
,p_icon_css_classes=>'fa-caret-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_button_comment=>'Boton utilizado para mostrar el formulario de mantenimiento del dato de un campo.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2691268409734802)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_button_name=>'BTN_MANT_REPRESENTANTE_LEGAL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Mant. Representante Legal'
,p_icon_css_classes=>'fa-caret-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_button_comment=>'Boton utilizado para mostrar el formulario de mantenimiento del dato de un campo.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4842977990343434)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(14747209821606878)
,p_button_name=>'REDIRECT_1'
,p_button_static_id=>'REDIRECT_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Redirect 1'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::P34_CODIGO_EXPEDIENTE,P34_CODIGO_ESTADO,P34_EDITABLE:&P30_CODIGO.,1,0'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2685227329734794)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_button_name=>'btn_mant_titular'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Mant. Titular'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:30:P101_CIF_NIF:&P30_ITM_NIF_REPRESENTANTE_LEGAL.'
,p_icon_css_classes=>'fa-caret-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_button_comment=>'Boton utilizado para mostrar el formulario de mantenimiento del dato de un campo.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4843100732343435)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(14747209821606878)
,p_button_name=>'REDIRECT_2'
,p_button_static_id=>'REDIRECT_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Redirect 2'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::P50_CODIGO_EXPEDIENTE,P50_EXPEDIENTE_ELECTRONICO,P50_CODIGO_PROCEDIMIENTO,P50_EXPEDIENTE_CERRADO,P50_PERMISO_ELECTRONICO:&P30_CODIGO.,&P30_EXPEDIENTE_ELECTRONICO.,&P30_PROCEDIMIENTO.,&P30_ITM_EXPEDIENTE_CERRADO.,&P30_ITM_PERMISO_ELECTRONICO.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2691723494734802)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_button_name=>'BTN_MANT_ESTABLECIMIENTO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Mant. Establecimiento'
,p_icon_css_classes=>'fa-caret-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_button_comment=>'Boton utilizado para mostrar el formulario de mantenimiento del dato de un campo.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2685565717734794)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_button_name=>'BTN_NATURALEZA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Naturaleza'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-edit'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_button_comment=>'Boton utilizado para mostrar el editor de un campo.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2686000615734794)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_button_name=>'datos_especificos'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>unistr('Datos Espec\00EDficos')
,p_button_redirect_url=>'f?p=&APP_ID.:250:&SESSION.::&DEBUG.:RP,:P250_CODIGO_EXPEDIENTE,P250_CODIGO_EXPEDIENTE_ASUNTO:&P30_CODIGO.,&P30_EXP_CODIGO_ASUNTO.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Este bot\00F3n abrir\00E1 una pantalla para introducir, consultar o modificar datos complementarios del expediente. Estos datos son espec\00EDficos del asunto al que corresponda el expediente. Esta pantalla con sus datos que complementan el expediente se define ')
||'en la pantalla asunto.',
''))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2692144433734802)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_button_name=>'BTN_MANT_NOTIFICACION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>unistr('Mant. Notificaci\00F3n')
,p_icon_css_classes=>'fa-caret-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_button_comment=>'Boton utilizado para mostrar el formulario de mantenimiento del dato de un campo.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2689828424734801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14832447797631574)
,p_button_name=>'btn_candado'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Btn Candado'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-lock'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2692520289734803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_button_name=>'btn_guardar'
,p_button_static_id=>'crear_guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9654896273772932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-save'
,p_button_comment=>'Crea un nuevo expediente o guarda los datos de uno existente'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2689372479734800)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14832447797631574)
,p_button_name=>'btn_descargar_indice'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Descargar Indice'
,p_button_position=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2692886327734803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_button_name=>'btn_delete'
,p_button_static_id=>'borrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9654896273772932416)
,p_button_image_alt=>'Borrar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P30_CODIGO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_button_comment=>'Crea un nuevo expediente o guarda los datos de uno existente'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2690163450734801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14832447797631574)
,p_button_name=>'btn_crear_expediente_elect'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Crear Expediente'
,p_button_position=>'HELP'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2698427856734817)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14250304989200706)
,p_button_name=>'btn_add_obs'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('A\00F1adir observaci\00F3n')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.:CREAR:&DEBUG.:RR,31:P31_CODIGO_EXPEDIENTE:&P30_CODIGO.'
,p_button_condition=>'P30_CODIGO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2702562300734823)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14251321647200716)
,p_button_name=>'BTN_NUEVA_ACTUACION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Nueva Actuacion'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP,:P32_CODIGO_EXPEDIENTE,P32_LOGIN:&P30_CODIGO.,'
,p_icon_css_classes=>'fa-plus'
,p_button_comment=>'Boton utilizado para mostrar el formulario de mantenimiento del dato de un campo.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2712137352734840)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14747209821606878)
,p_button_name=>'BTN_NUEVO_DOCUMENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Nuevo Documento'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2722667369734859)
,p_branch_name=>'Go To Page 30'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.:NO_CLEAR:&DEBUG.::P30_CODIGO:&P30_CODIGO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2692520289734803)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2723092721734860)
,p_branch_name=>'Go To Page 30'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.:CLEAR:&DEBUG.:CR,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2692886327734803)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3986379216952820)
,p_branch_name=>'Go To Page 30'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.:APPLICATION_PROCESS=descargar_zip:&DEBUG.::P30_CODIGO:&P30_CODIGO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2705038110734826)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6044763046722612)
,p_branch_name=>'Go To Page 30'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.:NO_CLEAR:&DEBUG.::P30_CODIGO:&P30_CODIGO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'ELIMINAR_DOCUMENTO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2184889409270522)
,p_name=>'P30_EXP_CODIGO_ASUNTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3860296203170214)
,p_name=>'P30_ID_AUX_DOCU'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14747209821606878)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3987935963952835)
,p_name=>'P30_ITM_ID_UNIDAD_ORGANIZATIVA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_item_default=>'19'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3988086707952837)
,p_name=>'P30_ITM_ID_INFORME_ETIQUETA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3988213639952838)
,p_name=>'P30_ITM_OBLIGAR_PROCEDIMIENTO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3988301153952839)
,p_name=>'P30_ITM_NIF_REPRESENTANTE_LEGAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_prompt=>'Representante'
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
 p_id=>wwv_flow_imp.id(3988432740952840)
,p_name=>'P30_ITM_CREAR_CODIGO_EXPEDIENTE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4499023569068011)
,p_name=>'P30_CONTADOR_OBS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14247109746200674)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4499465790068016)
,p_name=>'P30_CONTADOR_ACTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14247109746200674)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4499630336068017)
,p_name=>'P30_CONTADOR_DOCS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14247109746200674)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4499779739068019)
,p_name=>'P30_VAR_ELECT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14247109746200674)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4840875498343413)
,p_name=>'P30_ITM_PERMISO_ELECTRONICO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14832447797631574)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4842427921343428)
,p_name=>'P30_ITM_EXPEDIENTE_CERRADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14747209821606878)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4842463279343429)
,p_name=>'P30_PAGINA_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14747209821606878)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5157624946205352)
,p_name=>'P30_ID_AUX_VERSION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14747209821606878)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6044124962722605)
,p_name=>'P30_ITM_LOGIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14747209821606878)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6044614398722610)
,p_name=>'P30_ITM_RESPONSABLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14747209821606878)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6044728398722611)
,p_name=>'P30_ID_AUX_ACTUACION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14747209821606878)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14251560839200731)
,p_name=>'P30_CODIGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14251610108200732)
,p_name=>'P30_ITM_CIF_NIF'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_prompt=>'Titular:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897135726932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14251726119200733)
,p_name=>'P30_ITM_NOMBRE_ADMINISTRADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14247266373200675)
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
 p_id=>wwv_flow_imp.id(14251889855200735)
,p_name=>'P30_ITM_DOMICILIO_TITULAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_prompt=>unistr('Direcci\00F3n titular')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'tablascomunes.consulta.obtiene_direccion(:P30_ITM_CIF_NIF, 1, 0, 1) AS direccion,',
'    TO_CHAR(d.numero_orden) AS numero_orden',
'    ',
'FROM ',
'    tablascomunes.direccion_administrado d',
'WHERE ',
'    d.cif_nif = :P30_ITM_CIF_NIF',
'',
'ORDER BY ',
'    d.numero_orden ;',
''))
,p_lov_cascade_parent_items=>'P30_ITM_CIF_NIF'
,p_ajax_items_to_submit=>'P30_ITM_CIF_NIF'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(14252212887200738)
,p_name=>'P30_ITM_NATURALEZA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(14247266373200675)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14259875405200754)
,p_name=>'P30_ASUNTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_prompt=>'Asunto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.codigo || '' '' || a.descripcion as codigo_desc , a.codigo',
'/*a.codigo || '','' || ',
'       a.id_unidad_organizativa || '','' || ',
'       NVL(a.formulario, ''$'') || '','' || ',
'       NVL(a.id_informe_etiqueta, -1) || '','' || ',
'       a.obligar_procedimiento || '','' || ',
'       a.incluye_tasa || '','' || ',
'       ua.solo_consulta || '','' || ',
'       ua.tramitacion || '','' || ',
'       ua.datos_Especificos || '','' || ',
'       ua.responsable || '','' || ',
'       ua.documentos || '','' || ',
'       ua.crear_codigo_expediente || '','' || ',
'       ua.ver_todos_tramites  as descripcion, a.codigo */',
'FROM apexweb.asunto a',
'JOIN apexweb.usuario_asunto ua ON a.codigo = ua.codigo_asunto',
'WHERE ua.login in (''APEXWEB'',''SMM00X'')',
'ORDER BY a.codigo'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(9654897135726932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14259968425200755)
,p_name=>'P30_IMPORTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_prompt=>'Importe'
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
 p_id=>wwv_flow_imp.id(14260140217200756)
,p_name=>'P30_TASA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_prompt=>'Tasa'
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
 p_id=>wwv_flow_imp.id(14260154226200757)
,p_name=>'P30_PROCEDIMIENTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_prompt=>'Procedimiento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select p.codigo || '','' || a.formulario as procedimiento, ',
'    p.codigo',
'    from ae.procedimiento p, apexweb.procedimiento_asunto a ',
'    where p.codigo = a.codigo_procedimiento ',
'    and a.codigo_asunto = :P30_ASUNTO',
'    and (a.fecha_baja is null or a.fecha_baja > apexweb.consulta.obtiene_fecha_inicio_exp(:p30_CODIGO)) ',
'    ',
' '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14260263201200758)
,p_name=>'P30_ITM_REPRESENTANTE_LEGAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_prompt=>'Nombre representante'
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
 p_id=>wwv_flow_imp.id(14260416457200759)
,p_name=>'P30_ESTABLECIMIENTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_prompt=>'Establecimiento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'tablascomunes.consulta.obtiene_direccion(:P30_ITM_CIF_NIF, 1, 0, 1) AS direccion,',
'    TO_CHAR(d.numero_orden) AS numero_orden',
'    ',
'FROM ',
'    tablascomunes.direccion_administrado d',
'WHERE ',
'    d.cif_nif = :P30_ITM_CIF_NIF',
'',
'ORDER BY ',
'    d.numero_orden ;',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14260467577200760)
,p_name=>'P30_ITM_NOTIFICACION_ELECTRONICA_D'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_prompt=>unistr('Notificaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Solo papel;0,Sede;1,DEH;2,Papel+Sede;3'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14260591644200761)
,p_name=>'P30_ITM_CORREO_ELEC_NOTIFICACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_prompt=>unistr('Correo Electr\00F3nico')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT a.direccionemail, a.direccionemail as email FROM TABLASCOMUNES.ADMINISTRADOS a WHERE a.CIF_NIF = :P30_ITM_CIF_NIF'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14260718065200762)
,p_name=>'P30_ITM_TELEFONO_NOTIFICACION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'	 select distinct aa.telefono as telefonos , aa.telefono as t_id',
'      from (select d.telefonos as telefono ',
'              from tablascomunes.direccion_administrado d ',
'             where d.cif_nif = :P30_ITM_CIF_NIF',
'               and d.telefonos is not null',
'             union ',
'            select a.telefono as telefono',
'              from tablascomunes.administrados a ',
'             where a.cif_nif = :p30_ITM_CIF_NIF',
'               and a.telefono is not null) aa',
'  ',
'   --SELECT a.telefono FROM TABLASCOMUNES.ADMINISTRADOS a WHERE a.CIF_NIF = :P30_ITM_CIF_NIF'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14260814666200763)
,p_name=>'P30_ITM_DOMICILIO_NOTIFICACION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(14248427722200687)
,p_prompt=>'Notificar en:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'tablascomunes.consulta.obtiene_direccion(:P30_ITM_CIF_NIF, 1, 0, 1) AS direccion,',
'    TO_CHAR(d.numero_orden) AS numero_orden',
'    ',
'FROM ',
'    tablascomunes.direccion_administrado d',
'WHERE ',
'    d.cif_nif = :P30_ITM_CIF_NIF',
'',
'ORDER BY ',
'    d.numero_orden ;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14773721039606997)
,p_name=>'P30_VERSION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14750449730606910)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>unistr('Versi\00F3n: ')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\00DAltima;1,Todas;2')
,p_field_template=>wwv_flow_imp.id(9654897621061932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14840857355631636)
,p_name=>'P30_EXPEDIENTE_ELECTRONICO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14832447797631574)
,p_prompt=>'Expediente Electronico'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CODIGO_EXPEDIENTE_ELECTRONICO, CODIGO_EXPEDIENTE_ELECTRONICO as cod_exp_elec',
'from',
'ae.expediente_electronico ',
'where CODIGO_EXPEDIENTE_APEX = :P30_CODIGO'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16996838138329649171)
,p_name=>'P30_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16996837892593649170)
,p_prompt=>'<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Expediente</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2713914019734850)
,p_name=>'on_change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_CIF_NIF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2714384170734851)
,p_event_id=>wwv_flow_imp.id(2713914019734850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ITM_NOMBRE_ADMINISTRADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2716547165734854)
,p_name=>'onchange'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_ITM_CIF_NIF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2718105417734856)
,p_event_id=>wwv_flow_imp.id(2716547165734854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ITM_NOMBRE_ADMINISTRADO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tablascomunes.consulta.obtiene_nombre_administrado(:P30_ITM_CIF_NIF, null) from dual',
''))
,p_attribute_07=>'P30_ITM_CIF_NIF'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2717115365734855)
,p_event_id=>wwv_flow_imp.id(2716547165734854)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'refresh_direccion'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ITM_DOMICILIO_TITULAR,P30_ESTABLECIMIENTO,P30_ITM_DOMICILIO_NOTIFICACION'
,p_server_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_server_condition_expr1=>'NO_CLEAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2717620583734855)
,p_event_id=>wwv_flow_imp.id(2716547165734854)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'refresh_correos_y_tel'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ITM_CORREO_ELEC_NOTIFICACION,P30_ITM_TELEFONO_NOTIFICACION'
,p_server_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_server_condition_expr1=>'NO_CLEAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2720261964734857)
,p_name=>'ELIMINAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2692886327734803)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2720844593734858)
,p_event_id=>wwv_flow_imp.id(2720261964734857)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Est\00E1s seguro de que quieres borrar el expediente?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>unistr('S\00ED')
,p_attribute_07=>'No'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P30_CODIGO'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P30_CODIGO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2721281646734858)
,p_event_id=>wwv_flow_imp.id(2720261964734857)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'delete'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'btn_delete'
,p_attribute_02=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P30_CODIGO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2714844108734852)
,p_name=>'clear'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_display_when_cond=>'NO_CLEAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2715332226734853)
,p_event_id=>wwv_flow_imp.id(2714844108734852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'CLEAR'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_CODIGO,P30_ASUNTO,P30_VERSION,P30_EXPEDIENTE_ELECTRONICO,P30_IMPORTE,P30_ITM_CIF_NIF,P30_TASA,P30_PROCEDIMIENTO,P30_ITM_NOMBRE_ADMINISTRADO,P30_ITM_REPRESENTANTE_LEGAL,P30_ITM_DOMICILIO_TITULAR,P30_ESTABLECIMIENTO,P30_ITM_NATURALEZA,P30_ITM_NOTIF'
||'ICACION_ELECTRONICA_D,P30_ITM_CORREO_ELEC_NOTIFICACION,P30_ITM_TELEFONO_NOTIFICACION,P30_ITM_DOMICILIO_NOTIFICACION,P30_ID_AUX_DOCU,P30_EXP_CODIGO_ASUNTO,P30_ITM_NIF_REPRESENTANTE_LEGAL,P30_ITM_CREAR_CODIGO_EXPEDIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2721686533734858)
,p_name=>'closing_observaciones_modal'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14250304989200706)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2722170054734859)
,p_event_id=>wwv_flow_imp.id(2721686533734858)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14250304989200706)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2715728507734853)
,p_name=>'closing_actuaciones_modal'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14251321647200716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2716177883734854)
,p_event_id=>wwv_flow_imp.id(2715728507734853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14251321647200716)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3960982626192930)
,p_name=>'descargar'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn-descargar'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3962395905192939)
,p_event_id=>wwv_flow_imp.id(3960982626192930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'set_value'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var idDocu = this.triggeringElement.dataset.idDocu;',
'//var idPlantilla = this.triggeringElement.dataset.idPlantilla;',
'apex.item("P30_ID_AUX_DOCU").setValue(idDocu);',
'//apex.item("P30_ID_AUX_P").setValue(idPlantilla);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3860521799170216)
,p_event_id=>wwv_flow_imp.id(3960982626192930)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
unistr('  v_result number;  -- Variable para almacenar el resultado de la funci\00F3n'),
'begin',
unistr('  -- Llamar a la funci\00F3n que descarga el archivo y obtener el resultado'),
unistr('  v_result := fun_descargar_archivo(p_id_archivo => :P30_ID_AUX_DOCU);  -- Aseg\00FArate de que el par\00E1metro se pase correctamente'),
'',
'  -- Verificar el resultado y mostrar el mensaje correspondiente',
'  if v_result = 0 then',
unistr('    -- Mostrar mensaje de error si la funci\00F3n devuelve 0'),
'    apex_error.add_error(',
'      p_message => ''Ha habido un error al intentar descargar el archivo.'',',
'      p_display_location => apex_error.c_inline_in_notification',
'    );',
'  else',
unistr('    -- Mostrar mensaje de \00E9xito si la funci\00F3n devuelve 1'),
unistr('    apex_application.g_print_success_message := ''El archivo se descarg\00F3 correctamente.'';'),
'  end if;',
'',
'end;',
''))
,p_attribute_02=>'P30_ID_AUX_DOCU'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3961940848192938)
,p_event_id=>wwv_flow_imp.id(3960982626192930)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'act_generar_documento'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>id docu:  &P30_ID_AUX_DOCU.</p>',
'<p>id plantilla: &P30_ID_AUX_P.</p>'))
,p_attribute_02=>'Sin funcionamiento'
,p_attribute_03=>'information'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3961441814192938)
,p_event_id=>wwv_flow_imp.id(3960982626192930)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' nIdActuacion      number;',
'  nIdPlantilla      number;',
'  nIdDocumento			number; ',
'  bPlantillaXML     boolean;',
'  sNombreDocumento  varchar2(500);',
'BEGIN	',
unistr('	-- si todav\00EDa no se ha guardado la actuaci\00F3n o no hay plantilla no hace nada	'),
'  if :P30_ID is null then',
'  	return ;',
'  end if;',
'  ',
'  nIdActuacion := :P30_ID;',
'  nIdPlantilla := :P30_ID_AUX_P; -- id de la plantilla',
'  nIdDocumento := :P30_ID_AUX; -- id del documento',
'  --bPlantillaXML := :P30_CAS_PLANTILLA_XML;',
' 	-- si el documento se ha generado ya no se vuelve a generar sino que se edita el que ya existe',
'  if nIdDocumento is not null then',
unistr('    -- se abre la ultima versi\00F3n generada del documento 	 	 '),
'  	sNombreDocumento := Descarga_Fichero_nuevo(true, nIdDocumento, nIdActuacion);',
'  	',
'  -- el documento no ha sido generado anteriormente    ',
'  else  		',
unistr('    -- genera el fichero asociado a la actuaci\00F3n     '),
'    --Genera_Documento_Actuacion_XML(nIdActuacion, nIdPlantilla, bPlantillaXML, nIdDocumento);',
'    if nIdDocumento is null then',
'  	  -- el fichero no se adjunta al expediente, termina 	  ',
'      return;',
'    end if;',
'',
'    -- asocia el documento a la plantilla de la que proviene  ',
'    insert into apexweb.documento_plantilla(id_documento, id_plantilla)',
'    values (nIdDocumento, nIdPlantilla);',
'    ',
'    -- guarda el documento y marca la plantilla como ya generada',
'    :p30_ITM_ID_DOCUMENTO := nIdDocumento;',
'    --SET_ITEM_INSTANCE_PROPERTY(''ITM_PLANTILLA'', CURRENT_RECORD, VISUAL_ATTRIBUTE, ''PLANTILLA_VERDE'');	',
'    ',
'    -- guarda los cambios',
'		COMMIT; ',
'',
'	end if;',
'	',
'END; ',
'',
''))
,p_attribute_02=>'P30_ID,P30_ITM_ID_PLANTILLA,P30_ITM_ID_DOCUMENTO,P30_ID_AUX_P,P30_ID_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3985070426952807)
,p_name=>'refresh'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_VERSION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3985211325952808)
,p_event_id=>wwv_flow_imp.id(3985070426952807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14747209821606878)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3985637775952812)
,p_name=>'hide-show'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_VERSION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3985680419952813)
,p_event_id=>wwv_flow_imp.id(3985637775952812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2705038110734826)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P30_VERSION'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3985821457952814)
,p_event_id=>wwv_flow_imp.id(3985637775952812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2705038110734826)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P30_VERSION'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3987730773952833)
,p_name=>'copia_direccion'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2684392133734792)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3987823225952834)
,p_event_id=>wwv_flow_imp.id(3987730773952833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('  -- copia la direcci\00F3n del establecimiento en la de notificaci\00F3n'),
' begin',
'  ',
'  	:P30_ITM_DOMICILIO_NOTIFICACION:= :P30_ITM_DOMICILIO_TITULAR;',
'  end;'))
,p_attribute_02=>'P30_ITM_DOMICILIO_TITULAR'
,p_attribute_03=>'P30_ITM_DOMICILIO_NOTIFICACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4498474909068006)
,p_name=>'informacion'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2704552932734825)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4498629927068007)
,p_event_id=>wwv_flow_imp.id(4498474909068006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Este bot\00F3n no est\00E1 accesible debido a falta de plantillas en la funci\00F3n de generaci\00F3n del archivo. '),
'Disculpe las molestias'))
,p_attribute_02=>'EXCEL  no disponible'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4498702856068008)
,p_name=>'informacion_1'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2703822179734825)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4498773531068009)
,p_event_id=>wwv_flow_imp.id(4498702856068008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Este bot\00F3n no est\00E1 accesible debido a falta de plantillas en la funci\00F3n de impresi\00F3n del archivo. '),
'Disculpe las molestias'))
,p_attribute_02=>'IMPRIMIR  no disponible'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4499286660068014)
,p_name=>'renombrar_tab'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4499407698068015)
,p_event_id=>wwv_flow_imp.id(4499286660068014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var rowCount1 = $v(''P30_CONTADOR_OBS'');  ',
'var tabTitle1 = ''Datos de expediente y observaciones ('' + rowCount1 + '')'';  ',
'',
'$(".t-Tabs-link > span").replaceWith(function(){',
'    return ''''+tabTitle1;',
'});',
'',
'//$(''#SR_R23020581499275585'').find(''span'').text(tabTitle1);',
'//$(''#R23020581499275585_heading'').find(''span'').text(tabTitle1);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4501386348068035)
,p_name=>'refresh_after_close'
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14747209821606878)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4501455081068036)
,p_event_id=>wwv_flow_imp.id(4501386348068035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14747209821606878)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4841833481343422)
,p_name=>'ACTIVA_NOTIF_ELECTRONICA'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_ITM_NOTIFICACION_ELECTRONICA_D'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4841893057343423)
,p_event_id=>wwv_flow_imp.id(4841833481343422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var itmNotificacionElectronica = $v(''P30_ITM_NOTIFICACION_ELECTRONICA_D''); // Obtener el valor del campo ITM_NOTIFICACION_ELECTRONICA',
'',
'if (itmNotificacionElectronica != 0) {',
unistr('    // Hay notificaci\00F3n electr\00F3nica, hace visible la direcci\00F3n de correo de aviso y su bot\00F3n'),
'    $(''#P30_ITM_CORREO_ELEC_NOTIFICACION'').show().prop(''disabled'', false); // habilitar y mostrar',
unistr('    $(''#P30_ITM_CORREO_ELEC_NOTIFICACION'').attr(''readonly'', false); // permitir edici\00F3n'),
'    ',
unistr('    // Hay notificaci\00F3n electr\00F3nica, hace visible el tel\00E9fono de aviso y su bot\00F3n'),
'    $(''#P30_ITM_TELEFONO_NOTIFICACION'').show().prop(''disabled'', false); // habilitar y mostrar',
unistr('    $(''#P30_ITM_TELEFONO_NOTIFICACION'').attr(''readonly'', false); // permitir edici\00F3n'),
'    ',
'} else {',
unistr('    // No hay notificaci\00F3n electr\00F3nica'),
'    $(''#P30_ITM_CORREO_ELEC_NOTIFICACION'').hide().prop(''disabled'', true); // deshabilitar y ocultar',
'    $(''#P30_ITM_CORREO_ELEC_NOTIFICACION'').val(''''); // limpiar valor del campo',
'    ',
unistr('    // No hay notificaci\00F3n electr\00F3nica'),
'    $(''#P30_ITM_TELEFONO_NOTIFICACION'').hide().prop(''disabled'', true); // deshabilitar y ocultar',
'    $(''#P30_ITM_TELEFONO_NOTIFICACION'').val(''''); // limpiar valor del campo',
'}',
'',
'if (itmNotificacionElectronica == 0 || itmNotificacionElectronica == 3) {',
unistr('    // Hay notificaci\00F3n en papel, hace obligatoria la direcci\00F3n de notificaci\00F3n'),
'    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').prop(''disabled'', false); // habilitar',
unistr('    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').prop(''readonly'', false); // permitir edici\00F3n'),
'    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').attr(''required'', true); // obligatorio',
'    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').addClass(''required''); // agregar clase ''required''',
unistr('    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').attr(''title'', ''Este campo es obligatorio''); // agregar t\00EDtulo'),
'    ',
'    // Mostrar que el campo es obligatorio',
'    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').prop(''disabled'', false);',
'    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').val(''''); // limpiar el valor si es necesario',
'} else {',
'',
'    ',
'    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').prop(''disabled'', true); // deshabilitar',
unistr('    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').prop(''readonly'', true); // deshabilitar edici\00F3n'),
'    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').attr(''required'', false); // quitar obligatorio',
'    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').removeClass(''required''); // quitar clase ''required''',
unistr('    $(''#P30_ITM_DOMICILIO_NOTIFICACION'').attr(''title'', ''''); // quitar t\00EDtulo'),
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4842142204343425)
,p_name=>'nuevo_doc'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2712137352734840)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4842342412343427)
,p_event_id=>wwv_flow_imp.id(4842142204343425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' -- si el expediente electr\00F3nico est\00E1 cerrado no se permiten nuevos documentos'),
'  if :P30_ITM_EXPEDIENTE_CERRADO = 1 then',
'		',
' APEX_ERROR.ADD_ERROR(',
unistr('            p_message => ''El expediente electr\00F3nico est\00E1 cerrado'','),
'            p_display_location =>  apex_error.c_inline_in_notification',
'        );',
'',
'		return;',
'  end if;',
'',
'',
unistr('  -- si el expediente no es electr\00F3nico'),
'  if :P30_EXPEDIENTE_ELECTRONICO is null then ',
unistr('  	-- selecciona los documentos y los a\00F1ade al expediente'),
'   	--Adjunta_Documentos_Seleccion(:BLQ_EXPEDIENTE.ITM_CODIGO, null);     ',
'    ',
'    ',
unistr('    :P30_PAGINA_AUX := 1; -- te lleva a la p\00E1gina 34'),
'     APEX_UTIL.SET_SESSION_STATE(''P30_PAGINA_AUX'', 1);',
'',
'  else',
unistr('  	-- el expediente es electr\00F3nico'),
'   -- :GLOBAL.EXP_Codigo := :BLQ_EXPEDIENTE.ITM_CODIGO;',
'   	--:GLOBAL.EXP_Codigo_Procedimiento := :BLQ_EXPEDIENTE.ITM_CODIGO_PROCEDIMIENTO;',
'   --	:GLOBAL.EXP_IdActuacion := null;',
'   --   :GLOBAL.EXP_Id_Actuacion := null; -- se mantiene por compatiblidad',
'   --	:GLOBAL.EXP_IdDocumento := null; ',
'   --	:GLOBAL.EXP_VersionDocumento := null; 	',
unistr('   -- datos del expediente electr\00F3nico'),
'   --:GLOBAL.EXP_ExpedienteElectronico := :BLQ_EXPEDIENTE_ELECTRONICO.ITM_EXPEDIENTE_ELECTRONICO;',
'   -- :GLOBAL.EXP_CierreExpElectronico := :BLQ_EXPEDIENTE_ELECTRONICO.ITM_EXPEDIENTE_CERRADO;',
'   --:GLOBAL.EXP_PermisoExpElectronico := :BLQ_EXPEDIENTE.ITM_PERMISO_ELECTRONICO;',
'    ',
'   	--var.bActualizaDocumento := true; ',
unistr('   -- OPEN_FORM(''documento_electronico'', ACTIVATE, SESSION); -- esto te lleva a la p\00E1gina 50	'),
'    :P30_PAGINA_AUX := 2; ',
'   APEX_UTIL.SET_SESSION_STATE(''P30_PAGINA_AUX'', 2);',
'  end if;',
''))
,p_attribute_02=>'P30_ITM_EXPEDIENTE_CERRADO,P30_EXPEDIENTE_ELECTRONICO,P30_PAGINA_AUX'
,p_attribute_03=>'P30_PAGINA_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4843222923343436)
,p_event_id=>wwv_flow_imp.id(4842142204343425)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P30_PAGINA_AUX'').val() == ''1'') {',
'    $(''#REDIRECT_1'').click();',
'} else {',
'    $(''#REDIRECT_2'').click();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4843402289343438)
,p_name=>'hide_btn'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4843464513343439)
,p_event_id=>wwv_flow_imp.id(4843402289343438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(4842977990343434)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4843734990343441)
,p_event_id=>wwv_flow_imp.id(4843402289343438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(4843100732343435)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4843891553343443)
,p_name=>'New_1'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_EXPEDIENTE_ELECTRONICO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4843957712343444)
,p_event_id=>wwv_flow_imp.id(4843891553343443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P30_EXPEDIENTE_ELECTRONICO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5154627035205322)
,p_name=>'btn_sube_doumento_click'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn-sube_documento'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5154666441205323)
,p_event_id=>wwv_flow_imp.id(5154627035205322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Obtener los valores de las columnas del reporte, asumiendo que el reporte tiene identificadores espec\00EDficos'),
'var expedienteElectronico = $v(''P30_EXPEDIENTE_ELECTRONICO'');',
'var expedienteCerrado = $v(''P30_ITM_EXPEDIENTE_CERRADO'');',
'var documentoElectronico = $v(''DOCUMENTO_ELECTRONICO'');',
'var permisoElectronico = $v(''P30_ITM_PERMISO_ELECTRONICO'');',
'var estadoPortafirmas = $v(''ITM_ESTADO_PORTAFIRMAS'');',
'var codigoEstadoFirma = $v(''ITM_CODIGO_ESTADO_FIRMA'');',
'var origenDocumento = $v(''ITM_ORIGEN_DOCUMENTO'');',
'',
'//',
'var codigoExpediente = $v(''P30_CODIGO'');',
'var nVersion = $v(''VERSION'');',
'var codigoProcedimiento = $v(''P30_PROCEDIMIENTO'');',
'var idDocumento = $v(''ID_DOCUMENTO'');',
'',
'// Comprobaciones',
'if (expedienteElectronico == '''') {',
unistr('    alert(''El expediente electr\00F3nico no est\00E1 abierto'');'),
'    return;',
'}',
'',
'if (expedienteCerrado == 1) {',
unistr('    alert(''El expediente electr\00F3nico est\00E1 cerrado'');'),
'    return;',
'}',
'',
'if (documentoElectronico == 1) {',
unistr('    alert(''El documento ya est\00E1 subido al expediente electr\00F3nico'');'),
'    return;',
'}',
'',
'if (permisoElectronico == 0) {',
unistr('    alert(''No tiene permisos para modificar el expediente electr\00F3nico'');'),
'    return;',
'}',
'',
'if (estadoPortafirmas == ''P'') {',
unistr('    alert(''El documento est\00E1 pendiente de firma'');'),
'    return;',
'} else if (estadoPortafirmas == ''R'') {',
unistr('    alert(''El documento est\00E1 rechazado en portafirmas'');'),
'    return;',
'} else if (codigoEstadoFirma == 2) {',
unistr('    alert(''El documento est\00E1 firmado pero todav\00EDa no se ha recuperado la copia aut\00E9ntica'');'),
'    return;',
'}',
'',
'if (origenDocumento !== ''1'' && origenDocumento !== ''2'') {',
unistr('    // Aqu\00ED se ejecutar\00EDa la l\00F3gica para duplicar el documento si es necesario'),
'    /*	if apexweb.utilidades.duplica_documento(:BLQ_DOCUMENTO.ITM_ORIGEN_DOCUMENTO, :BLQ_DOCUMENTO.ITM_ID_DOCUMENTO, ',
'				:BLQ_DOCUMENTO.ITM_VERSION, :BLQ_DOCUMENTO.ITM_REFERENCIA, :BLQ_DOCUMENTO.ITM_ID_ACTUACION, :BLQ_EXPEDIENTE.ITM_CODIGO, ',
'				nIdDocumento, nVersion, sDescripcionError) <> 1 then',
'                ',
'                 alert(''No se ha podido crear duplicado del documento'');',
'    return;  ',
'                 */',
'}',
'',
unistr('// Si todas las comprobaciones pasan, puedes continuar con la acci\00F3n posterior'),
unistr('// Como cambiar de p\00E1gina o abrir el formulario correspondiente'),
'',
'var redirectUrl = "f?p=101:50:SESSION::NO:RP:P50_CODIGO_EXPEDIENTE,P50_CODIGO_PROCEDIMIENTO,P50_ID_DOCUMENTO,P50_VERSION,P50_EXPEDIENTE_ELETRONICO,"',
'+ "P50_EXPEDIENTE_CERRADO,P50_PERMISO_ELECTRONICO:"',
' +  codigoExpediente + "," + codigoProcedimiento + "," + idDocumento + "," +',
' nVersion + "," + expedienteElectronico + "," + expedienteCerrado + "," + permisoElectronico;',
'console.log(codigoExpediente, codigoProcedimiento, idDocumento, nVersion, expedienteElectronico, expedienteCerrado, permisoElectronico);',
'',
unistr('apex.navigation.redirect(redirectUrl);  // Redirigir a la p\00E1gina con los par\00E1metros'),
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6043931022722603)
,p_name=>'delete'
,p_event_sequence=>240
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn_elimina_docu'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6044392957722608)
,p_event_id=>wwv_flow_imp.id(6043931022722603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'setValues'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var idDocu = this.triggeringElement.dataset.idDocu;',
'var idVersion = this.triggeringElement.dataset.idVersion;',
'apex.item("P30_ID_AUX_DOCU").setValue(idDocu);',
'apex.item("P30_ID_AUX_VERSION").setValue(idVersion);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6044342654722607)
,p_event_id=>wwv_flow_imp.id(6043931022722603)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'id: &P30_ID_AUX_DOCU.',
' version: &P30_ID_AUX_VERSION.'))
,p_attribute_02=>'info'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6044009781722604)
,p_event_id=>wwv_flow_imp.id(6043931022722603)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'getValues'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'x_act number;',
'',
'BEGIN          ',
unistr('  -- si est\00E1 marcada la casilla "Todas las versiones" se entiende que solo se desea eliminar'),
unistr('  -- la versi\00F3n actual, en caso contrario se eliminan todas las versiones del documento'),
'',
unistr('	-- 1. si se trata de una sola versi\00F3n, comprueba si se puede eliminar'),
'    select responsable into :P30_ITM_RESPONSABLE from usuario_asunto where upper(LOGIN) = UPPER(:APP_USER) AND CODIGO_ASUNTO = :P30_ASUNTO;',
'    -- obtener el login del documento',
'    select DISTINCT login into :P30_ITM_LOGIN from v_documento_expediente where id_documento = :P30_ID_AUX_DOCU and version = :P30_ID_AUX_VERSION;',
'    select count(id_actuacion) into x_act from v_documento_expediente',
'     where id_documento = :P30_ID_AUX_DOCU ',
'     and version = :P30_ID_AUX_VERSION;',
'     if x_act >0 then',
'    ',
'    select distinct id_actuacion into :P30_ID_AUX_ACTUACION from v_documento_expediente',
'     where id_documento = :P30_ID_AUX_DOCU ',
'     and version = :P30_ID_AUX_VERSION;',
'    else   ',
'    :P30_ID_AUX_ACTUACION :=0;',
'',
'     end if;',
'  end;'))
,p_attribute_02=>'P30_ID_AUX_DOCU,P30_ID_AUX_VERSION,P30_ID_AUX_ACTUACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6044895811722613)
,p_event_id=>wwv_flow_imp.id(6043931022722603)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Est\00E1 seguro de que desea eliminar el documento &P30_ID_AUX_DOCU. ?')
,p_attribute_02=>'Eliminar Documento'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6044488413722609)
,p_event_id=>wwv_flow_imp.id(6043931022722603)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR_DOCUMENTO'
,p_attribute_02=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P30_ID_AUX_DOCU'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7322462586732720)
,p_name=>'sin_funcion'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2683999571734792)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7322571911732721)
,p_event_id=>wwv_flow_imp.id(7322462586732720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El bot\00F3n imprimir no funciona ahora mismo.')
,p_attribute_02=>'Sin funcionamiento'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2713110998734847)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'nuevo_expediente'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
' ',
'  sCodigoExpediente     VARCHAR2(12);',
'  nIdUnidadOrganizativa NUMBER;',
'',
'BEGIN',
'',
'if :P30_CODIGO is null then',
'',
unistr('-- si el c\00F3digo es autom\00E1tico lo obtiene del contador correspondiente    '),
'  IF :p30_ITM_CREAR_CODIGO_EXPEDIENTE = 0 THEN',
unistr('    -- obtiene el c\00F3digo y la unidad organizativa del expediente, a partir del usuario conectado'),
'    IF apexweb.consulta.Obtiene_Codigo_Expediente(:P30_ASUNTO, SYSDATE, 0, sCodigoExpediente) = FALSE THEN',
unistr(' 			--Mensaje(''Expediente'', ''No se pudo obtener el c\00F3digo de expediente'');'),
' 			--RAISE Form_Trigger_Failure;',
'            NULL;',
' 		ELSE',
'			:P30_CODIGO := sCodigoExpediente;',
' 		END IF;',
'  END IF;',
'   --  introducir tasa si hay importe',
'  IF :P30_IMPORTE IS NOT NULL AND :P30_TASA IS NULL THEN',
unistr('  	--Mensaje(''Tasa N28'',''Debe introducir una tasa v\00E1lida'');'),
'  	--RAISE Form_Trigger_Failure;',
'    NULL;',
'',
'  END IF;',
'',
'',
'--insert en expediente',
unistr('    INSERT INTO expediente (CODIGO, --el codigo ser\00E1 autogenerado'),
'        CODIGO_ASUNTO,',
'        CIF_NIF, ',
'        NUMERO_ORDEN_ESTABLECIMIENTO,',
'        NUMERO_ORDEN_NOTIFICACION,',
'        DESCRIPCION,',
'        CIF_NIF_REPRESENTANTE_LEGAL,',
'        CODIGO_PROCEDIMIENTO,',
'        NOTIFICACION_ELECTRONICA,',
'        CORREO_ELEC_NOTIFICACION,',
'        TELEFONO_NOTIFICACION,',
'        NUMERO_ORDEN_TITULAR)',
'    VALUES (',
'        :P30_CODIGO,',
'        :P30_ASUNTO,',
'        :P30_ITM_CIF_NIF, ',
'        :P30_ESTABLECIMIENTO,',
'        1,',
'        :P30_ITM_NATURALEZA,',
'        :P30_ITM_NIF_REPRESENTANTE_LEGAL,',
'        :P30_PROCEDIMIENTO,',
'        :P30_ITM_NOTIFICACION_ELECTRONICA_D,',
'        :P30_ITM_CORREO_ELEC_NOTIFICACION,',
'        :P30_ITM_TELEFONO_NOTIFICACION,',
'        :P30_ITM_DOMICILIO_NOTIFICACION',
'    );',
'    commit;',
'',
'    elsif :P30_CODIGO is not null then',
'',
' --update del expediente',
'UPDATE expediente',
'SET ',
'    CODIGO_ASUNTO = :P30_ASUNTO,',
'    --CIF_NIF = :P30_ITM_CIF_NIF,-- el cif no se cambia por aqui',
'    NUMERO_ORDEN_ESTABLECIMIENTO = :P30_ESTABLECIMIENTO,',
'    NUMERO_ORDEN_NOTIFICACION = 1, ',
'    DESCRIPCION = :P30_ITM_NATURALEZA,',
'    CIF_NIF_REPRESENTANTE_LEGAL = :P30_ITM_NIF_REPRESENTANTE_LEGAL,',
'    CODIGO_PROCEDIMIENTO = :P30_PROCEDIMIENTO,',
'    NOTIFICACION_ELECTRONICA = :P30_ITM_NOTIFICACION_ELECTRONICA_D,',
'    CORREO_ELEC_NOTIFICACION = :P30_ITM_CORREO_ELEC_NOTIFICACION,',
'    TELEFONO_NOTIFICACION = :P30_ITM_TELEFONO_NOTIFICACION,',
'    NUMERO_ORDEN_TITULAR = :P30_ITM_DOMICILIO_NOTIFICACION',
'WHERE CODIGO = :P30_CODIGO;',
'',
'commit;',
'',
'',
'end if;',
'',
'--:GLOBAL_EXP_CODIGO_ASUNTO := :P30_ASUNTO;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('No se ha podido a\00F1adir.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2692520289734803)
,p_process_success_message=>unistr('Expediente a\00F1adido correctamente.')
,p_internal_uid=>11485264775809745
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2713490611734848)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'borrar_expediente'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('-- solo se ejecuta si decimos " s\00ED " en el warning.'),
'',
'begin',
'',
'DELETE FROM expediente e WHERE e.codigo = :P30_CODIGO;',
'commit;',
':P30_CODIGO := null;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido eliminar. Algo ha salido mal.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2692886327734803)
,p_process_success_message=>'Se ha eliminado el expediente.'
,p_internal_uid=>11485644388809746
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3986451314952821)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'crear_zip'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_download_file_name  VARCHAR2(200) :=  :P30_CODIGO ||''_''||TO_CHAR(SYSDATE,''DDMMYYYY'') || ''.zip'';',
'    l_zip_file        BLOB;',
'    l_disposition     VARCHAR2(50) := ''attachment'';',
'    l_id              NUMBER;',
'contador number := 1;',
'',
'BEGIN',
'    -- Log de inicio del proceso',
'    lrpg_add_log(0, ''Begin del proceso download ZIP, nombre del zip: '' || l_download_file_name);',
'    ',
'',
'     -- Create/clear the ZIP collection',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''ZIP'');',
unistr('    -- Iteraci\00F3n sobre los documentos seleccionados'),
'   begin',
'    FOR i IN 1 .. APEX_APPLICATION.g_f01.COUNT LOOP',
'        -- Obtener el ID del documento seleccionado',
'         lrpg_add_log(1, ''loop numero--  '' || contador);',
'        l_id := TO_NUMBER(APEX_APPLICATION.g_f01(i));',
'       -- l_id := 1329704; --.para probar',
'        -- Log de la id del documento seleccionado',
'        lrpg_add_log(1, ''ID del documento: '' || l_id);',
'        ',
'',
'        FOR doc IN (',
'            SELECT NOMBRE, blob_documento',
'            FROM V_DESCARGA_BLOB',
'            WHERE ID_DOCUMENTO = l_id',
'        ) LOOP',
unistr('            -- A\00F1adir archivos al archivo ZIP'),
'            apex_zip.add_file(',
'                p_zipped_blob => l_zip_file,',
'                p_file_name => doc.NOMBRE,',
'                p_content => doc.blob_documento',
'            );',
unistr('             lrpg_add_log(2, ''Dentro del loop, archivo a\00F1adido al ZIP: '' || doc.NOMBRE);'),
'            contador:= contador+1;',
'                  ',
'        END LOOP;',
'        ',
unistr('        lrpg_add_log(3, ''Despu\00E9s del loop, preparaci\00F3n para el finish, ID del documento: '' || l_id);'),
'    END LOOP;',
'     exception when no_data_found then',
'        -- If there are no files in the database, handle error',
'        raise_application_error(-20001, ''No Files found!'');',
'         lrpg_add_log(-1, ''error: '' || sqlerrm);',
'    end;',
'',
'',
unistr('    -- Finalizar la creaci\00F3n del archivo ZIP'),
'    apex_zip.finish(p_zipped_blob => l_zip_file);',
'    -- Add var_zip to the blob column of the ZIP collection',
'    APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ZIP'',',
'        p_blob001            => l_zip_file);',
' ',
unistr('    -- Log despu\00E9s de finalizar el ZIP'),
unistr('    lrpg_add_log(4, ''Despu\00E9s del finish, ZIP file length: '' || SYS.DBMS_LOB.GETLENGTH(l_zip_file));'),
'   ',
'    end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2705038110734826)
,p_internal_uid=>12758605092027719
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4840556492343410)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'exped_electronico_descarga'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  sNombreFichero    varchar2(150);',
'  sRutaFichero      varchar2(250);',
'  sLogin            varchar2(6);',
'  blIndice          blob;',
'  sExtension				varchar2(5);',
'  sExtensionNombre	varchar2(5);',
'BEGIN',
'',
'  -- obtiene el anexo',
'  dbms_lob.createtemporary(blIndice, true);  ',
'  if apexweb.Descarga_Documento.Obtiene_Indice_Expediente(:P30_EXPEDIENTE_ELECTRONICO, blIndice ,sExtension) = 0 then',
unistr('   -- Mensaje(''EXPEDIENTE ELECTR\00D3NICO'', ''No se pudo obtener el indice del expediente '');'),
'',
'    APEX_ERROR.ADD_ERROR(',
'            p_message => ''No se pudo obtener el indice del expediente '',',
'            p_display_location =>  apex_error.c_inline_in_notification',
'        );',
'    dbms_lob.freetemporary(blIndice);            ',
'    return;',
'  end if;   	  ',
'  -- descarga el fichero',
'  sExtensionNombre :=  lower(substr(:P30_EXPEDIENTE_ELECTRONICO, ',
'    length(:P30_EXPEDIENTE_ELECTRONICO) - 3));',
'  -- descarga el fichero',
'  if sExtensionNombre = ''.pdf'' then',
'  	sNombreFichero := :P30_EXPEDIENTE_ELECTRONICO;',
'  else',
'  	if sExtensionNombre is null then',
'  		sNombreFichero := :P30_EXPEDIENTE_ELECTRONICO || ''.'' || sExtension;',
'  	else',
'  		sNombreFichero := substr(:P30_EXPEDIENTE_ELECTRONICO, 1,',
'  		  length(:P30_EXPEDIENTE_ELECTRONICO) - 3) || ''.'' || sExtension;',
'  	end if;',
'  end if;	',
'   ',
'  sRutaFichero := ''Desktop/Downloads'' || sNombreFichero;',
'  begin',
'    select login into sLogin from xml.xml_blob where login = :app_user for update nowait;',
'    update xml.xml_blob set campo_blob = blIndice where login = :app_user;',
'    commit;',
'  exception',
'    when no_data_found then',
'      insert into xml.xml_blob (login, campo_blob) values (:app_user, blIndice);',
'      commit;',
'    when others then',
unistr('      --Mensaje(''EXPEDIENTE ELECTR\00D3NICO'', ''No se pudo descargar el \00EDndice de documentos'');'),
'       APEX_ERROR.ADD_ERROR(',
unistr('            p_message => ''No se pudo descargar el \00EDndice de documentos'','),
'            p_display_location =>  apex_error.c_inline_in_notification',
'        );',
'      return;',
'  end;	      ',
'  /*if WEBUTIL_FILE_TRANSFER.DB_To_Client_With_Progress(sRutaFichero,',
'	       ''xml.xml_blob'', ''campo_blob'', ''login = '''''' || :app_user || '''''''', ',
'		     ''Transfiriendo anexo'', ''Transfiriendo...'') = false then',
unistr('    --Mensaje(''EXPEDIENTE ELECTR\00D3NICO'', ''No se pudo transferir el archivo '' || sRutaFichero); '),
'    return;   ',
'  end if;*/',
'  dbms_lob.freetemporary(blIndice); ',
'  ',
unistr('	-- abre el documento con la aplicaci\00F3n asociada '),
'	/*if Abre_Documento(sRutaFichero, false) = false then	  ',
unistr('			--Mensaje(''EXPEDIENTE ELECTR\00D3NICO'', ''No se pudo abrir el documento '' || sRutaFichero);'),
'            return;',
'	end if; */',
'',
'    --exception ',
'  --  when others then ',
'--insert into tablascomunes.llamadas_sw()',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2689372479734800)
,p_internal_uid=>13612710269418308
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4840828982343412)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'exped_electronico_crea'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tExpedienteElectronico    ae.sandra.t_expediente;',
'    sCodigoError              varchar2(100);',
'    sDescripcionError         varchar2(1000);',
'begin',
unistr('    -- Comprueba si tiene expediente electr\00F3nico'),
'    if ae.expediente_sandra.tiene_expediente_electronico(:P30_CODIGO) then ',
'        -- Mostrar mensaje de alerta en APEX',
'        APEX_ERROR.ADD_ERROR(',
unistr('            p_message => ''Ya existe el expediente electr\00F3nico'','),
'            p_display_location => apex_error.c_inline_in_notification         ',
'        );',
unistr('        INSERT INTO TABLASCOMUNES.LLAMADAS_SW VALUES(NULL, :APP_USER, SYSDATE,''ORIGEN: process: exped_electronico_crea , p\00E1gina 30 Expediente. '',  sCodigoError || '' - '' || sDescripcionError, ''APEX''  );'),
'        COMMIT;',
'        return;',
'         ',
'    end if;',
'',
unistr('    -- Comprueba si tiene permisos para editar el expediente electr\00F3nico'),
'    if :P30_ITM_PERMISO_ELECTRONICO = 0 then    ',
'        -- Mostrar mensaje de alerta en APEX',
'        APEX_ERROR.ADD_ERROR(',
unistr('            p_message => ''No tiene permisos para abrir el expediente electr\00F3nico'','),
'            p_display_location =>  apex_error.c_inline_in_notification',
'        );',
unistr('         INSERT INTO TABLASCOMUNES.LLAMADAS_SW VALUES(NULL, null, null,''ORIGEN: process: exped_electronico_crea , p\00E1gina 30 Expediente. '',  sCodigoError || '' - '' || sDescripcionError, ''APEX''  );'),
'        COMMIT;',
'        return;',
'    end if;',
'',
unistr('   /* if Pregunta(''EXPEDIENTE ELECTR\00D3NICO'', ''\00BFDesea abrir el expediente electr\00F3nico?'') = false then        '),
'        return;',
'    end if; */',
'',
'    if ae.expediente_sandra.Crear_Expediente_Oficio(:P30_CODIGO, tExpedienteElectronico, sCodigoError, sDescripcionError) = 1 then',
unistr('        -- Mostrar mensaje de \00E9xito en APEX'),
'        APEX_ERROR.ADD_ERROR(',
unistr('            p_message => ''Expediente electr\00F3nico creado. Recuerde incorporar los documentos de forma manual.'','),
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'    else',
'        -- Mostrar mensaje de error en APEX',
'        APEX_ERROR.ADD_ERROR(',
unistr('            p_message => ''No se pudo abrir el expediente electr\00F3nico ('' || sCodigoError || '') '' || sDescripcionError,'),
'            p_display_location =>  apex_error.c_inline_in_notification',
'        );',
unistr('                 INSERT INTO TABLASCOMUNES.LLAMADAS_SW VALUES(NULL, :APP_USER, SYSDATE,''ORIGEN: process: exped_electronico_crea , p\00E1gina 30 Expediente. '',  sCodigoError || '' - '' || sDescripcionError, ''APEX''  );'),
'                COMMIT;',
'        return;',
'    end if;',
'  commit;',
'EXCEPTION',
'    WHEN OTHERS THEN       ',
unistr('    INSERT INTO TABLASCOMUNES.LLAMADAS_SW VALUES(NULL, :APP_USER, SYSDATE,''ORIGEN: process: exped_electronico_crea , p\00E1gina 30 Expediente. '',  sCodigoError || '' - '' || sDescripcionError, ''APEX''  );'),
'    COMMIT;',
'',
'  ',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2690163450734801)
,p_internal_uid=>13612982759418310
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5157484797205351)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'eliminar_documento'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
'  ',
'  nUno           number;',
'  nVersion       number;',
'  bEliminarFila  boolean := false;',
'  sPermisoUpdate varchar2(5);',
'  x_login VARCHAR2(6);',
'  x_responsable number;',
'begin',
'',
'lrpg_add_log(1,''entrando en el proceso eliminar_documento'');',
'',
'  if :P30_VERSION = 1 and upper(:P30_ITM_LOGIN) <> upper(:app_user) and',
'  	 :P30_ITM_RESPONSABLE = 0 then',
'',
' APEX_ERROR.ADD_ERROR(',
unistr('            p_message => ''Esta versi\00F3n del documento no pertenece al login '' || :APP_USER || '),
unistr('        ''. P\00F3ngase en contacto con el responsable del asunto para su eliminaci\00F3n.'','),
'            p_display_location => apex_error.c_inline_in_notification         ',
'        );',
'	 return;',
'  end if;',
'',
'     select count(distinct codigo_expediente)',
'	    into nUno',
'	    from apexweb.v_documento_expediente',
'	   where id_documento = :P30_ID_AUX_DOCU',
'	     and origen_documento in (1,2);	  	  ',
unistr('	  -- en caso de estar asociado a otro expediente pregunta si se desea borrar \00FAnicamente en el expediente actual o en todos los expedientes'),
'	if nUno > 1 then',
'',
'  -- PONER UN IF CON UN ITEM AQUI EN FUNCION DEL RESULTADO DEL CONFIRM',
'	    /*if Pregunta(''Documento en varios expedientes'',',
unistr('	             ''El documento se encuentra asociado a varios expedientes, \00BFDesea eliminarlo \00FAnicamente en el expediente actual? (En caso contrario se eliminar\00E1 en todos los expedientes que aparezca)'') then */'),
'	       delete from apexweb.documento_expediente ',
' 	             where id_documento = :P30_ID_AUX_DOCU ',
' 	               and codigo_expediente = :P30_CODIGO;',
'	        if :P30_ID_AUX_ACTUACION !=0  THEN',
'           delete from apexweb.documento_actuacion',
'	             where id_documento = :P30_ID_AUX_DOCU',
'	               and id_actuacion = :P30_ID_AUX_ACTUACION;',
'				',
'            end if;	       ',
'	  end if;',
'',
unistr('  -- 3. si es una versi\00F3n la borra '),
'  if :P30_VERSION = 1 then',
'	  delete from apexweb.documento_version ',
'	   where id = :P30_ID_AUX_DOCU',
'	     and version = :P30_ID_AUX_VERSION;  	 ',
'	  bEliminarFila := true;',
'  else  	',
'	  -- borra solo las versiones del usuario o todas si es responsable',
'	  delete from apexweb.documento_version ',
'	   where id = :P30_ID_AUX_DOCU',
'	     and (login = :app_user or :P30_ITM_RESPONSABLE = 1);',
'  end if;',
'  ',
unistr('  -- 4. comprueba si quedan versiones no eliminadas (ser\00E1n de otro usuario y el actual no es responsable)'),
'	select max(version) ',
'	  into nVersion',
'	  from apexweb.documento_version',
'	 where id = :P30_ID_AUX_DOCU;	  	',
'	 ',
unistr('	-- 3. si no hay m\00E1s versiones elimina el documento finalmente'),
'	if nVersion is null then',
'	  -- elimina en todas las tablas relacionadas',
'	  delete from apexweb.documento_expediente ',
' 	   where id_documento = :P30_ID_AUX_DOCU;',
'	  delete from apexweb.documento_actuacion',
'	   where id_documento = :P30_ID_AUX_DOCU;	  	 ',
'	  delete from apexweb.documento_plantilla',
'	   where id_documento = :P30_ID_AUX_DOCU;	  	 ',
'	  delete from apexweb.documento',
'	   where id = :P30_ID_AUX_DOCU;',
'	  bEliminarFila := true;',
'	  -- actualiza la cuenta de documentos',
'	 -- var.nDocumentos := var.nDocumentos - 1;',
'   -- SET_TAB_PAGE_PROPERTY(''PAG_DOCUMENTO'', LABEL, ''Documentos ('' || var.nDocumentos || '')'');',
'	  ',
unistr('  -- 4. si queda alguna versi\00F3n avisa'),
'	elsif bEliminarFila = false then',
'',
'    ',
' APEX_ERROR.ADD_ERROR(',
unistr('            p_message => ''S\00F3lo se eliminaron las versiones del documento correspondientes al login '' || :APP_USER || '),
unistr('        ''. Para eliminar el resto p\00F3ngase en contacto con el responsable del asunto.'','),
'            p_display_location => apex_error.c_inline_in_notification         ',
'        );	',
'    ',
'  	if nVersion <> :P30_ID_AUX_VERSION then		',
unistr('  	  -- actualiza el n\00FAmero de la \00FAltima versi\00F3n'),
'      :P30_ID_AUX_VERSION := nVersion;',
'      select login',
'        into :P30_ITM_LOGIN',
'        from apexweb.documento_version',
'	     where id = :P30_ID_AUX_DOCU',
'	       and version = :P30_ID_AUX_VERSION;',
'    end if;',
'	end if;',
'	',
'',
'    end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ELIMINAR_DOCUMENTO'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>13929638574280249
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2712685078734845)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'inicio_valores_expediente'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P30_CODIGO is not null then',
'        begin',
'            select NVL(CODIGO_ASUNTO, '''') as CODIGO_ASUNTO',
'                 , NVL(CIF_NIF, '''') as CIF_NIF',
'                 , NVL(DESCRIPCION, '''') as DESCRIPCION',
'                 , NVL(CIF_NIF_REPRESENTANTE_LEGAL, '''') as CIF_NIF_REPRESENTANTE_LEGAL',
'                 , NVL(CODIGO_PROCEDIMIENTO, '''') as CODIGO_PROCEDIMIENTO',
'                 , NVL(NOTIFICACION_ELECTRONICA, '''') as NOTIFICACION_ELECTRONICA',
'                 , NVL(CORREO_ELEC_NOTIFICACION, '''') as CORREO_ELEC_NOTIFICACION',
'                 , NVL(TELEFONO_NOTIFICACION, '''') as TELEFONO_NOTIFICACION',
'                ,NVL(tablascomunes.consulta.obtiene_direccion(cif_nif, numero_orden_establecimiento), '''') as ESTABLECIMIENTO',
'                ,NVL(tablascomunes.consulta.obtiene_direccion(cif_nif, numero_orden_titular), '''') as DIRECCION',
'                ,NVL(tablascomunes.consulta.obtiene_direccion(cif_nif, numero_orden_notificacion), '''') as NOTIFICAR_EN',
'                ,NVL(tablascomunes.consulta.Obtiene_Nombre_Administrado(CIF_NIF_REPRESENTANTE_LEGAL), '''') as nom_representante_legal ',
'                --tablascomunes.consulta.Obtiene_Nombre_Administrado();',
'                 ,NVL(CODIGO_ASUNTO, '''') AS GLOBAL_ASUNTO',
'            into :P30_ASUNTO',
'                , :P30_ITM_CIF_NIF           ',
'                , :P30_ITM_NATURALEZA',
'                , :P30_ITM_NIF_REPRESENTANTE_LEGAL',
'                , :P30_PROCEDIMIENTO',
'                , :P30_ITM_NOTIFICACION_ELECTRONICA_D',
'                , :P30_ITM_CORREO_ELEC_NOTIFICACION',
'                , :P30_ITM_TELEFONO_NOTIFICACION',
'                --, :P30_ITM_NOMBRE_ADMINISTRADO',
'                , :P30_ESTABLECIMIENTO',
'                , :P30_ITM_DOMICILIO_TITULAR',
'                , :P30_ITM_DOMICILIO_NOTIFICACION',
'                , :P30_ITM_REPRESENTANTE_LEGAL',
'                , :P30_EXP_CODIGO_ASUNTO',
' ',
'            from apexweb.EXPEDIENTE',
'            where codigo = :P30_CODIGO;',
'',
' exception',
'            when no_data_found then',
'            :P30_ASUNTO := null;',
'                 :P30_ITM_CIF_NIF := null;             ',
'                 :P30_ITM_NATURALEZA := null;',
'                 :P30_ITM_REPRESENTANTE_LEGAL := null;',
'                 :P30_PROCEDIMIENTO := null;',
'                 :P30_ITM_NOTIFICACION_ELECTRONICA_D := null;',
'                 :P30_ITM_CORREO_ELEC_NOTIFICACION := null;',
'                 :P30_ITM_TELEFONO_NOTIFICACION := null;',
'                :P30_CODIGO := null;',
'                  :P30_ESTABLECIMIENTO:= null;',
'                :P30_ITM_DOMICILIO_TITULAR:= null;',
'                :P30_ITM_DOMICILIO_NOTIFICACION:= null;',
'                       :P30_ITM_NIF_REPRESENTANTE_LEGAL := null;',
'                       :P30_ITM_REPRESENTANTE_LEGAL := null;',
'        end;',
'    end if;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11484838855809743
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4498913103068010)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'contador_tabs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_count_obs NUMBER;',
'  v_count_acts NUMBER;',
'  v_count_docs NUMBER;',
'',
'BEGIN',
'',
'--observaciones',
'select COUNT(*) ',
'  INTO v_count_obs',
'  FROM expediente_observaciones',
'  WHERE codigo_expediente = :P30_CODIGO; ',
'',
'  :P30_CONTADOR_OBS := v_count_obs;',
'',
'--actuaciones',
'select COUNT(*) ',
'  INTO v_count_acts',
'  FROM actuacion',
'  WHERE CODIGO_EXPEDIENTE = :P30_CODIGO; ',
'',
'  :P30_CONTADOR_ACTS := v_count_acts;',
'',
'-- documentos',
'select COUNT(*) ',
'  INTO v_count_docs',
'  FROM documento_expediente',
'  WHERE CODIGO_EXPEDIENTE = :P30_CODIGO; ',
'',
'  :P30_CONTADOR_DOCS := v_count_docs;',
'',
'if :P30_EXPEDIENTE_ELECTRONICO is null then ',
unistr(':P30_VAR_ELECT := ''NO'';	-- no hay expediente electr\00F3nico'),
'ELSIF :P30_ITM_EXPEDIENTE_CERRADO = 1  THEN  ',
':P30_VAR_ELECT := ''Cerrado'';	-- expediente cerrado',
'else  ',
unistr(':P30_VAR_ELECT := ''Abierto'';	--el expediente electronico no est\00E1  cerrado'),
'',
'end if;',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P30_CODIGO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>13271066880142908
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3985359047952810)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'descargar_zip'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_download_file_name  VARCHAR2(200) :=  :P30_CODIGO ||''_''||TO_CHAR(SYSDATE,''DDMMYYYY'') || ''.zip'';',
'    var_mimetype varchar2(50) := ''application/zip'';',
'    var_blob blob;',
'BEGIN',
'    -- Log de inicio del proceso',
'    lrpg_add_log(0, ''Begin del proceso download ZIP, nombre del zip: '' || l_download_file_name);',
' select blob001 into var_blob from apex_collections where collection_name = ''ZIP'' and seq_id = 1;',
'    -- Preparar para la descarga del archivo ZIP',
'    sys.htp.init;',
'    sys.owa_util.mime_header( var_mimetype, FALSE );',
'    sys.htp.p(''Content-length: '' || sys.dbms_lob.getlength( var_blob));',
'    sys.htp.p(''Content-Disposition: attachment; filename="'' || l_download_file_name || ''"'' );',
'    --sys.htp.p(''Cache-Control: max-age=3600'');  -- tell the browser to cache for one hour, adjust as necessary',
'    sys.owa_util.http_header_close;',
'    sys.wpg_docload.download_file( var_blob );',
' ',
'    apex_application.stop_apex_engine;',
'',
unistr('    -- Log despu\00E9s de la descarga'),
unistr('    lrpg_add_log(5, ''Descarga del ZIP completada, tama\00F1o del archivo: '' || SYS.DBMS_LOB.GETLENGTH(var_blob));'),
'    apex_application.stop_apex_engine;',
'exception when apex_application.e_stop_apex_engine then        ',
'         NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(2705038110734826)
,p_internal_uid=>12757512825027708
);
wwv_flow_imp.component_end;
end;
/
