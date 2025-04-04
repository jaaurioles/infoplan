prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_name=>unistr('Actuaci\00F3n Notificaci\00F3n Sede')
,p_alias=>'ACTUACION-NOTIF-SEDE'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Actuaci\00F3n Notificaci\00F3n Sede')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1200px'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2891473337563040)
,p_plug_name=>'NOTIF_ELECTRONICA'
,p_title=>unistr('Notificaci\00F3n Electr\00F3nica')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dn.id_actuacion id_actuacion,',
'       null notificar_a,',
'       cif_nif ,',
'       tablascomunes.consulta.obtiene_nombre_administrado(dn.cif_nif) nombre_destinatario,',
'       dn.correo_electronico correo_electronico, ',
'       dn.telefono telefono, ',
'       dn.codigo_tipo_notificacion codigo_tipo_notificacion,',
'       dn.remitente remitente,',
'       dn.id_documento id_documento,',
'       d.nombre nombre_documento, ',
'       d.nombre nombre,',
'       dn.version version,',
'       dn.titulo concepto,',
'       dn.codigo_estado codigo_estado,',
'       decode(dn.codigo_estado, 0,''Fallo'',1,''Procesando'',2,''Enviado'',3,''Notificado'',4,''Rechazado'',5,''Caducado'',9,''Cancelado'') estado,',
'       null estado_xml,',
'       dn.fecha_estado fecha_estado,',
'       dn.id_solicitud id_solicitud,',
'       dn.LISTA_ANEXOS LISTA_ANEXOS,',
'       dn.numero_registro_salida  numero_registro_salida  ,',
'       db.id id_blob',
'from apexweb.documento_notif_electronica dn, apexweb.documento d, apexweb.documento_version dv, apexweb.documento_blob db',
'where dn.id_documento = d.id',
'and d.id=dv.id',
'and db.id = dv.id_blob(+)',
'and dn.id_actuacion=:P73_ID_ACTUACION',
'',
'',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P73_ID_ACTUACION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4326764839053606)
,p_plug_name=>'DOCUMENTOS_ANEXOS'
,p_title=>'Documentos anexos'
,p_region_name=>'documentos_anexos_report'
,p_parent_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_region_attributes=>'style="height: 300px ;overflow: scroll;"'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>130
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4327133287053609)
,p_plug_name=>'DOC_ANEXOS'
,p_title=>'Documentos_anexos'
,p_parent_plug_id=>wwv_flow_imp.id(4326764839053606)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--slimPadding:margin-right-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
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
'      id_blob blob_anexos,',
'      decode ( CODIGO_ESTADO_FIRMA,1 ,''P'',2,''F'',3,''F'', NULL,'' '', ''R'')   estado_portafirmas,',
'      descarga_documento',
' from (',
'',
'select CASE WHEN INSTR(:P73_LISTA_ANEXOS,ID_DOCUMENTO)>0 THEN apex_item.checkbox2(1,ID_DOCUMENTO,''CHECKED'') ',
' ELSE apex_item.checkbox2(1,ID_DOCUMENTO) END Seleccionar,',
'       d.FECHA_MODIFICACION,',
'       nombre_documento, ',
'       apexweb.consulta.obtiene_observacion_documento( d.origen_documento, d.id_documento) observaciones,',
'       DECODE(d.origen_documento, 1, ''A'', 2, ''E'', 3, ''S'', 4, ''X'', 5, ''R'', 6, ''F'', 7, ''C'') descripcion_origen,',
'       nvl2(d.referencia,1,0) documento_electronico,',
'      d.ID_DOCUMENTO,codigo_expediente,',
'      case when d.origen_documento <= 2 then apexWEB.consulta.obtiene_estado_firma(d.id_documento, d.version) else null end CODIGO_ESTADO_FIRMA,',
'      d.VERSION, ',
'      origen_documento,',
'      id_actuacion,',
'      referencia,',
'       db.id id_blob,',
'       ''<span id="btn_descarga_documento"  aria-label="Descarga documento" class="fa fa-cloud-download" aria-hidden="true" title="Descarga documento"></span>'' as descarga_documento',
'FROM apexweb.v_documento_expediente d, apexweb.documento_version version, apexweb.documento_blob db',
'where d.codigo_expediente = :P73_EXPEDIENTE_CODIGO',
'and (d.id_documento <> :P73_NOMBRE_DOCUMENTO or d.origen_documento <> 1)',
'and d.id_documento=version.id',
'and db.id = version.id_blob(+)',
'and d.version in (select max(v.version) from apexWEB.v_documento_expediente v where nvl(v.id_documento,v.referencia) = to_char(nvl(d.id_documento,d.referencia))',
'and v.origen_documento = d.origen_documento)',
'and d.origen_documento <> 7) a'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Documentos_anexos'
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
 p_id=>wwv_flow_imp.id(4327216952053610)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DELIA'
,p_internal_uid=>13099370729128508
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4327261243053611)
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
 p_id=>wwv_flow_imp.id(4327362228053612)
,p_db_column_name=>'FECHA_MODIFICACION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha Modificacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4327527828053613)
,p_db_column_name=>'NOMBRE_DOCUMENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4327553845053614)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4327704961053615)
,p_db_column_name=>'DESCRIPCION_ORIGEN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Descripcion Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4327810020053616)
,p_db_column_name=>'DOCUMENTO_ELECTRONICO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Documento Electronico'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4328680797053625)
,p_db_column_name=>'ESTADO_PORTAFIRMAS'
,p_display_order=>70
,p_column_identifier=>'O'
,p_column_label=>'Estado Portafirmas'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4327870444053617)
,p_db_column_name=>'ID_DOCUMENTO'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Id Documento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4328029778053618)
,p_db_column_name=>'CODIGO_EXPEDIENTE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Codigo Expediente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4328085258053619)
,p_db_column_name=>'CODIGO_ESTADO_FIRMA'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Codigo Estado Firma'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4328220833053620)
,p_db_column_name=>'VERSION'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Version'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4328260933053621)
,p_db_column_name=>'ORIGEN_DOCUMENTO'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Origen Documento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4328403885053622)
,p_db_column_name=>'ID_ACTUACION'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Id Actuacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4328523386053623)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Referencia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4328625818053624)
,p_db_column_name=>'BLOB_ANEXOS'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Blob Anexos'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4328792865053626)
,p_db_column_name=>'DESCARGA_DOCUMENTO'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Descarga Documento'
,p_column_link=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.::P172_ID_BLOB:#BLOB_ANEXOS#'
,p_column_linktext=>'#DESCARGA_DOCUMENTO#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4343006648120958)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'131152'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:FECHA_MODIFICACION:NOMBRE_DOCUMENTO:OBSERVACIONES:DESCRIPCION_ORIGEN:DOCUMENTO_ELECTRONICO:ID_DOCUMENTO:CODIGO_EXPEDIENTE:CODIGO_ESTADO_FIRMA:VERSION:ORIGEN_DOCUMENTO:ID_ACTUACION:REFERENCIA:BLOB_ANEXOS:ESTADO_PORTAFIRMAS:DESCARGA_DOCUMEN'
||'TO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2971630906985512)
,p_plug_name=>'OTROS_DATOS'
,p_title=>unistr('Otros datos de la notificaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n.id_actuacion id_actuacion_1,',
'       apexweb.consulta.Obtiene_Expediente_Actuacion(n.id_actuacion) codigo_expediente, ',
'       n.codigo_forma_notificacion,',
'       f.requiere_dni,',
'       f.descripcion forma_notificacion,',
'       n.fecha_notificacion,',
'       n.dni,',
'       n.nombre_apellidos,',
'       n.fecha_envio_postal,',
'       n.fecha_notificacion_papel,',
'       n.devuelto,',
'       n.codigo_motivo_devolucion,',
'       d.descripcion motivo_devolucion,',
'       n.notificado_sede ya_notificado',
'from apexweb.actuacion_notificacion n, apexweb.forma_notificacion f, apexweb.motivo_devolucion_correo d',
'where n.codigo_forma_notificacion = f.codigo and n.codigo_motivo_devolucion = d.codigo(+) and n.id_actuacion = :P73_ID_ACTUACION_1',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16997008565825440376)
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
 p_id=>wwv_flow_imp.id(2973567958985532)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_button_name=>'DESCARGAR_DOCUMENTO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9654896273772932416)
