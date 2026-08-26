# Customization Projects: Publication to a Multitenant Website {#_849dd3f3-6dad-4c7f-91d9-8b786d5778c7 .concept}

The data of each tenant that uses the same instance of Acumatica ERP is isolated in the database, but website files are shared by tenants. When you publish a customization, it may affect both the website files and the database.

You can publish a customization to a tenant or to multiple tenants at once. Website changes are applied to all tenants, even if you publish a project to one tenant only, but the tenant-specific changes are applied to only the tenants of your choice.

In this topic, you will read how to publish customization projects to multiple tenants at once and how customizations are applied to a multitenant site.

## Publication to Multiple Tenants {#section_hpk_111_rsb .section}

To apply database changes introduced by a customization project to multiple tenants, you can publish multiple customization projects for multiple tenants at once. On the [Customization Projects](SM_20_45_05.md) \(SM204505\) form, you can select the customization projects that you need to publish for multiple tenants and use the **Publish to Multiple Tenants** command on the More menu \(under **Publish**\) to open the **Publish to Multiple Tenants** dialog box. You then select the required tenants and apply the selected customization projects to the selected tenants. If you have published all the selected customization projects in the website for a single tenant at least once, you do not need to update the website files. You can apply only the database changes.

## Publication of Customization Projects to a Multitenant Website { .section}

A customization project may introduce changes to the layout and business logic of forms, add new database tables or fields, and add metadata to the database.

If you publish a customization project that only adds metadata to the database, this customization project does not affect the website files or the database schema. This data is stored only in the database. Because this data is tenant-specific, it is available in only the tenant where it was published. The following objects fall into the metadata category:

-   Access rights
-   Analytical reports
-   Business events
-   Conditions
-   Dashboards
-   Generic inquiries
-   Import and export scenarios
-   Non-programmable actions
-   Push notifications
-   Reports
-   Shared filters
-   Site map nodes
-   System locales
-   User-defined fields
-   Web service endpoints
-   Webhooks
-   Wiki articles
-   Workflow

Changes to form layout, custom tables, custom code, and files introduced by the customization project are added to the website files and therefore are available to other tenants.

When you publish a customization project to a tenant on a multitenant website, the changes introduced by the custom code of the project are available to all tenants; the changes to database data are available to only the tenant where the project was published.

Moreover, for all tenants that use the same website, on the Sign-In page and in the **About Acumatica** box \(which opens when you click **Settings** &gt; **About** on the form title bar\), you can see that the website is customized, but you will not see any published project on the [Customization Projects](SM_20_45_05.md) \(SM204505\) form. This form displays the customization projects that have been uploaded to the current tenant; therefore, no projects are displayed if they have been uploaded and published under another tenant.

**Attention:** If you publish a customization project to a tenant, the system unpublishes all the previously published customization projects in all the tenants of the website. We recommend that you use only one tenant for uploading packages and publishing customization projects. The website changes will be available to all tenants anyway, and if you need to share database data, you can publish the customization projects to multiple tenants at once.

**Parent topic:**[Publishing Customization Projects](../UserGuide/SA_Publishing_Customization_Projects_Mapref.md)

