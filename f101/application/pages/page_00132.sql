prompt --application/pages/page_00132
begin
--   Manifest
--     PAGE: 00132
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
 p_id=>132
,p_name=>'Notificacion_Automatica'
,p_alias=>'NOTIFICACION-AUTOMATICA'
,p_page_mode=>'MODAL'
,p_step_title=>'Notificacion_Automatica'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2624214717859243)
,p_plug_name=>'Notificacion_Automatica'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>60
,p_query_type=>'TABLE'
,p_query_table=>'NOTIFICACION_AUTOMATICA'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4953382868649528)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_button_name=>'Nuevo_administrado'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654897020527932414)
,p_button_image_alt=>'+'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-plus-square-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697502826181521)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'CHANGE'
,p_button_condition=>'P132_REG_NUEVO'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697093102181517)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3695674270181503)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Crear'
,p_button_position=>'CREATE'
,p_button_condition=>'P132_REG_NUEVO'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697561577181522)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Borrar'
,p_button_position=>'DELETE'
,p_button_condition=>'P132_REG_NUEVO'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3697274645181519)
,p_branch_name=>'Cerrar_Modal_CANCEL_131'
,p_branch_action=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3697093102181517)
,p_branch_sequence=>30
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P132_PAG_ORIGEN'
,p_branch_condition_text=>'131_test'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3697693183181523)
,p_branch_name=>'Cerrar_Modal_DELETE_131'
,p_branch_action=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3697561577181522)
,p_branch_sequence=>40
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P132_PAG_ORIGEN'
,p_branch_condition_text=>'131_test'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3697406726181520)
,p_branch_name=>'Cerrar_Modal_CREATE_131'
,p_branch_action=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3695674270181503)
,p_branch_sequence=>50
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P132_PAG_ORIGEN'
,p_branch_condition_text=>'131_test'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3697833857181524)
,p_branch_name=>'Cerrar_Modal_SAVE_131'
,p_branch_action=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3697502826181521)
,p_branch_sequence=>60
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P132_PAG_ORIGEN'
,p_branch_condition_text=>'131_test'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2624369521859245)
,p_name=>'P132_ID_DOCUMENTO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_item_source_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_source=>'ID_DOCUMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2624449302859246)
,p_name=>'P132_VERSION'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_item_source_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_source=>'VERSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2624572668859247)
,p_name=>'P132_CIF_NIF'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_item_source_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_prompt=>'CIF_NIF'
,p_source=>'CIF_NIF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897135726932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2624716544859248)
,p_name=>'P132_CODIGO_TIPO_NOTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_item_source_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_prompt=>'Tipo Notificacion'
,p_source=>'CODIGO_TIPO_NOTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST_TIPO_NOTIFICACION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct codigo_tipo_notificacion a',
'      ,decode(codigo_tipo_notificacion, 1, ''Sede'', 2, ''DEH'', 3, ''Papel+Sede'') b',
'from apexweb.v_expediente_interesado'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2624773222859249)
,p_name=>'P132_CORREO_ELECTRONICO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_item_source_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_prompt=>'Correo Electronico'
,p_source=>'CORREO_ELECTRONICO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct correo a',
'      ,lower(correo) b',
'  from (select d.correo_electronico as correo ',
'          from tablascomunes.direccion_administrado d ',
'          where d.cif_nif = :P132_CIF_NIF',
'            and d.correo_electronico is not null ',
'        union ',
'        select a.direccionemail as correo ',
'          from tablascomunes.administrados a ',
'          where a.cif_nif = :P132_CIF_NIF',
'            and a.direccionemail is not null',
'       ) ',
'  where 1 = 1',
'  order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2624857477859250)
,p_name=>'P132_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_item_source_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_prompt=>'Telefono'
,p_source=>'TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct telefono a',
'      ,telefono b',
'  from (select d.telefonos as telefono',
'          from tablascomunes.direccion_administrado d',
'          where d.cif_nif = :P132_CIF_NIF',
'            and d.telefonos is not null',
'        union',
'        select a.telefono as telefono',
'          from tablascomunes.administrados a',
'          where a.cif_nif = :P132_CIF_NIF',
'            and a.telefono is not null',
'       )',
'  where length(telefono) = 9 ',
'    and substr(telefono, 0, 1) in (''6'', ''7'')',
'  order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2625015322859251)
,p_name=>'P132_NOTIFICAR_ANEXOS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_item_source_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_prompt=>'Notificar Anexos'
,p_source=>'NOTIFICAR_ANEXOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LIST_NOTIFICACION_ANEXO'
,p_lov=>'.'||wwv_flow_imp.id(3592671012486234)||'.'
,p_field_template=>wwv_flow_imp.id(9654897621061932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2625095057859252)
,p_name=>'P132_ID_ACTUACION_NOTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_item_source_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_source=>'ID_ACTUACION_NOTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696973577181516)
,p_name=>'P132_PAG_ORIGEN'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4056211454165549)
,p_name=>'P132_REG_NUEVO'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4952264207649517)
,p_name=>'P132_NOMBRE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_item_default=>'substr(tablascomunes.consulta.obtiene_nombre_administrado(:P132_CIF_NIF),1,90)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'SQL'
,p_prompt=>'Nombre'
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
 p_id=>wwv_flow_imp.id(4953589212649530)
