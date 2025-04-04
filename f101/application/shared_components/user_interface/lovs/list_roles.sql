prompt --application/shared_components/user_interface/lovs/list_roles
begin
--   Manifest
--     LIST_ROLES
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
 p_id=>wwv_flow_imp.id(96633481160066250)
,p_lov_name=>'LIST_ROLES'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EIROL'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'X_ID_ROL >= (select X_ID_ROL',
'               from EIUSUARIOAPP',
'               where upper(USUARIO_LDAP) = upper(:APP_USER)',
'            )'))
,p_return_column_name=>'X_ID_ROL'
,p_display_column_name=>'T_NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'T_NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>13507967244521
);
wwv_flow_imp.component_end;
end;
/
