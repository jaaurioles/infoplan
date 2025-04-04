prompt --application/shared_components/user_interface/lovs/list_servicios
begin
--   Manifest
--     LIST_SERVICIOS
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
 p_id=>wwv_flow_imp.id(16987955940860629548)
,p_lov_name=>'LIST_SERVICIOS'
,p_lov_query=>'.'||wwv_flow_imp.id(16987955940860629548)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(16987955612612629546)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ACEPTACION'
,p_lov_return_value=>'ACEPTACION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(16987955285685629544)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'CONFORMIDAD'
,p_lov_return_value=>'CONFORMIDAD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(16987954800057629544)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'IMPUTACION'
,p_lov_return_value=>'IMPUTACION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(16987954495012629544)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'ENVIO A FIRME'
,p_lov_return_value=>'FIRME'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(16987954033511629544)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'ALTA PROP. FIRME'
,p_lov_return_value=>'ALTA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1478241156352416493)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'CONSULTA - CONF'
,p_lov_return_value=>'CONSULTA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1478241450344416498)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'CONFORMIDAD - ENFI'
,p_lov_return_value=>'CONFORMIDADENFI'
);
wwv_flow_imp.component_end;
end;
/
