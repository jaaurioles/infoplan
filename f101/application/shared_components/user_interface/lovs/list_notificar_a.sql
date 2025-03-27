prompt --application/shared_components/user_interface/lovs/list_notificar_a
begin
--   Manifest
--     LIST_NOTIFICAR_A
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
 p_id=>wwv_flow_imp.id(4791726625737285)
,p_lov_name=>'LIST_NOTIFICAR_A'
,p_lov_query=>'.'||wwv_flow_imp.id(4791726625737285)||'.'
,p_location=>'STATIC'
,p_version_scn=>44418931438891
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4791961825737294)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Titular'
,p_lov_return_value=>'Titular'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4792361599737296)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Representante'
,p_lov_return_value=>'Representante'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4792837312737296)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Organismo'
,p_lov_return_value=>'Organismo'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4793240155737296)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Otro'
,p_lov_return_value=>'Otro'
);
wwv_flow_imp.component_end;
end;
/
