prompt --application/shared_components/logic/application_items/ticket
begin
--   Manifest
--     APPLICATION ITEM: TICKET
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.7'
,p_default_workspace_id=>114600926961239704
,p_default_application_id=>118
,p_default_id_offset=>8772153777074898
,p_default_owner=>'EIOWNER'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(6141909803196208)
,p_name=>'TICKET'
,p_protection_level=>'N'
,p_version_scn=>44485004296943
);
wwv_flow_imp.component_end;
end;
/
