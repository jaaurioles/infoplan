prompt --application/shared_components/user_interface/lovs/list_ejercicios
begin
--   Manifest
--     LIST_EJERCICIOS
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
 p_id=>wwv_flow_imp.id(9633015707703171744)
,p_lov_name=>'LIST_EJERCICIOS'
,p_lov_query=>'.'||wwv_flow_imp.id(9633015707703171744)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9633015431468171739)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'2023'
,p_lov_return_value=>'2023'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15779678617646902659)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'2024'
,p_lov_return_value=>'2024'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9633014976945171737)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'2025'
,p_lov_return_value=>'2025'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9633014597255171737)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'2026'
,p_lov_return_value=>'2026'
);
wwv_flow_imp.component_end;
end;
/
