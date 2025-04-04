prompt --application/shared_components/user_interface/lovs/lst_usuarios
begin
--   Manifest
--     LST_USUARIOS
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
 p_id=>wwv_flow_imp.id(5737537877481968)
,p_lov_name=>'LST_USUARIOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select login , LOGIN||'' ''||UPPER(NOMBRE)||'' ''||UPPER(APELLIDO1)||'' ''||UPPER(APELLIDO2) AS nombre_usuario',
'  from tablascomunes.usuario',
'where fecha_baja is null ',
'order by login',
'	  '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'AE'
,p_return_column_name=>'LOGIN'
,p_display_column_name=>'NOMBRE_USUARIO'
,p_version_scn=>44458177575548
);
wwv_flow_imp.component_end;
end;
/
