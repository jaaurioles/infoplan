prompt --application/shared_components/user_interface/lovs/lst_tipo_documento
begin
--   Manifest
--     LST_TIPO_DOCUMENTO
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
 p_id=>wwv_flow_imp.id(240960380560913)
,p_lov_name=>'LST_TIPO_DOCUMENTO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TIPODEDOCUMENTO a',
'      ,DESCRIPCION b',
'  from TABLASCOMUNES.DOCUMENTOSID ',
'  ORDER BY TIPODEDOCUMENTO'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'A'
,p_display_column_name=>'B'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'B'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44279467432491
);
wwv_flow_imp.component_end;
end;
/
