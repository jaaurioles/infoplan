prompt --application/shared_components/security/authentications/acceso_aplicacion
begin
--   Manifest
--     AUTHENTICATION: Acceso_Aplicacion
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>114600926961239704
,p_default_application_id=>118
,p_default_id_offset=>8772153777074898
,p_default_owner=>'EIOWNER'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(1844463086250284)
,p_name=>'Acceso_Aplicacion'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_01=>'sentry_function'
,p_attribute_03=>'FU_LDAP'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function sentry_function return boolean is',
'begin',
'  return FU_Token_Sentry_Function;',
'end;'))
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>44304398393699
);
wwv_flow_imp.component_end;
end;
/
