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
  projectPhase: responseElement.all_acct_plans_m.*plan_instance_fields_detail[?( $.field_name == p('aria.fieldName.projectPhase') ) ].field_value[0],
  pagesUploadedClientNo: responseElement.*all_acct_plans_m[?( $.plan_name == p('aria.planName.PagesUploaded') ) ].plan_instance_no[0],
  pagesHostedClientNo: responseElement.*all_acct_plans_m[?( $.plan_name == p('aria.planName.PagesHosted') ) ].plan_instance_no[0],
  GBsHostedClientNo: responseElement.*all_acct_plans_m[?( $.plan_name == p('aria.planName.GBsHosted') ) ].plan_instance_no[0],
  MBsUploadedClientNo: responseElement.*all_acct_plans_m[?( $.plan_name == p('aria.planName.MBsUploaded') ) ].plan_instance_no[0],
  MBsHostedClientNo: responseElement.*all_acct_plans_m[?( $.plan_name == p('aria.planName.MBsHosted') ) ].plan_instance_no[0],
  GBsUploadedClientNo: responseElement.*all_acct_plans_m[?( $.plan_name == p('aria.planName.GBsUploaded') ) ].plan_instance_no[0],
  specialMediaClientNo: responseElement.*all_acct_plans_m[?( $.plan_name == p('aria.planName.SpecialMedia') ) ].plan_instance_no[0]
}