,p_button_image_alt=>'Descargar Documento'
,p_button_redirect_url=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.::P172_ID_BLOB:&P73_ID_BLOB.'
,p_icon_css_classes=>'fa-cloud-download'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4638970098257223)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_button_name=>'Sello'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Sello'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3538318541798737)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_button_name=>'GUARDAR_NOTIFICACION'
,p_button_static_id=>'Documentos_anexos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>unistr('Guardar Notificaci\00F3n')
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2891694469563042)
,p_name=>'P73_ID_ACTUACION'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_default=>'1'
,p_prompt=>'Actuacion'
,p_source=>'ID_ACTUACION'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2891901304563044)
,p_name=>'P73_CIF_NIF'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>'CIF/NIF Destinatario'
,p_source=>'CIF_NIF'
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
 p_id=>wwv_flow_imp.id(2892096884563046)
,p_name=>'P73_CORREO_ELECTRONICO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>'Correo Electronico'
,p_source=>'CORREO_ELECTRONICO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2892198008563047)
,p_name=>'P73_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>'Telefono'
,p_source=>'TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select distinct telefono , telefono telefono1',
'  from (select d.telefonos as telefono ',
'  from tablascomunes.direccion_administrado d ',
'             where d.cif_nif = :p73_cif_nif',
'               and d.telefonos is not null ',
'             union ',
'            select a.telefono as telefono',
'              from tablascomunes.administrados a ',
'             where a.cif_nif = :p73_cif_nif',
'               and a.telefono is not null) ',
'     where length(telefono) = 9 and substr(telefono, 0, 1) in (''6'', ''7'')',
'     order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P73_CIF_NIF'
,p_ajax_items_to_submit=>'P73_CIF_NIF'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2892326428563048)
,p_name=>'P73_REMITENTE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>'Remitente'
,p_source=>'REMITENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2892439622563049)
,p_name=>'P73_ID_DOCUMENTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_source=>'ID_DOCUMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2892694787563052)
,p_name=>'P73_VERSION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_source=>'VERSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2970877927985505)
,p_name=>'P73_CODIGO_ESTADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_source=>'CODIGO_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2971233071985508)
,p_name=>'P73_FECHA_ESTADO'
,p_source_data_type=>'DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>'Fecha Estado'
,p_source=>'FECHA_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2971311214985509)
,p_name=>'P73_ID_SOLICITUD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>unistr('Id. de la Notificaci\00F3n')
,p_source=>'ID_SOLICITUD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2971377256985510)
,p_name=>'P73_LISTA_ANEXOS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_source=>'LISTA_ANEXOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2971510501985511)
,p_name=>'P73_NUMERO_REGISTRO_SALIDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>'Numero Registro Salida'
,p_source=>'NUMERO_REGISTRO_SALIDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2971893918985515)
,p_name=>'P73_CODIGO_EXPEDIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_source=>'CODIGO_EXPEDIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2972028364985516)
,p_name=>'P73_CODIGO_FORMA_NOTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_source=>'CODIGO_FORMA_NOTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2972144949985517)
,p_name=>'P73_REQUIERE_DNI'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_source=>'REQUIERE_DNI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2972181698985518)
,p_name=>'P73_FORMA_NOTIFICACION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_prompt=>'Forma Notificacion'
,p_source=>'FORMA_NOTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION, CODIGO',
'FROM apexWEB.FORMA_NOTIFICACION'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>7
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2972266475985519)
,p_name=>'P73_FECHA_NOTIFICACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_prompt=>'Fecha Notificacion'
,p_source=>'FECHA_NOTIFICACION'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2972393481985520)
,p_name=>'P73_DNI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_prompt=>'Dni'
,p_source=>'DNI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2972486775985521)
,p_name=>'P73_NOMBRE_APELLIDOS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_prompt=>'Nombre Apellidos'
,p_source=>'NOMBRE_APELLIDOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
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
 p_id=>wwv_flow_imp.id(2972569932985522)
,p_name=>'P73_FECHA_ENVIO_POSTAL'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_prompt=>unistr('F. Env\00EDo Postal')
,p_source=>'FECHA_ENVIO_POSTAL'
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
 p_id=>wwv_flow_imp.id(2972786511985524)
,p_name=>'P73_DEVUELTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_prompt=>'Devuelto'
,p_source=>'DEVUELTO'
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
 p_id=>wwv_flow_imp.id(2972961961985526)
,p_name=>'P73_MOTIVO_DEVOLUCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_prompt=>unistr('Motivo Devoluci\00F3n')
,p_source=>'MOTIVO_DEVOLUCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(codigo), descripcion from apexweb.motivo_devolucion_correo ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2973093399985527)
,p_name=>'P73_YA_NOTIFICADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_prompt=>'Expediente ya notificado antes de enviar en papel'
,p_source=>'YA_NOTIFICADO'
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
 p_id=>wwv_flow_imp.id(2973205535985528)
