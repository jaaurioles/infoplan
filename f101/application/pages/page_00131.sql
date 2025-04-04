prompt --application/pages/page_00131
begin
--   Manifest
--     PAGE: 00131
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
 p_id=>131
,p_name=>'Documento Portafirmas Details'
,p_alias=>'DOCUMENTO-PORTAFIRMAS-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Documento Portafirmas Details'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    let itemDestino = "#P131_LISTA_ANEXOS"; // Reemplaza con el nombre de tu item destino',
'',
unistr('    // Funci\00F3n para actualizar el item con los c\00F3digos seleccionados'),
'    function actualizarItem() {',
'        let seleccionados = [];',
'        ',
'        $("input[name=f01]:checked").each(function() {',
'            seleccionados.push($(this).val());',
'        });',
'',
'        // Unimos los valores y actualizamos el item destino',
'        $(itemDestino).val(seleccionados.join('',''));',
'    }',
'',
'    // Manejar clic en cualquier checkbox del listado',
'    $(document).on("change", "input[name=f01]", function() {',
'        actualizarItem();',
'    });',
'',
unistr('    // Manejar selecci\00F3n/deselecci\00F3n masiva'),
'    $("#SelectListaAnexo").on("change", function() {',
'        $("input[name=f01]").prop("checked", this.checked);',
'        actualizarItem();',
'    });',
'});'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(855099596835918)
,p_plug_name=>'Region_1'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>70
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(855376807835921)
,p_plug_name=>'Cabecera_1'
,p_parent_plug_id=>wwv_flow_imp.id(855099596835918)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-bottom-none'
,p_region_attributes=>'style="background-color: #AD303B; display: flex; align-items: center; height: 100%; padding-top: 10px; padding-left: 15px; padding-right: 10px; padding-bottom: 10px;"'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(856338126835930)
,p_plug_name=>'Cuerpo_1'
,p_parent_plug_id=>wwv_flow_imp.id(855099596835918)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2212688397416602)
,p_plug_name=>'Documento Portafirmas Details'
,p_parent_plug_id=>wwv_flow_imp.id(856338126835930)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dp.ID_DOCUMENTO',
'      ,dp.VERSION',
'      ,dp.LOGIN_FIRMA',
'      ,dp.ID_SOLICITUD',
'      ,dp.ID_DOCUMENTO_PORTAFIRMAS',
'      ,dp.CODIGO_ESTADO',
unistr('--      ,decode(nvl(dp.CODIGO_ESTADO,-2),0,''Pendiente de env\00EDo'''),
'--                                      ,1,''Enviado''',
'--                                      ,2,''Firmado''',
'--                                      ,-2,''''',
'--                                       ,''Error al enviar''',
'--             ) as CODIGO_ESTADO_TEXT',
'      ,dp.MENSAJE',
'      ,dp.LOGIN_SEGUNDA_FIRMA',
'      ,dp.FLUJO_FIRMA',
'      ,dp.FECHA_FIRMA',
'      ,dp.LOGIN_ENVIO',
'      ,dp.FECHA_ENVIO',
'      ,dp.LISTA_ANEXOS',
'      ,dp.NOTIFICACION_AUTOMATICA',
'      ,dp.NOTIFICACION_AUTOMATICA_ANEXOS',
'      ,dp.LOGIN_TERCERA_FIRMA',
'      ,dp.DOCUMENTO_ELECTRONICO',
'      ,dp.CODIGO_CLASE_DOCUMENTO',
'      ,dp.LOGIN_CUARTA_FIRMA',
'      ,dp.LOGIN_SEG_ENVIO',
'      ,dp.LOGIN_TER_ENVIO',
'--      ,do.ID',
'--      ,do.CODIGO_TIPO',
'--      ,do.NOMBRE',
'--      ,do.CLASE_DOCUMENTO',
'  from apexweb.documento_portafirmas dp',
'--      ,apexweb.documento do',
'  where /*dp.id_documento = do.id(+)',
'    and */dp.id_documento = :P131_ID_DOCUMENTO --:GLOBAL.DOC_Id ',
'    and dp.version = :P131_VERSION --:GLOBAL.DOC_Version'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P131_ID_DOCUMENTO,P131_VERSION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(855228849835919)
,p_plug_name=>'Region_2'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>80
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(855452074835922)
,p_plug_name=>'Cabecera_2'
,p_parent_plug_id=>wwv_flow_imp.id(855228849835919)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-bottom-none'
,p_region_attributes=>'style="background-color: #AD303B; display: flex; align-items: center; height: 100%; padding-top: 10px; padding-left: 15px; padding-right: 10px; padding-bottom: 10px;"'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(856474231835932)
,p_plug_name=>'Cuerpo_2'
,p_parent_plug_id=>wwv_flow_imp.id(855228849835919)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(856565501835933)
,p_plug_name=>'Documento_expediente'
,p_region_name=>'Report_LISTANEXO'
,p_parent_plug_id=>wwv_flow_imp.id(856474231835932)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.ORIGEN_DOCUMENTO',
'      ,d.ID_TRAMITE',
'      ,d.NOMBRE_DOCUMENTO',
'      ,d.VERSION',
'      ,d.ULTIMA_VERSION',
'      ,d.LOGIN',
'      ,d.FECHA_MODIFICACION',
'      ,d.ID_DOCUMENTO',
'      ,d.REFERENCIA',
'      ,d.ID_ACTUACION',
'      ,d.HAY_FICHERO',
'      ,d.EDITABLE',
'      ,d.CODIGO_EXPEDIENTE',
',apex_item.checkbox(02, d.ORIGEN_DOCUMENTO || ''-'' || d.ID_DOCUMENTO || ''-'' || d.VERSION, decode(nvl2(d.REFERENCIA,1,0), 1, ''CHECKED'', 0, '''')) Documento_electronico',
','' '' Observaciones',
'      ,db.id id_blob',
'      ,''<span id="btn_descarga_documento"  aria-label="Descarga documento" class="fa fa-cloud-download btn-descargar" title="Descargar documento" style="cursor:pointer";></span>'' as descarga_documento',
'--      ,apex_item.checkbox(01, d.ORIGEN_DOCUMENTO || ''-'' || d.ID_DOCUMENTO || ''-'' || d.VERSION, ''CHECKED'')  as selector_lista_anexo',
',d.ORIGEN_DOCUMENTO || ''-'' || d.ID_DOCUMENTO || ''-'' || d.VERSION as codigo_lista_anexo',
'      ,apex_item.checkbox(01, d.ORIGEN_DOCUMENTO || ''-'' || d.ID_DOCUMENTO || ''-'' || d.VERSION, (select ''CHECKED''',
'from(',
'select distinct REGEXP_SUBSTR(LISTA_ANEXOS',
'                    ,''[^,]+''',
'                    ,1',
'                    ,LEVEL) anexo',
'  from documento_portafirmas',
'  where id_documento = 1329717  ',
'  CONNECT BY REGEXP_SUBSTR(LISTA_ANEXOS,',
'                                         ''[^,]+'',',
'                                         1,',
'                                         LEVEL)',
'                             IS NOT NULL',
')',
'where anexo = d.ORIGEN_DOCUMENTO || ''-'' || d.ID_DOCUMENTO || ''-'' || d.VERSION',
'                                                                                               ) ',
'                         )  as selector_lista_anexo',
'  from apexweb.v_documento_expediente d',
'JOIN apexweb.documento_version dv ON d.id_documento = dv.id',
'LEFT JOIN apexweb.documento_blob db on db.id = dv.id_blob ',
'  where d.codigo_expediente = :P131_EXP_CODIGO --:GLOBAL.EXP_Codigo ',
'    and (d.id_documento <> to_char(:P131_ID_DOC--:P131_ID_DOCUMENTO--:BLQ_DOCUMENTO_PORTAFIRMAS.ITM_ID_DOCUMENTO',
'                                    ) ',
'        or id_documento is null) ',
'    and (d.version is null ',
'      or d.version in (select max(v.version) ',
'                         from apexweb.v_documento_expediente v ',
'                         where to_char(nvl(v.id_documento,v.referencia)) = nvl(d.id_documento,d.referencia) ',
'                           and v.origen_documento = d.origen_documento',
'                      )',
'        )',
'    and d.ORIGEN_DOCUMENTO not in (7)',
'and d.ORIGEN_DOCUMENTO = nvl(:P131_DOCUMENTO_EXPEDIENTE_CAMPO_2, d.ORIGEN_DOCUMENTO)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P131_EXP_CODIGO,P131_ID_DOC,P131_DOCUMENTO_EXPEDIENTE_CAMPO_2'
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
 p_id=>wwv_flow_imp.id(856694285835934)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No hay datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SAMUEL'
