prompt --application/pages/page_00902
begin
--   Manifest
--     PAGE: 00902
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
 p_id=>902
,p_name=>'Perfiles_Detail'
,p_alias=>'PERFILES-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Perfiles_Detail'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11281756026315630)
,p_plug_name=>'Perfiles_Detail'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PERFILES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11323875025509750)
,p_plug_name=>'Perfil_Paginas'
,p_parent_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11323983365509751)
,p_plug_name=>'Etiqueta_IZ'
,p_parent_plug_id=>wwv_flow_imp.id(11323875025509750)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11324022532509752)
,p_plug_name=>'Etiqueta_DE'
,p_parent_plug_id=>wwv_flow_imp.id(11323875025509750)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11324189483509753)
,p_plug_name=>'Listado_Pagina'
,p_parent_plug_id=>wwv_flow_imp.id(11323875025509750)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654987221223932377)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11287788723315652)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9654986254053932377)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(261385054634917)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11287788723315652)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(261787257634918)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11287788723315652)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_image_alt=>'Borrar'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P902_PERFILES_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(262163176634918)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11287788723315652)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'P902_PERFILES_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(262564335634918)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11287788723315652)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9654896339607932416)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P902_PERFILES_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11284710194315637)
,p_name=>'P902_PERFILES_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_item_source_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Perfiles Id'
,p_source=>'PERFILES_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11285130908315643)
,p_name=>'P902_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_item_source_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11285449281315648)
,p_name=>'P902_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_item_source_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11285885196315650)
,p_name=>'P902_ACTIVO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_item_source_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_prompt=>'Activo'
,p_source=>'ACTIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9654897495998932413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_04=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11286337502315651)
,p_name=>'P902_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_item_source_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11286710602315651)
,p_name=>'P902_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_item_source_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11287135931315651)
,p_name=>'P902_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_item_source_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11287501080315653)
,p_name=>'P902_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_item_source_plug_id=>wwv_flow_imp.id(11281756026315630)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11333305254509771)
,p_name=>'P902_ETIQ_DE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11324022532509752)
,p_prompt=>unistr('<b style="color: #AD303B; font-weight: bold; font-size: 18px;">Listdo de p\00E1ginas permitidas.</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11334093109509774)
,p_name=>'P902_LIST_PAGES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11324189483509753)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select X_ID_PAGES',
'  from EIROLPAGES',
'  where X_ID_ROL = :P104_X_ID_ROL',
'*/',
'select aux.name',
'--      ,aux.page',
'  from (select DISPLAY_SEQUENCE||'' - ''||nvl(PARENT_ENTRY_TEXT,''Home'')||'' - ''||ENTRY_TEXT as name',
'              ,SUBSTR(ENTRY_TARGET, INSTR(ENTRY_TARGET, '':'', 1, 1)+1 , INSTR(ENTRY_TARGET, '':'', 1, 2) - INSTR(ENTRY_TARGET, '':'', 1, 1)-1 ) as page',
'          from APEX_APPLICATION_LIST_ENTRIES',
'          where APPLICATION_ID = :APP_ID --105 ',
'            and LIST_NAME = ''Desktop Navigation Menu''',
'            and ENTRY_TEXT not in (''Home'', ''Administration'')',
'            and CONDITION_TYPE not in (''Never'')',
'       ) aux     ',
'  where aux.page in (select PAGES_ID',
'                       from PERFILPAGES',
'                       where PERFILES_ID = :P902_PERFILES_ID',
'                    )  ',
'  order by aux.name'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aux.name',
'      ,aux.page',
'  from (select DISPLAY_SEQUENCE||'' - ''||nvl(PARENT_ENTRY_TEXT,''Home'')||'' - ''||ENTRY_TEXT as name',
'              ,SUBSTR(ENTRY_TARGET, INSTR(ENTRY_TARGET, '':'', 1, 1)+1 , INSTR(ENTRY_TARGET, '':'', 1, 2) - INSTR(ENTRY_TARGET, '':'', 1, 1)-1 ) as page',
'          from APEX_APPLICATION_LIST_ENTRIES',
'          where APPLICATION_ID = :APP_ID --105 ',
'            and LIST_NAME = ''Desktop Navigation Menu''',
'            and ENTRY_TEXT not in (''Home'', ''Administration'')',
'            and CONDITION_TYPE not in (''Never'')',
'       ) aux     ',
'  where aux.page not in (select PAGES_ID',
'                           from PERFILPAGES',
'                           where PERFILES_ID = :P902_PERFILES_ID',
'                        )  ',
'  order by aux.name '))
,p_cHeight=>5
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11334610134509773)
,p_name=>'P902_ETIQ_IZ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11323983365509751)
,p_prompt=>unistr('<b style="color: #AD303B; font-weight: bold; font-size: 18px;">Listado de p\00E1ginas disponibles.</b>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(272509248634935)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(261385054634917)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(273031069634936)
,p_event_id=>wwv_flow_imp.id(272509248634935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(268707618634930)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11281756026315630)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Perfiles_Detail'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9040861395709828
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(272144962634935)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert_Update_PERFILPAGES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  --cursores',
'  cursor c_shuttle is',
'    select t.column_value as v_page',
'      from table(apex_string.split(:P902_LIST_PAGES, '':'')',
'                ) t',
'      where t.column_value is not null;',
'  --variables ',
'  v_page NUMBER;',
'begin',
'  --booramos los datos',
'  delete ',
'    from PERFILPAGES',
'    where PERFILES_ID = :P902_PERFILES_ID;',
'  --recorremos el listado de pagina',
'  for r_shuttle in c_shuttle loop',
'    --miramos si v_page es el id de la pagina o es la descripcion de dicha pagina',
'    if instr(r_shuttle.v_page,''-'') > 0 then',
'      --buscamos el numero de la pagina que corresponde con la descripcion y lo insertamos.',
'      select lista.page',
'        into v_page',
'        from (select aux.name',
'                    ,aux.page',
'                from (select DISPLAY_SEQUENCE||'' - ''||nvl(PARENT_ENTRY_TEXT,''Home'')||'' - ''||ENTRY_TEXT as name',
'                            ,SUBSTR(ENTRY_TARGET, INSTR(ENTRY_TARGET, '':'', 1, 1)+1 , INSTR(ENTRY_TARGET, '':'', 1, 2) - INSTR(ENTRY_TARGET, '':'', 1, 1)-1 ) as page',
'                        from APEX_APPLICATION_LIST_ENTRIES',
'                        where APPLICATION_ID = :APP_ID --105 ',
'                          and LIST_NAME = ''Desktop Navigation Menu''',
'                          and ENTRY_TEXT not in (''Home'', ''Administration'')',
'                     ) aux ',
'             ) lista',
'        where lista.name = r_shuttle.v_page;',
'      --y ahora insertamos  ',
'      insert into PERFILPAGES(PERFILES_ID',
'                            ,PAGES_ID)',
'        values(:P902_PERFILES_ID',
'              ,v_page);',
'    else  ',
'      --insertamos el numero de la pagina',
'      insert into PERFILPAGES(PERFILES_ID',
'                            ,PAGES_ID)',
'        values(:P902_PERFILES_ID',
'              ,r_shuttle.v_page);',
'    end if;          ',
'  end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9044298739709833
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(271697140634935)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9043850917709833
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(268344998634927)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11281756026315630)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Perfiles_Detail'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9040498775709825
);
wwv_flow_imp.component_end;
end;
/
