prompt --application/pages/page_00255
begin
--   Manifest
--     PAGE: 00255
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
 p_id=>255
,p_name=>'Expediente interesado'
,p_alias=>'EXPEDIENTE-INTERESADO'
,p_page_mode=>'MODAL'
,p_step_title=>'Expediente interesado'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3364922440725703)
,p_plug_name=>'Expediente interesado'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EXPEDIENTE_INTERESADO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3367267091725706)
,p_plug_name=>'Botones'
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
 p_id=>wwv_flow_imp.id(3367731331725707)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3367267091725706)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3369067103725708)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3367267091725706)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Suprimir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'select * from EXPEDIENTE_INTERESADO where :P255_CODIGO_EXPEDIENTE = CODIGO_EXPEDIENTE and :P255_CODIGO_TIPO_INTERESADO = CODIGO_TIPO_INTERESADO'
,p_button_condition_type=>'EXISTS'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3369531512725708)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3367267091725706)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'select * from EXPEDIENTE_INTERESADO where :P255_CODIGO_EXPEDIENTE = CODIGO_EXPEDIENTE and :P255_CODIGO_TIPO_INTERESADO = CODIGO_TIPO_INTERESADO'
,p_button_condition_type=>'EXISTS'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3369896908725709)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3367267091725706)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'select * from EXPEDIENTE_INTERESADO where :P255_CODIGO_EXPEDIENTE = CODIGO_EXPEDIENTE and :P255_CODIGO_TIPO_INTERESADO = CODIGO_TIPO_INTERESADO'
,p_button_condition_type=>'NOT_EXISTS'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3334550640337512)
,p_branch_action=>'f?p=&APP_ID.:250:&SESSION.::&DEBUG.::P250_CODIGO_EXPEDIENTE:&P255_CODIGO_EXPEDIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3365207585725703)
,p_name=>'P255_CODIGO_EXPEDIENTE'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3364922440725703)
,p_item_source_plug_id=>wwv_flow_imp.id(3364922440725703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo Expediente'
,p_source=>'CODIGO_EXPEDIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3365600902725704)
,p_name=>'P255_CODIGO_TIPO_INTERESADO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3364922440725703)
,p_item_source_plug_id=>wwv_flow_imp.id(3364922440725703)
,p_prompt=>'Profesional'
,p_source=>'CODIGO_TIPO_INTERESADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LST_TIPO_INTERESADO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3366000142725705)
,p_name=>'P255_CIF_NIF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3364922440725703)
,p_item_source_plug_id=>wwv_flow_imp.id(3364922440725703)
,p_prompt=>'CIF/NIF'
,p_source=>'CIF_NIF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3367816373725707)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3367731331725707)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3368554782725707)
,p_event_id=>wwv_flow_imp.id(3367816373725707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3370732995725709)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3364922440725703)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla Expediente interesado'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12142886772800607
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3370318274725709)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3364922440725703)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla Expediente interesado'
,p_process_when=>'SELECT * FROM EXPEDIENTE_INTERESADO WHERE CODIGO_EXPEDIENTE = :P255_CODIGO_EXPEDIENTE AND CODIGO_TIPO_INTERESADO = :P255_CODIGO_TIPO_INTERESADO;'
,p_process_when_type=>'EXISTS'
,p_internal_uid=>12142472051800607
);
wwv_flow_imp.component_end;
end;
/
