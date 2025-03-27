prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>114600926961239704
,p_default_application_id=>118
,p_default_id_offset=>8772153777074898
,p_default_owner=>'EIOWNER'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(9655013855289932344)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3379287372918815)
,p_short_name=>'Busqueda+'
,p_link=>'f?p=&APP_ID.:230:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>230
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9655013622316932347)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