,p_internal_uid=>9628848062910832
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(856794817835935)
,p_db_column_name=>'ORIGEN_DOCUMENTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Origen Documento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(2781358696521272)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(856856371835936)
,p_db_column_name=>'ID_TRAMITE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Tramite'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(856952716835937)
,p_db_column_name=>'NOMBRE_DOCUMENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(857088301835938)
,p_db_column_name=>'VERSION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(857165057835939)
,p_db_column_name=>'ULTIMA_VERSION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ultima Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(857288752835940)
,p_db_column_name=>'LOGIN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Login'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(857368143835941)
,p_db_column_name=>'FECHA_MODIFICACION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha Modificacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(857493737835942)
,p_db_column_name=>'ID_DOCUMENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Id Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(857584000835943)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Referencia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(857661630835944)
,p_db_column_name=>'ID_ACTUACION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Id Actuacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(857773531835945)
,p_db_column_name=>'HAY_FICHERO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Hay Fichero'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(857903537835946)
,p_db_column_name=>'EDITABLE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Editable'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(858010789835947)
,p_db_column_name=>'CODIGO_EXPEDIENTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Codigo Expediente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4055308096165540)
,p_db_column_name=>'ID_BLOB'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Id Blob'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4055405151165541)
,p_db_column_name=>'DESCARGA_DOCUMENTO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.::P172_ID_BLOB:#ID_BLOB#'
,p_column_linktext=>'#DESCARGA_DOCUMENTO#'
,p_column_link_attr=>'style="color: black"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4056480617165552)
,p_db_column_name=>'SELECTOR_LISTA_ANEXO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'<input type="checkbox" id="SelectListaAnexo">'
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
,p_static_id=>'Report_LISTANEXO_COLUMN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4951474497649509)
,p_db_column_name=>'CODIGO_LISTA_ANEXO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Codigo Lista Anexo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4951650673649511)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4951759171649512)
,p_db_column_name=>'DOCUMENTO_ELECTRONICO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Documento Electronico'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2613877449796130)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'113861'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECTOR_LISTA_ANEXO:ORIGEN_DOCUMENTO:NOMBRE_DOCUMENTO:OBSERVACIONES:DESCARGA_DOCUMENTO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3698683339181533)
,p_plug_name=>'Campo_2'
,p_parent_plug_id=>wwv_flow_imp.id(856474231835932)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(855270786835920)
,p_plug_name=>'Region_3'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>90
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(855571022835923)
,p_plug_name=>'Cabecera_3'
,p_parent_plug_id=>wwv_flow_imp.id(855270786835920)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-bottom-none'
,p_region_attributes=>'style="background-color: #AD303B; display: flex; align-items: center; height: 100%; padding-top: 10px; padding-left: 15px; padding-right: 10px; padding-bottom: 10px;"'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(856367717835931)
,p_plug_name=>'Cuerpo_3'
,p_parent_plug_id=>wwv_flow_imp.id(855270786835920)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(858108566835948)
,p_plug_name=>'Notificacion'
,p_parent_plug_id=>wwv_flow_imp.id(856367717835931)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ei.CODIGO_EXPEDIENTE',
'      --,ei.CIF_NIF',
'      ,nvl(ei.TIPO_INTERESADO, ''Otro'') as TIPO_INTERESADO',
'      --,ei.CODIGO_TIPO_NOTIFICACION',
'      ,ei.CORREO_NOTIFICACION',
'      ,ei.TELEFONO_NOTIFICACION',
'      ,de.ORIGEN_DOCUMENTO',
'      ,de.ID_TRAMITE',
'      ,de.NOMBRE_DOCUMENTO',
'      --,de.VERSION',
'      ,de.ULTIMA_VERSION',
'      ,de.LOGIN',
'      ,de.FECHA_MODIFICACION',
'      --,de.ID_DOCUMENTO',
'      ,de.REFERENCIA',
'      ,de.ID_ACTUACION',
'      ,de.HAY_FICHERO',
'      ,de.EDITABLE',
'      --,de.CODIGO_EXPEDIENTE',
'      ,na.ID_DOCUMENTO',
'      ,na.VERSION',
'      ,na.CIF_NIF',
'      ,na.CODIGO_TIPO_NOTIFICACION',
'      ,na.CORREO_ELECTRONICO',
'      ,na.TELEFONO',
'      ,na.NOTIFICAR_ANEXOS',
'      ,na.NOTIFICAR_ANEXOS as con_anexos',
'      ,decode(nvl(NOTIFICAR_ANEXOS,0), 1, ''fa fa-check'' , ''fa fa-times'') as con_anexos_icon',
'      ,decode(nvl(NOTIFICAR_ANEXOS,0), 1, ''green'', ''red'') as con_anexos_icon_color',
'      ,na.NOTIFICAR_ANEXOS as sin_anexos',
'      ,decode(nvl(NOTIFICAR_ANEXOS,0), 2, ''fa fa-check'' , ''fa fa-times'') as sin_anexos_icon',
'      ,decode(nvl(NOTIFICAR_ANEXOS,0), 2, ''green'', ''red'') as sin_anexos_icon_color',
'      ,na.ID_ACTUACION_NOTIFICACION',
',substr(tablascomunes.consulta.obtiene_nombre_administrado(na.cif_nif),1,90) nombre',
'  from apexweb.V_EXPEDIENTE_INTERESADO ei',
'      ,apexweb.V_DOCUMENTO_EXPEDIENTE de',
'      ,apexweb.NOTIFICACION_AUTOMATICA na',
'  where de.id_documento = na.id_documento ',
'    and de.version = na.version ',
'    and na.cif_nif = ei.cif_nif(+) ',
'--    and ei.codigo_expediente(+)  = nvl(:P131_EXP_CODIGO,ei.codigo_expediente)--:Global.EXP_Codigo',
'    and de.codigo_expediente = nvl(:P131_EXP_CODIGO,de.codigo_expediente)--:Global.EXP_Codigo'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P131_EXP_CODIGO'
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
 p_id=>wwv_flow_imp.id(858163822835949)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:132:P132_ID_DOCUMENTO,P132_VERSION,P132_CIF_NIF,P132_PAG_ORIGEN,P132_REG_NUEVO,P132_EXP_CODIGO,P132_ID_ACTUACION:#ID_DOCUMENTO#,#VERSION#,#CIF_NIF#,131,0,&P131_EXP_CODIGO.,&P131_ID_ACTUACION.'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'SAMUEL'
