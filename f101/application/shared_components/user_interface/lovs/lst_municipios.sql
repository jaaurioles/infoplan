prompt --application/shared_components/user_interface/lovs/lst_municipios
begin
--   Manifest
--     LST_MUNICIPIOS
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
 p_id=>wwv_flow_imp.id(240222489560907)
,p_lov_name=>'LST_MUNICIPIOS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_owner=>'TABLASCOMUNES'
,p_query_table=>'MUNICIPIOS'
,p_return_column_name=>'CODIGOPROVINCIA'
,p_display_column_name=>'CODIGOMUNICIPIO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44279682200686
);
wwv_flow_imp.component_end;
end;
/
