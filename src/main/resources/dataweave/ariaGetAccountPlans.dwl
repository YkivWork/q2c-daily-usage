%dw 1.0
%output application/xml
%namespace soap http://schemas.xmlsoap.org/soap/envelope/
%namespace aria urn:client:api:wsdl:document/literal_wrapped:vers:11.0:aria_complete_m_api
---
{
	soap#Envelope: {
	  soap#Header: {},
	  soap#Body: {
			aria#get_acct_plans_all_m: {
				client_no: p('aria.client_no'),
				auth_key: p('aria.auth_key'),
				acct_no: flowVars.aria.ariaAcct,
				include_service_supp_fields: "TRUE"
					}
				}
			}
		}