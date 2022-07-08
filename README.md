# accelerator-servicenow-sys-api
This system API integrates with ServiceNow using ServiceNow Connector. This API is used to create incident on ServiceNow. The API Fields corresponds to the ServiceNow Incident table. API accepts input as JSON Object and transforms the JSON Object into XML format which is used by the ServiceNow Connector to create incident.


## Available operations

### Create Incident

The `post:\incident` endpoint is used to create Incident in ServiceNow.

## Prerequisite Setup

 - The ServiceNow instance URL, Username, and Password is required by the connector. ServiceNow  Version defaults to Madrid, if version changes, then connector  should be pointed to respective version.
 - Create a custom field u_sfdc_case_id in ServiceNow instance. This field will be used to store the Salesforce case id for  maintaining correlation between Salesforce and ServiceNow.

## Installation instructions for Studio

The following instructions assume you have already configured your Maven 
`settings.xml` file according to the Setup Guide.

- Clone the project using any Github client or Anypoint Studio Git plugin
- Import the project into your workspace
- Modify the `config-local.yaml` properties appropriately
- To run the project, right-click the project and select Run As --> Mule Application

## Deployment instructions for CloudHub

Ensure the Maven profile `CloudHub-DEV` has been properly configured in your 
`settings.xml` file. In particular, make sure the ServiceNow credentials
are provided.

Update the `config-dev.yaml` properties appropriately and then use one of the following 
scripts to deploy application to Cloud Hub:
   
- packageDeploy.sh or deployOnly.sh (Mac/Linux)
- packageDeploy.cmd or deployOnly.cmd (Windows)
