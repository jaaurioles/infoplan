prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
--   Manifest
--     LIST: Desktop Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>114600926961239704
,p_default_application_id=>118
,p_default_id_offset=>8772153777074898
,p_default_owner=>'EIOWNER'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(9655013331659932349)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>44540833240172
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9654860742923932490)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(316178981342157)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('B\00FAsqueda avanzada')
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 40) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_07=>unistr('Se realizan b\00FAsquedas con m\00E1s detalle')
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2682475558734775)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Expediente'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-folder-file'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 30) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_07=>'Crea un expediente.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2234848640416632)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Documento Portafirmas'
,p_list_item_link_target=>'f?p=&APP_ID.:130:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ai-sparkle-generate-document'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 130) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_07=>'Mantenimiento de Documentos Portafirmas'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'130,131'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(250935180622230)
,p_list_item_display_sequence=>1000
,p_list_item_link_text=>unistr('Configuraci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:900:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 900) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_07=>unistr('Configuraci\00F3n de la aplicaci\00F3n.')
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'900'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(472492843187030)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Tipos de Instalaci\00F3n')
,p_list_item_link_target=>unistr('f?p=&APP_ID.:907:&SESSION.::&DEBUG.::P907_TABLA,P907_ESQUEMA,P907_TIT_PAG,P907_TIT_DES,P907_TAM_COD,P907_TAM_DES:TIPO_INSTALACION_FRIGORIFICA,APEX_RI,Tipos Instalaciones Frigor\00EDficas,Nombre Tipo Instalaci\00F3n,2,200:')
,p_list_item_icon=>'fa-list-ul'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 907) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(250935180622230)
,p_list_text_07=>unistr('Mantenimiento de los Tipos de Instalaciones Figor\00EDficas.')
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'907,908'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(495869231258847)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Tipos de Interesados'
,p_list_item_link_target=>'f?p=&APP_ID.:907:&SESSION.::&DEBUG.:RP:P907_ESQUEMA,P907_TABLA,P907_TIT_PAG,P907_TIT_DES,P907_TAM_COD,P907_TAM_DES:APEXWEB,TIPO_INTERESADO,Tipos Interesado,Nombre Tipo Interesado,2,100:'
,p_list_item_icon=>'fa-calendar-user'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 907) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(250935180622230)
,p_list_text_07=>'Mantenimiento de los Tipos de Interesados'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'907,908'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(803759680508749)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Tipos de Refrigerantes'
,p_list_item_link_target=>'f?p=&APP_ID.:907:&SESSION.::&DEBUG.:RP:P907_TABLA,P907_ESQUEMA,P907_TIT_PAG,P907_TIT_DES,P907_TAM_COD,P907_TAM_DES:refrigerante,apex_ri,Tipos de refrigerante,Tipos de refrigerante,4,100:'
,p_list_item_icon=>'fa-thermometer-1'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 907) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(250935180622230)
,p_list_text_07=>'Mantenimiento de los tipos de refrigerantes.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'907,908'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(78020831190048)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Profesionales'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 10) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(250935180622230)
,p_list_text_07=>'Mantenimiento de Profesionales'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(388046805057665)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Administrado'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server-user'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 100) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(250935180622230)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'100,101'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(453454661132751)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>unistr('Formas de notificaci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-flag'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 70) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(250935180622230)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'70,71'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(254441521631365)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Perfiles'
,p_list_item_link_target=>'f?p=&APP_ID.:901:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-contacts'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 901) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(250935180622230)
,p_list_text_07=>unistr('Mantenimiento de Perfiles de la aplicaci\00F3n.')
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'901,902'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(279410163641071)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Usuarios'
,p_list_item_link_target=>'f?p=&APP_ID.:903:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 903) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(250935180622230)
,p_list_text_07=>unistr('Mantenimiento de Usuarios de la aplicaci\00F3n.')
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'903,904'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3378467934918802)
,p_list_item_display_sequence=>1020
,p_list_item_link_text=>'Busqueda+'
,p_list_item_link_target=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.:230:::'
,p_list_item_icon=>'fa-search-plus'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'FU_PERMISO_USUARIO_PAGE(:APP_USER, 230) = 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_07=>unistr('Se realizan b\00FAsquedas m\00E1s configurables.')
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'230'
);
wwv_flow_imp.component_end;
end;
/
