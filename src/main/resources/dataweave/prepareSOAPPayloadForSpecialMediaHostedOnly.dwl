%dw 1.0
%output application/java
%function dateOnly(value) value[0 .. 9]
---
[
{
							acct_no: flowVars.aria.ariaAcct,
							master_plan_instance_no: flowVars.aria.ariaMPI,
							client_master_plan_instance_id: flowVars.aria.ariaMPI,
							plan_instance_no: flowVars.ariaResponse.SpecialMediaPIN,
							client_plan_instance_id: flowVars.ariaResponse.SpecialMediaCPII,
							usage_units: flowVars.messageIn.megabytesAdded,
							usage_date: dateOnly(flowVars.messageIn.periodStart),
						    usage_type_code: p('aria.usageTypeCode.SpecialMediaUploaded')	
						},
						{
							acct_no: flowVars.aria.ariaAcct,
							master_plan_instance_no: flowVars.aria.ariaMPI,
							client_master_plan_instance_id: flowVars.aria.ariaMPI,
							plan_instance_no: flowVars.ariaResponse.SMHostedPIN,
							client_plan_instance_id: flowVars.ariaResponse.SMHostedCPII,
							usage_units: flowVars.messageIn.totalHostedMB,
							usage_date: dateOnly(flowVars.messageIn.periodStart),
						    usage_type_code: p('aria.usageTypeCode.SpecialMediaHosted')	
						}
					
]					
					
			