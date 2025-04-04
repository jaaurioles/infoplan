prompt --application/pages/page_00072
begin
--   Manifest
--     PAGE: 00072
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
 p_id=>72
,p_name=>unistr('Notificaci\00F3n Anexos')
,p_alias=>unistr('NOTIFICACI\00D3N-ANEXOS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Notificaci\00F3n Anexos')
,p_autocomplete_on_off=>'OFF'
,p_page_css_classes=>' '
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000px'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2889603496563021)
,p_plug_name=>'NOTIFICACION_ANEXOS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seleccionar, ',
'       FECHA_MODIFICACION,',
'       nombre_documento,',
'       observaciones,',
'       descripcion_origen,',
'       documento_electronico, ',
'       id_documento, ',
'       codigo_expediente,',
'       a.codigo_estado_firma, ',
'       VERSION, ',
'      origen_documento,',
'      id_actuacion,',
'      referencia,',
'      decode ( CODIGO_ESTADO_FIRMA,1 ,''P'',2,''F'',3,''F'', NULL,'' '', ''R'')   estado_portafirmas,',
'      descarga_documento,',
'      boton',
' from (',
'',
'select apex_item.checkbox2(1,ID_DOCUMENTO) as Seleccionar,',
'       FECHA_MODIFICACION,',
'       nombre_documento, ',
'       apexweb.consulta.obtiene_observacion_documento( d.origen_documento, d.id_documento) observaciones,',
'       DECODE(d.origen_documento, 1, ''A'', 2, ''E'', 3, ''S'', 4, ''X'', 5, ''R'', 6, ''F'', 7, ''C'') descripcion_origen,',
'       nvl2(d.referencia,1,0) documento_electronico,',
'      ID_DOCUMENTO,codigo_expediente,',
'      case when d.origen_documento <= 2 then apexWEB.consulta.obtiene_estado_firma(d.id_documento, d.version) else null end CODIGO_ESTADO_FIRMA,',
'      VERSION, ',
'      origen_documento,',
'      id_actuacion,',
'      referencia,',
'       ''<span id="btn_descarga_documento"  aria-label="Descarga documento" class="fa fa-cloud-download" aria-hidden="true" title="Descarga documento"></span>'' as descarga_documento,',
'       ''<INPUT TYPE="button" VALUE="Descarga Documento" class="fa fa-cloud-download" onClick="event">'' as boton',
'FROM apexweb.v_documento_expediente d',
'where d.codigo_expediente = :P72_EXPEDIENTE_CODIGO',
'and (d.id_documento <> :P72_DOC_ID or d.origen_documento <> 1)',
'and version in (select max(version) from apexWEB.v_documento_expediente v where nvl(v.id_documento,v.referencia) = to_char(nvl(d.id_documento,d.referencia))',
'and v.origen_documento = d.origen_documento)',
'and d.origen_documento <> 7) a',
''))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(2889717318563022)
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
,p_internal_uid=>11661871095637920
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2891125940563036)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>10
,p_column_identifier=>'N'
,p_column_label=>'Seleccionar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2889841446563023)
,p_db_column_name=>'FECHA_MODIFICACION'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Fecha Modificacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2889934773563024)
,p_db_column_name=>'NOMBRE_DOCUMENTO'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Nombre Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2889979947563025)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2890116046563026)
,p_db_column_name=>'DESCRIPCION_ORIGEN'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Descripcion Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2890191116563027)
,p_db_column_name=>'DOCUMENTO_ELECTRONICO'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Documento Electronico'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2890284127563028)
,p_db_column_name=>'ID_DOCUMENTO'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Id Documento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2890378006563029)
,p_db_column_name=>'CODIGO_EXPEDIENTE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Codigo Expediente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2890460372563030)
,p_db_column_name=>'CODIGO_ESTADO_FIRMA'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Codigo Estado Firma'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2890604044563031)
,p_db_column_name=>'VERSION'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Version'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2890712918563032)
,p_db_column_name=>'ORIGEN_DOCUMENTO'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Origen Documento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2890810499563033)
,p_db_column_name=>'ID_ACTUACION'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Id Actuacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2890898376563034)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Referencia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2891177526563037)
,p_db_column_name=>'ESTADO_PORTAFIRMAS'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Estado Portafirmas'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2890966843563035)
,p_db_column_name=>'DESCARGA_DOCUMENTO'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'Descarga Documento'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3536603149798720)
,p_db_column_name=>'BOTON'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Boton'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2941904079332883)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'117141'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:FECHA_MODIFICACION:NOMBRE_DOCUMENTO:OBSERVACIONES:DESCRIPCION_ORIGEN:DOCUMENTO_ELECTRONICO:ESTADO_PORTAFIRMAS:DESCARGA_DOCUMENTO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16996861779514835919)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-bottom-none'
,p_region_attributes=>'style="background-color: #AD303B; display: flex; align-items: center; height: 100%; padding-top: 10px; padding-left: 15px; padding-right: 10px; padding-bottom: 10px;"'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2889495625563020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2889603496563021)
,p_button_name=>'GUARDAR_ANEXOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Guardar Anexos'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3535962266798714)
,p_branch_name=>'Go To Page 73'
,p_branch_action=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::LISTADO_ANEXOS_72:&LISTA_ANEXOS.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2423041245271941)
,p_name=>'P72_DOC_ID'
,p_item_sequence=>60
,p_source=>'2'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2423090047271942)
,p_name=>'P72_EXPEDIENTE_CODIGO'
,p_item_sequence=>40
,p_source=>'3333'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2889436407563019)
,p_name=>'P72_LISTA_ANEXOS'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16996861978295835918)
,p_name=>'P72_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16996861779514835919)
,p_prompt=>unistr('<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Notificaci\00F3n Anexos</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2891310569563038)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_ANEXOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
':P72_lista_anexos:=null; ',
':listado_anexos_72:=null;',
':P73_LISTA_ANEXOS:=null;',
'',
'   FOR i in 1 .. APEX_APPLICATION.g_f01.COUNT LOOP',
'   :P72_lista_anexos:= :P72_lista_anexos||'' ''||APEX_APPLICATION.g_f01(i)||'','';',
' end loop;',
'',
'end ;',
'',
':listado_anexos_72:=:P72_lista_anexos;',
':P73_LISTA_ANEXOS:=:P72_lista_anexos;',
'apex_application.g_print_success_message :=:P72_lista_anexos||''-listado anexos 72''||:listado_anexos_72||',
' ''-listado 73 ''||:P73_LISTA_ANEXOS;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2889495625563020)
,p_internal_uid=>11663464346637936
);
wwv_flow_imp.component_end;
end;
/
