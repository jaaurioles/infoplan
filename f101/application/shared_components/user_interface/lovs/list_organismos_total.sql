prompt --application/shared_components/user_interface/lovs/list_organismos_total
begin
--   Manifest
--     LIST_ORGANISMOS_TOTAL
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
 p_id=>wwv_flow_imp.id(1474348048183850396)
,p_lov_name=>'LIST_ORGANISMOS_TOTAL'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'EIORGANISMOS'
,p_return_column_name=>'X_ID_ORGANISMO'
,p_display_column_name=>'T_NOMBRE_ORGANISMO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'T_NOMBRE_ORGANISMO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
