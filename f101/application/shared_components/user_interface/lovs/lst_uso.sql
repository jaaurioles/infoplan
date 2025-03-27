prompt --application/shared_components/user_interface/lovs/lst_uso
begin
--   Manifest
--     LST_USO
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
 p_id=>wwv_flow_imp.id(2616974112826439)
,p_lov_name=>'LST_USO'
,p_lov_query=>'.'||wwv_flow_imp.id(2616974112826439)||'.'
,p_location=>'STATIC'
,p_version_scn=>44318014513851
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2617308286826441)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Instalaci\00F3n alimentaria')
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2617703642826444)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Instalaci\00F3n transportable')
,p_lov_return_value=>'T'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2618106134826444)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Transportable 7'
,p_lov_return_value=>'7'
);
wwv_flow_imp.component_end;
end;
/
