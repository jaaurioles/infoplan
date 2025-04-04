prompt --application/shared_components/user_interface/lovs/lst_asunto
begin
--   Manifest
--     LST_ASUNTO
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
 p_id=>wwv_flow_imp.id(4275735359591566)
,p_lov_name=>'LST_ASUNTO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CODIGO || '' '' || DESCRIPCION AS DISPLAY, CODIGO',
'  FROM ASUNTO'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'DISPLAY'
,p_default_sort_column_name=>'DISPLAY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44364702527079
);
wwv_flow_imp.component_end;
end;
/