,p_internal_uid=>9630317599910847
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(858373925835951)
,p_db_column_name=>'CODIGO_EXPEDIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo Expediente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(858511785835952)
,p_db_column_name=>'CIF_NIF'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cif Nif'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2620204328859203)
,p_db_column_name=>'TIPO_INTERESADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Interesado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(4791726625737285)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2620298353859204)
,p_db_column_name=>'CODIGO_TIPO_NOTIFICACION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo Notificacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(3418211084797396)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2620357543859205)
,p_db_column_name=>'CORREO_NOTIFICACION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Correo Notificacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2620492132859206)
,p_db_column_name=>'TELEFONO_NOTIFICACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Telefono Notificacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2620706586859208)
,p_db_column_name=>'ORIGEN_DOCUMENTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Origen Documento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2620761521859209)
,p_db_column_name=>'ID_TRAMITE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Id Tramite'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2620870223859210)
,p_db_column_name=>'NOMBRE_DOCUMENTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nombre Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2620980109859211)
,p_db_column_name=>'VERSION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2621074163859212)
,p_db_column_name=>'ULTIMA_VERSION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ultima Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2621180246859213)
,p_db_column_name=>'LOGIN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Login'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2621273728859214)
,p_db_column_name=>'FECHA_MODIFICACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fecha Modificacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2621467767859216)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Referencia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2621604522859217)
,p_db_column_name=>'ID_ACTUACION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Id Actuacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2621704786859218)
,p_db_column_name=>'HAY_FICHERO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Hay Fichero'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2621832866859219)
,p_db_column_name=>'EDITABLE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Editable'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2621926814859220)
,p_db_column_name=>'CORREO_ELECTRONICO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Correo Electronico'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2622021420859221)
,p_db_column_name=>'TELEFONO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2622107482859222)
,p_db_column_name=>'NOTIFICAR_ANEXOS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Notificar Anexos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2622180425859223)
,p_db_column_name=>'ID_ACTUACION_NOTIFICACION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Id Actuacion Notificacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2622407050859225)
,p_db_column_name=>'ID_DOCUMENTO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Id Documento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4951938056649513)
,p_db_column_name=>'NOMBRE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4952637305649520)
,p_db_column_name=>'CON_ANEXOS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Con Anexos'
,p_column_html_expression=>'<span class="#CON_ANEXOS_ICON#" style="color: #CON_ANEXOS_ICON_COLOR#"></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4952665371649521)
,p_db_column_name=>'SIN_ANEXOS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Sin Anexos'
,p_column_html_expression=>'<span class="#SIN_ANEXOS_ICON#" style="color: #SIN_ANEXOS_ICON_COLOR#"></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4952794367649522)
,p_db_column_name=>'CON_ANEXOS_ICON'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Con Anexos Icon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4952923424649523)
,p_db_column_name=>'CON_ANEXOS_ICON_COLOR'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>'Con Anexos Icon Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4952993520649524)
,p_db_column_name=>'SIN_ANEXOS_ICON'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'Sin Anexos Icon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4953126177649525)
,p_db_column_name=>'SIN_ANEXOS_ICON_COLOR'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>'Sin Anexos Icon Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2628360395859908)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'114006'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO_INTERESADO:CIF_NIF:NOMBRE:CODIGO_TIPO_NOTIFICACION:CON_ANEXOS:SIN_ANEXOS:TELEFONO:CORREO_ELECTRONICO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2622328314859224)
,p_plug_name=>'Pie_3'
,p_parent_plug_id=>wwv_flow_imp.id(856367717835931)
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
 p_id=>wwv_flow_imp.id(2622627251859227)
