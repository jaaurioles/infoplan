prompt --application/pages/page_00231
begin
--   Manifest
--     PAGE: 00231
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
 p_id=>231
,p_name=>'Busqueda+_Detail_Criterio'
,p_alias=>'BUSQUEDA-DETAIL-CRITERIO'
,p_page_mode=>'MODAL'
,p_step_title=>'Busqueda+_Detail_Criterio'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8288676645676344)
,p_plug_name=>'Cirterios'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8375923915598105)
,p_plug_name=>'botonera'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9654986254053932377)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8376217071598108)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8375923915598105)
,p_button_name=>'cancelar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8376145943598107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8375923915598105)
,p_button_name=>'aceptar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8288759555676345)
,p_name=>'P231_TEXTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8288676645676344)
,p_prompt=>'Texto'
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
 p_id=>wwv_flow_imp.id(8288846818676346)
,p_name=>'P231_VALOR1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8288676645676344)
,p_prompt=>'Valor 1'
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
 p_id=>wwv_flow_imp.id(8289136389676348)
,p_name=>'P231_VALOR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8288676645676344)
,p_prompt=>'Valor 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8289159441676349)
,p_name=>'P231_LISTA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8288676645676344)
,p_prompt=>'Lista'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>'RETURN  Busqueda_lista_criterio(4);'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8289254471676350)
,p_name=>'P231_ID_CRITERIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8288676645676344)
,p_prompt=>'ID Criterio'
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
 p_id=>wwv_flow_imp.id(8289362391676351)
,p_name=>'P231_TIPO_PARAMETRO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8288676645676344)
,p_prompt=>unistr('Tipo Par\00E1metro')
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
 p_id=>wwv_flow_imp.id(8289474258676352)
,p_name=>'P231_OPERADOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8288676645676344)
,p_prompt=>'Operador'
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
 p_id=>wwv_flow_imp.id(8376465018598111)
