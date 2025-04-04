prompt --application/shared_components/user_interface/lovs/lst_plantilla
begin
--   Manifest
--     LST_PLANTILLA
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
 p_id=>wwv_flow_imp.id(240347815560912)
,p_lov_name=>'LST_PLANTILLA'
,p_lov_query=>'select DESCRIPCION, ID_DOCUMENTO from PLANTILLA'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'AE'
,p_return_column_name=>'ID_DOCUMENTO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44259636039766
);
wwv_flow_imp.component_end;
end;
/