,p_plug_name=>'registros_insert_notificacion'
,p_parent_plug_id=>wwv_flow_imp.id(856367717835931)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2230545466416624)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654986254053932377)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3698895946181535)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3698683339181533)
,p_button_name=>'ADD_CAMPO_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Consultar'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2623836608859239)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2622627251859227)
,p_button_name=>'Mant_Administrado'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Mant Administrado'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:RP,101::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2623415729859235)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(2622627251859227)
,p_button_name=>'RIN_NUEVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Nuevo'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2230928143416625)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2230545466416624)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3696825438181514)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2230545466416624)
,p_button_name=>'CANCEL_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2232325085416629)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2230545466416624)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Borrar'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P131_RIN_ID_DOCUMENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2232706705416629)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2230545466416624)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'P131_ID_DOCUMENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2233062868416629)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2230545466416624)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P131_ID_DOCUMENTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2624094792859242)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(858108566835948)
,p_button_name=>'RIN_NUEVO_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Nuevo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:RP,132:P132_CIF_NIF,P132_ID_DOCUMENTO,P132_VERSION,P132_PAG_ORIGEN,P132_REG_NUEVO,P132_EXP_CODIGO,P132_ID_ACTUACION:&P131_RIN_CIF_NIF.,&P131_ID_DOCUMENTO.,&P131_VERSION.,131,1,&P131_EXP_CODIGO.,&P131_ID_ACTUACION.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3696539145181511)
,p_branch_name=>'Cerrar_Modal_CANCEL_30'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.:NO_CLEAR:&DEBUG.:30:P30_CODIGO:&P131_EXP_CODIGO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3696825438181514)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P131_PAG_ORIGEN'
,p_branch_condition_text=>'30'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4051946263165507)
,p_branch_name=>'Cerrar_Modal_CANCEL_32'
,p_branch_action=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::P32_ID:&P131_ID_ACTUACION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3696825438181514)
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P131_PAG_ORIGEN'
,p_branch_condition_text=>'32_2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(856006966835927)
,p_name=>'P131_TITULO_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(855376807835921)
,p_prompt=>unistr('<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Env\00EDo a Portafirmas de la CARM</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(856094437835928)
,p_name=>'P131_TITULO_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(855452074835922)
,p_prompt=>'<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Anexar otros documentos del expediente a la firma</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(856169890835929)
,p_name=>'P131_TITULO_3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(855571022835923)
,p_prompt=>unistr('<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Notificci\00F3n Autom\00E1tica</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(858252450835950)
,p_name=>'P131_EXP_CODIGO'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213095759416603)
,p_name=>'P131_ID_DOCUMENTO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_source=>'ID_DOCUMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213512170416606)
,p_name=>'P131_VERSION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_source=>'VERSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213873059416608)
,p_name=>'P131_LOGIN_FIRMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>'Firmante'
,p_source=>'LOGIN_FIRMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf.login /*|| '''' '''' || upper(tablascomunes.consulta.obtiene_usuario(tf.login)) */a',
'      ,tf.login b',
'  from apexweb.tramite_firma tf',
'  --where tf.id_tramite = :GLOBAL.EXP_IdTramite',
'  order by tf.login'))
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2214248353416608)
,p_name=>'P131_ID_SOLICITUD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>'Id Solicitud'
,p_source=>'ID_SOLICITUD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2214687809416608)
,p_name=>'P131_ID_DOCUMENTO_PORTAFIRMAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_source=>'ID_DOCUMENTO_PORTAFIRMAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215133070416608)
,p_name=>'P131_CODIGO_ESTADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>'Estado:'
,p_source=>'CODIGO_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST_COD_ESTADO_PORTAFIRMAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''Pendiente de env\00EDo'' as a, 0 as b from dual'),
'union ',
'select ''Enviado'' as a, 1 as b from dual',
'union ',
'select ''Firmado'' as a, 2 as b from dual',
'union ',
'select ''Error al enviar'' as a, 3 as b from dual'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215489941416609)
,p_name=>'P131_MENSAJE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>'Mensaje recibido:'
,p_source=>'MENSAJE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215854563416609)
,p_name=>'P131_LOGIN_SEGUNDA_FIRMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>unistr('2\00BA Firmante')
,p_source=>'LOGIN_SEGUNDA_FIRMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf.login /*|| '''' '''' || upper(tablascomunes.consulta.obtiene_usuario(tf.login)) */a',
'      ,tf.login b',
'  from apexweb.tramite_firma tf ',
'  where tf.login <> :P131_LOGIN_FIRMA --:BLQ_DOCUMENTO_PORTAFIRMAS.ITM_LOGIN_FIRMA ',
'--    and tf.id_tramite = :GLOBAL.EXP_IdTramite ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'NO'
,p_lov_cascade_parent_items=>'P131_LOGIN_FIRMA'
,p_ajax_items_to_submit=>'P131_LOGIN_FIRMA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2216278186416609)
,p_name=>'P131_FLUJO_FIRMA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>'Firmas en orden'
,p_source=>'FLUJO_FIRMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2216727995416610)
,p_name=>'P131_FECHA_FIRMA'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_source=>'FECHA_FIRMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>8
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2217111880416611)
,p_name=>'P131_LOGIN_ENVIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>'Enviado por:'
,p_source=>'LOGIN_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>8
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
 p_id=>wwv_flow_imp.id(2217544500416611)
