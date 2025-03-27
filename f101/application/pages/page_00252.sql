prompt --application/pages/page_00252
begin
--   Manifest
--     PAGE: 00252
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
 p_id=>252
,p_name=>'expediente potencia'
,p_alias=>'EXPEDIENTE-POTENCIA'
,p_page_mode=>'MODAL'
,p_step_title=>'expediente potencia'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3126095029432618)
,p_plug_name=>'expediente potencia'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CODIGO_EXPEDIENTE,',
'       COMPRESOR,',
'       POTENCIA_ELECTRICA',
'  from APEX_RI.EXPEDIENTE_POTENCIA_INST_FRIG',
'  where CODIGO_EXPEDIENTE = :P252_CODIGO_EXPEDIENTE'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P252_CODIGO_EXPEDIENTE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3128538062432621)
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
 p_id=>wwv_flow_imp.id(3128912648432621)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3128538062432621)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3130247203432623)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3128538062432621)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Suprimir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P252_POTENCIA_ELECTRICA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3130713100432623)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3128538062432621)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'P252_POTENCIA_ELECTRICA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3131107561432623)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3128538062432621)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P252_POTENCIA_ELECTRICA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3049095224030837)
,p_branch_action=>'f?p=&APP_ID.:250:&SESSION.::&DEBUG.::P250_CODIGO_EXPEDIENTE:&P252_CODIGO_EXPEDIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3126390189432619)
,p_name=>'P252_CODIGO_EXPEDIENTE'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3126095029432618)
,p_item_source_plug_id=>wwv_flow_imp.id(3126095029432618)
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
 p_id=>wwv_flow_imp.id(3126837366432619)
,p_name=>'P252_COMPRESOR_X'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3126095029432618)
,p_item_source_plug_id=>wwv_flow_imp.id(3126095029432618)
,p_item_default=>'select nvl(max(COMPRESOR),0)+1  from apex_ri.EXPEDIENTE_POTENCIA_INST_FRIG where CODIGO_EXPEDIENTE = :P252_CODIGO_EXPEDIENTE;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Compresor X'
,p_source=>'COMPRESOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3127170066432620)
,p_name=>'P252_POTENCIA_ELECTRICA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3126095029432618)
,p_item_source_plug_id=>wwv_flow_imp.id(3126095029432618)
,p_prompt=>unistr('Potencia el\00E9ctrica')
,p_source=>'POTENCIA_ELECTRICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(9654897135726932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6045749693722622)
,p_name=>'P252_COMPRESOR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3126095029432618)
,p_item_source_plug_id=>wwv_flow_imp.id(3126095029432618)
,p_prompt=>'Compresor'
,p_source=>'COMPRESOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3049243073030838)
,p_computation_sequence=>10
,p_computation_item=>'P252_COMPRESOR_X'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select nvl(max(COMPRESOR),0)+1 from apex_ri.EXPEDIENTE_POTENCIA_INST_FRIG where CODIGO_EXPEDIENTE = :P252_CODIGO_EXPEDIENTE;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3128953291432621)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3128912648432621)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3129830660432622)
,p_event_id=>wwv_flow_imp.id(3128953291432621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3131886688432624)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3126095029432618)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla expediente potencia'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11904040465507522
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3131474967432623)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3126095029432618)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla expediente potencia'
,p_process_when=>'select * from apex_ri.EXPEDIENTE_POTENCIA_INST_FRIG where CODIGO_EXPEDIENTE = :P252_CODIGO_EXPEDIENTE and COMPRESOR = :P252_COMPRESOR;'
,p_process_when_type=>'EXISTS'
,p_internal_uid=>11903628744507521
);
wwv_flow_imp.component_end;
end;
/
