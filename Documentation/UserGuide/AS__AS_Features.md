# Overview of the System Administrator's Tasks {#_0684e517-9384-43b3-b6ae-d13bc92c0ccf .concept}

System administrators play an important role in preparing Acumatica ERP to be used by the employees of an organization. As a system administrator, you install the system, keep it up to date, and configure the system based on the business processes of your organization. In this topic, you will read about the main tasks that a system administrator performs in the system.

## Installing and Maintaining an Acumatica ERP Instance { .section}

If Acumatica ERP is used on the premises of your company or in your own data center, you first install the system on a server or multiple servers. This process involves the following steps:

-   Preparing your server or servers for the installation of Acumatica ERP: Before installing the system on your server, you may need to configure Internet Information Services and Microsoft SQL Server, as described in [Preparing for Installing Acumatica ERP](INST_Preparing_Installation_Mapref.md).
-   Installing Acumatica ERP: You install the system on your local server or deploy the system in your own data center, as described in [Installing Acumatica ERP On-Premises](INST_Installing_Locally_Mapref.md) and [Installing Acumatica ERP in a Data Center](INST_Installing_in_Data_Center_Mapref.md).
-   Preparing the system for implementation: By default, Acumatica ERP is installed in trial mode. You remove the trial mode restrictions when you obtain and activate the license for using Acumatica ERP, configure system-wide security policies and provide access for implementers. For details, see [Preparing an Instance for Implementation](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Mapref.md).

When you exploit the system in production, you need to maintain it to provide trouble-free operation for the employees of your organization, as described in [Maintaining Acumatica ERP Locally](Maintaining_Acumatica.md) and [Maintaining Database by Using the Web Interface](SA_Maintaining_Database_by_Using_Web_Interface_Mapref.md).

Acumatica ERP is continuously being enhanced. These enhancements are provided in new versions and updates of the current version. Therefore, you need to update the system periodically to keep it up to date, as described in [Upgrading Acumatica ERP](INST_Upgrading_Mapref.md) and [Updating Acumatica ERP by Using the Web Interface](SA_Updating_Acumatica_by_Using_Web_Interface_Mapref.md).

## Activating of Acumatica ERP Components { .section}

Acumatica ERP provides a centralized point for managing activation of the system components. You can activate specific forms or features of Acumatica ERP in accordance with the purchased license. If required, you can also cancel the activation of specific components. For more information, see [Preparing an Instance: Activation and Licensing](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Instance_Activation_and_Licensing.md).

## Configuring System Security { .section}

Acumatica ERP specializes in the collection, storage, and processing of sensitive corporate data that must be protected against unauthorized access, use, modification, and disclosure. To ensure that the system resources are used properly, Acumatica ERP uses protective security measures, such as database encryption and access control.

To ensure system security, you can do the following:

-   Administer user accounts: You configure and manage user accounts to provide your users with access to the system as a whole. For details, see [Managing User Access](SA_Managing_User_Access_Mapref.md).
-   Restrict access to information: You configure and manage access rights for users to the system objects. For more information, [Configuring User Roles](User_Roles_Mapref.md) and [Restriction Groups in Acumatica ERP](SM__con_Overview_of_Restriction_Groups.md).
-   Enforce site security policies: You set up security polices for the system as a whole and for each particular user. For details, see [Preparing an Instance: System-Wide Security Policy](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Secure_Access_Implementers.md) and [User Access: User Access Security](SA_Managing_User_Access_User_Access_Security_Concept.md).
-   Encrypt sensitive data: You configure the encryption of sensitive information stored in the system. For more information, see [Digital Certificates: General Information](SA_Data_Encryption_GeneralInfo.md).
-   Audit user activities: You configure auditing of user activities connected to system security. For details, see [System-Wide Security Auditing: General Information](SA_System_Wide_Security_Auditing_GeneralInfo.md).
-   Audit data on the field level: You configure auditing on particular forms to record user activity on these forms. For details, see [Managing Field-Level Auditing](SA_Managing_Field_Level_Auditing_Mapref.md).

## Segmented Keys and Numbering Sequences { .section}

In Acumatica ERP, different types of accounts and other system entities have identifiers, which you design to meet your organization's requirements, make identifiers more meaningful for users and reduce input errors. These identifiers can have any number of segments. For instance, you can define segments that denote specific divisions, departments, regions, or cost centers. You define segmentation by using segmented keys. Acumatica ERP provides a predefined configuration for each segmented key, which can be used in most cases. For more information about using segmented keys to configure identifiers for various entities, see the following topics:

-   [Segmented Identifiers](CS__con_Identifier_Segmentation.md)
-   [Account Identification](GL__con_Account_and_Subaccount_Identifiers.md)
-   [Inventory Subitems](IN__con_Inventory_IDs_and_Subitem_Codes.md)
-   [Business Account Identifiers](CS__con_Business_Accounts_Identifiers.md)

