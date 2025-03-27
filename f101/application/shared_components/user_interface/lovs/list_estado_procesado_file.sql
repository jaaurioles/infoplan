prompt --application/shared_components/user_interface/lovs/list_estado_procesado_file
begin
--   Manifest
--     LIST_ESTADO_PROCESADO_FILE
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
 p_id=>wwv_flow_imp.id(15797191688062747661)
,p_lov_name=>'LIST_ESTADO_PROCESADO_FILE'
,p_lov_query=>'.'||wwv_flow_imp.id(15797191688062747661)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15797191435445747660)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Sin procesar'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15797190999626747659)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Procesando (en segundo plano)'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15797190734859747659)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Procesado'
,p_lov_return_value=>'2'
);
wwv_flow_imp.component_end;
end;
/
