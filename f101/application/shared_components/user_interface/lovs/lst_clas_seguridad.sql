prompt --application/shared_components/user_interface/lovs/lst_clas_seguridad
begin
--   Manifest
--     LST_CLAS_SEGURIDAD
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
 p_id=>wwv_flow_imp.id(2177980395253289)
,p_lov_name=>'LST_CLAS_SEGURIDAD'
,p_lov_query=>'SELECT DISTINCT (''Tipo '' || CSRL_SEGURIDAD), CSRL_SEGURIDAD  FROM apex_ri.EXPEDIENTE_INST_FRIGORIFICA'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'AE'
,p_return_column_name=>'CSRL_SEGURIDAD'
,p_display_column_name=>'(''TIPO''||CSRL_SEGURIDAD)'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'(''TIPO''||CSRL_SEGURIDAD)'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44317453592595
);
wwv_flow_imp.component_end;
end;
/