,p_name=>'P73_CODIGO_TIPO_NOTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>unistr('<h5>Tipo Notificaci\00F3n<h5/>')
,p_source=>'CODIGO_TIPO_NOTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Sede;1,DHE;2,Papel+Sede;3'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3536053733798715)
,p_name=>'LISTADO_ANEXOS_72'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3537572584798730)
,p_name=>'P73_NOTIFICAR_A'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>'Notificar A'
,p_source=>'NOTIFICAR_A'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select resultado, cif_nif',
'from (',
'select tipo_interesado||'': ''|| cif_nif|| '' - '' || substr(tablascomunes.consulta.obtiene_nombre_administrado(cif_nif),1,90)resultado, tipo_interesado, cif_nif , substr(tablascomunes.consulta.obtiene_nombre_administrado(cif_nif),1,90)administrado,',
'	         decode(tipo_interesado, ''Titular'', 1, ''Representante'', 2, 3) orden ',
'	    from apexweb.v_expediente_interesado ',
'     where codigo_expediente = :P73_EXPEDIENTE_CODIGO',
'    union select ''Organismo'' resultado, ''Organismo'', ''1'', '','' administrado, 998 orden from dual where :P73_NOTIFICAR_A is null or  ',
'                   ''ORGANISMO'' like upper(''%'' || :P73_NOTIFICAR_A|| ''%'') ',
'     union select ''Otro'' resultado, ''Otro'',''2'', '' ,'' administrado,999 orden from dual where :P73_NOTIFICAR_A is null or ',
'                   ''OTRO'' like upper(''%'' ||:P73_NOTIFICAR_A|| ''%'') ',
'    order by orden, resultado)'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_css_classes=>'label: { color: red; }'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3537684127798731)
,p_name=>'P73_NOMBRE_DESTINATARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>'Nombre Destinatario'
,p_source=>'NOMBRE_DESTINATARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3537831295798732)
,p_name=>'P73_NOMBRE_DOCUMENTO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>'Nombre Documento'
,p_source=>'NOMBRE_DOCUMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct d.nombre_documento, d.id_documento ',
'     from apexweb.documento_portafirmas p, apexweb.v_documento_expediente d',
'     where nvl(d.id_documento,d.referencia) = to_char(p.id_documento)',
'     and d.version = p.version ',
unistr('     and (p.codigo_Estado = 3 OR  p.login_firma = ''ND'') -- solo documentos firmados y con la copia aut\00E9ntica recuperada'),
'     and d.codigo_Expediente = :P73_EXPEDIENTE_CODIGO                ',
' '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3537885436798733)
,p_name=>'P73_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3538018302798734)
,p_name=>'P73_CONCEPTO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>'Concepto'
,p_source=>'CONCEPTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3538096884798735)
,p_name=>'P73_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3538195727798736)
,p_name=>'P73_ESTADO_XML'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_source=>'ESTADO_XML'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3538462300798739)
,p_name=>'P73_CODIGOPROCEDIMIENTO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3538584778798740)
,p_name=>'P73_EXP_IDUNIDADORGANIZATIVA'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_default=>'19'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3538672740798741)
,p_name=>'P73_EXP_DUNIDADIORG'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_source=>'19'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3538767774798742)
,p_name=>'P73_CODPROCEDIMIENTO'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_source=>'0273'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3869874108628211)
,p_name=>'P73_EXPEDIENTE_CODIGO'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3871014344628222)
,p_name=>'P73_ID_BLOB'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_item_source_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_source=>'ID_BLOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4330776781053646)
,p_name=>'P73_GITM_NOTIFICACION_ELECTRONICA'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4330937776053647)
,p_name=>'P73_GITM_CORREO_ELEC_NOTIFICACION'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4331004768053648)
,p_name=>'P73_GITM_TELEFONO_NOTIFICACION'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4638863465257222)
,p_name=>'P73_ID_ACTUACION_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_source=>'ID_ACTUACION_1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5521380332925803)
,p_name=>'P73_ERROR'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5522436027925813)
,p_name=>'P73_ERROR_TELEFONO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5523256052925822)
,p_name=>'P73_CONFIRMACION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524076666925830)
,p_name=>'P73_TEXTO_CONFIRMACION'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524186980925831)
,p_name=>'P73_DES_DOCUMENTO'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524928200925838)
,p_name=>'P73_TIPO_INTERESADO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5525431404925843)
,p_name=>'P73_TIPO_PERSONA'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(2891473337563040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7003787603595329)
,p_name=>'PP73_FECHA_NOTIFICACION_PAPEL'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_item_source_plug_id=>wwv_flow_imp.id(2971630906985512)
,p_prompt=>'Fecha Notif. Papel'
,p_source=>'FECHA_NOTIFICACION_PAPEL'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16997008803355440380)
,p_name=>'P73_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16997008565825440376)
,p_prompt=>unistr('<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Actuaci\00F3n Notificaci\00F3n Sede</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4329951483053638)
,p_name=>'ADMINISTRADO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_NOTIFICAR_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4330116643053639)
,p_event_id=>wwv_flow_imp.id(4329951483053638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_NOMBRE_DESTINATARIO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_destinatario varchar2(1000);',
'begin    ',
'  ',
'  if :P73_NOTIFICAR_A =''1'' then     ',
'    v_destinatario:=''Organismo'';',
'  elsif   :P73_NOTIFICAR_A =''2'' then ',
'     v_destinatario:=''Otro'';',
'  else       ',
'    select  substr(tablascomunes.consulta.obtiene_nombre_administrado(:P73_NOTIFICAR_A),1,90)',
'     into v_destinatario',
'     from dual;    ',
'  end if;',
' ',
'  return v_destinatario;',
'end; '))
,p_attribute_07=>'P73_NOTIFICAR_A'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4330569750053644)
,p_name=>'CIF_NIF'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_NOTIFICAR_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4330649455053645)
,p_event_id=>wwv_flow_imp.id(4330569750053644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CIF_NIF'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_nif varchar2(10);',
'begin     ',
' ',
' if  :P73_NOTIFICAR_A not in (''1'',''2'') then     ',
'   v_nif:=:P73_NOTIFICAR_A;',
' else    ',
'    v_nif:=null;',
'  end if;',
'',
'   return v_nif;',
'end;'))
,p_attribute_07=>'P73_NOTIFICAR_A'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4637966498257213)
,p_event_id=>wwv_flow_imp.id(4330569750053644)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CIF_NIF'
,p_client_condition_type=>'NOT_IN_LIST'
,p_client_condition_element=>':P73_NOTIFICAR_A'
,p_client_condition_expression=>'1,2'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4640181992257235)
,p_event_id=>wwv_flow_imp.id(4330569750053644)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CIF_NIF'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*apex_error.add_error(p_message          =>''entra al javascript'',               ',
'                    p_display_location => apex_error.c_inline_in_notification           );',
'// Obtener los valores de los elementos APEX',
'var cifNif = $v(''P73_CIF_NIF'');  ',
'var correoElectronico = '''';',
'var telefono ='''';',
'var tipoPersona = '''';',
'',
'',
'',
'// Si no hay NIF, limpia los campos',
'if (!cifNif) {',
'  $(''#P73_CORREO_ELECTRONICO'').val('''');',
'  $(''#P73_TELEFONO'').val('''');',
'} ',
'',
unistr('  // Obtiene el correo electr\00F3nico del destinatario'),
'  correoElectronico = tablascomunes.consulta.Obtiene_Email_De_Orden(cifNif); //busca si tienen correo electronico',
'',
unistr('  // Establecer el correo electr\00F3nico en el item de APEX'),
' $(''#P73_CORREO_ELECTRONICO'').val(correoElectronico);',
'',
unistr('  // Obtiene el tel\00E9fono del destinatario'),
' telefono = tablascomunes.consulta.Obtiene_Telefono_De_Orden(cifNif);',
'  ',
'',
unistr('  // Validaci\00F3n del tel\00E9fono m\00F3vil'),
'  if (!telefono) {telefono ='''';}',
'  else {',
'    var telefonoValido = true;',
'    if (telefono.length !== 9 || ![''6'', ''7''].includes(telefono.charAt(0)) || !/^[0-9]{9}$/.test(telefono)) {',
unistr('        // Mostrar mensaje de error (puedes usar una funci\00F3n APEX para mostrar el mensaje)'),
unistr('    apex_error.add_error(p_message          =>''El n\00BA '' + telefono + '' no es un n\00FAmero de tel\00E9fono m\00F3vil v\00E1lido'',               '),
'                        p_display_location => apex_error.c_inline_in_notification           );',
unistr('        $(''#P73_TELEFONO'').val(''''); // Limpiar el campo de tel\00E9fono'),
'        telefonoValido = false;',
'  }}',
'',
'  if (telefonoValido) {',
unistr('    // Asignar el tel\00E9fono al item de APEX'),
unistr('    $(''#P73_TELEFONO'').val(telefono.substring(0, 9)); // Limitar el tel\00E9fono a 9 caracteres'),
'  }',
'',
unistr('  // si el destinatario es persona jur\00EDdica el tipo es DEH obligatoriamente'),
'',
'  if (tablascomunes.codigo_terceros.tipo_persona(cifNif) == ''J'') {',
'     $(''#P73_FORMA_NOTIFICACION'').val(2); ',
'    $(''#P73_FORMA_NOTIFICACION'').prop(''disabled'', true);}',
' else',
'   { $(''#P73_FORMA_NOTIFICACION'').val(0);',
'     $(''#P73_FORMA_NOTIFICACION'').prop(''disabled'', false);',
'       }',
'',
'*/',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5526071824925850)
,p_event_id=>wwv_flow_imp.id(4330569750053644)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_FORMA_NOTIFICACION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    declare',
'       v_forma_notificacion number;',
'    begin             ',
'    if :P73_TIPO_INTERESADO = ''Representante'' and :P73_TIPO_PERSONA= ''J'' then',
'    	v_forma_notificacion := 2;',
'    else',
'    	v_forma_notificacion := :P73_GITM_NOTIFICACION_ELECTRONICA;       ',
'    end if;',
'    return v_forma_notificacion;',
'    end;'))
,p_attribute_07=>'P73_TIPO_INTERESADO,P73_TIPO_PERSONA,P73_GITM_NOTIFICACION_ELECTRONICA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4331289972053651)
,p_name=>'CORREO_ELECT'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_NOTIFICAR_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4331430210053652)
,p_event_id=>wwv_flow_imp.id(4331289972053651)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CORREO_ELECTRONICO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_correo varchar2(1000);',
'begin    ',
'  if :P73_NOTIFICAR_A =''1'' then     ',
'    v_correo:=null;',
'  elsif   :P73_NOTIFICAR_A =''2'' then ',
'     v_correo:=null;',
'  else       ',
'    v_correo:=:P73_GITM_CORREO_ELEC_NOTIFICACION   ; ',
'  end if;',
'  return v_correo;',
'end; '))
,p_attribute_07=>'P73_NOTIFICAR_A'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4637774969257211)
,p_event_id=>wwv_flow_imp.id(4331289972053651)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CORREO_ELECTRONICO'
,p_server_condition_type=>'EXPRESSION'
,p_server_condition_expr1=>':P73_NOTIFICAR_A NOT IN (''1'',''2'')'
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4636963681257203)
,p_name=>'telefono'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_NOTIFICAR_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4637095028257204)
,p_event_id=>wwv_flow_imp.id(4636963681257203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_TELEFONO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_telefono varchar2(1000);',
'begin    ',
'  if :P73_NOTIFICAR_A =''1'' then     ',
'    v_telefono:=null;',
'  elsif   :P73_NOTIFICAR_A =''2'' then ',
'     v_telefono:=null;',
'  else       ',
'    v_telefono:=:P73_GITM_TELEFONO_NOTIFICACION   ; ',
'  end if;',
'  return v_telefono;',
'end; '))
,p_attribute_07=>'P73_NOTIFICAR_A'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4637944905257212)
,p_event_id=>wwv_flow_imp.id(4636963681257203)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_TELEFONO'
,p_server_condition_type=>'EXPRESSION'
,p_server_condition_expr1=>':P73_NOTIFICAR_A NOT IN (''1'',''2'')'
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4637151679257205)
,p_name=>'tipo_notif'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_NOTIFICAR_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4637262237257206)
,p_event_id=>wwv_flow_imp.id(4637151679257205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'valor_codigo_tipo_notif'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CODIGO_TIPO_NOTIFICACION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_tipo varchar2(1000);',
'begin    ',
'  if :P73_NOTIFICAR_A =''1'' then     ',
'    v_tipo:=NULL;',
'  elsif   :P73_NOTIFICAR_A =''2'' then ',
'     v_tipo:=null;',
'  else       ',
'    v_tipo:=:P73_GITM_NOTIFICACION_ELECTRONICA  ; ',
'  end if;',
'  return v_tipo;',
'end; '))
,p_attribute_07=>'P73_NOTIFICAR_A'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4638106664257214)
,p_event_id=>wwv_flow_imp.id(4637151679257205)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CODIGO_TIPO_NOTIFICACION'
,p_server_condition_type=>'EXPRESSION'
,p_server_condition_expr1=>':P73_NOTIFICAR_A NOT IN (''1'',''2'')'
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5525032385925839)
,p_event_id=>wwv_flow_imp.id(4637151679257205)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'VALOR_TIPO_INTERESADO'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_TIPO_INTERESADO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' sTipoInteresado VARCHAR2(100);',
'BEGIN',
'if instr(:P73_NOTIFICAR_A, '':'') > 0 then',
'	  sTipoInteresado := substr(:P73_NOTIFICAR_A, 1, instr(:P73_NOTIFICAR_A, '':'') -1);',
'else ',
'		sTipoInteresado := :P73_NOTIFICAR_A;',
'end if;	',
'',
'RETURN(sTipoInteresado);',
'END;'))
,p_attribute_07=>'P73_NOTIFICAR_A'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4638456231257218)
,p_name=>'remitente'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_NOTIFICAR_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4638594841257219)
,p_event_id=>wwv_flow_imp.id(4638456231257218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_REMITENTE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_remitente varchar2(1000);',
'begin  ',
'',
'        ',
'if :P73_REMITENTE is null then',
unistr('    v_remitente :=        -- remite la direcci\00F3n general'),
'       tablascomunes.consulta.obtiene_unidad_organizativa(',
'         tablascomunes.consulta.Obtiene_Unidad_Superior(:P73_EXP_IDUNIDADORGANIZATIVA, ',
'         tablascomunes.obtiene_parametro(''APEXWEB'', ''UNIDAD_Direccion_General'')), sysdate, 2);',
'  end if;',
'  if :P73_REMITENTE is null then',
unistr('   v_remitente :=        -- remite la consejer\00EDa'),
'     tablascomunes.consulta.obtiene_unidad_organizativa(',
'       tablascomunes.consulta.Obtiene_Unidad_Superior(:P73_EXP_IDUNIDADORGANIZATIVA, ',
'       tablascomunes.obtiene_parametro(''APEXWEB'', ''UNIDAD_Consejeria'')), sysdate, 2);',
'  end if;',
'    return v_remitente;',
'end; '))
,p_attribute_07=>'P73_NOTIFICAR_A,P73_EXP_IDUNIDADORGANIZATIVA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4640002040257233)
,p_name=>'MOSTRAR_ELEMENTOS'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4640046905257234)
,p_event_id=>wwv_flow_imp.id(4640002040257233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Obtener los valores de los elementos APEX',
'var tipoNotificacion = $v(''P73_CODIGO_FORMA_NOTIFICACION''); ',
'var casDevuelto = $v(''P73_DEVUELTO''); ',
'var yaNotificado = $v(''P73_YA_NOTIFICADO'');',
'var fechaEnvioPostal = $v(''P73_FECHA_ENVIO_POSTAL'');',
'var fechaNotifPapel = $v(''P73_FECHA_NOTIFICACION_PAPEL'');',
'',
unistr('// Verificar el tipo de notificaci\00F3n'),
'if (tipoNotificacion == 3) {',
'  if (casDevuelto == 1) {',
'    // Mostrar elementos cuando es devuelto',
'    $(''#P73_CODIGO_FORMA_NOTIFICACION'').show();',
'    $(''#P73_CODIGO_MOTIVO_DEVOLUCION'').attr(''required'', true).show();',
'  } else {',
'    // Ocultar elementos cuando no es devuelto',
'    $(''#P73_CODIGO_FORMA_NOTIFICACION'').hide();',
'    $(''#P73_CODIGO_MOTIVO_DEVOLUCION'').removeAttr(''required'').hide();',
'  }',
'',
'  // Mostrar elementos comunes',
'  $(''#P73_YA_NOTIFICADO'').show();',
'  $(''#P73_DEVUELTO'').show();',
'  $(''#P73_DEVUELTO'').prop(''disabled'', false);',
'  $(''#P73_FECHA_ENVIO_POSTAL'').show();',
'  $(''#P73_FECHA_NOTIFICACION_PAPEL'').show();',
'',
'  if (yaNotificado == 1) {',
unistr('    // Deshabilitar elementos si ya est\00E1 notificado'),
'    $(''#P73_DEVUELTO'').prop(''disabled'', true);',
'    $(''#P73_FECHA_ENVIO_POSTAL'').prop(''readonly'', true).attr(''required'', true).show();',
'    if (!fechaEnvioPostal) {',
'      $(''#P73_FECHA_NOTIFICACION_PAPEL'').prop(''readonly'', true).attr(''required'', true).show();',
'    }',
'  } else {',
unistr('    // Elementos opcionales cuando no est\00E1 notificado'),
'    $(''#P73_FECHA_ENVIO_POSTAL'').removeAttr(''required'').show();',
'    $(''#P73_FECHA_NOTIFICACION_PAPEL'').removeAttr(''required'').show();',
'  }',
'} else {',
unistr('  // Ocultar elementos si el tipo de notificaci\00F3n no es 3'),
'  $(''#P73_YA_NOTIFICADO'').hide();',
'  $(''#P73_FECHA_ENVIO_POSTAL'').hide();',
'  $(''#P73_FECHA_NOTIFICACION_PAPEL'').hide();',
'  $(''#P73_DEVUELTO'').hide();',
'  $(''#P73_CODIGO_MOTIVO_DEVOLUCION'').hide();',
'  $(''#P73_CODIGO_FORMA_NOTIFICACION'').hide();',
'}'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7004259649595334)
,p_event_id=>wwv_flow_imp.id(4640002040257233)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_MOTIVO_DEVOLUCION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4640354025257237)
,p_name=>'cif_nif_val'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_CIF_NIF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4640526345257238)
,p_event_id=>wwv_flow_imp.id(4640354025257237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/*console.log(''La acci\00F3n din\00E1mica se ha ejecutado 2'');'),
'apex.server.process(',
'    ''valida_dni'',  // Nombre del proceso',
'    {',
unistr('        pageItems: ''#P73_CIF_NIF''  // Par\00E1metro que se pasa al proceso'),
'    },',
'    {',
'        success: function(pData) {',
'            // Maneja el resultado del proceso',
'            console.log(''Total calculado: '', pData);',
'        },',
'        error: function(jqXHR, textStatus, errorThrown) {',
'            // Maneja errores si los hay',
'            console.log(''Error en el proceso: '', textStatus);',
'        }',
'    }',
');',
'',
'  /*                   $(''#P73_CIF_NIF'').on(''change'', function() {',
'    var nifCif = $(this).val();  // Obtener el valor del campo',
'console.log("Valor del campo P1_ITM_CIF_NIF: " + $(this).val());',
'  // Llamar al proceso de servidor para validar el NIF/CIF',
'    apex.server.process(''valida_dni'', {',
'        x01: nifCif  // Enviamos el valor del NIF al proceso',
'    }, {',
'        success: function(data) {',
unistr('            // Si el proceso devuelve \00E9xito, puedes hacer algo, por ejemplo:'),
unistr('            console.log(''NIF v\00E1lido'');'),
'        },',
'        error: function(xhr, status, error) {',
'            // Si el proceso devuelve un error, muestra el mensaje de error',
'            apex.message.clearErrors();',
'            apex.message.showErrors([{',
'                type: ''error'',',
'                location: ''item'',',
'                target: ''P73_CIF_NIF'',',
unistr('                message: ''El NIF/CIF no es v\00E1lido.'''),
'            }]);',
'',
unistr('            // Limpiar el campo si es inv\00E1lido'),
'            $(''#P73_CIF_NIF'').val('''');',
'        }',
'    });',
'});*/'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4641187212257245)
,p_event_id=>wwv_flow_imp.id(4640354025257237)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'valida_dni'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CIF_NIF'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''VALIDA_DNI'', {',
'    x01: $(''#P73_CODIGO_EXPEDIENTE'').val(),',
'    x02: $(''#P73_NOTIFICAR_A'').val(),',
'    x03: $(''#P73_CIF_NIF'').val(),',
'    x04: $(''#P73_NOMBRE_DESTINATARIO'').val()',
'}, {',
'    success: function(pData) {',
'        // Manejar el resultado',
'        console.log(pData);',
'    },',
'    error: function(jqXHR, textStatus, errorThrown) {',
'        console.error(''Error:'', textStatus);',
'    }',
'});'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(''entra en cliente'')',
'apex.server.process(''VALIDA_DNI'', {',
'    x01: $(''#P73_CODIGO_EXPEDIENTE'').val(),',
'    x02: $(''#P73_NOTIFICAR_A'').val(),',
'    x03: $(''#P73_CIF_NIF'').val(),',
'    x04: $(''#P73_NOMBRE_DESTINATARIO'').val()',
'}, {',
'    success: function(pData) {',
'        // Manejar el resultado',
'        console.log(pData);',
'    },',
'    error: function(jqXHR, textStatus, errorThrown) {',
'        console.error(''Error:'', textStatus);',
'    }',
'});'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4641731376257250)
,p_event_id=>wwv_flow_imp.id(4640354025257237)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':p73_error:=apexweb.validacion_actuacion_notificacion.valida_dni(:P73_CODIGO_EXPEDIENTE, ',
':P73_NOTIFICAR_A, :P73_CIF_NIF,  :P73_NOMBRE_DESTINATARIO);',
'end;'))
,p_attribute_02=>'P73_CODIGO_EXPEDIENTE,P73_NOTIFICAR_A,P73_CIF_NIF,P73_NOMBRE_DESTINATARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4641844642257251)
,p_event_id=>wwv_flow_imp.id(4640354025257237)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:p73_error:=null;',
'--:p73_error:=apexweb.validacion_actuacion_notificacion.valida_dni(:P73_CODIGO_EXPEDIENTE, :P73_NOTIFICAR_A, ',
'   --   :P73_CIF_NIF, :P73_NOMBRE_DESTINATARIO);',
'declare',
'v_dni varchar2(100);',
'v_nombre_destinatario varchar2(1000);',
'v_error varchar2(1000);',
'begin       ',
'v_dni:=:P73_CIF_NIF;',
'v_nombre_destinatario:=:P73_NOMBRE_DESTINATARIO;',
'v_error:='''';',
'apexweb.validacion_actuacion_notificacion.pvalida_dni(:P73_CODIGO_EXPEDIENTE, :P73_NOTIFICAR_A, ',
'      v_dni, v_nombre_destinatario,v_error);',
':P73_CIF_NIF:=v_dni;',
':P73_NOMBRE_DESTINATARIO:=v_nombre_destinatario;',
':p73_error:=v_error;',
'end; ',
'',
''))
,p_attribute_02=>'P73_CODIGO_EXPEDIENTE,P73_NOTIFICAR_A,P73_CIF_NIF,P73_NOMBRE_DESTINATARIO'
,p_attribute_03=>'P73_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P73_CIF_NIF'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5524621432925835)
,p_event_id=>wwv_flow_imp.id(4640354025257237)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P73_ERROR'
,p_attribute_02=>'NIF incorrecto'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_ERROR'
,p_client_condition_expression=>'NIF incorrecto, el NIF no existe en la base de datos, compruebe si debe darlo de alta'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5524778125925837)
,p_event_id=>wwv_flow_imp.id(4640354025257237)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P73_ERROR'
,p_attribute_02=>'NIF incorrecto'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_ERROR'
,p_client_condition_expression=>'Tipo de interesado incorrecto, el Cif/nif introducido corresponde al titular o representante'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5524675342925836)
,p_event_id=>wwv_flow_imp.id(4640354025257237)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>'set_value_cif'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CIF_NIF'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'null'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_ERROR'
,p_client_condition_expression=>'Tipo de interesado incorrecto, el Cif/nif introducido corresponde al titular o representante'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5521945072925808)
,p_event_id=>wwv_flow_imp.id(4640354025257237)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'set value correo'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CORREO_ELECTRONICO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin     ',
'  if :p73_cif_nif is null then     ',
'     return '''';',
'  else',
'',
'     return nvl(tablascomunes.consulta.Obtiene_Email_De_Orden(:p73_cif_nif),:P73_GITM_CORREO_ELEC_NOTIFICACION );',
'    ',
'  ',
'  end if;',
'end;'))
,p_attribute_07=>'P73_CIF_NIF,P73_CORREO_ELECTRONICO,P73_GITM_CORREO_ELEC_NOTIFICACION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5522015409925809)
,p_event_id=>wwv_flow_imp.id(4640354025257237)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'set value telefono'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_TELEFONO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin     ',
'  if :p73_cif_nif is null then     ',
'     return '''';',
'  else',
'',
'     return nvl(tablascomunes.consulta.Obtiene_Telefono_De_Orden(:p73_cif_nif),:P73_GITM_TELEFONO_NOTIFICACION );',
'    ',
'  ',
'  end if;',
'end;'))
,p_attribute_07=>'P73_CIF_NIF,P73_CORREO_ELECTRONICO,P73_GITM_TELEFONO_NOTIFICACION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5525077665925840)
,p_event_id=>wwv_flow_imp.id(4640354025257237)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_name=>'set value tipo persona'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_TIPO_PERSONA'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_tipo varchar2(100);',
'begin    ',
'  v_tipo:=tablascomunes.codigo_terceros.tipo_persona(:P73_CIF_NIF);',
'  return (v_tipo) ; ',
'end;'))
,p_attribute_07=>'P73_CIF_NIF'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5521589150925805)
,p_name=>'Error'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_ERROR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5521652120925806)
,p_event_id=>wwv_flow_imp.id(5521589150925805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P73_ERROR.'
,p_attribute_02=>unistr('Error de validaci\00F3n')
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P73_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5521806062925807)
,p_event_id=>wwv_flow_imp.id(5521589150925805)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CIF_NIF'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin      ',
unistr('  if :p73_error like ''NIF no v\00E1lido, el formato del NIF introducido no es v\00E1lido y no podr\00EDa ser notificado'' then    '),
'   return ''''; ',
'  end if;',
'  return :P73_CIF_NIF;',
' end;',
''))
,p_attribute_07=>'P73_ERROR,P73_CIF_NIF'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P73_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5522137453925810)
,p_name=>'validacion_telefono'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_TELEFONO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5522198846925811)
,p_event_id=>wwv_flow_imp.id(5522137453925810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_ERROR_TELEFONO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_error_telefono varchar2(10);',
'begin  ',
'if :p73_telefono is not null then    ',
' if                           substr(:P73_TELEFONO, 1, 1) not in (''6'', ''7'') or',
'                          substr(:P73_TELEFONO, 2, 1) not in (''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'') or',
'                          substr(:P73_TELEFONO, 3, 1) not in (''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'') or',
'                          substr(:P73_TELEFONO, 4, 1) not in (''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'') or',
'                          substr(:P73_TELEFONO, 5, 1) not in (''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'') or',
'                          substr(:P73_TELEFONO, 6, 1) not in (''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'') or',
'                          substr(:P73_TELEFONO, 7, 1) not in (''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'') or',
'                          substr(:P73_TELEFONO, 8, 1) not in (''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'') or',
'                          substr(:P73_TELEFONO, 9, 1) not in (''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'') then',
'                            ',
'     v_error_telefono:= 1;',
' END IF;',
' IF   length(substr(trim(:P73_TELEFONO),1,9)) <> 9  THEN',
'      v_error_telefono:= 2;',
' end if;    ',
'  return v_error_telefono;',
'end if;                ',
'end;'))
,p_attribute_07=>'P73_TELEFONO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5522526058925814)
,p_event_id=>wwv_flow_imp.id(5522137453925810)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Notificaci\00F3n electr\00F3nica, el n\00BA &P73_TELEFONO.  no es un n\00FAmero de telefono m\00F3vil v\00E1lido')
,p_attribute_02=>unistr('Validaci\00F3n tel\00E9fono')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_ERROR_TELEFONO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5522573114925815)
,p_event_id=>wwv_flow_imp.id(5522137453925810)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_TELEFONO'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'substr(trim( :P73_TELEFONO),1,9)',
''))
,p_attribute_07=>'P73_TELEFONO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_ERROR_TELEFONO'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5522647981925816)
,p_name=>'VALOR_FORMA_NOTIFICACION'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_CIF_NIF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5522761542925817)
,p_event_id=>wwv_flow_imp.id(5522647981925816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CODIGO_FORMA_NOTIFICACION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'2'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_CIF_NIF'
,p_client_condition_expression=>'tablascomunes.codigo_terceros.tipo_persona(:P73_CIF_NIF)'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7005793074595349)
,p_event_id=>wwv_flow_imp.id(5522647981925816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CODIGO_TIPO_NOTIFICACION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   declare',
'     v_forma varchar2(1000);',
'   begin',
'',
'       if substr(:P73_NOTIFICAR_A, 1, instr(:P73_NOTIFICAR_A, '':'',1)-1) = ''Representante'' and tablascomunes.codigo_terceros.tipo_persona(:P73_CIF_NIF) = ''J'' then',
'        	v_forma := 2;',
'        else',
'        	v_forma := :P73_GITM_NOTIFICACION_ELECTRONICA;',
'        end if;',
'  ',
'    return  v_forma;',
'   end;'))
,p_attribute_07=>'P73_CIF_NIF,P73_GITM_NOTIFICACION_ELECTRONICA,P73_NOTIFICAR_A'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5522880900925818)
,p_name=>'confirmar_notificacion'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3538318541798737)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5522999659925819)
,p_event_id=>wwv_flow_imp.id(5522880900925818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('Confirma notififcaci\00F3n')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var nombreDocumento = $(''#P73_NOMBRE_DOCUMENTO#'') ;',
'var nombreDestinatario = $("#P73_NOMBRE_DESTINATARIO#")  ; ',
'var tipoNotificacion = $("#P73_CODIGO_FORMA_NOTIFICACIONn#") ; ',
'',
unistr('var mensaje = ''Se notificar\00E1 el documento '' + nombreDocumento + '' a '' + nombreDestinatario + tipoNotificacion + '),
unistr('              '' \00BFConfirma la notificaci\00F3n?'';'),
'',
'var confirmar = confirm(mensaje);',
'if (confirmar) {',
unistr('    // Si el usuario acepta, ejecuta un submit de la p\00E1gina.'),
'    apex.submit({',
unistr('        request: "CONFIRMADO",  // Puedes usar esta variable para identificar la acci\00F3n'),
'        set: {',
unistr('            "P73_CONFIRMACION": "SI"  // Establece un par\00E1metro para usarlo en el proceso PL/SQL'),
'        }',
'    });',
'} else {',
'    // Si el usuario cancela, no hace nada.',
'    return false;',
'}'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5524453500925834)
,p_event_id=>wwv_flow_imp.id(5522880900925818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'DES_DOCUMENTO'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_DES_DOCUMENTO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_desc varchar2(1000);',
'begin     ',
'   select distinct d.nombre_documento ',
'    into v_desc',
'     from  apexweb.v_documento_expediente d',
'     where d.id_documento = :P73_NOMBRE_DOCUMENTO  ;',
'   return nvl(v_desc,'''');',
' exception ',
'   when others then       ',
'     return ('''');',
' end;'))
,p_attribute_07=>'P73_NOMBRE_DOCUMENTO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5524041247925829)
,p_event_id=>wwv_flow_imp.id(5522880900925818)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'DESC_TEXTO_FORMA_NOTIF'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CONFIRMACION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_texto varchar2(100);',
'begin     ',
'  if :P73_FORMA_NOTIFICACION=1 then        ',
unistr('     v_texto:='' por comparecencia en sede electr\00F3nica de la CARM.'';'),
'  elsif :P73_FORMA_NOTIFICACION=2 then        ',
unistr('     v_texto:='' por Direcci\00F3n Electr\00F3nica Habilitada.'';'),
'  elsif :P73_FORMA_NOTIFICACION=3 then        ',
unistr('     v_texto:='' en papel y por comparecencia en sede electr\00F3nica de la CARM.'';'),
'  end if;',
'  return nvl(v_texto, ''falla txt confirmacion'' );',
'end;'))
,p_attribute_07=>'P73_FORMA_NOTIFICACION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5523455103925824)
,p_event_id=>wwv_flow_imp.id(5522880900925818)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Se notificar\00E1 el documento  &P73_DES_DOCUMENTO. a &P73_NOMBRE_DESTINATARIO. &P73_TEXTO_CONFIRMACION. \00BFConfirma la notificaci\00F3n?')
,p_attribute_02=>unistr('Confirmacion de notificaci\00F3n')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5523547951925825)
,p_event_id=>wwv_flow_imp.id(5522880900925818)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR_NOTIFICACION_SEDE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6110866102126804)
,p_name=>'CARGA_DESCRIPCION'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_NOMBRE_DOCUMENTO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6110950660126805)
,p_event_id=>wwv_flow_imp.id(6110866102126804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'SET VALUE DESCRIPCION'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_DES_DOCUMENTO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'   V_DESCRIPCION VARCHAR2(1000);',
' BEGIN      ',
'',
'     select distinct d.NOMBRE_DOCUMENTO ',
'     INTO V_DESCRIPCION ',
'     from  apexweb.v_documento_expediente d',
'     where D.ID_DOCUMENTO=:P73_NOMBRE_DOCUMENTO;',
'',
'     RETURN V_DESCRIPCION;',
' EXCEPTION ',
'   WHEN OTHERS THEN      ',
'      RETURN '' '';',
'END;',
'',
''))
,p_attribute_07=>'P73_NOMBRE_DOCUMENTO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6111066735126806)
,p_name=>'CARGA CONCEPTO'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_NOMBRE_DOCUMENTO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6111153349126807)
,p_event_id=>wwv_flow_imp.id(6111066735126806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'SET VALUE CONCEPTO'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CONCEPTO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'   V_CONCEPTO VARCHAR2(1000);',
'   V_DESCRIPCION VARCHAR2(1000);',
'BEGIN     ',
'begin',
' select distinct d.NOMBRE_DOCUMENTO ',
'     INTO V_DESCRIPCION ',
'     from  apexweb.v_documento_expediente d',
'     where D.ID_DOCUMENTO=:P73_NOMBRE_DOCUMENTO;',
' exception',
'   when others then     ',
'      v_descripcion:=null;',
'',
'  end;',
'',
'   V_CONCEPTO :=substr(:P73_EXPEDIENTE_CODIGO|| '' '' || ',
'      substr(V_DESCRIPCION, 1, ',
'      instr(V_DESCRIPCION, ''.'') - 1), 1, 50);',
'',
'   RETURN (V_CONCEPTO);',
'END;'))
,p_attribute_07=>'P73_EXPEDIENTE_CODIGO,P73_NOMBRE_DOCUMENTO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7003870722595330)
,p_name=>'New'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_CODIGO_TIPO_NOTIFICACION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7003984572595331)
,p_event_id=>wwv_flow_imp.id(7003870722595330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'PP73_FECHA_NOTIFICACION_PAPEL,P73_FECHA_ENVIO_POSTAL,P73_DEVUELTO,P73_YA_NOTIFICADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_CODIGO_TIPO_NOTIFICACION'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7004184664595333)
,p_event_id=>wwv_flow_imp.id(7003870722595330)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'PP73_FECHA_NOTIFICACION_PAPEL,P73_FECHA_ENVIO_POSTAL,P73_DEVUELTO,P73_YA_NOTIFICADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_CODIGO_TIPO_NOTIFICACION'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7004063256595332)
,p_event_id=>wwv_flow_imp.id(7003870722595330)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'PP73_FECHA_NOTIFICACION_PAPEL,P73_FECHA_ENVIO_POSTAL,P73_DEVUELTO,P73_YA_NOTIFICADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_CODIGO_TIPO_NOTIFICACION'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7006126068595352)
,p_event_id=>wwv_flow_imp.id(7003870722595330)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_FORMA_NOTIFICACION'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'tablascomunes.obtiene_parametro(''APEXWEB'', ''FORMANOTIF_Electronica'')'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P73_CODIGO_TIPO_NOTIFICACION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7004388570595335)
,p_name=>'New_1'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_DEVUELTO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7004484656595336)
,p_event_id=>wwv_flow_imp.id(7004388570595335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_MOTIVO_DEVOLUCION'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_DEVUELTO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7004604652595337)
,p_event_id=>wwv_flow_imp.id(7004388570595335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_MOTIVO_DEVOLUCION'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P73_DEVUELTO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7004983857595341)
,p_event_id=>wwv_flow_imp.id(7004388570595335)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_FECHA_NOTIFICACION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_DEVUELTO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7005127615595342)
,p_event_id=>wwv_flow_imp.id(7004388570595335)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_MOTIVO_DEVOLUCION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_DEVUELTO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7004700226595338)
,p_name=>'New_2'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_YA_NOTIFICADO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7004765419595339)
,p_event_id=>wwv_flow_imp.id(7004700226595338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_DEVUELTO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_YA_NOTIFICADO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7004856529595340)
,p_event_id=>wwv_flow_imp.id(7004700226595338)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_DEVUELTO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P73_YA_NOTIFICADO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7005395590595345)
,p_name=>'SOLO_CONSULTA'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7005486270595346)
,p_event_id=>wwv_flow_imp.id(7005395590595345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_NOTIFICAR_A,P73_CIF_NIF,P73_NOMBRE_DESTINATARIO,P73_CORREO_ELECTRONICO,P73_TELEFONO,P73_CODIGO_TIPO_NOTIFICACION,P73_REMITENTE,P73_NOMBRE_DOCUMENTO,P73_CONCEPTO,P73_ESTADO,P73_FECHA_ESTADO,P73_FORMA_NOTIFICACION,P73_FECHA_NOTIFICACION,P73_DNI,P73'
||'_NOMBRE_APELLIDOS,P73_FECHA_ENVIO_POSTAL,P73_YA_NOTIFICADO,P73_DEVUELTO,P73_MOTIVO_DEVOLUCION,PP73_FECHA_NOTIFICACION_PAPEL'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P73_REMITENTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7005693383595348)
,p_event_id=>wwv_flow_imp.id(7005395590595345)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3538318541798737)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P73_REMITENTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7005577643595347)
,p_event_id=>wwv_flow_imp.id(7005395590595345)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Selecciona todos los checkboxes generados con apex_item.checkbox2 usando el name ''f01''',
'var checkboxes = document.querySelectorAll("#documentos_anexos_report input[name=''f01'']");',
'',
'// Deshabilita todos los checkboxes encontrados',
'checkboxes.forEach(function(checkbox) {',
'    checkbox.disabled = true;',
'});'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P73_REMITENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7005858262595350)
,p_name=>'forma_notificacion'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_NOTIFICAR_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7005966384595351)
,p_event_id=>wwv_flow_imp.id(7005858262595350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_CODIGO_TIPO_NOTIFICACION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   declare',
'     v_forma varchar2(1000);',
'   begin',
'   if :P73_NOTIFICAR_A is not null then',
'       if substr(:P73_NOTIFICAR_A, 1, instr(:P73_NOTIFICAR_A, '':'',1)-1) = ''Representante'' and tablascomunes.codigo_terceros.tipo_persona(:P73_CIF_NIF) = ''J'' then',
'        	v_forma := 2;',
'        else',
'        	v_forma := :P73_GITM_NOTIFICACION_ELECTRONICA;',
'        end if;',
'    end if;',
'    return  v_forma;',
'   end;'))
,p_attribute_07=>'P73_CIF_NIF,P73_GITM_NOTIFICACION_ELECTRONICA,P73_NOTIFICAR_A'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3538440851798738)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'guardar_notificacion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  nIdUnidadOrganizativa number;',
'  sCodigoGesper varchar2(20); ',
'  nResultado            number;',
'  sIdSolicitud          varchar2(50);',
'  sMensaje              varchar2(1000);',
'  sListaAnexos VARCHAR2(10000);',
'  sElemento varchar2(1000);',
'  sOrigen varchar2(1000);',
'  sIdDocumento varchar2(1000);',
'  v_origen number;',
'  v_version number;',
'begin    ',
'',
'lrpg_add_log(1,''entra al proceso'');',
'',
' if :P73_CODIGO_FORMA_NOTIFICACION is not null  then     ',
unistr('    :P73_CONCEPTO := replace(:P73_CONCEPTO, ''\00BA'', ''.'');'),
' end if;',
'',
'--apex_error.add_error(p_message          =>''unidad organizativa''||:P73_EXP_DUNIDADIORG,               ',
'   --                  p_display_location => apex_error.c_inline_in_notification           );',
'',
unistr(' -- obtiene el c\00F3digo Gesper de la Direcci\00F3n General, '),
'  nIdUnidadOrganizativa := tablascomunes.consulta.Obtiene_Unidad_Superior(:P73_EXP_DUNIDADIORG, ',
'                           tablascomunes.obtiene_parametro(''APEXWEB'', ''UNIDAD_Direccion_General''));',
'  -- si no hay DG obtiene la SG',
'  if nIdUnidadOrganizativa is null then',
'    nIdUnidadOrganizativa  := tablascomunes.consulta.Obtiene_Unidad_Superior(:P73_EXP_DUNIDADIORG, ',
'                           tablascomunes.obtiene_parametro(''APEXWEB'', ''UNIDAD_Secretaria_General''));   	                                                      ',
'  end if;',
'',
unistr('  -- obtiene el c\00F3digo Gesper'),
'  sCodigoGesper := tablascomunes.consulta.obtiene_codigo_gesper(nIdUnidadOrganizativa);',
'',
' :P73_LISTA_ANEXOS:=NULL;',
'  FOR i in 1 .. APEX_APPLICATION.g_f01.COUNT LOOP',
'',
'  select origen_documento , version ',
'  into v_origen, v_version',
'from apexweb.v_documento_expediente d ',
'where d.id_documento= APEX_APPLICATION.g_f01(i);',
'',
'   :P73_LISTA_ANEXOS:=:P73_LISTA_ANEXOS||v_origen||''-''||APEX_APPLICATION.g_f01(i)||''-''||v_version||'','';',
' end loop;',
'',
':P73_LISTA_ANEXOS:= substr(:P73_LISTA_ANEXOS,1, length(:P73_LISTA_ANEXOS)-1);',
'  --apex_error.add_error(p_message          =>''anexos ''||:P73_LISTA_ANEXOS,               ',
' --                    p_display_location => apex_error.c_inline_in_notification           );',
unistr('	-- notificaci\00F3n electr\00F3nica'),
'apex_error.add_error(p_message          =>''Tipo notif ''||:P73_CODIGO_TIPO_NOTIFICACION||''-''||',
unistr('    ''Actuaci\00F3n ''||:P73_ID_ACTUACION||''-Documento ''||:P73_NOMBRE_DOCUMENTO||''- Versi\00F3n ''||'),
'    nvl(:P73_VERSION,1)||''-Procedimiento ''||',
'    :P73_CODPROCEDIMIENTO|| ''-NN''||''- CIF-NIF ''||',
'    :P73_CIF_NIF||''- Destinatario ''|| :P73_NOMBRE_DESTINATARIO||''- Concepto ''||',
unistr('    :P73_CONCEPTO||''- Gesper ''|| sCodigoGesper||''-Correo ''||:P73_CORREO_ELECTRONICO||''-Tel\00E9fono ''||'),
'    :P73_TELEFONO||''- Anexos ''||:P73_LISTA_ANEXOS,               ',
'                     p_display_location => apex_error.c_inline_in_notification           );',
'',
'   ',
'',
'  nResultado := apexweb.notificacion.Notifica_Documento(:P73_CODIGO_TIPO_NOTIFICACION,',
'    :P73_ID_ACTUACION, :P73_NOMBRE_DOCUMENTO, ',
'    nvl(:P73_VERSION,1), ',
'    :P73_CODPROCEDIMIENTO|| ''-NN'', ',
'    :P73_CIF_NIF, :P73_NOMBRE_DESTINATARIO,',
'    :P73_CONCEPTO, sCodigoGesper, :P73_CORREO_ELECTRONICO,',
'    :P73_TELEFONO, :P73_LISTA_ANEXOS, sIdSolicitud, sMensaje);',
'apex_error.add_error(p_message          =>''resultado ''||nresultado,               ',
'                p_display_location => apex_error.c_inline_in_notification           );',
'  -- comprueba que el resultado es correcto',
'  if nResultado <> 1 then',
'	  :P73_CODIGO_ESTADO := 0;',
'	  :P73_ESTADO := ''Fallo al enviar ''||nResultado || ''-'' || sMensaje; ',
'      --apex_application.g_print_success_message := :P73_ESTADO;',
'',
'      --apex_error.add_error(p_message          => :P73_ESTADO,               ',
'        --             p_display_location => apex_error.c_inline_in_notification           );',
'',
unistr('      INSERT INTO TABLASCOMUNES.LLAMADAS_SW VALUES(NULL, :APP_USER, SYSDATE,''ORIGEN: process: guardar_notificacion , p\00E1gina 73 Actuacion Notificaci\00F3n Sede. '',  nResultado || ''-'' || sMensaje, ''APEX''  );'),
'      COMMIT;',
'       ',
'  else',
'	  -- establece la fecha del estado',
'	:P73_FECHA_ESTADO := sysdate;',
'  	:P73_CODIGO_ESTADO := 1;',
'  	:P73_ESTADO := ''Procesando'';  	',
'    :P73_ID_SOLICITUD := sIdSolicitud;',
'    apex_application.g_print_success_message := ''Registro creado'';',
'  end if;',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Error al guardar la notificaci\00F3n')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR_NOTIFICACION_SEDE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('Notificaci\00F3n guardada correctamente')
,p_internal_uid=>12310594628873636
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4330268745053641)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'notificar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'',
'    v_resultado varchar2(1000);',
'     v_cif varchar2(1000);',
'      v_nombre_destinatario varchar2(1000);',
'      v_remitente varchar2(1000);',
'      v_codigo_expediente varchar2(1000);',
'        v_codigo_forma_notificacion varchar2(1000);',
'        v_desc_forma_notificacion varchar2(1000);',
'        V_RESULT VARCHAR2(1000);',
'        confirmar boolean;',
'begin    ',
'',
'',
'',
unistr('/*confirmar := confirm("\00BFEst\00E1s seguro de que quieres continuar?");'),
'if (confirmar) then',
'    apex_error.add_error(p_message          =>''ha confirmado'',               ',
'                     p_display_location => apex_error.c_inline_in_notification           );',
'else ',
'    apex_error.add_error(p_message          =>''ha cancelado'',               ',
'                     p_display_location => apex_error.c_inline_in_notification           );',
'end if;*/',
'',
'/*apex_error.add_error(p_message          =>''llega'',               ',
'                     p_display_location => apex_error.c_inline_in_notification           );',
'if :P73_REMITENTE is null then',
unistr('    v_remitente :=        -- remite la direcci\00F3n general'),
'       tablascomunes.consulta.obtiene_unidad_organizativa(',
'         tablascomunes.consulta.Obtiene_Unidad_Superior(:P73_EXP_IDUNIDADORGANIZATIVA, ',
'         tablascomunes.obtiene_parametro(''APEXWEB'', ''UNIDAD_Direccion_General'')), sysdate, 2);',
'  end if;',
'  --apex_error.add_error(p_message          =>''unidad organizativa''||:P73_EXP_IDUNIDADORGANIZATIVA||'' remitente ''||:P73_REMITENTE,               ',
'  --                   p_display_location => apex_error.c_inline_in_notification           );',
'  if :P73_REMITENTE is null then',
unistr('   v_remitente :=        -- remite la consejer\00EDa'),
'     tablascomunes.consulta.obtiene_unidad_organizativa(',
'       tablascomunes.consulta.Obtiene_Unidad_Superior(:P73_EXP_IDUNIDADORGANIZATIVA, ',
'       tablascomunes.obtiene_parametro(''APEXWEB'', ''UNIDAD_Consejeria'')), sysdate, 2);',
'  end if;',
'   -- apex_error.add_error(p_message          =>''1 unidad organizativa''||:P73_EXP_IDUNIDADORGANIZATIVA||'' remitente ''||:P73_REMITENTE,               ',
'    --                 p_display_location => apex_error.c_inline_in_notification           );',
'',
'*/',
'/*apex_error.add_error(p_message          =>''LLAMA'',               ',
'                    p_display_location => apex_error.c_inline_in_notification           );',
'',
' v_result := apexweb.validacion_actuacion_notificacion.valida_dni(:P73_CODIGO_EXPEDIENTE, :P73_NOTIFICAR_A, ',
'      :P73_CIF_NIF, :P73_NOMBRE_DESTINATARIO);',
'apex_error.add_error(p_message          =>''RESULTADO ''||v_result,               ',
'                    p_display_location => apex_error.c_inline_in_notification           );*/',
'                    null;',
' ',
'end; ',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13102422522128539
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4639211740257225)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'sello'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_error.add_error(p_message          =>''No se puede sellar el documento porque no existe plantilla.'',               ',
'                     p_display_location => apex_error.c_inline_in_notification           );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4638970098257223)
,p_internal_uid=>13411365517332123
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4640654682257240)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'valida_dni'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_result VARCHAR2(4000);',
'BEGIN',
'',
'/*apex_error.add_error(p_message          =>''ENTRA A VALIDAR DNI'',               ',
'                    p_display_location => apex_error.c_inline_in_notification           );',
unistr('    -- Llamar a la funci\00F3n PL/SQL y almacenar el resultado'),
'    v_result := apexweb.validacion_actuacion_notificacion.valida_dni(:P73_CODIGO_EXPEDIENTE, :P73_NOTIFICAR_A, ',
'      :P73_CIF_NIF, :P73_NOMBRE_DESTINATARIO);',
'',
'    -- Devolver el resultado al cliente',
'    htp.p(v_result);  -- Imprimir el resultado como respuesta*/',
'    null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13412808459332138
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2891611513563041)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2891473337563040)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Actuaci\00F3n Notificaci\00F3n Sede')
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from apexweb.documento_notif_electronica dn, apexweb.documento d',
'where dn.id_documento = d.id',
'and dn.id_actuacion=:P73_ID_ACTUACION'))
,p_process_when_type=>'EXISTS'
,p_internal_uid=>11663765290637939
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2971700104985513)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2971630906985512)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Otros datos'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n.id_actuacion',
'from apexweb.actuacion_notificacion n, apexweb.forma_notificacion f, apexweb.motivo_devolucion_correo d',
'where n.codigo_forma_notificacion = f.codigo and n.codigo_motivo_devolucion = d.codigo(+) and n.id_actuacion = :P73_ID_ACTUACION',
'',
''))
,p_process_when_type=>'EXISTS'
,p_internal_uid=>11743853882060411
);
wwv_flow_imp.component_end;
end;
/
