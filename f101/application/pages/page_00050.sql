prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_name=>unistr('Documento Electr\00F3nico')
,p_alias=>unistr('DOCUMENTO-ELECTR\00D3NICO')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Documento Electr\00F3nico')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.red-label {',
'    color: red;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9075359628844834)
,p_plug_name=>unistr('Documentaci\00F3n electr\00F3nica')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17011199100190335708)
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
 p_id=>wwv_flow_imp.id(4844232911343446)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_button_name=>'Cancelar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(338451005371734)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_button_name=>'BTN_ADJUNTAR_DOCUMENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_comment=>'Adjunta un documento al expediente'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4840952269343414)
,p_name=>'P50_CODIGO_EXPEDIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4841106298343415)
,p_name=>'P50_CODIGO_PROCEDIMIENTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4841240636343416)
,p_name=>'P50_EXPEDIENTE_ELECTRONICO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4841323219343417)
,p_name=>'P50_EXPEDIENTE_CERRADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4841418790343418)
,p_name=>'P50_PERMISO_ELECTRONICO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4844519528343449)
,p_name=>'P50_VAR_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5153237115205308)
,p_name=>'P50_ID_DOCUMENTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5154846689205325)
,p_name=>'P50_DOC_VERSION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5156009921205336)
,p_name=>'P50_ID_ACTUACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9076830274844838)
,p_name=>'P50_ITM_DOCUMENTO_ELECTRONICO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_prompt=>unistr('Adjuntar al expediente electr\00F3nico')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(9654897621061932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9076945005844839)
,p_name=>'P50_RAD_DI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_prompt=>'Documento facilitado por interesado:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:S\00ED;1,No;0')
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(9654897621061932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9077049132844840)
,p_name=>'P50_ITM_CODIGO_CLASE_DOCUMENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9077177161844841)
,p_name=>'P50_ITM_CLASE_DOCUMENTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_prompt=>'<label class="red-label">Tipo de Documento</label>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
't.codigo || '' '' || t.descripcion AS descri,',
'    t.codigo',
'   ',
'',
'   -- into :P50_ITM_CLASE_DOCUMENTO, :P50_ITM_CLASE_DOCUMENTO',
'FROM TABLE(ae.elastic.Obtener_Docus_Procedimiento(:P50_CODIGO_PROCEDIMIENTO)) t',
'WHERE ',
'    UPPER(t.codigo) LIKE UPPER(:P50_VAR_AUX) ',
'ORDER BY ',
'    t.codigo'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'ns/nc'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9654897621061932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9077301354844842)
,p_name=>'P50_RAD_FIRMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_prompt=>'Documento firmado:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SI_NO'
,p_lov=>'.'||wwv_flow_imp.id(244087164560918)||'.'
,p_field_template=>wwv_flow_imp.id(9654897621061932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr(' (NOTA: Una copia aut\00E9ntica NO es un documento firmado)')
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9077900845844848)
,p_name=>'P50_ADJUNTAR_DOCUMENTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9075359628844834)
,p_prompt=>'Adjuntar Documento'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17011199667212335721)
,p_name=>'P50_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17011199100190335708)
,p_prompt=>unistr('<b style="color: #FCC215; font-weight: bold; font-size: 18px;">Documentaci\00F3n Electr\00F3nica</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(340847817371745)
,p_name=>'when_NO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50_RAD_FIRMA'
,p_condition_element=>'P50_RAD_FIRMA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(341395265371745)
,p_event_id=>wwv_flow_imp.id(340847817371745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'atencion'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Recuerde que un documento electr\00F3nico NO se podr\00E1 enviar despu\00E9s a portafirmas')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4844295410343447)
,p_name=>'change'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50_RAD_DI'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4844683820343451)
,p_event_id=>wwv_flow_imp.id(4844295410343447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P50_RAD_DI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4844430803343448)
,p_event_id=>wwv_flow_imp.id(4844295410343447)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- limpiamos el valor del campo Tipo de documento',
':P50_ITM_CLASE_DOCUMENTO := NULL;',
'',
'',
'-- Dependiendo de la opcion del radio, cargamos variable para DA o DI',
'if :P50_RAD_DI = 1 then',
'	:P50_VAR_AUX := ''DI%'';',
'elsif :P50_RAD_DI = 0 then',
'',
'	:P50_VAR_AUX  := ''DA%'';',
'end if;'))
,p_attribute_02=>'P50_VAR_AUX'
,p_attribute_03=>'P50_VAR_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4844753566343452)
,p_event_id=>wwv_flow_imp.id(4844295410343447)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_ITM_CLASE_DOCUMENTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5152713138205303)
,p_name=>'validar_adjuntar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(338451005371734)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5152774234205304)
,p_event_id=>wwv_flow_imp.id(5152713138205303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe indicar la clase del documento'
,p_attribute_02=>unistr('DOCUMENTO ELECTR\00D3NICO')
,p_attribute_03=>'warning'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P50_ITM_CLASE_DOCUMENTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5153023780205306)
,p_event_id=>wwv_flow_imp.id(5152713138205303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe indicar la clase del documento'
,p_attribute_02=>unistr('DOCUMENTO ELECTR\00D3NICO')
,p_attribute_03=>'warning'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P50_RAD_FIRMA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5153073711205307)
,p_event_id=>wwv_flow_imp.id(5152713138205303)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Confirm'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Una vez subido el documento al expediente electr\00F3nico no se podra modificar. '),
unistr('\00BFDesea continuar?')))
,p_attribute_02=>unistr('DOCUMENTO ELECTR\00D3NICO')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5155243514205328)
,p_event_id=>wwv_flow_imp.id(5152713138205303)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5155024328205326)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJUNTA_DOCUMENTOS_NUEVOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_file_names apex_t_varchar2;',
'    l_file       apex_application_temp_files%rowtype;',
'    x_result number := 0;',
'    x_id_documento number;',
'    l_extension varchar2 (10);',
'    l_codigo number;',
'begin',
'',
unistr(' -- adjunta los ficheros seleccionados como documentos del expediente o la actuaci\00F3n  '),
'	    if :P50_ITM_DOCUMENTO_ELECTRONICO = 1 then',
'	    	   	',
unistr('	  -- documento electr\00F3nico nuevo'),
'',
'lrpg_add_log(1, ''--inicio subir documento prueba--'');',
' if :P50_ID_DOCUMENTO is null then ',
'    l_file_names := apex_string.split (',
'                        p_str => :P50_ADJUNTAR_DOCUMENTO,',
'                        p_sep => '':'' );',
'    for i in 1 .. l_file_names.count loop',
'        select *',
'          into l_file',
'          from apex_application_temp_files',
'         where name = l_file_names(i);',
'',
'lrpg_add_log(2, ''--dentro del loop--''|| l_file.FILENAME);',
'',
'if tablascomunes.consulta.valida_nombre_fichero(l_file.FILENAME) = 1 then',
'          l_extension := substr(l_file.filename, instr(l_file.FILENAME, ''.'', -1) + 1);',
'          lrpg_add_log(3, ''--creando extension --''|| l_extension); ',
'',
'    if lower(l_extension) <> ''mp4'' then',
'',
'',
'    select codigo',
'  	  into l_codigo',
'  	  from apexweb.tipo_documento',
'  	 where upper(extension) = upper(nvl(l_extension, ''""''));',
'     lrpg_add_log(4, ''-recogiendo codigo tipo--''|| l_codigo);',
'',
'        x_id_documento := null; ',
'             -- llama a la funcion crea_documento',
'        x_result := apexweb.crea_documento(x_id_documento,l_codigo,:P50_ITM_CLASE_DOCUMENTO, l_file.blob_content, l_file.FILENAME, :app_user  );',
'lrpg_add_log(4, ''--llamando a funcion crear_documento--resultado : ''|| x_result);',
'        IF x_result = -1 then -- FAIL',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''No se ha encontrado el archivo en la tabla temporal.'',',
'            p_display_location =>  apex_error.c_inline_in_notification',
'        );',
'        lrpg_add_log(-1, ''-No se ha encontrado el archivo en la tabla temporal--'');',
'',
'         elsif  x_result = -2 then -- FAIL',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Ha sucedido un error.'' || sqlerrm,',
'            p_display_location =>  apex_error.c_inline_in_notification',
'        );',
'         lrpg_add_log(-2, ''-Ha sucedido un error. ''|| sqlerrm);',
'',
'        elsif  x_result = -3 then -- FAIL',
'        APEX_ERROR.ADD_ERROR(',
unistr('            p_message => ''No se ha seleccionado ning\00FAn archivo'','),
'            p_display_location =>  apex_error.c_inline_in_notification',
'        );',
unistr('          lrpg_add_log(-3, ''No se ha seleccionado ning\00FAn archivo. '');'),
'',
'       ',
'        elsif x_result = 1 then -- OK',
'        -- insert en documento_expediente ',
'        ',
'        if :P50_CODIGO_EXPEDIENTE is not null then',
'      lrpg_add_log(5, ''todo OK. ID DOCUMENTO: '' || x_id_documento);',
'            insert into documento_expediente(ID_DOCUMENTO,',
'            CODIGO_EXPEDIENTE) ',
'            values( x_id_documento, :P50_CODIGO_EXPEDIENTE); ',
'         commit;',
'        end if;',
'        if :P50_ID_ACTUACION is not null then',
'        insert into documento_actuacion (id_documento, id_actuacion) values( x_id_documento, :P50_ID_ACTUACION); ',
'        commit;',
'        end if;',
'    end if;',
'',
'     end if;',
'',
'',
'end if;',
'    end loop;',
'    end if;',
'',
'     else	 ',
'	  	null; -- gestionar documentos existentes ( crear funcion) va por otro lado',
'	  end if;',
'',
'    exception',
'    when others then',
'    APEX_ERROR.ADD_ERROR(',
'            p_message => ''Ha sucedido un error. ''|| sqlerrm,',
'            p_display_location =>  apex_error.c_inline_in_notification',
'        );',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P50_ID_DOCUMENTO'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>13927178105280224
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5156127339205337)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADJUNTA_DOCUMENTOS_EXISTENTES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  bDocFirmado					    boolean;',
'  sNombreDocumento		    varchar2(200);',
'  blDocumento					    blob;',
'  sExtension					    varchar2(20);',
'  sCodigoError				    varchar2(20);',
'  sDescripcionError		    varchar2(300);',
'  nVersion						    number;',
'  nIdBlob							    number;',
'  sNombreCarpeta				  varchar2(100);',
'  sIdPortafirmas			    varchar2(10);',
'  sIdSolicitud				    varchar2(100);',
'  sCodigoClaseDocumento		varchar2(10); ',
'',
'begin	',
'lrpg_add_log(1, ''Iniciando adjuntar documentos existentes...''); ',
'	-- si el documento es un documento firmado, se sube al portafirmas',
'	if apexweb.consulta.Obtiene_Id_Portafirmas(:P50_ID_DOCUMENTO, :P50_DOC_VERSION, ',
'		                                      sIdPortafirmas, sIdSolicitud, sCodigoClaseDocumento) then',
'	  -- incorpora el documento directamente desde el portafirmas	',
'		if  ae.expediente_sandra.Incorpora_Docu_Portafirmas(:P50_CODIGO_EXPEDIENTE,',
'                                    										:P50_ID_DOCUMENTO,',
'                                    										apexweb.consulta.Obtiene_NombreFecha_Actuacion(:P50_ID_DOCUMENTO),',
'                                    										:P50_ITM_CLASE_DOCUMENTO,',
'                                    										sIdSolicitud,',
'                                    										null,',
'                                    										''AP_APEX'',',
'                                    										sCodigoError,',
'                          				  										sDescripcionError) = 1 then	',
'        lrpg_add_log(2, ''Probando sandra docu_portafirmas - OK'');                                                                 ',
'   	  -- se actualiza la clase del documento',
'		  update apexweb.documento',
'		     set clase_documento = :P50_ITM_CLASE_DOCUMENTO',
'		   where id = :P50_ID_DOCUMENTO;',
'   		commit;                           				  ',
unistr('   		--Mensaje(''DOCUMENTO PORTAFIRMAS'', ''El documento firmado se ha incorporado al expediente electr\00F3nico''); '),
'   		return;                    				   ',
'		else',
unistr('         INSERT INTO TABLASCOMUNES.LLAMADAS_SW VALUES(NULL, :APP_USER, null,''ORIGEN: process: adjunta_documentos_existentes , p\00E1gina 50 Documento Electr\00F3nico. '',  sCodigoError || '' - '' || sDescripcionError, ''APEX''  );'),
'        COMMIT;',
'			 lrpg_add_log(-1, ''Error ''|| sCodigoError ||'' '' ||sDescripcionError);--Mensaje(''DOCUMENTO PORTAFIRMAS'', ''Error: '' || sCodigoError ||'' '' ||sDescripcionError );    ',
'			return;             				  ',
'    end if;',
'	end if;',
'	',
'	-- obtiene los datos del documento',
'  -- nombre',
'  select nombre',
'  into sNombreDocumento',
'	from apexweb.documento ',
'	where id = :P50_ID_DOCUMENTO;',
'',
'  -- version',
'  select max(version) ',
'  into nVersion',
'  from  apexweb.documento_version',
'	where id = :P50_ID_DOCUMENTO;',
'   ',
'  -- id_blob',
'  select id_blob ',
'  into nIdBlob',
'  from  apexweb.documento_version',
'	where id = :P50_ID_DOCUMENTO',
'	and version = nVersion;',
'',
'  -- contenido del documento',
'  select blob_documento',
'  into blDocumento',
'	from apexweb.documento_blob',
'	where id = nIdBlob;',
'	',
'	sExtension := substr(sNombreDocumento, instr(sNombreDocumento, ''.'', -1) + 1, length(sNombreDocumento));',
'	sNombreCarpeta := apexweb.consulta.Obtiene_NombreFecha_Actuacion(:P50_ID_DOCUMENTO);',
'	    lrpg_add_log(3, ''modificando nombre: '' ||sNombreDocumento ||'', '' ||sNombreCarpeta ); ',
'  -- comprueba si se pide subir un documento firmado',
'  if :P50_RAD_FIRMA= 1 then',
'		bDocFirmado := true;',
'	else',
'	  bDocFirmado := false;',
'	end if;	      	',
'',
'  lrpg_add_log(4, ''insertando en expediente_sandra.incorpora_documento_expediente... ''  );',
'	if ae.expediente_sandra.Incorpora_Documento_Expediente(:P50_CODIGO_EXPEDIENTE,',
'                                        								 :P50_ID_DOCUMENTO,',
'                                        								 bDocFirmado,',
'																												 blDocumento,',
'                                        								 sExtension,',
'                                        								 :P50_ITM_CLASE_DOCUMENTO,',
'                                        								 sNombreCarpeta,',
'																												 sCodigoError,',
'																												 sDescripcionError) <> 1  then',
'																																',
unistr('		 lrpg_add_log(-2, ''Ha fallado la carga en el expediente electr\00F3nico '' || sCodigoError || '' - '' || sDescripcionError); '),
unistr('        --Mensaje(''Ha fallado la carga en el expediente electr\00F3nico'', sCodigoError || '' - '' || sDescripcionError);'),
unistr('         INSERT INTO TABLASCOMUNES.LLAMADAS_SW VALUES(NULL, :APP_USER, null,''ORIGEN: process: adjunta_documentos_existentes , p\00E1gina 50 Documento Electr\00F3nico. '',  sCodigoError || '' - '' || sDescripcionError, ''APEX''  );'),
'        COMMIT;',
'		return;',
'	else',
'		-- borramos la referencia al blob de la tabla de versionado.',
'		update apexweb.documento_version',
'		   set id_blob = null',
'		 where id_blob = nIdBlob;',
'		-- borramos el blob',
'		delete from apexweb.documento_blob where id = nIdBlob;		',
'		-- se actualiza la clase del documento',
'		update apexweb.documento',
'		   set clase_documento = :P50_ITM_CLASE_DOCUMENTO ',
'		 where id = :P50_ID_DOCUMENTO;',
'		commit;',
unistr('		--Mensaje(''DOCUMENTO ELECTR\00D3NICO'', ''El documento se ha incorporado al expediente electr\00F3nico'');'),
'	end if;',
'',
'exception',
'  when no_data_found then',
unistr(' INSERT INTO TABLASCOMUNES.LLAMADAS_SW VALUES(NULL, :APP_USER, null,''ORIGEN: process: adjunta_documentos_existentes , p\00E1gina 50 Documento Electr\00F3nico. '',  sCodigoError || '' - '' || sDescripcionError, ''APEX''  );'),
'        COMMIT;',
'   lrpg_add_log(-10, ''Error  No se han podido recuperar los datos del documento'');',
'    --Mensaje(''DOCUMENTO'', ''No se han podido recuperar los datos del documento'');',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(338451005371734)
,p_process_when=>'P50_ID_DOCUMENTO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'El archivo se ha adjuntado correctamente.'
,p_internal_uid=>13928281116280235
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4844084655343445)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE_DIALOG'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Cancelar, BTN_ADJUNTAR_DOCUMENTO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>13616238432418343
);
wwv_flow_imp.component_end;
end;
/
