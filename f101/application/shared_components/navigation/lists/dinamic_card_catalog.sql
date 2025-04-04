prompt --application/shared_components/navigation/lists/dinamic_card_catalog
begin
--   Manifest
--     LIST: Dinamic Card Catalog
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>114600926961239704
,p_default_application_id=>118
,p_default_id_offset=>8772153777074898
,p_default_owner=>'EIOWNER'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(247673011591737)
,p_name=>'Dinamic Card Catalog'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'      ,ENTRY_TEXT',
'      ,ENTRY_TARGET',
'      ,''YES'' AS is_current',
'      ,NVL(ENTRY_IMAGE,ENTRY_ATTRIBUTE_01) AS LOGO_IMAGE',
'      ,SUBSTR(ENTRY_TARGET, INSTR(ENTRY_TARGET, '':'', 1, 1)+1 , INSTR(ENTRY_TARGET, '':'', 1, 2) - INSTR(ENTRY_TARGET, '':'', 1, 1)-1 )  AS PAGE_ID',
',null as nulo',
',ENTRY_ATTRIBUTE_07',
'--select *',
'  from APEX_APPLICATION_LIST_ENTRIES',
'  where APPLICATION_ID = :APP_ID --100',
'    and LIST_NAME = ''Desktop Navigation Menu''',
'    and ENTRY_TEXT not in (''Home'', ''Administration'')',
unistr('    and PARENT_ENTRY_TEXT in (''Configuraci\00F3n'')'),
'    and CONDITION_TYPE is null',
'  order by DISPLAY_SEQUENCE;'))
,p_list_status=>'PUBLIC'
,p_version_scn=>44259650146056
);
wwv_flow_imp.component_end;
end;
/
