prompt --application/shared_components/user_interface/lovs/lst_municipios_fun
begin
--   Manifest
--     LST_MUNICIPIOS_FUN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>114600926961239704
,p_default_application_id=>118
,p_default_id_offset=>8772153777074898
,p_default_owner=>'EIOWNER'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1225389908244980)
,p_lov_name=>'LST_MUNICIPIOS_FUN'
,p_lov_query=>'return GET_QUERY_LIST_VALUES_MUNICIPIO(p_cod_provincia => nvl(:cod_provincia,30));'
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_query_owner=>'TABLASCOMUNES'
,p_return_column_name=>'A'
,p_display_column_name=>'B'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'B'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44279621421602
);
wwv_flow_imp.component_end;
end;
/
