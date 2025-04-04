prompt --application/shared_components/user_interface/lovs/si_no
begin
--   Manifest
--     SI_NO
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
 p_id=>wwv_flow_imp.id(244087164560918)
,p_lov_name=>'SI_NO'
,p_lov_query=>'.'||wwv_flow_imp.id(244087164560918)||'.'
,p_location=>'STATIC'
,p_version_scn=>44259635861499
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(244531453560922)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Si'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(244934740560922)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'0'
);
wwv_flow_imp.component_end;
end;
/
