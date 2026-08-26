# Publication of Customization Projects in a Multitenant Site {#_d1afb862-c7fe-4257-9978-886c7b05746a .concept}

A customization project is stored in the instance database. The data of each tenant that uses the same instance of Acumatica ERP is isolated from the data of other tenants in the database. However, the website files of the instance are shared by all tenants.

Because the customization project is stored in the database, the data of the customization project is stored in that part of the database where the tenant in which the project is created or imported is stored.

When the project is published, the platform applies the customization project to both the website files and the database. Because a customization project can contain different types of items, the platform uses a specific approach to apply each type of item to the website, database schema, and database data.

Based on this approach, some customization items included in a customization project are applied only to the tenants to which the project is published. Other customization items are applied to the entire website, which means that the changes are made to all tenants. These two types of customization items are described in a greater detail below.

## Publishing of Multiple Customization Projects to Multiple Tenants { .section}

You can publish a customization project or multiple projects for multiple tenants at once. On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, you can select the customization projects that you need to publish to multiple tenants and click **Publish to Multiple Tenants** on the More menu \(under **Publish**\). This opens the **Publish to Multiple Tenants** dialog box, where you then select the required tenants and apply the selected customization projects to the selected tenants. \(See [Multitenant Customization: General Information](CustomizationProjects_CustomizingMultipleTenants_GeneralInfo.md) for details.\)

On the [Customization Projects](../UserGuide/SM_20_45_05.md) form, you can view all customization projects that affect the entire website—that is, all tenants—by clicking **View Published** on the More menu \(under **Publish**\).

## Customization Items That Are Applied to All Tenants { .section}

The following customization items are applied to the entire website \(meaning all tenants\) after publication:

-   *Page*, *DAC*, *Table*, *SQL*, and *Code*

    Initially, these items are stored in the database for a single tenant. However, while the project is being published, depending on the specific items in the project, the platform does either of the following: creates files for these items in the website folder or changes the database schema. The new files and the changed database schema are available from other tenants. As a result, items of these types are applied for multiple tenants.

-   *File*

    During the publication of the project, for each *File* item, the platform creates the file in the file system, so *File* items are shared with multiple tenants.


For example, suppose you have signed in to the *MyTenant* tenant and have a customization project that contains only items of the *Page*, *DAC*, *Table*, *Code*, and *File* types. When you publish the project, it is applied to each tenant in the instance of Acumatica ERP. However, the customization project data is still available only in the *MyTenant* tenant.

## Customization Items That Are Applied Only to a Single Tenant { .section}

The following customization items affect only the tenant to which the customization project is published: *GenericInquiryScreen*, *Report*, *Dashboard*, *SiteMapNode*, *Locale*, *XportScenario*, *SharedFilter*, *ScreenWithRights*, *WikiArticle*, *EntityEndpoint*, *ReportDefinition*, *PushNotification*, *BpEvent*, *CSAttribute*, *MobileSiteMap*, *WebHook*, and *OAuthClient*.

If you publish a customization project that contains only items of these types \(such as generic inquiries and access rights of roles to forms\), the customization does not apply to the website files or to the database schema. This data is stored only in the database, and the application server uses the data from the database at runtime. Because this data is tenant-specific, it is available in only the tenant where it was published.

Suppose that a particular customization project includes only items of these types and is published to only one tenant of a multitenant instance. For the other tenants, on the Sign-In page and in the **About Acumatica** dialog box \(which opens when you click **Tools** &gt; **About** on the form title bar\), you can see that the website is customized, but you won't see this published project on the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form. This form displays the customization projects that have been uploaded to the current tenant. Therefore, if a project has been uploaded and published to another tenant, it is not listed on this form.

## Example of a Customization Project Published from a Different Tenant { .section}

Suppose that on a multitenant site, a particular customization project was created on or uploaded to the *OtherTenant* tenant and published there, and you are signed in to the *MyTenant* tenant. The changes related to the customization project may differ on *MyTenant* based on whether or not the project was also published to *MyTenant*. The following table shows the differences in applying a customization project to a multitenant website depending on whether the customization project that has been published from *OtherTenant* is also published to *MyTenant*. The left column contains various questions related to *MyTenant* in this example, and the other two columns show the different responses based on whether the project is published on *MyTenant*.

|Question|The customization published from *OtherTenant* is ALSO published to *MyTenant*|The customization published from *OtherTenant* is NOT published to *MyTenant*|
|--------|------------------------------------------------------------------------------|-----------------------------------------------------------------------------|
|Is the customization applied to the application instance for *MyTenant*?|Yes|Yes|
|Do changes in the file system \(*Page*, *DAC*, and *Code* items\) exist for *MyTenant*?|Yes|Yes|
|Do changes of the database schema \(*Table* and *SQL* items\) exist for *MyTenant*?|Yes|Yes|
|Do custom reports and configuration \(such items as *Report*, *SiteMapNode*, and *SharedFilter*\) exist for *MyTenant*?|Yes|**No**|
|Does the project list on the [Customization Projects](../UserGuide/SM_20_45_05.md) form contain the project? \(That is, can you access the customization project data from *MyTenant*?\)|**No**|**No**|
|Is it necessary to import the customization package to access the customization project data from *MyTenant*?|Yes|Yes|
|After the customization package is imported to *MyTenant* and added to the list on the [Customization Projects](../UserGuide/SM_20_45_05.md) form, is the project displayed in the list as an already published one?|Yes|**Yes**|

**Parent topic:**[Customization Project](../CustomizationPlatform/CG_Platform_Project.md)

