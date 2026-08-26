# Instance Deployment: Deploying the Acumatica Self-Service Portal {#_723d48bf-47b9-4157-84f0-b32a0cecdda8 .concept}

The Acumatica Self-Service Portal is designed to be a site where your customers can view all the relevant information about their interactions with your company as a vendor and perform common activities online.

To give your customers limited access to your Acumatica ERP instance, you deploy a Self-Service Portal instance connected to your Acumatica ERP instance. The deployment procedure is mostly the same as the procedure for an Acumatica ERP instance. For details, see [Instance Deployment: General Information](INST_Deploying_Instances_GeneralInfo.md).

If you deploy a multitenant Acumatica ERP instance, after you deploy the Self-Service Portal instance, you must specify the tenant that the Self-Service Portal users can access. For details, see [Instance Deployment: To Specify the Tenant Available for Self-Service Portal Users](INST_Installing_Portal_Configuring.md).

**Attention:** If you want different tenants to be available through the Self-Service Portal, you must deploy a Self-Service Portal instance for each tenant.

If you need to distribute the load of user requests to a Self-Service Portal instance, you can create a group of Self-Service Portal instances that will be used as a single instance. The system recognizes Self-Service Portal instances as an instance group if the instances contain the same group identifier in their configuration. To create an instance group, you can deploy two or more Self-Service Portal instances, connect each of them to the same database, and specify the group identifier for each instance in the corresponding `web.config` file. In the file, the `PortalSiteID` setting in the `appSettings` section contains the value of the group identifier. For details, see [Instance Deployment: To Set Up a Group of Self-Service Portal Instances](INST_Installing_Portal_SiteID_Activity.md).

**Tip:** By default, the *CustomerPortal-1* value is specified as the `PortalSiteID` setting for each newly deployed Self-Service Portal instance.

The system shows the group identifier for a Self-Service Portal instance in the **Portal ID** box on the Portal Preferences \(SP800000\) form in the Self-Service Portal.

**Parent topic:**[Deploying Acumatica ERP Instances](../UserGuide/INST_Deploying_Instances_Mapref.md)

