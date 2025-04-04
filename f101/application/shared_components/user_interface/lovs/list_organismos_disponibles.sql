prompt --application/shared_components/user_interface/lovs/list_organismos_disponibles
begin
--   Manifest
--     LIST_ORGANISMOS_DISPONIBLES
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
 p_id=>wwv_flow_imp.id(1474337883937748868)
,p_lov_name=>'LIST_ORGANISMOS_DISPONIBLES'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'EIORGANISMOS'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'N_ACTIVO = 1',
'and X_ID_ORGANISMO in (select b.X_ID_ORGANISMO',
'                         from eiusuarioapp a',
'                             ,eiorganismos b',
'                         where a.X_ID_ORGANISMO = b.X_ID_ORGANISMO',
'                           and upper(a.USUARIO_LDAP) = upper(:APP_USER)',
'                      )'))
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
