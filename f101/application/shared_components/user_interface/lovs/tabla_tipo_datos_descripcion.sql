prompt --application/shared_components/user_interface/lovs/tabla_tipo_datos_descripcion
begin
--   Manifest
--     TABLA_TIPO_DATOS.DESCRIPCION
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
 p_id=>wwv_flow_imp.id(245222011560922)
,p_lov_name=>'TABLA_TIPO_DATOS.DESCRIPCION'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TABLA_TIPO_DATOS'
,p_return_column_name=>'TABLA_TIPO_DATOS_ID'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44259640792489
);
wwv_flow_imp.component_end;
end;
/
