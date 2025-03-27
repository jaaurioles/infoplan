prompt --application/shared_components/user_interface/lovs/list_origen_documento
begin
--   Manifest
--     LIST_ORIGEN_DOCUMENTO
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
 p_id=>wwv_flow_imp.id(2781358696521272)
,p_lov_name=>'LIST_ORIGEN_DOCUMENTO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ORIGEN a',
'               ,ORIGEN_DOCUMENTO b',
'  FROM (SELECT DISTINCT  DECODE(ORIGEN_DOCUMENTO, 1, ''A'', 2, ''E'', 3, ''S'', 4, ''X'', 5, ''R'', 6, ''F'', 7, ''C'') AS ORIGEN ',
'              ,ORIGEN_DOCUMENTO ',
'          FROM APEXWEB.V_DOCUMENTO_EXPEDIENTE ',
'          --WHERE codigo_expediente = ''''''||:GLOBAL.EXP_Codigo ||''''''',
'       ) ',
'  ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'AE'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44320743361739
);
wwv_flow_imp.component_end;
end;
/
