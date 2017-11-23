%dw 1.0
%output application/java
%function dateOnly(value) value[0 .. 9]
---
[
   {
							acct_no: flowVars.aria.ariaAcct,
							master_plan_instance_no: flowVars.aria.ariaMPI,
							client_master_plan_instance_id: flowVars.aria.ariaMPI,
							plan_instance_no: flowVars.ariaResponse.MBsUploadedPIN,
							client_plan_instance_id: flowVars.ariaResponse.MBsUploadedCPII,
							usage_units: flowVars.messageIn.megabytesAdded,
							usage_date: dateOnly(flowVars.messageIn.periodStart),
						    usage_type_code: p('aria.usageTypeCode.MBsUploaded')
	},
	{
							acct_no: flowVars.aria.ariaAcct,
							master_plan_instance_no: flowVars.aria.ariaMPI,
							client_master_plan_instance_id: flowVars.aria.ariaMPI,
							plan_instance_no: flowVars.ariaResponse.GBsUploadedPIN,
							client_plan_instance_id: flowVars.ariaResponse.GBsUploadedCPII,
							usage_units: flowVars.messageIn.gigabytesAdded,
							usage_date: dateOnly(flowVars.messageIn.periodStart),
						    usage_type_code: p('aria.usageTypeCode.GBsUploaded')	
    },
	{
							acct_no: flowVars.aria.ariaAcct,
							master_plan_instance_no: flowVars.aria.ariaMPI,
							client_master_plan_instance_id: flowVars.aria.ariaMPI,
							plan_instance_no: flowVars.ariaResponse.pagesUploadedPIN,
							client_plan_instance_id: flowVars.ariaResponse.pagesUploadedCPII,
							usage_units: flowVars.messageIn.pagesAdded,
							usage_date: dateOnly(flowVars.messageIn.periodStart),
						    usage_type_code: p('aria.usageTypeCode.PagesUploaded')	
    },
    {
							acct_no: flowVars.aria.ariaAcct,
							master_plan_instance_no: flowVars.aria.ariaMPI,
							client_master_plan_instance_id: flowVars.aria.ariaMPI,
							plan_instance_no: flowVars.ariaResponse.pagesHostedPIN,
							client_plan_instance_id: flowVars.ariaResponse.pagesHostedCPII,
							usage_units: flowVars.messageIn.totalHostedPages,
							usage_date: dateOnly(flowVars.messageIn.periodStart),
						    usage_type_code: p('aria.usageTypeCode.PagesHosted')	
    },
    {
							acct_no: flowVars.aria.ariaAcct,
							master_plan_instance_no: flowVars.aria.ariaMPI,
							client_master_plan_instance_id: flowVars.aria.ariaMPI,
							plan_instance_no: flowVars.ariaResponse.MBsHostedPIN,
							client_plan_instance_id: flowVars.ariaResponse.MBsHostedCPII,
							usage_units: flowVars.messageIn.totalHostedMB,
							usage_date: dateOnly(flowVars.messageIn.periodStart),
						    usage_type_code: p('aria.usageTypeCode.MBsHosted')	
    },
    {
							acct_no: flowVars.aria.ariaAcct,
							master_plan_instance_no: flowVars.aria.ariaMPI,
							client_master_plan_instance_id: flowVars.aria.ariaMPI,
							plan_instance_no: flowVars.ariaResponse.GBsHostedPIN,
							client_plan_instance_id: flowVars.ariaResponse.GBsHostedCPII,
							usage_units: flowVars.messageIn.totalHostedGB,
							usage_date: dateOnly(flowVars.messageIn.periodStart),
						    usage_type_code: p('aria.usageTypeCode.GBsHosted')	
    }
]
		