,p_name=>'P131_FECHA_ENVIO'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>unistr('Fecha de env\00EDo:')
,p_source=>'FECHA_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>8
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2217910115416611)
,p_name=>'P131_LISTA_ANEXOS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>'P131_LISTA_ANEXOS'
,p_source=>'LISTA_ANEXOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2218315535416611)
,p_name=>'P131_NOTIFICACION_AUTOMATICA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2622328314859224)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>'Notificar al titular'
,p_source=>'NOTIFICACION_AUTOMATICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2218669076416612)
,p_name=>'P131_NOTIFICACION_AUTOMATICA_ANEXOS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2622328314859224)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_default=>'0'
,p_prompt=>'Notificacion Automatica Anexos'
,p_source=>'NOTIFICACION_AUTOMATICA_ANEXOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LIST_NOTIFICACION_AUTOMATICA_ANEXOS'
,p_lov=>'.'||wwv_flow_imp.id(3562583419974257)||'.'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(9654897621061932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2218966047416614)
,p_name=>'P131_LOGIN_TERCERA_FIRMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>unistr('3\00BA Firmante')
,p_source=>'LOGIN_TERCERA_FIRMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf.login /*|| '''' '''' || upper(tablascomunes.consulta.obtiene_usuario(tf.login))*/ a',
'      ,tf.login b',
'  from apexweb.tramite_firma tf ',
'  where tf.login <> :P131_LOGIN_FIRMA --:BLQ_DOCUMENTO_PORTAFIRMAS.ITM_LOGIN_FIRMA',
'    and tf.login <> :P131_LOGIN_SEGUNDA_FIRMA --:BLQ_DOCUMENTO_PORTAFIRMAS.ITM_LOGIN_SEGUNDA_FIRMA',
'    --and tf.id_tramite = :GLOBAL.EXP_IdTramite ',
'',
'     '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'NO'
,p_lov_cascade_parent_items=>'P131_LOGIN_SEGUNDA_FIRMA'
,p_ajax_items_to_submit=>'P131_LOGIN_SEGUNDA_FIRMA,P131_LOGIN_FIRMA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(2219381045416614)
,p_name=>'P131_DOCUMENTO_ELECTRONICO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>unistr('Adjuntar documento firmado al expediente electr\00F3nico:')
,p_source=>'DOCUMENTO_ELECTRONICO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SI_NO'
,p_lov=>'.'||wwv_flow_imp.id(244087164560918)||'.'
,p_field_template=>wwv_flow_imp.id(9654897621061932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2219759909416614)
,p_name=>'P131_CODIGO_CLASE_DOCUMENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>'Clase'
,p_source=>'CODIGO_CLASE_DOCUMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''codigo_descripcion_A'' as a',
'      ,''A'' as b',
'  from dual',
'union',
'select ''codigo_descripcion_B'' as a',
'      ,''B'' as b',
'  from dual',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2220150348416614)
,p_name=>'P131_LOGIN_CUARTA_FIRMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>unistr('4\00BA Firmante')
,p_source=>'LOGIN_CUARTA_FIRMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf.login /*|| '''' '''' || upper(tablascomunes.consulta.obtiene_usuario(tf.login)) */ a',
'      ,tf.login b',
'  from apexweb.tramite_firma tf',
'  where tf.login <> :P131_LOGIN_FIRMA --:BLQ_DOCUMENTO_PORTAFIRMAS.ITM_LOGIN_FIRMA',
'    and tf.login <> :P131_LOGIN_SEGUNDA_FIRMA --:BLQ_DOCUMENTO_PORTAFIRMAS.ITM_LOGIN_SEGUNDA_FIRMA',
'    and tf.login <> :P131_LOGIN_TERCERA_FIRMA --:BLQ_DOCUMENTO_PORTAFIRMAS.ITM_LOGIN_TERCERA_FIRMA',
'    --and tf.id_tramite = :GLOBAL.EXP_IdTramite'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'NO'
,p_lov_cascade_parent_items=>'P131_LOGIN_TERCERA_FIRMA'
,p_ajax_items_to_submit=>'P131_LOGIN_TERCERA_FIRMA,P131_LOGIN_SEGUNDA_FIRMA,P131_LOGIN_FIRMA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(2220612570416615)
,p_name=>'P131_LOGIN_SEG_ENVIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_source=>'LOGIN_SEG_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2220971914416615)
,p_name=>'P131_LOGIN_TER_ENVIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_item_source_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_source=>'LOGIN_TER_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221378046416615)
,p_name=>'P131_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221786059416616)
,p_name=>'P131_CODIGO_TIPO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2222152842416616)
,p_name=>'P131_NOMBRE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2212688397416602)
,p_prompt=>'Documento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2620591693859207)
,p_name=>'P131_EXP_CODIGO_PROCEDIMIENTO'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2622461589859226)
,p_name=>'P131_RIN_ID_DOCUMENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2622627251859227)
,p_item_default=>'P131_ID_DOCUMENTO'
,p_item_default_type=>'ITEM'
,p_prompt=>'Rin Id Documento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897541585932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2622711670859228)
,p_name=>'P131_RIN_VERSION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2622627251859227)
,p_item_default=>'P131_VERSION'
,p_item_default_type=>'ITEM'
,p_prompt=>'RiN VERSION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897541585932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2622795471859229)
,p_name=>'P131_RIN_CIF_NIF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2622627251859227)
,p_prompt=>'CIF_NIF'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897541585932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2622856743859230)
,p_name=>'P131_RIN_CODIGO_TIPO_NOTIFICACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2622627251859227)
,p_prompt=>'CODIGO_TIPO_NOTIFICACION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897541585932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2622982988859231)
,p_name=>'P131_RIN_CORREO_ELECTRONICO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2622627251859227)
,p_prompt=>'CORREO_ELECTRONICO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct correo a',
'      ,lower(correo) b',
'  from (select d.correo_electronico as correo ',
'          from tablascomunes.direccion_administrado d ',
'          where d.cif_nif = :P131_RIN_CIF_NIF',
'            and d.correo_electronico is not null ',
'        union ',
'        select a.direccionemail as correo ',
'          from tablascomunes.administrados a ',
'          where a.cif_nif = :P131_RIN_CIF_NIF',
'            and a.direccionemail is not null',
'       ) ',
'  where 1 = 1',
'  order by 1'))
,p_lov_cascade_parent_items=>'P131_RIN_CIF_NIF'
,p_ajax_items_to_submit=>'P131_RIN_CIF_NIF'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897541585932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2623052821859232)
,p_name=>'P131_RIN_TELEFONO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2622627251859227)
,p_prompt=>'TELEFONO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct telefono a',
'      ,telefono b',
'  from (select d.telefonos as telefono',
'          from tablascomunes.direccion_administrado d',
'          where d.cif_nif = :P131_RIN_CIF_NIF',
'            and d.telefonos is not null',
'        union',
'        select a.telefono as telefono',
'          from tablascomunes.administrados a',
'          where a.cif_nif = :P131_RIN_CIF_NIF',
'            and a.telefono is not null',
'       )',
'  where length(telefono) = 9 ',
'    and substr(telefono, 0, 1) in (''6'', ''7'')',
'  order by 1'))
,p_lov_cascade_parent_items=>'P131_RIN_CIF_NIF'
,p_ajax_items_to_submit=>'P131_RIN_CIF_NIF'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897541585932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2623179790859233)
,p_name=>'P131_RIN_NOTIFICAR_ANEXOS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2622627251859227)
,p_prompt=>'RiN NOTIFICAR_ANEXOS'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LIST_NOTIFICACION_ANEXO'
,p_lov=>'.'||wwv_flow_imp.id(3592671012486234)||'.'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897621061932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2623325854859234)
,p_name=>'P131_RIN_ID_ACTUACION_NOTIFICACION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2622627251859227)
,p_prompt=>'ID_ACTUACION_NOTIFICACION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897541585932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696213294181508)
,p_name=>'P131_PAG_ORIGEN'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3698808082181534)
,p_name=>'P131_DOCUMENTO_EXPEDIENTE_CAMPO_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3698683339181533)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ORIGEN a',
'      ,ORIGEN_DOCUMENTO b',
'  FROM (SELECT DISTINCT  DECODE(ORIGEN_DOCUMENTO, 1, ''A''',
'                                                , 2, ''E''',
'                                                , 3, ''S''',
'                                                , 4, ''X''',
'                                                , 5, ''R''',
'                                                , 6, ''F''',
'                                                , 7, ''C'') AS ORIGEN ',
'              ,ORIGEN_DOCUMENTO                           ',
'		  FROM APEXWEB.V_DOCUMENTO_EXPEDIENTE ',
'          WHERE codigo_expediente = :P131_EXP_CODIGO ',
'       ) ',
'  ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897621061932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4052058959165508)
,p_name=>'P131_ID_ACTUACION'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4054973646165537)
,p_name=>'P131_ID_DOC'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2231032586416625)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2230928143416625)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2231823617416628)
,p_event_id=>wwv_flow_imp.id(2231032586416625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2623545624859236)
,p_name=>'Nueva_Notificacion'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2623415729859235)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2623588955859237)
,p_event_id=>wwv_flow_imp.id(2623545624859236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Insert into apexweb.NOTIFICACION_AUTOMATICA(ID_DOCUMENTO',
'                                           ,VERSION',
'                                           ,CIF_NIF',
'                                           ,CODIGO_TIPO_NOTIFICACION',
'                                           ,CORREO_ELECTRONICO',
'                                           ,TELEFONO',
'                                           ,NOTIFICAR_ANEXOS',
'                                           ,ID_ACTUACION_NOTIFICACION',
'                                           )',
'  values(:P131_RIN_ID_DOCUMENTO',
'        ,:P131_RIN_VERSION',
'        ,:P131_RIN_CIF_NIF',
'        ,:P131_RIN_CODIGO_TIPO_NOTIFICACION',
'        ,:P131_RIN_CORREO_ELECTRONICO',
'        ,:P131_RIN_TELEFONO',
'        ,:P131_RIN_NOTIFICAR_ANEXOS',
'        ,:P131_RIN_ID_ACTUACION_NOTIFICACION',
'        );',
'commit;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2623706160859238)
,p_event_id=>wwv_flow_imp.id(2623545624859236)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(858108566835948)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3695981289181506)
,p_name=>'cierra_notifi_auto'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2624094792859242)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3696059234181507)
,p_event_id=>wwv_flow_imp.id(3695981289181506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(858108566835948)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4950858245649503)
,p_name=>'SelectAll'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#SelectListaAnexo'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#Report_LISTANEXO'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4950981702649504)
,p_event_id=>wwv_flow_imp.id(4950858245649503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $("#SelectListaAnexo").is(":checked") ) {',
'    $("#Report_LISTANEXO input[type=checkbox][name=f01]").prop("checked",true);',
'} else {',
'    $("#Report_LISTANEXO input[type=checkbox][name=f01]").prop("checked",false);',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4951140838649505)
,p_name=>'Cambio_columna_IR'
,p_event_sequence=>35
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(856565501835933)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4951146726649506)
,p_event_id=>wwv_flow_imp.id(4951140838649505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Actualizamos_Lista_Anexos'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  --variables',
'  v_OUT_ERROR NUMBER;',
'  v_COUNT_FACTURAS NUMBER := 0;',
'  v_COMPROBANTE NUMBER;',
'',
'v_lista_anexos VARCHAR2(500 BYTE);',
'',
'  --excepciones',
'  E_CERO_SELECCIONES EXCEPTION;',
'',
'BEGIN',
'  apex_debug.message(''Paso 1'');',
'  --Comprobamos primero si hay algo seleccionado',
'  if APEX_APPLICATION.G_F01.COUNT > 0 then',
'',
'    apex_debug.message(''Paso 2'');',
'    v_lista_anexos := '','';',
'',
'    --Recorremos los registros seleccionados',
'    for i in 1..APEX_APPLICATION.G_F01.COUNT loop',
'    apex_debug.message(''Paso 3'');',
'',
'      v_COUNT_FACTURAS := v_COUNT_FACTURAS +1;',
'    apex_debug.message(''Paso 4'');',
'',
'      --Concatenamos los codigos obtenidos',
'      v_lista_anexos := v_lista_anexos || APEX_APPLICATION.G_F01(i) || '','';',
'    apex_debug.message(''Paso 5'');',
'',
'    end loop;',
'',
'    apex_debug.message(''Paso 6'');',
'',
'    :P131_LISTA_ANEXOS := v_lista_anexos;',
'    apex_debug.message(''Paso 7'');',
'',
'  else ',
'    apex_debug.message(''Paso 8'');',
'    :P131_LISTA_ANEXOS := :P131_LISTA_ANEXOS;',
'    apex_debug.message(''Paso 9'');',
'  end if;',
'    apex_debug.message(''Paso 10'');',
'    apex_debug.message(''v_lista_anexos -> ''||v_lista_anexos);',
'    apex_debug.message(''P131_LISTA_ANEXOS -> ''||:P131_LISTA_ANEXOS);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    apex_debug.message(''Paso 11'');',
'',
'--        apex_error.add_error(p_message          => ''Se ha producido un error.''',
'--                                ,p_display_location => apex_error.c_inline_in_notification',
'--                                );',
'',
'END;'))
,p_attribute_02=>'P131_LISTA_ANEXOS'
,p_attribute_03=>'P131_LISTA_ANEXOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4951313295649507)
,p_event_id=>wwv_flow_imp.id(4951140838649505)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_LISTA_ANEXOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4052483561165512)
,p_name=>'Cambio_Firmante_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_LOGIN_FIRMA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4052615052165513)
,p_event_id=>wwv_flow_imp.id(4052483561165512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_LOGIN_SEGUNDA_FIRMA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4052698065165514)
,p_name=>'Cambio_Firmante_2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_LOGIN_SEGUNDA_FIRMA'
,p_condition_element=>'P131_LOGIN_SEGUNDA_FIRMA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4052809905165515)
,p_event_id=>wwv_flow_imp.id(4052698065165514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_LOGIN_TERCERA_FIRMA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4053825654165525)
,p_event_id=>wwv_flow_imp.id(4052698065165514)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_LOGIN_TERCERA_FIRMA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4052862594165516)
,p_name=>'Cambio_Firmante_3'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_LOGIN_TERCERA_FIRMA'
,p_condition_element=>'P131_LOGIN_TERCERA_FIRMA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4052971230165517)
,p_event_id=>wwv_flow_imp.id(4052862594165516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_LOGIN_CUARTA_FIRMA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4053924085165526)
,p_event_id=>wwv_flow_imp.id(4052862594165516)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_LOGIN_CUARTA_FIRMA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4053950281165527)
,p_name=>'Habilita_COD_CLASE_DOC'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_DOCUMENTO_ELECTRONICO'
,p_condition_element=>'P131_DOCUMENTO_ELECTRONICO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4054317142165530)
,p_event_id=>wwv_flow_imp.id(4053950281165527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_EXP_CODIGO_PROCEDIMIENTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(:P131_EXP_CODIGO_PROCEDIMIENTO, ex.CODIGO_PROCEDIMIENTO)',
'  from apexweb.actuacion ac',
'      ,apexweb.expediente ex',
'  where ac.CODIGO_EXPEDIENTE = ex.CODIGO',
'    and ac.id = :P131_ID_ACTUACION'))
,p_attribute_07=>'P131_ID_ACTUACION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4054416608165531)
,p_event_id=>wwv_flow_imp.id(4053950281165527)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_CODIGO_CLASE_DOCUMENTO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4054057373165528)
,p_event_id=>wwv_flow_imp.id(4053950281165527)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_CODIGO_CLASE_DOCUMENTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4054153185165529)
,p_event_id=>wwv_flow_imp.id(4053950281165527)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_CODIGO_CLASE_DOCUMENTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4054637490165533)
,p_name=>'Cambio_valor'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_DOCUMENTO_EXPEDIENTE_CAMPO_2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4054725493165534)
,p_event_id=>wwv_flow_imp.id(4054637490165533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(856565501835933)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4054801843165535)
,p_name=>'Consulta'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3698895946181535)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4054945342165536)
,p_event_id=>wwv_flow_imp.id(4054801843165535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(856565501835933)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4951957227649514)
,p_name=>'Notificacion - Dialog Closed'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(858108566835948)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4952079430649515)
,p_event_id=>wwv_flow_imp.id(4951957227649514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(858108566835948)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4053274587165520)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Envia_Portafirmas'
,p_process_sql_clob=>'null;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2233062868416629)
,p_internal_uid=>12825428364240418
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2233938147416631)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2212688397416602)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Documento Portafirmas Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11006091924491529
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2234300440416631)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11006454217491529
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4052215027165509)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog_32_CANCEL_1'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3696825438181514)
,p_process_when=>'P131_PAG_ORIGEN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'32'
,p_internal_uid=>12824368804240407
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4053614379165523)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog_32_SAVE'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2232706705416629)
,p_process_when=>'P131_PAG_ORIGEN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'32'
,p_internal_uid=>12825768156240421
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4053669194165524)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog_32_CREATE'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2233062868416629)
,p_process_when=>'P131_PAG_ORIGEN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'32'
,p_internal_uid=>12825822971240422
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4053417715165521)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cargar_Datos_Documento'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select do.ID',
'      ,do.CODIGO_TIPO',
'      ,do.NOMBRE',
'      ,do.CLASE_DOCUMENTO',
'--      ,do.id',
'  into :P131_ID',
'      ,:P131_CODIGO_TIPO',
'      ,:P131_NOMBRE',
'      ,:P131_CODIGO_CLASE_DOCUMENTO --:P131_CLASE_DOCUMENTO',
'--      ,:P131_ID_DOCUMENTO',
'  from apexweb.documento do',
'  where do.id = :P131_ID_DOC --:P131_ID_DOCUMENTO --:GLOBAL.DOC_Id ',
'    ;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12825571492240419
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4054454858165532)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Carda_datos_actu_exp_doc_pro'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P131_ID_ACTUACION is not null then',
'  select ac.CODIGO_EXPEDIENTE',
'        ,ex.CODIGO_PROCEDIMIENTO',
'    into :P131_EXP_CODIGO',
'        ,:P131_EXP_CODIGO_PROCEDIMIENTO',
'    from apexweb.actuacion ac',
'        ,apexweb.expediente ex',
'    where ac.CODIGO_EXPEDIENTE = ex.CODIGO',
'      and ac.id = :P131_ID_ACTUACION;',
'else',
'  if :p131_id_doc is not null then',
'    select ac.id',
'          ,ac.CODIGO_EXPEDIENTE',
'          ,ex.CODIGO_PROCEDIMIENTO          ',
'      into :P131_ID_ACTUACION',
'          ,:P131_EXP_CODIGO',
'          ,:P131_EXP_CODIGO_PROCEDIMIENTO',
'      from apexweb.actuacion ac',
'          ,apexweb.expediente ex',
'          ,apexweb.documento_expediente de',
'      where ac.CODIGO_EXPEDIENTE = ex.CODIGO',
'        and de.CODIGO_EXPEDIENTE = ex.CODIGO',
'        and de.ID_DOCUMENTO = :P131_ID_DOC',
'        ;',
'  end if;',
'end if;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>12826608635240430
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2233543732416630)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2212688397416602)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Documento Portafirmas Details'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from apexweb.documento_portafirmas dp',
'--      ,apexweb.documento do',
'  where /*dp.id_documento = do.id(+)',
'    and */dp.id_documento = :P131_ID_DOC --:P131_ID_DOCUMENTO --:GLOBAL.DOC_Id ',
'    and dp.version = :P131_VERSION --:GLOBAL.DOC_Version'))
,p_process_when_type=>'EXISTS'
,p_internal_uid=>11005697509491528
);
wwv_flow_imp.component_end;
end;
/
