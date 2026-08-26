# Web Service Endpoints: Endpoint in a Customization Project {#_41ab4560-87c1-4981-9b48-73e60ac95cef .concept}

If you need to transfer the configuration of a web service endpoint, which is defined on the [Web Service Endpoints](../UserGuide/SM_20_70_60.md) \(SM207060\) form, to another Acumatica ERP instance, you need to include the respective endpoint in a customization project.

**Tip:** After you have included all needed items in a customization project, you export the project as a ZIP file. In the target instance, you import the file and publish this customization project. For details about importing, exporting, and publishing customization projects, see [Managing Customization Projects](../Shared/../CustomizationPlatform/CG_GL_Projects.md) and [Publishing Customization Projects](../Shared/../CustomizationPlatform/CG_GL_Projects_Publishing.md).

## Web Service Endpoint in a Customization Project { .section}

You can configure contract-based web service endpoints in an instance of Acumatica ERP and then include the new configuration in a customization project on the [Web Service Endpoints](../UserGuide/AU_20_60_02.md) \(AU206002\) page of the Customization Project Editor.

**Attention:** Web service endpoints are not included in snapshots. Though web service endpoints are copied when you copy a tenant by using the **Copy Tenant** button on the [Tenants](../UserGuide/SM_20_35_20.md) \(SM203520\) form, they may refer objects that have not been copied to the new tenant.

Therefore, to copy an endpoint to a different tenant, you need to create a customization project, add an endpoint to it, and publish the customization project to the needed tenant.

If you have used the [Web Service Endpoints](../UserGuide/SM_20_70_60.md) \(SM207060\) form to change a custom web service endpoint included in a customization project and you want to include these changes in the customization project, you have to update the appropriate item in the customization project by clicking **Reload from Database** on the toolbar of the [Web Service Endpoints](../UserGuide/AU_20_60_02.md) \(AU206002\) page.

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

