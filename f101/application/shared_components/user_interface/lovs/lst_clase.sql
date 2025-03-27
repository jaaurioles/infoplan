prompt --application/shared_components/user_interface/lovs/lst_clase
begin
--   Manifest
--     LST_CLASE
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
 p_id=>wwv_flow_imp.id(2174659499253283)
,p_lov_name=>'LST_CLASE'
,p_lov_query=>'.'||wwv_flow_imp.id(2174659499253283)||'.'
,p_location=>'STATIC'
,p_version_scn=>44317453482526
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2174960520253286)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('C\00E1mara frigor\00EDficas T >= 0')
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2175349325253287)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('C\00E1maras frigor\00EDficas T <  0')
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2175760835253287)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('C\00E1maras atmosfera controlada')
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2176150183253287)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Locales refrigerados'
,p_lov_return_value=>'L'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2176601219253288)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Equipos compactos'
,p_lov_return_value=>'E'
);
wwv_flow_imp.component_end;
end;
/
