# Publishing Customization Projects {#_e6a2428f-23e1-4765-8746-bcf5848eb467 .concept}

To apply a customization project to an instance of Acumatica ERP, you have to publish the customization project. You can also publish multiple customization projects at once; see [Publishing Customization Projects](CustomizationProjects_PublishingProjects_Mapref.md) for details.

When you publish a customization project, the system applies the changes in the project to the website. After the customization project has been published, users see Acumatica ERP with the modifications of the project. The changes apply to the website of Acumatica ERP and therefore affect all tenants in the system \(see [Publication of Customization Projects in a Multitenant Site](../Shared/../CustomizationPlatform/CG_Platform_Project_MultiCompany.md) for details\).

The Acumatica Customization Platform provides the following ways to manage the publication process:

1.  You can develop and include in a customization project the custom code that is executed during the project publication. See [Custom Processes During Publication of a Customization](CG_Platform_Framework_PlugIn.md) for details.
2.  By using additional attributes in DAC extensions, you can specify how the system should apply the original and custom attributes to the field. See [Customization of Field Attributes in DAC Extensions](CG_Platform_Framework_CS_DACExt_FieldAttributes.md) for details.
3.  By using SQL script attributes, you can control the execution of batches in SQL scripts. See [Using the SQL Script Attributes](CG_GL_Items_DBScripts_Adding_Attr.md) for details.

You can cancel the publication of the project and publish the project again, which you might do often during the development and testing of the customization. The application domain does not restart every time you publish the customization project because [Run-Time Compilation](CG_Platform_TO_Code_RunTime.md) is enabled for the website by default.

We recommend that you lock out the system for the time you publish customization projects \(see [Upgrading of Acumatica ERP: To Schedule the System Lockout](../UserGuide/INST_Upgrading_System_Lockout.md) for details\). After the publishing is complete, unlock the system \(see [Upgrading of Acumatica ERP: To Unlock an Acumatica ERP Instance](../UserGuide/INST_Upgrading_Unlock_System.md) for details\).

## Publication in Acumatica ERP and on the Self-Service Portal {#section_tlx_mdn_t5b .section}

You can publish a customization project on the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\) form of Acumatica ERP and the Self-Service Portal. Although Acumatica ERP and the Self-Service Portal share a database, customization projects published on the Self-Service Portal are independent from the Acumatica ERP instance due to a special column in the database tables that store customization items. This column identifies whether each customization item belongs to Acumatica ERP or to the Self-Service Portal.

When you unpublish a customization project, the system unpublishes all customization projects from Acumatica ERP or the Self-Service Portal, and it removes only those customization items that are related to the site where you are performing unpublishing. This means that if you unpublish customization projects in Acumatica ERP, all customization projects published in the Self-Service Portal will remain in the database. Similarly, when you unpublish projects in the Self-Service Portal, projects in Acumatica ERP will remain in the database.

-   **[To Prepare a Project for Publication](../CustomizationPlatform/CG_GL_Projects_Preparing.md)**  

-   **[To Publish a Single Project](../CustomizationPlatform/CG_GL_Projects_Publishing_Single.md)**  

-   **[To Publish the Current Project](../CustomizationPlatform/CG_GL_Projects_Publishing_Current.md)**  

-   **[To View a Published Customization](../CustomizationPlatform/CG_GL_Projects_ViewingPublished.md)**  

-   **[Publishing Customization Projects](../CustomizationPlatform/CustomizationProjects_PublishingProjects_Mapref.md)**  

-   **[Publishing with the Cleanup Operation](../CustomizationPlatform/CustomizationProjects_PublishingWithCleanup_Mapref.md)**  

-   **[Customizing a Multitenant Instance](../CustomizationPlatform/CustomizationProjects_CustomizingMultipleTenants_Mapref.md)**  

-   **[Unpublishing Customization Projects](../CustomizationPlatform/CustomizationProjects_UnpublishingProjects_Mapref.md)**  


