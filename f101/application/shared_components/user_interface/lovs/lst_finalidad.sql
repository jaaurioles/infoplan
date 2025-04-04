prompt --application/shared_components/user_interface/lovs/lst_finalidad
begin
--   Manifest
--     LST_FINALIDAD
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
 p_id=>wwv_flow_imp.id(2178261942253289)
,p_lov_name=>'LST_FINALIDAD'
,p_lov_query=>'.'||wwv_flow_imp.id(2178261942253289)||'.'
,p_location=>'STATIC'
,p_version_scn=>44317453634679
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2178716346253290)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Productos perecederos'
,p_lov_return_value=>'T'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2179055213253290)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Climatizaci\00F3n')
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2179506586253290)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Proceso industrial'
,p_lov_return_value=>'I'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2179858004253290)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('Fabricaci\00F3n hielo')
,p_lov_return_value=>'H'
);
wwv_flow_imp.component_end;
end;
/
