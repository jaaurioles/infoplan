prompt --application/shared_components/user_interface/lovs/list_cod_estado_portafirmas
begin
--   Manifest
--     LIST_COD_ESTADO_PORTAFIRMAS
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
 p_id=>wwv_flow_imp.id(4562470032797949)
,p_lov_name=>'LIST_COD_ESTADO_PORTAFIRMAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''Pendiente de env\00EDo'' as a, 0 as b from dual'),
'union ',
'select ''Enviado'' as a, 1 as b from dual',
'union ',
'select ''Firmado'' as a, 2 as b from dual',
'union ',
'select ''Error al enviar'' as a, 3 as b from dual'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'AE'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_default_sort_column_name=>'A'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44373643434808
);
wwv_flow_imp.component_end;
end;
/
