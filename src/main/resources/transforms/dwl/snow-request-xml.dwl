%dw 2.0
output application/xml
ns ns0 http://www.service-now.com/incident

fun getIncidentState(state: String) = do {
	var stateNum = if (state=="New") p('servicenow-mapping.state.New') else if(state=="Working") p('servicenow-mapping.state.Working') else if(state=="Escalated") p('servicenow-mapping.state.Escalated')
	else p('servicenow-mapping.state.Closed')   
    ---
    stateNum
    
}
fun getPriority(priority: String) = do {
	var returnPriority = if (priority=="High") p('servicenow-mapping.priority.High') else if(priority=="Medium") p('servicenow-mapping.priority.Medium') else  p('servicenow-mapping.priority.Low')
	  
    ---
    returnPriority
}
---
{
	ns0#insert: {
		active: payload.active,
		activity_due: payload.activityDue,
		additional_assignee_list: payload.additionalAssigneeList,
		approval: payload.approval,
		approval_history: payload.approvalHistory,
		approval_set: payload.approvalSet,
		assigned_to: payload.assignedTo,
		assignment_group: payload.assignedGroup,
		business_duration: payload.businessDuration,
		business_service: payload.businessService,
		business_stc: payload.businessStc,
		calendar_duration: payload.calendarDuration,
		calendar_stc: payload.calendarStc,
		caller_id: payload.callerId,
		category: payload.category,
		caused_by: payload.causedBy,
		child_incidents: payload.childIncidents,
		close_code: payload.closeCode,
		close_notes: payload.closeNotes,
		closed_at: payload.closedAt,
		closed_by: payload.closedBy,
		cmdb_ci: payload.cmdbCi,
		comments: payload.comments,
		comments_and_work_notes: payload.commentsAndWorkNotes,
		company: payload.company,
		contact_type: payload.contactType,
		correlation_display: payload.correlationDisplay,
		correlation_id: payload.correlationId,
		delivery_plan: payload.deliveryPlan,
		delivery_task: payload.deliveryTask,
		description: payload.description,
		due_date: payload.dueDate,
		escalation: payload.escalation,
		expected_start: payload.expectedStart,
		follow_up: payload.followUp,
		group_list: payload.groupList,
		hold_reason: payload.holdReason,
		impact: payload.impact,
		incident_state: payload.incident_state,
		knowledge: payload.knowlegde,
		location: payload.location,
		made_sla: payload.madeSla,
		notify: payload.notify,
		number: payload.number,
		opened_at: payload.openedAt,
		opened_by: payload.openedBy,
		order: payload.order,
		parent: payload.parent,
		parent_incident: payload.parentIncident,
		priority: getPriority(trim(payload.priority)),
		problem_id: payload.problemId,
		reassignment_count: payload.reassignmentCount,
		reopen_count: payload.reopenCount,
		reopened_by: payload.reopenedBy,
		reopened_time: payload.reopenedTime,
		resolved_at: payload.resolvedAt,
		resolved_by: payload.resolvedBy,
		rfc: payload.rfc,
		severity: "",
		short_description: payload.shortDescription,
		sla_due: payload.slaDue,
		state: getIncidentState(trim(payload.state)),
		subcategory: payload.subCategory,
		time_worked: payload.timeWorked,
		upon_approval: payload.uponApproval,
		upon_reject: payload.uponReject,
		urgency: "",
		user_input: payload.userInput,
		watch_list: payload.watchList,
		work_end: payload.workEnd,
		work_notes: payload.workNotes,
		work_notes_list: payload.workNotesList,
		work_start: payload.workStart,
		u_sfdc_case_id: payload.sfdcCaseId
	}
}