You use a numbering sequence to have the system automatically generate a number for a new object when the object is being created manually or automatically. For example, numbering sequences are used for numbering batches, allocations, schedules, vendors, and payments. Acumatica ERP provides a number of predefined numbering sequences, and your organization can create and use any number of user-defined numbering sequences. For additional information, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

## Configuring Input Validation Options { .section}

To validate user input in data entry boxes in Acumatica ERP, you can define input masks and regular expressions. For instance, you can use input masks and regular expressions to validate the text boxes with phone numbers, postal codes, and tax registration numbers. For more information, see [Examples of the Usage of Masks and Regular Expressions](CS__con_Examples_Mask_and_RegExp_Usage.md) and [Country, State, and Postal Code Validation](CS__con_CountryStatePostalCode_Validation.md).

## Specifying the Common Settings of Acumatica ERP Instance { .section}

Before users can exploit Acumatica ERP in production, you need to specify the following types of settings that will be applied to the whole system:

-   Multitenancy: As an application with multitenancy architecture, Acumatica ERP supports the servicing of multiple customers or tenants within a single instance. You can create new tenants directly from the Acumatica ERP application or by using the Acumatica ERP Configuration wizard. For more information, see [Managing Tenants by Using the Web Interface](SA_Managing_Tenants_Using_Web_Mapref.md).
-   Site preferences: You can configure general settings for your organization, such as its name, the time zone of most users, the map viewer, the interface theme, and the parameters used when documents are exported to Microsoft Excel. For details, see [Site Preferences](SM_20_05_05.md).
-   Email settings: You can create and configure the system email accounts that can be used to centrally send mass emails, and you can schedule the sending and receiving of the emails. For more information, see [System Email Accounts](EM__con_System_Email_Accounts.md).
-   File management: You can import and store different files, such as images in various formats, scanned documents, and internal instructions for employees. For example, you can attach a picture of an inventory item to the related item record, or a copy of an original vendor invoice to the related credit adjustment. You can easily view files, update them, check them out and in, get links to them, and configure access to them.

## Managing Emails { .section}

Acumatica ERP provides functionality to manage emails for the employees involved in customer relationship management \(CRM\) activities, such as working with leads and contacts, organizing campaigns, and handling cases. For details, see [Managing Emails](EP__con_Email_Management.md)

## Specifying the Settings for Document Processing and Viewing { .section}

In Acumatica ERP, you can specify the following system-wide settings for processing and viewing documents:

-   Shared filters: Users can set up filters to list only the records they want to view \(that is, only those with the criteria the users specify\) on a particular form. By using the [Filters](CS_20_90_10.md) \(CS209010\) form, users can create filters for their personal use or filters to be shared with other users. As a system administrator, you can manage all shared filters created in the system. For more information, see [Managing Advanced Filters](GI_Reusable_Filters_Mapref.md).
-   Segmented identifiers: You can design identifiers, which can be made up of any number of segments, for accounts and other types of system entities to meet your company's needs. For instance, in subaccount identifiers, you can define segments that denote specific divisions, departments, regions, or cost centers. By using segments, you make identifiers more meaningful for users and reduce input errors. You define identifiers by using segmented keys as follows: you can specify the number of segments the key has, the length and type of each, and the possible values of each segment. Acumatica ERP provides a predefined configuration for each segmented key, which can be used in most cases. For more information about segmented keys, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md).
-   Numbering sequences: You use a numbering sequence to have the system automatically generate a number that serves as the identifier \(or a segment of the identifier\) of a new entity when the object is being created manually or automatically. For example, numbering sequences are used for numbering batches, allocations, schedules, vendors, and payments. Acumatica ERP provides a number of predefined numbering sequences, and your organization can create and use any number of user-defined numbering sequences. For additional information, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).
-   Input validation options: To validate user input in data entry boxes, you can define input masks and regular expressions. For instance, you can use input masks and regular expressions to validate the text boxes with phone numbers, postal codes, and tax registration numbers. For more information, see [Examples of the Usage of Masks and Regular Expressions](CS__con_Examples_Mask_and_RegExp_Usage.md) and [Country, State, and Postal Code Validation](CS__con_CountryStatePostalCode_Validation.md).

## Localizing Acumatica ERP { .section}

You can maintain multiple locales and localize the Acumatica ERP user interface to multiple languages. You can translate strings from the application user interface directly in the application or by exporting the application strings to a third-party product and importing the translated strings back. For details, see [Managing Locales and Languages](SM__mng_Locales.md).

## Automating Processes { .section}

You can automate particular processes in Acumatica ERP so that users spend less time initiating typical operations. You can automate processes as follows:

