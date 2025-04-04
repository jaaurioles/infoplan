prompt --application/shared_components/user_interface/lovs/list_pais_nacionalidad
begin
--   Manifest
--     LIST_PAIS_NACIONALIDAD
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
 p_id=>wwv_flow_imp.id(1214281869857522)
,p_lov_name=>'LIST_PAIS_NACIONALIDAD'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select codigo',
'      ,descripcion',
'  from tablascomunes.pais ',
'  order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'AE'
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'DESCRIPCION'
,p_version_scn=>44279458444417
);
wwv_flow_imp.component_end;
end;
/
