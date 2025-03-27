prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_name=>'Gestionar documentos'
,p_alias=>'GESTIONAR-DOCUMENTOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Gestionar documentos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3306256879256720)
,p_plug_name=>'documento'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9654958846950932387)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3463023808380922)
,p_plug_name=>'Buttons'
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
 p_id=>wwv_flow_imp.id(3463425317380922)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3463023808380922)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3464759391380923)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3463023808380922)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Borrar'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P34_ID_DOCUMENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3465163061380923)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3463023808380922)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_button_condition=>'P34_ID_DOCUMENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3465552980380923)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3463023808380922)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P34_ID_DOCUMENTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3306456218256722)
,p_name=>'P34_ID_DOCUMENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3306573010256723)
,p_name=>'P34_ORIGEN_DOCUMENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3306671787256724)
,p_name=>'P34_ID_TRAMITE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3306772623256725)
,p_name=>'P34_NOMBRE_DOCUMENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3306864017256726)
,p_name=>'P34_VERSION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307039746256727)
,p_name=>'P34_ULTIMA_VERSION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307085910256728)
,p_name=>'P34_LOGIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307204717256729)
,p_name=>'P34_FECHA_MODIFICACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307255636256730)
,p_name=>'P34_REFERENCIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307435694256731)
,p_name=>'P34_ID_ACTUACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307496926256732)
,p_name=>'P34_HAY_FICHERO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307597844256733)
,p_name=>'P34_EDITABLE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307729855256734)
,p_name=>'P34_CODIGO_EXPEDIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_prompt=>'Codigo Expediente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>12
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307818453256735)
,p_name=>'P34_CODIGO_ESTADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307857935256736)
,p_name=>'P34_OBSERVACIONES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3308032143256737)
,p_name=>'P34_CODIGO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_prompt=>'Tipo Mime'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select tipo_mime ,codigo from tipo_documento'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3308104416256738)
,p_name=>'P34_BLOB_DOCUMENTO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_prompt=>'Documento'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>20000
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'Y'
,p_attribute_12=>'INLINE'
,p_attribute_15=>'20000'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3309075392256748)
,p_name=>'P34_MIME_TYPE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3306256879256720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3463486779380922)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3463425317380922)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3464267054380923)
,p_event_id=>wwv_flow_imp.id(3463486779380922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3309234932256749)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_CODIGO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3309299340256750)
,p_event_id=>wwv_flow_imp.id(3309234932256749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'set_value'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select tipo_mime into :P34_MIME_TYPE from tipo_documento where ',
'codigo = :P34_CODIGO;',
'end;'))
,p_attribute_02=>'P34_CODIGO'
,p_attribute_03=>'P34_MIME_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5155113174205327)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'adjunta_documentos_nuevos'
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
'lrpg_add_log(1, ''--inicio subir documento prueba--'');',
' if :P34_ID_DOCUMENTO is null then ',
'    l_file_names := apex_string.split (',
'                        p_str => :P34_BLOB_DOCUMENTO,',
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
'        x_result := apexweb.crea_documento(x_id_documento,l_codigo,null, l_file.blob_content, l_file.FILENAME, :app_user  );',
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
'        if :P34_CODIGO_EXPEDIENTE is not null then',
'        lrpg_add_log(5, ''todo OK. ID DOCUMENTO: '' || x_id_documento);',
'            insert into documento_expediente(ID_DOCUMENTO,',
'            CODIGO_EXPEDIENTE) ',
'            values( x_id_documento, :P34_CODIGO_EXPEDIENTE); ',
'         commit;',
'        end if;',
'        if :P34_ID_ACTUACION is not null then',
'        insert into documento_actuacion (id_documento, id_actuacion) values( x_id_documento, :P34_ID_ACTUACION); ',
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
'    exception',
'    when others then',
'    APEX_ERROR.ADD_ERROR(',
'            p_message => ''Ha sucedido un error. ''|| sqlerrm,',
'            p_display_location =>  apex_error.c_inline_in_notification',
'        );',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3465552980380923)
,p_internal_uid=>13927266951280225
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3309025368256747)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_documentos'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'',
'',
'x_id_docu number;',
'x_id_blob number;',
'l_blob blob;',
'l_version number;  ',
'x_origen number;',
'begin',
'l_version :=1;',
'x_origen := 1;',
'select blob_content into l_blob from apex_application_temp_files where name = :P34_BLOB_DOCUMENTO;',
'',
'x_id_docu := s_documento.nextval;',
'x_id_blob := s_documento_blob.nextval;',
'',
'',
'if l_blob is null then ',
unistr('    RAISE_APPLICATION_ERROR(-20001, ''No se ha seleccionado ning\00FAn archivo'');'),
'end if;',
'',
'',
'if  :P34_ID_DOCUMENTO is null then',
'',
'-- insert en documento',
'insert into documento (id,',
'CODIGO_TIPO,',
'NOMBRE) ',
'',
'values(',
'x_id_docu,',
':P34_CODIGO,',
':P34_NOMBRE_DOCUMENTO',
');',
'',
'-- insert en documento_expediente',
'',
'insert into documento_expediente(ID_DOCUMENTO,',
'CODIGO_EXPEDIENTE) ',
'values( x_id_docu, :P34_CODIGO_EXPEDIENTE);',
'',
'--documento_observaciones',
'',
'insert into documento_observaciones(ORIGEN,',
'ID_DOCUMENTO,',
'OBSERVACIONES,',
'ID_TIPO_DOCUMENTO_EXPEDIENTE, ',
'ID_SUBTIPO_DOCUMENTO_EXP)  --?',
'values',
'(x_origen,',
'x_id_docu,',
':P34_OBSERVACIONES,',
':P34_CODIGO,',
'null);',
'',
'-- insert en documento_blob',
'insert into documento_blob(',
'    ID,',
'BLOB_DOCUMENTO) ',
'values(',
'    x_id_blob, ',
'    l_blob);',
'',
'-- insert en documento_version',
'',
'insert into documento_version(',
'    id,',
'    VERSION,',
'    FECHA_MODIFICACION,',
'    LOGIN,',
'    id_blob',
')',
'    values(x_id_docu,',
'    l_version,',
'    systimestamp,',
'    :app_user,--:P34_LOGIN,',
'    x_id_blob',
'    );',
'insert into documento_actuacion (id_documento, id_actuacion) values( x_id_docu, :P34_ID_ACTUACION);',
'',
'commit;',
'',
'else',
'null;',
'',
'end if;',
'exception',
'    when no_data_found then',
'      RAISE_APPLICATION_ERROR(-20001, ''No se ha encontrado el archivo en la tabla temporal.'');',
'when others then ',
'rollback;',
'raise;',
'',
'end;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'El documento se ha insertado correctamente.'
,p_internal_uid=>12081179145331645
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3466792764380924)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>12238946541455822
);
wwv_flow_imp.component_end;
end;
/
