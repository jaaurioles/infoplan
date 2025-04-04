prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_name=>unistr('Selecci\00F3n de campos')
,p_alias=>unistr('SELECCI\00D3N-DE-CAMPOS')
,p_step_title=>unistr('Selecci\00F3n de campos')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11617636575874366)
,p_plug_name=>unistr('Selecci\00F3n de campos')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2879245163401255)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11617636575874366)
,p_button_name=>'Aceptar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CHANGE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11619805979874380)
,p_name=>'P60_SELECCION_CAMPOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11617636575874366)
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c.etiqueta, c.ID from campo_busqueda c',
'order by etiqueta'))
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11619954541874382)
,p_name=>'P60_CAMPOS_DISP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11617636575874366)
,p_prompt=>'<b style="color: #368f3f; font-weight: bold; font-size: 18px;">Campos seleccionados</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11620136265874383)
,p_name=>'P60_CAMPOS_SELEC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11617636575874366)
,p_prompt=>'<b style="color: #368f3f; font-weight: bold; font-size: 18px;">Campos disponibles</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2880745509401257)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insertar_campo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'null;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11652899286476155
);
wwv_flow_imp.component_end;
end;
/