,p_name=>'P132_EXP_CODIGO'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4953736082649531)
,p_name=>'P132_TIPO_INTERESADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2624214717859243)
,p_prompt=>'Notificar a:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cif_nif || '','' || codigo_tipo_notificacion ',
'               || '','' || decode(codigo_tipo_notificacion, 1, ''Sede'', 2, ''DEH'', 3, ''Papel+Sede'')',
'               || '','' || correo_notificacion',
'               || '','' || telefono_notificacion',
'               || '','' || substr(tablascomunes.consulta.obtiene_nombre_administrado(cif_nif),1,90) salida',
'      ,decode(tipo_interesado, ''Titular'', 1, ''Representante'', 2, 3) orden',
'  from apexweb.v_expediente_interesado ei',
'  where ei.codigo_expediente = :P132_EXP_CODIGO',
'    and not exists (select 1 ',
'                      from apexweb.NOTIFICACION_AUTOMATICA na',
'                      where na.ID_DOCUMENTO = :P132_ID_DOCUMENTO',
'                      and na.VERSION = :P132_VERSION ',
'                      and na.CIF_NIF = ei.CIF_NIF )',
'union ',
'select ''Otro'' salida,999 orden',
'  from dual ',
'order by 2, 1'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4953844692649532)
,p_name=>'P132_ID_ACTUACION'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4954078048649535)
,p_name=>'Cambio_eleccion'
,p_event_sequence=>5
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P132_TIPO_INTERESADO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4954151803649536)
,p_event_id=>wwv_flow_imp.id(4954078048649535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P132_CIF_NIF,P132_NOMBRE,P132_CODIGO_TIPO_NOTIFICACION,P132_NOTIFICAR_ANEXOS,P132_TELEFONO,P132_CORREO_ELECTRONICO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4952427705649518)
,p_name=>'Completar_datos'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P132_CIF_NIF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4953189767649526)
,p_event_id=>wwv_flow_imp.id(4952427705649518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P132_NOMBRE := substr(tablascomunes.consulta.obtiene_nombre_administrado(:P132_CIF_NIF),1,90);'
,p_attribute_02=>'P132_CIF_NIF'
,p_attribute_03=>'P132_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4953323968649527)
,p_event_id=>wwv_flow_imp.id(4952427705649518)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P132_TELEFONO,P132_CORREO_ELECTRONICO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3695758070181504)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2624214717859243)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Notificacion_Automatica_DML'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12467911847256402
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3695872573181505)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Closing_Modal'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>12468026350256403
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4056031241165547)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog_131_CANCEL'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12828185018240445
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2624262028859244)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2624214717859243)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Notificacion_Automatica'
,p_internal_uid=>11396415805934142
);
wwv_flow_imp.component_end;
end;
/
