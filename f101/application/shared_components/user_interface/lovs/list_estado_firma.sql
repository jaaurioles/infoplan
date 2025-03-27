prompt --application/shared_components/user_interface/lovs/list_estado_firma
begin
--   Manifest
--     LIST_ESTADO_FIRMA
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
 p_id=>wwv_flow_imp.id(3823690270455304)
,p_lov_name=>'LIST_ESTADO_FIRMA'
,p_lov_query=>'.'||wwv_flow_imp.id(3823690270455304)||'.'
,p_location=>'STATIC'
,p_version_scn=>44351761276151
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3824021882455305)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'P'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3824433427455308)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'F'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3824814279455308)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'F'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825237632455308)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'R'
,p_lov_return_value=>'4'
);
wwv_flow_imp.component_end;
end;
/
