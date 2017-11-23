%dw 1.0
%output application/java
%namespace env http://schemas.xmlsoap.org/soap/envelope/
%namespace aria urn:client:api:wsdl:document/literal_wrapped:vers:11.0:aria_complete_m_api
%var responseElement = payload.env#Envelope.env#Body.aria#get_acct_plans_all_mResponseElement
---
{
  errorMsg: responseElement.error_msg,
  errorCode: responseElement.error_code,
  clientPlanInstanceId: responseElement.all_acct_plans_m.client_plan_instance_id,
  planInstanceNo: responseElement.all_acct_plans_m.plan_instance_no,
  SpecialMediaPIN: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.SpecialMedia')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].plan_instance_no[0],
  SpecialMediaCPII: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.SpecialMedia')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].client_plan_instance_id[0],
  pagesUploadedPIN: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.PagesUploaded')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].plan_instance_no[0],
  pagesUploadedCPII: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.PagesUploaded')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].client_plan_instance_id[0],
  MBsUploadedPIN: responseElement.*all_acct_plans_m[?(( $.plan_name ==  p('aria.planName.MBsUploaded')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].plan_instance_no[0],
  MBsUploadedCPII: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.MBsUploaded')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].client_plan_instance_id[0],
  GBsUploadedPIN: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.GBsUploaded')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].plan_instance_no[0],
  GBsUploadedCPII: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.GBsUploaded')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].client_plan_instance_id[0],
  pagesHostedPIN: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.PagesHosted')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].plan_instance_no[0],
  pagesHostedCPII: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.PagesHosted')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].client_plan_instance_id[0],
  MBsHostedPIN: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.MBsHosted')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].plan_instance_no[0],
  MBsHostedCPII: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.MBsHosted')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].client_plan_instance_id[0],
  GBsHostedPIN: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.GBsHosted')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].plan_instance_no[0],
  GBsHostedCPII: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.GBsHosted')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].client_plan_instance_id[0],
  SMHostedPIN: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.SpecialMediaHosted')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].plan_instance_no[0],
  SMHostedCPII: responseElement.*all_acct_plans_m[?(( $.plan_name == p('aria.planName.SpecialMediaHosted')) and $.master_plan_instance_no == flowVars.aria.ariaMPI)].client_plan_instance_id[0],
  projectPhase: responseElement.*all_acct_plans_m[?(( $.master_plan_instance_no == flowVars.aria.ariaMPI))].*plan_instance_fields_detail[?( $.field_name == p('aria.fieldName.projectPhase'))].field_value[0],
  activeDate: responseElement.*all_acct_plans_m[?(( $.master_plan_instance_no == flowVars.aria.ariaMPI))].*plan_instance_fields_detail[?( $.field_name == p('aria.fieldName.activeDate'))].field_value[0]
}