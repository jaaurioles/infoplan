prompt --application/shared_components/user_interface/lovs/lst_tipo_sexo
begin
--   Manifest
--     LST_TIPO_SEXO
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
 p_id=>wwv_flow_imp.id(242371911560917)
,p_lov_name=>'LST_TIPO_SEXO'
,p_lov_query=>'.'||wwv_flow_imp.id(242371911560917)||'.'
,p_location=>'STATIC'
,p_version_scn=>44259640592996
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(242837534560917)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hombre'
,p_lov_return_value=>'H'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(243196586560918)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Mujer'
,p_lov_return_value=>'M'
);
wwv_flow_imp.component_end;
end;
/