-   By scheduling processes: In any ERP system, the processing of documents and validation of accounts requires significant time and system resources. As such, these processes should be performed at times when there are no employees at work, such as at night or on the weekend. Other processing, such as releasing or posting documents, takes less time but also should be performed regularly, with a frequency geared toward the needs of your business. In Acumatica ERP, you can set up automated processing for most processing forms instead of initiating the processing manually. For details, see [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md).
-   By using workflows: For certain forms in Acumatica ERP, you can create custom workflows and customize the predefined workflows so that they meet your business needs. For details, see [Getting Started with Workflow API: General Information](../DeveloperGuide/WorkflowAPI_Overview.md) and [Workflow UI Guide](../DeveloperGuide/WorkflowUI_Guide.md)

## Event Monitoring { .section}

In Acumatica ERP, some executed business processes require the monitoring of particular activities and conditions in the system. You can configure the system to monitor the company data and to perform an action \(such as sending a push notification or an email notification or performing the instructions defined by an import scenario\) or multiple actions in the system based on various occurrences. For more information, see [Using Business Events](SA_Using_Business_Events_Mapref.md) and [Managing Events](AI__con_Event_Monitoring.md).

## Configuring and Managing Dashboards { .section}

Dashboards are an important and convenient tool for monitoring and analyzing critical business information. On the [Classic Dashboards](SM_20_86_00.md) \(SM208600\) form, you can add dashboard pages, locate them in the site map, and set up the access rights to dashboard pages. For more information, see [Administering Dashboards](RPT_Administering_Dashboards_Mapref.md).

## Configuring and Managing Pivot Tables { .section}

In Acumatica ERP, you can build pivot tables based on the data from generic inquiries. A pivot table is a program tool that you can use to reorganize and summarize data in a generic inquiry, to view it from different perspectives. Among other functions, a pivot table can automatically sort, count, total, or give the average of the data stored in a generic inquiry, displaying the results in a separate table showing the summarized data. You can configure and change the structure of pivot tables simply by dragging and dropping fields. For details, see [Managing Pivot Tables](Pivot_Tables_Mapref.md).

## Integrating Acumatica ERP with External Applications { .section}

Acumatica ERP is a web-based application; therefore, you can integrate it with various external web applications as follows:

-   Building external web applications in Acumatica ERP: You can build external web applications in Acumatica ERP if the employees of your organization use these applications along with Acumatica ERP in their work. For example, you can build a Microsoft Power BI report into Acumatica ERP if employees analyze the reports based on data sets that are loaded from Acumatica ERP. For details, see [Managing Integration with External Applications](SM__mng_Integration_External_Applications.md).
-   Embedding Acumatica ERP forms in external web applications: You can embed Acumatica ERP forms in another web application that your employees use to solve their work tasks. For example, you can embed the Tasks \(EP4040PL\) form within your Office 365 page to view and access your Acumatica ERP task list directly in Office 365. For more information, see [Integrating Acumatica ERP Forms on Your Website](US__mng_Links.md).

## Administering Acumatica Self-Service Portal { .section}

The Acumatica Self-Service Portal provides a solution for you to more efficiently work and communicate with your customers. Self-Service Portal is specifically designed to be the site where your customers can view all the relevant information about their interactions with you as a vendor and perform needed activities online.

If your organization wants to provide its customers with the functionality of Self-Service Portal, you need to install an instance of the portal, as described in [Instance Deployment: To Deploy a Self-Service Portal Instance](INST_Deploying_Self_Service_Portal_Activity.md).

After you have installed Self-Service Portal, you need to configure various settings so that the portal corresponds to the business processes of your organization. You can find a detailed description of Self-Service Portal configuration in [Overview of the Acumatica Self-Service Portal](SP__SP_Portal_Overview.md).

## Customizing the User Interface { .section}

In Acumatica ERP, you can flexibly customize the user interface \(in particular, main menu items and workspace links\) that all users will see so that it fits the business processes of your organization. Your customization of the user interface will make it easier for users to find and begin working with required forms and reports, speeding document processing in the system. For details, see [Customizing the User Interface](SA_Customizing_UI_Mapref.md).

Also, you can define attributes for flexible, meaningful classification of multiple entities. An attribute is a property \(such as age or industry\) that enables you to specify additional information for objects in the system. For some entities, attributes are defined in the context of a class; for other entities, attributes can be added directly to the data entry form that corresponds to the entity. For more information, see [Managing Attributes and User-Defined Fields](CS__con_Attributes_and_User_Defined_Fields.md).

## Managing Wikis { .section}

Acumatica ERP provides wiki repository for working materials or a knowledge base where you can store such information as Help articles, internal manuals, instructions, marketing materials, and plans. Wikis can be created for number of different purposes. For details, see [Managing Wikis](DM__mng_Wikis.md).

