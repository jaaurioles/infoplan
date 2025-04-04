prompt --application/shared_components/files/carm_cap5_simbolo_tablets_min_css
begin
--   Manifest
--     APP STATIC FILES: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>114600926961239704
,p_default_application_id=>118
,p_default_id_offset=>8772153777074898
,p_default_owner=>'EIOWNER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E6170702D69636F6E7B6261636B67726F756E642D696D6167653A75726C2845736375646F5F4341524D5F5472616E73706172656E74652E706E67293B6261636B67726F756E642D7265706561743A6E6F2D7265706561743B6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(2) := '73697A653A636F7665723B6261636B67726F756E642D706F736974696F6E3A3530257D2E742D4C6F67696E2D6C6F676F7B77696474683A32303070783B6865696768743A34303070783B6C696E652D6865696768743A363470783B646973706C61793A62';
wwv_flow_imp.g_varchar2_table(3) := '6C6F636B3B6D617267696E3A30206175746F20313670783B626F726465722D7261646975733A3470783B746578742D616C69676E3A63656E7465727D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(234428991976339)
,p_file_name=>'CARM-Cap5-simbolo-tablets.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
