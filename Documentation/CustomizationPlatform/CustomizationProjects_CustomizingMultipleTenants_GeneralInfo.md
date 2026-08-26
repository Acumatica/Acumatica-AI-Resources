# Multitenant Customization: General Information {#_945fd34a-9948-41f1-bf95-feff4182712c .concept}

The data of each tenant that uses the same instance of Acumatica ERP is isolated in the database, but website files are shared by tenants. When you publish a customization project, it may affect both the website files and the database.

You can publish a customization project to one tenant or to multiple tenants at once \(thus sharing the customization data between these tenants\).

## Learning Objectives { .section}

In this chapter, you will learn how customization projects are applied to a multitenant site and how to publish customization projects to multiple tenants at once.

## Applicable Scenarios { .section}

You customize a multitenant instance when you want to publish your customization project to all tenants or to only certain tenants of your instance.

## Application of Customization Projects to a Multitenant Instance { .section}

A customization project may add new database tables or fields, add metadata to the database, or introduce changes to the layout and business logic of forms.

If you publish a customization project that only adds metadata to the database, this customization does not affect the website files or the database schema. This data is stored only in the database. Because this data is tenant-specific, it is available in only the tenant where it was published.

The following are added to the website files and therefore are available to other tenants: custom tables, custom code, changes to form layout, and files introduced by the customization project.

When you publish a customization project to a tenant of a multitenant instance, the changes introduced by the custom code of the project are available to all tenants; the changes to the database data are available to only the tenant where the project was published.

Moreover, for all tenants that use the same website, on the Sign-In page and in the **About Acumatica** box, you can see that the website is customized, but you will not see any published projects on the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form. This form displays the customization projects that have been uploaded to the current tenant; therefore, no projects are displayed if they have been uploaded and published under another tenant.

**Attention:** If you publish a customization project to a tenant, the system unpublishes all the previously published customization projects in all the tenants of the instance. We recommend that you use only one tenant for uploading packages and publishing customization projects. The website changes will be available to all tenants anyway, and if you need to share database data, you can publish the customization projects to multiple tenants at once.

## Publication to Multiple Tenants {#section_vv2_1y4_y4b .section}

To share database data introduced by a customization project with multiple tenants, you can publish multiple customization projects for multiple tenants at once. On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, you can select the customization projects that you need to publish for multiple tenants and on the More menu \(under **Publish**\), you click **Publish to Multiple Tenants** to open the **Publish to Multiple Tenants** dialog box. You then select the required tenants and apply the selected customization projects to the selected tenants. If you have published all the selected customization projects in the website for a single tenant at least once, you do not need to update the website files. You can apply only the database changes.

To share customization content that is stored exclusively in the database for multiple tenants, in the **Publish to Multiple Tenants** dialog box, you select the **Apply Changes Only to Database \(Skip Website Update\)** check box to skip updating the site files, and you select the **Execute All Database Scrips \(Including Previously Executed\)** check box to execute all database scripts of the selected customization projects.

The system applies the customization content to each tenant selected in the **Publish to Multiple Tenants** dialog box. As a result, the published customization content is saved in the database for each selected tenant.

## Sharing of Customization Between Multiple Instances { .section}

By default, when you publish a customization project, the customization is applied only to the Acumatica ERP instance through which you published it. You can change this behavior by enabling the `UseSharedCustomization` flag in the `web.config` file. All Acumatica ERP instances that share the same database and have this flag enabled will automatically synchronize their customization. You can publish a new or updated customization project through any of these instances, and the change will be applied to all these instances.

To enable the `UseSharedCustomization` flag, add a new element to the `appSettings` section of the `web.config` file as follows.

```
<appSettings>
       ...
       <add key="UseSharedCustomization" value="True"/>
       </appSettings>
```

**Parent topic:**[Customizing a Multitenant Instance](../CustomizationPlatform/CustomizationProjects_CustomizingMultipleTenants_Mapref.md)

