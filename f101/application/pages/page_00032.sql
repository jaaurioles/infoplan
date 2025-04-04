prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_name=>'Mantenimiento Actuaciones'
,p_alias=>'MANTENIMIENTO-ACTUACIONES'
,p_page_mode=>'MODAL'
,p_step_title=>'Mantenimiento Actuaciones'
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
'',
'',
'',
'/*$(document).on(''click'', ''.btn-generar'', function() {',
'    var idDocumento = $(this).data("id");  ',
'    //var idPlantilla = $(this).data("id2"); ',
'',
'    $("#P32_ITM_ID_DOCUMENTO").val(idDocumento);',
'    $("#P32_ITM_ID_PLANTILLA").val(idPlantilla);',
'}); */',
'/*$(document).on(''click'', ''.btn-generar'', function() {',
'    var idDocumento = $(this).data("id");  ',
'    //var idPlantilla = $(this).data("id2"); ',
'    apex.item("P32_ITM_ID_DOCUMENTO").setValue(idDocumento);',
'    $("#P32_ITM_ID_DOCUMENTO").trigger("change");',
'',
'}); */'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.actions.add([{',
'    name:"generar",',
'    action:function(event,element, args){',
'',
'    apex.item("P32_ID_AUX").setValue(args.idDocu);',
'    apex.item("P32_ID_AUX_P").setValue(args.idPlantilla);',
'    apex.event.trigger(document,"action-generar");',
'',
'    }',
'}]);',
'',
'apex.actions.add([{',
'    name:"duplicar",',
'    action:function(event,element, args){',
'',
'    apex.item("P32_ID_AUX").setValue(args.idDocu);',
'    apex.item("P32_VERSION").setValue(args.idVersion);',
'    apex.event.trigger(document,"action-duplicar");',
'',
'    }',
'}]);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Button  { /*cuadraditos */',
'    margin-top: 15px;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12179082163836450)
,p_plug_name=>unistr('Actuaci\00F3n')
,p_title=>unistr('Actuaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ACTUACION'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P32_VER_TODOS'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12181383258836473)
,p_plug_name=>'Plantillas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P32_ID'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12181556927836475)
,p_plug_name=>'Plantilla'
,p_title=>'Plantilla'
,p_parent_plug_id=>wwv_flow_imp.id(12181383258836473)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--standardPadding'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct',
'',
'',
'--''<button class="btn-generar" data-id="'' || p.id_documento||''>Genera</button>'' as icono ,',
'''<span id="genera_documento" class="fa fa-file-word-o btn-generar" aria-hidden="true" data-id-docu="'' || p.id_documento || ''"''||'' data-id-plantilla="'' || tp.id_plantilla || '' "title="Generad documento a partir de la plantilla" style="cursor:pointer";'
||'></span>'' as generar_documento,',
'nvl(p.descripcion, x.descripcion) as Plantilla,',
'p.id_documento,',
'tp.id_plantilla',
'from',
'',
'apexweb.tramite_plantilla tp, xml.plantilla x, apexweb.plantilla p',
'',
'where',
'tp.id_plantilla = x.id (+) and ',
'tp.id_plantilla = p.id_documento (+) and ',
'apexweb.consulta.Comprueba_Plantilla_Habilitada(tp.id_plantilla, :P32_ID) = 1',
'order by ',
'nvl(p.descripcion, x.descripcion)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P32_ID,P32_ID_AUX,P32_ID_AUX_P'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Plantilla'
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
 p_id=>wwv_flow_imp.id(12502380945966135)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ALEXANDRA'
,p_internal_uid=>21274534723041033
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12502431787966136)
,p_db_column_name=>'PLANTILLA'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Plantilla'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12502600976966138)
,p_db_column_name=>'ID_DOCUMENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Id Documento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12502697904966139)
,p_db_column_name=>'ID_PLANTILLA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Id Plantilla'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2185168423270525)
,p_db_column_name=>'GENERAR_DOCUMENTO'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'Generar Documento'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
,p_static_id=>'generar'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12508793038969420)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'104554'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GENERAR_DOCUMENTO:PLANTILLA:ID_DOCUMENTO:ID_PLANTILLA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12181403011836474)
,p_plug_name=>'Documentos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P32_ID'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12503743559966149)
,p_plug_name=>'Documentos'
,p_title=>'Documentos'
,p_parent_plug_id=>wwv_flow_imp.id(12181403011836474)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  DECODE(de.origen_documento, 1, ''A'', 2, ''E'', 3, ''S'', 4, ''X'', 5, ''R'', 6, ''F'', 7, ''C''),',
'        ''<input type="checkbox" name="chk_ref" value="'' || de.REFERENCIA || ''" /> '' AS CHECKBOX,',
'        -- nvl2(de.REFERENCIA,1,0)',
'        de.nombre_documento,',
'        de.version,',
'        ''<span id="btn_abre_documento" role="img" aria-label="Abre documento" class="fa fa-cloud-arrow-up" aria-hidden="true" title="Abre documento"></span>'' as abre_documento,',
'        de.login,',
'        de.fecha_modificacion,',
'      --  ''<span id="genera_documento" class="fa fa-file-word-o btn-generar" aria-hidden="true" data-id-docu="'' || p.id_documento || ''"''||'' data-id-plantilla="'' || tp.id_plantilla || '' "title="Generad documento a partir de la plantilla" style="cursor'
||':pointer";></span>'' as generar_documento,',
'',
'        ''<span id="btn_duplica_documento" role="img" aria-label="duplica documento" class="fa fa-files-o btn_duplica_documento" aria-hidden="true" data-id-docu="'' || de.id_documento || ''"''||'' data-id-version="'' || de.version || ''" title="Duplica docu'
||'mento"></span>'' as duplica_documento,',
'        ''<span id="btn_pdf" role="img" aria-label=" Pasar a PDF" class="fa fa-file-pdf-o btn-pdf" aria-hidden="true" title="Documento a PDF"></span>'' as btn_pdf,',
'''<span id="btn_portafirmas" role="img" aria-label="Portafirmas" class="fa fa-signature" aria-hidden="true" title="Documento a portafirmas" style="',
'    pointer-events: none;',
'"></span>'' as btn_portafirmas,',
'        '' '' as estado_portafirmas,',
unistr('        '' '' as estado_notificaci\00F3n,'),
'        de.id_documento,',
'        de.CODIGO_EXPEDIENTE,',
'        de.ID_ACTUACION,',
'          ''<span id="btn_descarga_documento"  aria-label="Descarga documento" class="fa fa-cloud-download btn-descargar" title="Descargar documento" style="cursor:pointer";></span>'' as descarga_documento,',
'        dv.id_blob',
'',
'',
'       from ',
'       apexweb.v_documento_expediente de',
'      left JOIN apexweb.documento_version dv ON de.id_documento = dv.id',
'       where 1= 1 ',
'        and de.version = de.ultima_version',
'        AND de.ID_ACTUACION = :P32_ID',
'        order by ',
'        de.fecha_modificacion desc, de.origen_documento, de.nombre_documento'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P32_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Documentos'
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
 p_id=>wwv_flow_imp.id(12503859053966150)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ALEXANDRA'
,p_internal_uid=>21276012831041048
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12504023636966152)
,p_db_column_name=>'DECODE(DE.ORIGEN_DOCUMENTO,1,''A'',2,''E'',3,''S'',4,''X'',5,''R'',6,''F'',7,''C'')'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'O'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12504182910966153)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'DE'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12504198525966154)
,p_db_column_name=>'NOMBRE_DOCUMENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12504387253966155)
,p_db_column_name=>'VERSION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Versi\00F3n')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12504474864966156)
,p_db_column_name=>'ABRE_DOCUMENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Abre doc'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12504533024966157)
,p_db_column_name=>'LOGIN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Login'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12504623359966158)
,p_db_column_name=>'FECHA_MODIFICACION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12504754509966159)
,p_db_column_name=>'DUPLICA_DOCUMENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Duplicar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
,p_static_id=>'btn_duplica_documento'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12504868105966160)
,p_db_column_name=>'BTN_PDF'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'PDF'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12504981167966161)
,p_db_column_name=>'BTN_PORTAFIRMAS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'PTF'
,p_column_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131:P131_PAG_ORIGEN,P131_ID_DOC,P131_VERSION,P131_ID_ACTUACION,P131_ID_DOCUMENTO,P131_EXP_CODIGO:32,#ID_DOCUMENTO#,#VERSION#,#ID_ACTUACION#,#ID_DOCUMENTO#,#CODIGO_EXPEDIENTE#'
,p_column_linktext=>'#BTN_PORTAFIRMAS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12505080588966162)
,p_db_column_name=>'ESTADO_PORTAFIRMAS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'PT'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12505102004966163)
,p_db_column_name=>unistr('ESTADO_NOTIFICACI\00D3N')
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'NT'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4051847512165506)
,p_db_column_name=>'ID_DOCUMENTO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Id Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4840229657343406)
,p_db_column_name=>'DESCARGA_DOCUMENTO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Descarga'
,p_column_link=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.::P172_ID_BLOB,P172_NOMBRE:#ID_BLOB#,#NOMBRE_DOCUMENTO#'
,p_column_linktext=>'#DESCARGA_DOCUMENTO#'
,p_column_link_attr=>'style="color: black"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4840311309343407)
,p_db_column_name=>'ID_BLOB'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Id Blob'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4953918196649533)
,p_db_column_name=>'CODIGO_EXPEDIENTE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Codigo Expediente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4953977479649534)
,p_db_column_name=>'ID_ACTUACION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Id Actuacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12725358991271070)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'106720'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('DECODE(DE.ORIGEN_DOCUMENTO,1,''A'',2,''E'',3,''S'',4,''X'',5,''R'',6,''F'',7,''C''):CHECKBOX:NOMBRE_DOCUMENTO:VERSION:DESCARGA_DOCUMENTO:ABRE_DOCUMENTO:LOGIN:FECHA_MODIFICACION:DUPLICA_DOCUMENTO:BTN_PDF:BTN_PORTAFIRMAS:ESTADO_PORTAFIRMAS:ESTADO_NOTIFICACI\00D3N:')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16996841071443778982)
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
 p_id=>wwv_flow_imp.id(2053964011829435)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12181383258836473)
