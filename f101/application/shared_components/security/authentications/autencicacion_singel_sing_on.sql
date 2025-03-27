prompt --application/shared_components/security/authentications/autencicacion_singel_sing_on
begin
--   Manifest
--     AUTHENTICATION: Autencicacion_Singel_Sing_On
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
 p_id=>wwv_flow_imp.id(4137704542399096)
,p_name=>'Autencicacion_Singel_Sing_On'
,p_scheme_type=>'NATIVE_SAML'
,p_attribute_02=>'INSTANCE'
,p_attribute_08=>'Y'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>44427355999379
);
wwv_flow_imp.component_end;
end;
/
