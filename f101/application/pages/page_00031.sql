prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_name=>unistr('A\00F1adir Observaci\00F3n')
,p_alias=>unistr('A\00D1ADIR-OBSERVACI\00D3N')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('A\00F1adir/Modificar Observaci\00F3n')
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
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11963882255167888)
,p_plug_name=>unistr('A\00F1adir Observaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EXPEDIENTE_OBSERVACIONES'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16996840358845777359)
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
 p_id=>wwv_flow_imp.id(2045724843816868)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11963882255167888)
,p_button_name=>'Guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Guardar'
,p_button_position=>'CHANGE'
,p_button_condition=>'CREAR'
,p_button_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2046459313816869)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11963882255167888)
,p_button_name=>'Crear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Crear'
,p_button_position=>'CHANGE'
,p_button_condition=>'CREAR'
,p_button_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2046070476816868)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11963882255167888)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12171607764823876)
,p_name=>'P31_CODIGO_EXPEDIENTE'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11963882255167888)
,p_item_source_plug_id=>wwv_flow_imp.id(11963882255167888)
,p_source=>'CODIGO_EXPEDIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12171726557823877)
,p_name=>'P31_FECHA_HORA'
,p_source_data_type=>'DATE'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11963882255167888)
,p_item_source_plug_id=>wwv_flow_imp.id(11963882255167888)
,p_item_default=>'select sysdate from dual'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'FECHA_HORA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12171831940823878)
,p_name=>'P31_LOGIN_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11963882255167888)
,p_item_source_plug_id=>wwv_flow_imp.id(11963882255167888)
,p_item_default=>'APEX'
,p_prompt=>'Login Usuario'
,p_source=>'LOGIN_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12171905188823879)
,p_name=>'P31_OBSERVACIONES'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11963882255167888)
,p_item_source_plug_id=>wwv_flow_imp.id(11963882255167888)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16996840590858777359)
,p_name=>'P31_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16996840358845777359)
,p_prompt=>'<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Observaciones</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2050704953816894)
,p_name=>'cancel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2046070476816868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2051147515816895)
,p_event_id=>wwv_flow_imp.id(2050704953816894)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'cancel'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2049759027816879)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11963882255167888)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'mantenimiento_de_observaciones'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10821912804891777
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2050266721816893)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Crear,Cancelar,Guardar'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10822420498891791
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2049383036816878)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11963882255167888)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form A\00F1adir Observaci\00F3n')
,p_internal_uid=>10821536813891776
);
wwv_flow_imp.component_end;
end;
/