,p_button_name=>'BTN_PLANTILLAS_TRAMITE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Mant. Plantilla'
,p_button_redirect_url=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.::P170_ID_ACTUACION,P170_TRAMITE,P170_ID_UNIDAD_ORGANIZATIVA:&P32_ID.,&P32_ID_TRAMITE.,&P30_ASUNTO.'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2057938360829448)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12181403011836474)
,p_button_name=>'BTN_ADJUNTAR_DOCUMENTO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Adjunta Documento'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::P34_CODIGO_EXPEDIENTE,P34_ID_ACTUACION:&P32_CODIGO_EXPEDIENTE.,&P32_ID.'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2064899245829457)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_button_name=>'duplicar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Duplicar'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::EXP_CODIGO,ID_ACTUACION,EXP_CODIGOASUNTO,ITM_ID_TRAMITE:&P32_CODIGO_EXPEDIENTE.,&P32_ID.,17,&P32_ID_TRAMITE.'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3773148429667985)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_button_name=>'btn_usuario_tramite'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'Mant. Usuario tramite'
,p_button_redirect_url=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:120:P120_ID_ACTUACION,P120_USER:&P32_ID.,&P32_LOGIN.'
,p_icon_css_classes=>'fa-caret-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_button_comment=>'Boton utilizado para mostrar el formulario de mantenimiento del dato de un campo.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2063691107829456)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_button_name=>'Guardar'
,p_button_static_id=>'Guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9654896273772932416)
,p_button_image_alt=>'Guardar'
,p_button_position=>'CHANGE'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2064525122829457)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_button_name=>'Crear'
,p_button_static_id=>'Crear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9654896273772932416)
,p_button_image_alt=>'Guardar'
,p_button_position=>'CHANGE'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2063265130829456)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2064097032829457)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_button_name=>'Borrar'
,p_button_static_id=>'Borrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9654896273772932416)
,p_button_image_alt=>'Borrar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('\00BFEst\00E1 seguro de querer borrar el registro?')
,p_confirm_style=>'warning'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash-o'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2076635437829469)
,p_branch_name=>'after_delete'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.:NO_CLEAR:&DEBUG.:RP,32:P30_CODIGO:&P32_CODIGO_EXPEDIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2064097032829457)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185523626270528)
,p_name=>'P32_ID_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12181556927836475)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185617576270529)
,p_name=>'P32_ID_AUX_P'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12181556927836475)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5156264271205339)
,p_name=>'P32_VERSION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12181556927836475)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12191130705836476)
,p_name=>'P32_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_source_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12191246243836477)
,p_name=>'P32_FECHA'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_source_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
,p_source=>'FECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12191344938836478)
,p_name=>'P32_FECHA_HORA_REGISTRO'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_source_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'FECHA_HORA_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12191438634836479)
,p_name=>'P32_CODIGO_EXPEDIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_source_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_prompt=>'Codigo Expediente'
,p_source=>'CODIGO_EXPEDIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12191465626836480)
,p_name=>'P32_LOGIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_source_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_default=>'SMM00X'
,p_prompt=>'Login'
,p_source=>'LOGIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12191594957836481)
,p_name=>'P32_LOGIN_USUARIO_DESTINO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_source_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_prompt=>'Login Destino'
,p_source=>'LOGIN_USUARIO_DESTINO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT u.login || '' '' || upper(u.nombre || '' '' || u.apellido1 || '' '' || u.apellido2) AS NOMBRE, U.LOGIN',
' FROM TABLASCOMUNES.USUARIO U'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>8
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12191657401836482)
,p_name=>'P32_ID_TRAMITE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_source_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_prompt=>'Id Tramite'
,p_source=>'ID_TRAMITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.codigo||''-''||t.descripcion , t.id',
'       from tramite t ',
' ',
' /*select to_char(t.id) , t.descripcion --t.tabla_datos ',
'      from apexweb.tramite t ',
'     where codigo_asunto = :P30_EXP_CODIGO_ASUNTO',
unistr('       and exists (select 1 from apexweb.usuario_tramite u where u.login = user and u.id_tramite = t.id) -- el usuario tiene permiso en el tr\00E1mite'),
'       and exists (select 1 from apexweb.flujo_tramites f   -- comprueba flujos',
unistr('                        where :P32_VER_TODOS = 1  -- se pide ver todos los tr\00E1mites saltando el flujo'),
unistr('                        or (t.tramite_huerfano = 1 and (select count(*) from apexweb.actuacion -- tr\00E1mites hu\00E9rfanos'),
'                                                          where codigo_expediente = :P32_CODIGO_EXPEDIENTE  ) > 0) ',
'                         or (t.actuacion_inicial = 1 and (select count(*) from apexweb.actuacion -- actuaciones iniciales',
'                                                           where codigo_expediente = :P32_CODIGO_EXPEDIENTE) = 0) ',
unistr('                         or (tipo_flujo in (1, 3) and  -- tr\00E1mites que corresponden por flujo'),
'						                 id_tramite_siguiente = t.id and ',
unistr('                             id_tramite_anterior = (select id_tramite from (select id_tramite from apexweb.actuacion  -- obtiene el tr\00E1mite anterior'),
'						                            where codigo_expediente =  :P32_CODIGO_EXPEDIENTE',
'                                                                             order by fecha desc, id desc)    ',
'                                                    where rownum=1)))',
unistr('       and not exists (select 1 from apexweb.flujo_tramites f -- elimina de la lista tr\00E1mites no permitidos por el flujo'),
unistr('                        where tipo_flujo in (2, 3)  -- el tr\00E1mite anterior tiene que existir'),
'				                and id_tramite_siguiente = t.id ',
'						        and id_tramite_anterior not in (select id_tramite from apexweb.actuacion',
'						        where codigo_expediente =  :P32_CODIGO_EXPEDIENTE)',
'       and not exists (select 1 from apexweb.flujo_tramites f ',
unistr('                        where tipo_flujo = 4 -- si existe el tr\00E1mite anterior no puede darse el siguiente'),
'					            and id_tramite_siguiente = t.id',
'						        and id_tramite_anterior in (select id_tramite from apexweb.actuacion ',
'						                                           where codigo_expediente =  :P32_CODIGO_EXPEDIENTE)',
unistr('       and (select count(*) from apexweb.actuacion a  -- no se ha alcanzado el n\00FAmero m\00E1ximo de repeticiones'),
'                           where a.codigo_expediente = :P32_CODIGO_EXPEDIENTE',
'                            and a.id_tramite = t.id) < nvl(t.numero_repeticiones, 10000) ));',
'                            */',
'                         '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P32_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12191848842836483)
,p_name=>'P32_OBSERVACIONES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_source_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_prompt=>'Observaciones'
,p_source=>'OBSERVACIONES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12191904404836484)
,p_name=>'P32_TIPO_ENVIO_DOCUMENTOS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_item_source_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_source=>'TIPO_ENVIO_DOCUMENTOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:P;1,E;2'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12192359149836489)
,p_name=>'P32_VER_TODOS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12179082163836450)
,p_prompt=>'Ver Todos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12504090136966144)
,p_name=>'P32_ITM_ID_DOCUMENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12181383258836473)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12504146392966145)
,p_name=>'P32_ITM_ID_PLANTILLA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12181383258836473)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12504308120966147)
,p_name=>'P32_CAS_PLANTILLA_XML'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12181383258836473)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16996841320730778982)
,p_name=>'P32_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16996841071443778982)
,p_prompt=>'<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Actuaciones</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2073321555829466)
,p_name=>'cancela'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2063265130829456)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2073844156829467)
,p_event_id=>wwv_flow_imp.id(2073321555829466)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2075107382829467)
,p_name=>'generar'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn-generar'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185406673270527)
,p_event_id=>wwv_flow_imp.id(2075107382829467)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'set_value'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var idDocu = this.triggeringElement.dataset.idDocu;',
'var idPlantilla = this.triggeringElement.dataset.idPlantilla;',
'apex.item("P32_ID_AUX").setValue(idDocu);',
'apex.item("P32_ID_AUX_P").setValue(idPlantilla);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2076077739829468)
,p_event_id=>wwv_flow_imp.id(2075107382829467)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'act_generar_documento'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>id docu:  &P32_ID_AUX.</p>',
'<p>id plantilla: &P32_ID_AUX_P.</p>'))
,p_attribute_02=>'Sin funcionamiento'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2075618140829468)
,p_event_id=>wwv_flow_imp.id(2075107382829467)
,p_event_result=>'TRUE'
,p_action_sequence=>60
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
'  if :P32_ID is null then',
'  	return ;',
'  end if;',
'  ',
'  nIdActuacion := :P32_ID;',
'  nIdPlantilla := :P32_ID_AUX_P; -- id de la plantilla',
'  nIdDocumento := :P32_ID_AUX; -- id del documento',
'  --bPlantillaXML := :P32_CAS_PLANTILLA_XML;',
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
'    :p32_ITM_ID_DOCUMENTO := nIdDocumento;',
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
,p_attribute_02=>'P32_ID,P32_ITM_ID_PLANTILLA,P32_ITM_ID_DOCUMENTO,P32_ID_AUX_P,P32_ID_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2074238301829467)
,p_name=>'abre_documento'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btn_abre_documento'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2074724326829467)
,p_event_id=>wwv_flow_imp.id(2074238301829467)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'act_abre_documento'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No se puede abrir documento por ahora.'
,p_attribute_02=>'Sin funcionamiento'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2072419303829465)
,p_name=>'duplicar'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn_duplica_documento'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5156649688205343)
,p_event_id=>wwv_flow_imp.id(2072419303829465)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr(' Se crear\00E1 una copia del documento.')
,p_attribute_02=>'Duplicar Documento'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5156459694205341)
,p_event_id=>wwv_flow_imp.id(2072419303829465)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var idDocu = this.triggeringElement.dataset.idDocu;',
'var idVersion = this.triggeringElement.dataset.idVersion;',
'apex.item("P32_ID_AUX").setValue(idDocu);',
'apex.item("P32_VERSION").setValue(idVersion);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5156818357205344)
,p_event_id=>wwv_flow_imp.id(2072419303829465)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'datos:  &P32_VERSION. ',
'&P32_ID_AUX.'))
,p_attribute_02=>'Duplicar Documento'
,p_attribute_03=>'success'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2072914276829466)
,p_event_id=>wwv_flow_imp.id(2072419303829465)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'act_duplicar_documento'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No se puede duplicar documento por ahora.'
,p_attribute_02=>'Sin funcionamiento'
,p_attribute_03=>'warning'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5156351324205340)
,p_event_id=>wwv_flow_imp.id(2072419303829465)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    nIdDocumentoDuplicado   NUMBER;',
'    nVersionDuplicado       NUMBER;',
'    sDescripcionError       VARCHAR2(4000);',
'BEGIN',
'  ',
'',
'if apexweb.utilidades.duplica_documento(1, :P32_ID_AUX, ',
'   			:P32_VERSION, 1, :P32_ID, null,',
'   			nIdDocumentoDuplicado, nVersionDuplicado, sDescripcionError) = 1 then',
'    	commit;',
'',
'  else	',
'   APEX_ERROR.ADD_ERROR(',
'            p_message => ''No se ha podido duplicar el documento: '' || sDescripcionError, ',
'            p_display_location => apex_error.c_inline_in_notification',
'        );	',
'		--Mensaje(''DUPLICAR DOCUMENTO'', ''No se ha podido duplicar el documento: '' || sDescripcionError);',
'',
'    END IF;',
'END;'))
,p_attribute_02=>'P32_VERSION,P32_ID_AUX,P32_CODIGO_EXPEDIENTE,P32_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5156602382205342)
,p_event_id=>wwv_flow_imp.id(2072419303829465)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Documento duplicado correctamente.'
,p_attribute_02=>'Duplicar Documento'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5156912042205345)
,p_event_id=>wwv_flow_imp.id(2072419303829465)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12503743559966149)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3986015923952816)
,p_name=>'COMPROBACION'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2064097032829457)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3986313504952819)
,p_event_id=>wwv_flow_imp.id(3986015923952816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('La actuaci\00F3n tiene documentos asociados que deben eliminarse previamente (desde la pantalla principal del expediente')
,p_attribute_02=>unistr('Eliminar actuaci\00F3n')
,p_attribute_03=>'information'
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_DOCUMENTO',
'		  from apexweb.documento_actuacion a',
'	   where id_actuacion = :P32_ID;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3986143271952817)
,p_event_id=>wwv_flow_imp.id(3986015923952816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'Borrar'
,p_attribute_02=>'Y'
,p_server_condition_type=>'NOT_EXISTS'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_DOCUMENTO',
'		  from apexweb.documento_actuacion a',
'	   where id_actuacion = :P32_ID;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4052288342165510)
,p_name=>'Recargar_tras_cerrar'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12503743559966149)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4052376490165511)
,p_event_id=>wwv_flow_imp.id(4052288342165510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12181403011836474)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4502073265068042)
,p_name=>'alert_pdf'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn-pdf'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4502226990068043)
,p_event_id=>wwv_flow_imp.id(4502073265068042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Esta funcionalidad de conversi\00F3n a pdf requiere de un an\00E1lisis m\00E1s exhaustivo (una api externa como PL-jrxml2PDF).'),
unistr('De momento no est\00E1 disponible.')))
,p_attribute_02=>unistr('Atenci\00F3n!')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2071985966829465)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'configurar_act_id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    nExpedientesElectAbiertos NUMBER;',
'    nEsTramiteArchivoErrorCreacion NUMBER;',
'BEGIN',
'',
'    ',
unistr('    -- Comprobaci\00F3n de tr\00E1mite de archivo por error de creaci\00F3n'),
'    SELECT COUNT(t.id)',
'    INTO nEsTramiteArchivoErrorCreacion',
'    FROM apexweb.tramite t',
'    WHERE t.id = :P32_ID_TRAMITE AND t.codigo = tablascomunes.obtiene_parametro(''APEX'', ''TRAMITE_COD_ARCHIVO_ALTA_ERROR'');',
'',
'    IF nEsTramiteArchivoErrorCreacion > 0 THEN',
unistr('        -- Verificar si hay expedientes electr\00F3nicos abiertos'),
'        SELECT COUNT(ee.id)',
'        INTO nExpedientesElectAbiertos',
'        FROM ae.expediente_electronico ee',
'        WHERE ee.codigo_expediente_apex = :P32_CODIGO_EXPEDIENTE AND ee.expediente_cerrado = 0;',
'',
'    END IF;',
'',
unistr('     -- Validaci\00F3n de tipo de env\00EDo de documentos'),
'    IF :P32_LOGIN_USUARIO_DESTINO IS NOT NULL AND :P32_TIPO_ENVIO_DOCUMENTOS = 0 THEN',
'        APEX_ERROR.ADD_ERROR(',
unistr('            p_message => ''Si selecciona un login de usuario de destino, tambi\00E9n debe indicar si la documentaci\00F3n se entrega en papel(P) o electr\00F3nicamente(E)'', '),
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'    END IF;',
'',
'    IF nExpedientesElectAbiertos > 0 THEN',
unistr('            -- Si el expediente est\00E1 abierto, mostrar el mensaje '),
'        APEX_ERROR.ADD_ERROR(',
unistr('            p_message => ''Existe expediente electr\00F3nico abierto. \00C9ste se cerrar\00E1 previo archivo del expediente APEXWEB. \00BFEst\00E1 de acuerdo?'', '),
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'           end if;',
'',
'    -- Obtener el ID del nuevo registro si no existe',
'    IF :P32_ID IS NULL THEN',
'        SELECT apexweb.s_actuacion.nextval INTO :P32_ID FROM dual;',
'    END IF;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2064525122829457)
,p_internal_uid=>10844139743904363
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2071508704829464)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12179082163836450)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'form_dml_actuacion'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>' Guardar, Borrar'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10843662481904362
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3985896440952815)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREAR_ACTUACION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRUEBA LLAMADA A UTILIDADES',
'DECLARE',
'',
'sCodigoExpediente varchar2(20); ',
'dtFecha date; ',
'sLogin varchar2(20); ',
'nIdTramite number;',
'sObservaciones varchar2(2000);',
' sLoginDestino varchar2(20);',
'BEGIN',
'',
'sCodigoExpediente := :P32_CODIGO_EXPEDIENTE;',
'dtFecha:= :P32_FECHA;',
'sLogin := :P32_LOGIN;',
'nIdTramite := :P32_ID_TRAMITE;',
'sObservaciones:= :P32_OBSERVACIONES;',
'sLoginDestino := :P32_LOGIN_USUARIO_DESTINO;',
'',
'-- procedimientoS de APEXWEB.UTILIDADES',
' APEXWEB.UTILIDADES.Crea_Actuacion(sCodigoExpediente , dtFecha, sLogin , nIdTramite , sObservaciones , :P32_ID );',
' APEXWEB.UTILIDADES.asignar_login_destino(:P32_ID , sLoginDestino ) ;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2064525122829457)
,p_internal_uid=>12758050218027713
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4840415529343408)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'duplicar_documento'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL;',
'',
'/*DECLARE',
'    nIdDocumentoDuplicado   NUMBER;',
'    nVersionDuplicado       NUMBER;',
'    sDescripcionError       VARCHAR2(4000);',
'BEGIN',
'  ',
unistr('    IF APEX_UTIL.PROMPT(''DUPLICAR DOCUMENTO'', ''Se crear\00E1 una copia del documento'') = ''NO'' THEN'),
'        RETURN;',
'    END IF;',
'',
'    -- Call the duplicate document procedure',
'    IF apexweb.utilidades.duplica_documento(',
'            1, ',
'            :P32_ITM_ID_DOCUMENTO, ',
'            :p32_ITM_VERSION, ',
'            :R, ',
'            :P32_ID, ',
'            NULL,',
'            nIdDocumentoDuplicado, ',
'            nVersionDuplicado, ',
'            sDescripcionError) = 1 THEN',
'',
'        COMMIT;',
'       ',
'    ELSE',
'        -- Show an error message if duplication fails',
'        APEX_UTIL.SET_SESSION_STATE(''MESSAGE'', ''DUPLICAR DOCUMENTO: No se ha podido duplicar el documento: '' || sDescripcionError);',
'        APEX_UTIL.NOTIFY(',
'            p_message => ''DUPLICAR DOCUMENTO: No se ha podido duplicar el documento: '' || sDescripcionError,',
'            p_type    => ''ERROR''',
'        );',
'    END IF;',
'END;*/'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>13612569306418306
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2071057606829464)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12179082163836450)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Mantenimiento Actuaciones'
,p_internal_uid=>10843211383904362
);
wwv_flow_imp.component_end;
end;
/
