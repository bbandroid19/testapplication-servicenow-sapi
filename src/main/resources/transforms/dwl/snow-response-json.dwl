%dw 2.0
output application/json
ns ns0 http://www.service-now.com/incident
---
{
	message: p('application-msgs.incident-create-success-message'),
	sysId: payload.body.insertResponse.sys_id default "",
	number: payload.body.insertResponse.number default ""
}