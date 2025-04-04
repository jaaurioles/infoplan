prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>114600926961239704
,p_default_application_id=>118
,p_default_id_offset=>8772153777074898
,p_default_owner=>'EIOWNER'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(9654893361077932425)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'1.6'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(9654994979265932371)
,p_default_dialog_template=>wwv_flow_imp.id(9654999294038932369)
,p_error_template=>wwv_flow_imp.id(9655007201349932365)
,p_printer_friendly_template=>wwv_flow_imp.id(9654994979265932371)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(9655007201349932365)
,p_default_button_template=>wwv_flow_imp.id(9654896339607932416)
,p_default_region_template=>wwv_flow_imp.id(9654958846950932387)
,p_default_chart_template=>wwv_flow_imp.id(9654958846950932387)
,p_default_form_template=>wwv_flow_imp.id(9654958846950932387)
,p_default_reportr_template=>wwv_flow_imp.id(9654958846950932387)
,p_default_tabform_template=>wwv_flow_imp.id(9654958846950932387)
,p_default_wizard_template=>wwv_flow_imp.id(9654958846950932387)
,p_default_menur_template=>wwv_flow_imp.id(9654949482422932390)
,p_default_listr_template=>wwv_flow_imp.id(9654958846950932387)
,p_default_irr_template=>wwv_flow_imp.id(9654960744323932386)
,p_default_report_template=>wwv_flow_imp.id(9654929937255932398)
,p_default_label_template=>wwv_flow_imp.id(9654897495998932413)
,p_default_menu_template=>wwv_flow_imp.id(9654894929055932417)
,p_default_calendar_template=>wwv_flow_imp.id(9654894819690932418)
,p_default_list_template=>wwv_flow_imp.id(9654913601254932405)
,p_default_nav_list_template=>wwv_flow_imp.id(9654901762306932410)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(9654901762306932410)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(9654907168989932408)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(9654986254053932377)
,p_default_dialogr_template=>wwv_flow_imp.id(9654987221223932377)
,p_default_option_label=>wwv_flow_imp.id(9654897495998932413)
,p_default_required_label=>wwv_flow_imp.id(9654897135726932413)
,p_default_navbar_list_template=>wwv_flow_imp.id(9654907558251932407)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.6/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
