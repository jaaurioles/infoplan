prompt --application/shared_components/user_interface/lovs/lst_clas_calor
begin
--   Manifest
--     LST_CLAS_CALOR
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
 p_id=>wwv_flow_imp.id(2176905717253288)
,p_lov_name=>'LST_CLAS_CALOR'
,p_lov_query=>'.'||wwv_flow_imp.id(2176905717253288)||'.'
,p_location=>'STATIC'
,p_version_scn=>44317458879949
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2177274627253289)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Sistema directo'
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2177677541253289)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Sistema indirecto'
,p_lov_return_value=>'I'
);
wwv_flow_imp.component_end;
end;
/
