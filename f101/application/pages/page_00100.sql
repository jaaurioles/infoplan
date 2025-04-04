prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
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
 p_id=>100
,p_name=>'Administrado'
,p_alias=>'ADMINISTRADO'
,p_step_title=>'Administrado'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12476318309814982)
,p_plug_name=>'Administrado'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654960744323932386)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cif_nif',
'      ,tipodeadministrado',
'      ,tipodedocumento',
'      ,nombre',
'      ,primerapellido',
'      ,segundoapellido',
'      ,nombredepila',
'      ,domiciliosocial',
'      ,codigoprovincia',
'      ,(select to_char(mun.codigomunicipio)||'' ''||mun.municipio b',
'          from TABLASCOMUNES.MUNICIPIOS mun',
'          where mun.codigoprovincia = a.codigoprovincia',
'            and mun.codigomunicipio = a.codigomunicipio',
'            and mun.codigoprovincia > 0 ',
'            and mun.codigomunicipio > 0) as codigomunicipio',
'      ,(select to_char(ped.CODIGOPEDANIA)||'' ''||ped.PEDANIA b',
'          from TABLASCOMUNES.pedanias ped',
'          where ped.codigoprovincia = a.codigoprovincia',
'            and ped.codigomunicipio = a.codigomunicipio',
'            and ped.CODIGOPEDANIA =  a.codigopedania',
'            and ped.codigoprovincia > 0 ',
'            and ped.codigomunicipio > 0',
'            and ped.CODIGOPEDANIA > 0) as codigopedania',
'      ,codigopostal',
'      ,telefono',
'      ,direccionemail',
'      --,representante_legal',
'      ,pagina_web',
'      --,cif_nif_representante_legal',
'      ,decode(nvl(cif_nif_representante_legal,''-1''),''-1'','''',cif_nif_representante_legal||'' - ''||tablascomunes.consulta.Obtiene_Nombre_Administrado(cif_nif_representante_legal)) as cif_nif_representante_legal',
'      ,numerosoporte',
'      ,nif',
'      ,fecha_nacimiento',
'      ,codigo_pais_nacionalidad',
'      ,sexo',
'  from tablascomunes.ADMINISTRADOS a',
'  left join tablascomunes.datos_personales b',
'    on a.cif_nif = b.nif'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Administrado'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12476481149814982)
,p_name=>'Administrado'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:RP,101:P101_CIF_NIF,P101_NIF:\#CIF_NIF#\,#CIF_NIF#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'SMORALESMA'
,p_internal_uid=>21248634926889880
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12477112036814987)
,p_db_column_name=>'CIF_NIF'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'CIF'
,p_alternative_label=>'CIF'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12477599774814988)
,p_db_column_name=>'TIPODEADMINISTRADO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tipo de persona'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(241299701560913)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12477923898814988)
,p_db_column_name=>'TIPODEDOCUMENTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tipo de documento'
,p_alternative_label=>'Tipo de documento'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(240960380560913)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12478372530814988)
,p_db_column_name=>'NOMBRE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12478782832814988)
,p_db_column_name=>'PRIMERAPELLIDO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('1\00BA Apellido')
,p_alternative_label=>unistr('1\00BA Apellido')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12479179703814988)
,p_db_column_name=>'SEGUNDOAPELLIDO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('2\00BA Apellido')
,p_alternative_label=>unistr('2\00BA Apellido')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12479574360814988)
,p_db_column_name=>'NOMBREDEPILA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Nombre de Pila'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12479951770814990)
,p_db_column_name=>'DOMICILIOSOCIAL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>unistr('Raz\00F3n Social')
,p_alternative_label=>unistr('Raz\00F3n Social')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12480346006814990)
,p_db_column_name=>'CODIGOPROVINCIA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>unistr('C\00F3digo Provincia')
,p_alternative_label=>unistr('C\00F3digo Provincia')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(240676212560912)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12481531256814990)
,p_db_column_name=>'CODIGOPOSTAL'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>unistr('C\00F3digo Postal')
,p_alternative_label=>unistr('C\00F3digo Postal')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12481934756814990)
,p_db_column_name=>'TELEFONO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>unistr('Tel\00E9fono')
,p_alternative_label=>unistr('Tel\00E9fono')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12482327759814990)
,p_db_column_name=>'DIRECCIONEMAIL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>unistr('Correo Electr\00F3nico')
,p_alternative_label=>unistr('Correo Electr\00F3nico')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12483145181814991)
,p_db_column_name=>'PAGINA_WEB'
,p_display_order=>44
,p_column_identifier=>'P'
,p_column_label=>unistr('P\00E1gina Web')
,p_alternative_label=>unistr('P\00E1gina Web')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12483990135814991)
,p_db_column_name=>'NUMEROSOPORTE'
,p_display_order=>64
,p_column_identifier=>'R'
,p_column_label=>unistr('N\00FAmero Soporte')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(854413370835911)
,p_db_column_name=>'NIF'
,p_display_order=>74
,p_column_identifier=>'S'
,p_column_label=>'Nif'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(854542614835912)
,p_db_column_name=>'FECHA_NACIMIENTO'
,p_display_order=>84
,p_column_identifier=>'T'
,p_column_label=>'Fecha Nacimiento'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(854645071835913)
,p_db_column_name=>'CODIGO_PAIS_NACIONALIDAD'
,p_display_order=>94
,p_column_identifier=>'U'
,p_column_label=>'Pais Nacionalidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(1214281869857522)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(854717308835914)
,p_db_column_name=>'SEXO'
,p_display_order=>104
,p_column_identifier=>'V'
,p_column_label=>'Sexo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(242371911560917)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6111258937126808)
,p_db_column_name=>'CODIGOMUNICIPIO'
,p_display_order=>114
,p_column_identifier=>'W'
,p_column_label=>unistr('C\00F3digo Municipio')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6111418550126809)
,p_db_column_name=>'CODIGOPEDANIA'
,p_display_order=>124
,p_column_identifier=>'X'
,p_column_label=>unistr('C\00F3digo Pedania')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6994951201568022)
,p_db_column_name=>'CIF_NIF_REPRESENTANTE_LEGAL'
,p_display_order=>134
,p_column_identifier=>'Y'
,p_column_label=>'Cif Nif Representante Legal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12485915709815951)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'42286'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CIF_NIF:TIPODEADMINISTRADO:TIPODEDOCUMENTO:NOMBRE:PRIMERAPELLIDO:SEGUNDOAPELLIDO:NOMBREDEPILA:DOMICILIOSOCIAL:CODIGOPROVINCIA:CODIGOMUNICIPIO:CODIGOPEDANIA:CODIGOPOSTAL:TELEFONO:DIRECCIONEMAIL:CIF_NIF_REPRESENTANTE_LEGAL:PAGINA_WEB:NUMEROSOPORTE:CODI'
||'GO_PAIS_NACIONALIDAD:SEXO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(448350672113037)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12476318309814982)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&APP_SESSION.::&DEBUG.:101::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(449027611113037)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12476318309814982)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(449535647113038)
,p_event_id=>wwv_flow_imp.id(449027611113037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12476318309814982)
);
wwv_flow_imp.component_end;
end;
/
