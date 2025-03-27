prompt --application/shared_components/user_interface/lovs/lst_tipo_persona
begin
--   Manifest
--     LST_TIPO_PERSONA
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
 p_id=>wwv_flow_imp.id(241299701560913)
,p_lov_name=>'LST_TIPO_PERSONA'
,p_lov_query=>'.'||wwv_flow_imp.id(241299701560913)||'.'
,p_location=>'STATIC'
,p_version_scn=>44259636235451
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(241737495560913)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('F\00EDsica')
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(242131470560917)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Jur\00EDdica')
,p_lov_return_value=>'J'
);
wwv_flow_imp.component_end;
end;
/