,p_name=>'P231_FECHA1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8288676645676344)
,p_prompt=>'Fecha 1'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8376551886598112)
,p_name=>'P231_FECHA2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8288676645676344)
,p_prompt=>'Fecha 2'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8379575516598142)
,p_name=>'P231_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8288676645676344)
,p_prompt=>'Descripcion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8376343662598109)
,p_name=>'Informar_IG_Criterio_230'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8376145943598107)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8376422065598110)
,p_event_id=>wwv_flow_imp.id(8376343662598109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Recupera los valores ingresados en la p\00E1gina modal'),
'var idCriterio   = $v("P231_ID_CRITERIO");',
'var descripcion   = $v("P231_DESCRIPCION");',
'var newTexto     = $v("P231_TEXTO");',
'var newValor1    = $v("P231_VALOR1");',
'var newValor2    = $v("P231_VALOR2");',
'var newFecha1    = $v("P231_FECHA1");',
'var newFecha2    = $v("P231_FECHA2");',
'var newLista     = $v("P231_LISTA");',
'',
unistr('// Accede a la regi\00F3n Interactive Grid de la p\00E1gina padre.'),
unistr('// Aseg\00FArate de haber definido un Static ID en la regi\00F3n IG (por ejemplo: "myIG").'),
'var igRegion = window.parent.apex.region("igCriterio");',
'',
'// Obtiene la vista actual del IG',
'var gridView = igRegion.widget().interactiveGrid("getCurrentView");',
'',
'// Inicializa la variable para el registro encontrado',
'var recordFound = null;',
'',
'// Utiliza forEach para iterar sobre cada registro del modelo',
'gridView.model.forEach(function(record) {',
'    if (gridView.model.getValue(record, "ID") == idCriterio) {',
'        recordFound = record;',
'    }',
'});',
'',
unistr('// Si se encontr\00F3 el registro, se actualizan las columnas correspondientes'),
'if (recordFound) {',
'    gridView.model.setValue(recordFound, "TEXTO", newTexto);',
'    gridView.model.setValue(recordFound, "NUMERO1", newValor1);',
'    gridView.model.setValue(recordFound, "NUMERO2", newValor2);',
'    gridView.model.setValue(recordFound, "FECHA1", newFecha1);',
'    gridView.model.setValue(recordFound, "FECHA2", newFecha2);',
'    gridView.model.setValue(recordFound, "LISTA", newLista);',
'console.log(descripcion);',
'//console.log(descripcion.replace(/[Texto]/g, newTexto));',
'console.log(descripcion.replace(''[Texto]'', newTexto));',
'console.log(descripcion.replace("[Valor1]", newValor1).replace("[Valor2]", newValor2));',
'//    descripcion.replace("[Texto]", newTexto);',
'//    descripcion.replace("[Valor1]", newValor1);',
'//    descripcion.replace("[Valor2]", newValor2);',
'//    descripcion.replace("[Valor]", newValor2);',
'//    descripcion.replace("[Fecha1]", newFecha1);',
'//    descripcion.replace("[Fecha2]", newFecha2);',
'//    descripcion.replace("[Fecha]", newFecha2);',
'//    descripcion.replace("[Lista]", newLista);',
'console.log(descripcion);    ',
'    //gridView.model.setValue(recordFound, "TEXTO_DESCRIPTIVO", descripcion);',
'    gridView.model.setValue(recordFound, "TEXTO_DESCRIPTIVO", descripcion.replace("[Texto]", newTexto).replace("[Valor1]", newValor1).replace("[Valor2]", newValor2).replace("[Valor]", newValor2).replace("[Fecha1]", newFecha1).replace("[Fecha2]", newF'
||'echa2).replace("[Fecha]", newFecha2).replace("[Lista]", newLista));',
'    gridView.model.setValue(recordFound, "TEXTO_DESCRIPTIVO_2", newTexto);',
'}',
'',
'// Cierra la ventana modal',
'window.parent.apex.navigation.dialog.close(true);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8379054447598137)
,p_name=>'Control_Visualizar_tp9'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P231_TIPO_PARAMETRO'
,p_display_when_cond2=>'9'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8379368067598140)
,p_event_id=>wwv_flow_imp.id(8379054447598137)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_TEXTO,P231_VALOR1,P231_VALOR2,P231_FECHA1,P231_FECHA2,P231_LISTA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8378598918598132)
,p_name=>'Control_Visualizar_tp3_op2'
,p_event_sequence=>40
,p_condition_element=>'P231_OPERADOR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P231_TIPO_PARAMETRO'
,p_display_when_cond2=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8378705967598133)
,p_event_id=>wwv_flow_imp.id(8378598918598132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_FECHA2,P231_FECHA1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8378944657598135)
,p_event_id=>wwv_flow_imp.id(8378598918598132)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_FECHA2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8378817674598134)
,p_event_id=>wwv_flow_imp.id(8378598918598132)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_TEXTO,P231_VALOR1,P231_VALOR2,P231_LISTA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8378957699598136)
,p_event_id=>wwv_flow_imp.id(8378598918598132)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_TEXTO,P231_VALOR1,P231_VALOR2,P231_LISTA,P231_FECHA1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8378102497598127)
,p_name=>'Control_Visualizar_tp2'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P231_TIPO_PARAMETRO'
,p_display_when_cond2=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8378169401598128)
,p_event_id=>wwv_flow_imp.id(8378102497598127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_TEXTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8378400029598130)
,p_event_id=>wwv_flow_imp.id(8378102497598127)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_VALOR1,P231_VALOR2,P231_FECHA1,P231_FECHA2,P231_LISTA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8377608315598122)
,p_name=>'Control_Visualizar_tp1_op2'
,p_event_sequence=>60
,p_condition_element=>'P231_OPERADOR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P231_TIPO_PARAMETRO'
,p_display_when_cond2=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8377664417598123)
,p_event_id=>wwv_flow_imp.id(8377608315598122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_VALOR1,P231_VALOR2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8377846823598125)
,p_event_id=>wwv_flow_imp.id(8377608315598122)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_VALOR2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8377766383598124)
,p_event_id=>wwv_flow_imp.id(8377608315598122)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_TEXTO,P231_FECHA1,P231_FECHA2,P231_LISTA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8378023130598126)
,p_event_id=>wwv_flow_imp.id(8377608315598122)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_TEXTO,P231_FECHA1,P231_FECHA2,P231_LISTA,P231_VALOR1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8377269453598119)
,p_name=>'Control_Visualizar_op6'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P231_OPERADOR'
,p_display_when_cond2=>'6'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8377434392598120)
,p_event_id=>wwv_flow_imp.id(8377269453598119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_LISTA,P231_FECHA1,P231_FECHA2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8377528853598121)
,p_event_id=>wwv_flow_imp.id(8377269453598119)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_TEXTO,P231_VALOR1,P231_VALOR2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8376940942598115)
,p_name=>'Control_Visualizar_op4'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P231_OPERADOR'
,p_display_when_cond2=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8376969293598116)
,p_event_id=>wwv_flow_imp.id(8376940942598115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_LISTA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8377151696598118)
,p_event_id=>wwv_flow_imp.id(8376940942598115)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P231_TEXTO,P231_VALOR1,P231_VALOR2,P231_FECHA1,P231_FECHA2'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8288253524676340)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>17060407301751238
);
wwv_flow_imp.component_end;
end;
/
