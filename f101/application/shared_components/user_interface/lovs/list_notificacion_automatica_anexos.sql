prompt --application/shared_components/user_interface/lovs/list_notificacion_automatica_anexos
begin
--   Manifest
--     LIST_NOTIFICACION_AUTOMATICA_ANEXOS
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
 p_id=>wwv_flow_imp.id(3562583419974257)
,p_lov_name=>'LIST_NOTIFICACION_AUTOMATICA_ANEXOS'
,p_lov_query=>'.'||wwv_flow_imp.id(3562583419974257)||'.'
,p_location=>'STATIC'
,p_version_scn=>44327654587653
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3562892761974258)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Anexar a la notificaci\00F3n los documentos marcados')
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3563333491974260)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('No anexar documentos a la notificaci\00F3n')
,p_lov_return_value=>'2'
);
wwv_flow_imp.component_end;
end;
/
