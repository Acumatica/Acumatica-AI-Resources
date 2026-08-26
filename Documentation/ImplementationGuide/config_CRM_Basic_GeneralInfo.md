# Configuring CRM Functionality: General Information {#_a1341cdc-0933-4501-8e13-ae3ed6ea83d5 .concept}

You can perform the initial configuration of customer relationship management \(CRM\) functionality in Acumatica ERP when a basic company has been configured in the system. This initial configuration includes enabling the required features and specifying the required settings to be used in the system for the CRM functionality. In a production environment, before you configure CRM, you perform broader Acumatica ERP implementation, which includes enabling features and specifying the basic settings for the general ledger, cash management, accounts payable, and accounts receivable functionality.

This topic provides an overview of the tasks required for the initial Acumatica ERP implementation in a production environment and shows the initial configuration of CRM functionality.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Develop an understanding of the tasks that must be performed for initial configuration of an Acumatica ERP instance
-   Become familiar with the features supporting CRM functionality
-   View the numbering sequences for the CRM entities: opportunities, cases, mass emails, marketing campaigns, and sales quotes
-   Enable the feature required for the setup of CRM functionality
-   Review and save the predefined basic settings for the CRM functionality

## Applicable Scenarios { .section}

You may need to learn how to configure CRM functionality in scenarios that include the following:

-   You are an implementation consultant who has performed other Acumatica ERP implementations and needs to configure the system so that users can start using the CRM functionality.
-   You are an implementation consultant who is new to Acumatica ERP and needs to learn how to configure CRM functionality.

## Customer Relationship Management in Acumatica ERP { .section}

Customer relationship management functionality helps companies manage their interactions with current and potential customers to effectively identify and address customers' needs, and build strong mutual relationships.

Acumatica ERP provides tools for process automation, data management, and reporting for marketing, sales, and customer support teams. You can easily customize the CRM functionality to fit your company’s business goals, ensure higher profitability, and streamline your marketing, sales, and customer support processes.

With the CRM functionality, your marketing personnel can easily create leads, validate leads for duplicates, assign leads to owners, qualify leads, manage and send mass emails, and manage leads, marketing lists, and marketing campaigns.

By using the CRM functionality, your sales personnel can qualify leads, assign leads to owners, create business accounts and contacts, validate contacts and business accounts for duplicates, and manage leads, marketing lists, marketing campaigns, and opportunities with easy.

Finally, the CRM functionality gives your customer support personnel the ability to create support cases, assign cases to owners, and process cases.

## Workflow of the CRM Implementation { .section}

After you install a new instance of Acumatica ERP, the system needs to be prepared for further implementation. When you sign in to a new Acumatica ERP instance, the only form you can access is the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, which you use to enable the needed features, in accordance with your company’s license.

To prepare the system for CRM implementation, you perform the following general steps:

1.  You configure basic company settings. For details, see [Preparing an Instance for Implementation](config_SA_Prep_Instance_for_Implem_Mapref.md).
2.  You implement at least the minimum general ledger, cash management, accounts payable, and accounts receivable functionality. These functional areas of Acumatica ERP do not require any change to their configuration when CRM is implemented; however, the functionality to be integrated with CRM should be implemented before CRM. For details, see [Company Without Branches](config_Basic_Company_Mapref.md).
3.  You configure the system email accounts to be used for CRM in your company. For details, see [System Email Accounts](../UserGuide/EM__con_System_Email_Accounts.md).
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, you enable the *Customer Management* feature and the needed features in this group of features. For details, see [Features for Setting Up CRM Functionality](#_7c985208-ad48-407a-a31e-4dcd83708f8c).
5.  On the [Customer Management Preferences](../UserGuide/CR_10_10_00.md) \(CR101000\) form, you review \(or review and modify, as needed\) the numbering sequences and save these settings in the system. For details, see [Selection of Numbering Sequences](#_6dd71d7a-cb48-4da1-9360-94cc6d7ae3a1).

## Features for Setting Up CRM Functionality {#_7c985208-ad48-407a-a31e-4dcd83708f8c .section}

As mentioned in the previous section, at minimum, you need to enable the *Customer Management* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form in order to use basic CRM functionality. Enabling this feature gives you the ability to also enable the following additional features:

-   *Duplicate Validation*, which provides the duplicate validation functionality that you can use to set up the validation of lead, business account, and contact records for duplicates.
-   *Case Management*, which gives users the ability to create, assign, and resolve cases.
-   *Sales Quotes*, which gives users the ability to create opportunity-based sales quotes, send them to customers for review, and create sales orders and invoices based on these quotes.
-   *Address Lookup Integration*, which gives users the ability to use the address enrichment functionality. With this feature enabled, integration with a web map service can be set up and users can add new addresses, update existing addresses, and fill in missing address information on the forms that have address information.

**Attention:** In the production environment, after the features are enabled, you have to activate the Acumatica ERP license by using the [Activate License](../UserGuide/SM_20_15_10.md) \(SM201510\) form. Each particular feature may be subject to additional licensing; please consult the Acumatica ERP sales policy for details.

You can also use the following features, which enhance the CRM functionality:

-   The *Monitoring &amp; Automation* group of features, which provides such capabilities as using approval maps, tracking user activities in the system, restricting access to particular system records for groups of users, and configuring automatic processing of documents.
-   The *Customer Portal* group of features, which gives users the ability to use the Acumatica Self-Service Portal.
-   *Case Management on Portal* in the *Customer Portal* group of features. Your organization can use this feature to give your customers the ability to add cases and track case processing through the Self-Service Portal.

    **Important:** This feature can be enabled only if the *Case Management* feature is enabled.

-   *Case Commitments* in the *Experimental Features* group of features. Your organization can use this feature for tracking the fulfillment of their case commitments.

For more information, see [Preparing an Instance: Acumatica ERP Features](config_SA_Prep_Instance_for_Implem_Features_Overview.md).

## Selection of Numbering Sequences {#_6dd71d7a-cb48-4da1-9360-94cc6d7ae3a1 .section}

Acumatica ERP uses numbering sequences to automatically generate identifiers \(IDs\) for new records of a certain type when they are created either manually by users or automatically by the system. Numbering sequences are used to generate IDs for records used in CRM, such as opportunities, sales quotes, and cases. You can use predefined numbering sequences or create new ones if needed. For more information, see [Use of Numbering Sequences](../UserGuide/CS__con_Multiple_Numbering_Sequences.md).

On the **General** tab of the [Customer Management Preferences](../UserGuide/CR_10_10_00.md) \(CR101000\) form \(**Numbering Sequences** section\), you can review or modify the specified numbering sequences, which are used to generate identifiers for the following types of records:

-   Opportunities
-   Cases
-   Mass emails
-   Marketing campaigns
-   Sales quotes

To review the settings of any of the specified numbering sequences, you can click the numbering ID, which is also a link; the system opens the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form. You can make any needed changes to the numbering sequence and save your changes.

On the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form, you can review or modify the numbering sequence used for business accounts, if applicable. The identifiers assigned to business accounts are determined by the *BIZACCT* segmented key, which is defined on the [Segmented Keys](../UserGuide/CS_20_20_00.md) form and is used for configuring the general structure of identifiers for business accounts, including the identifier length, the number of segments, and the type of segments. If an auto-numbered segment is used, a numbering sequence can be specified for it.

**Attention:** When you have finished reviewing the numbering sequences, you must save these settings on the [Customer Management Preferences](../UserGuide/CR_10_10_00.md) form by clicking **Save** on the form toolbar, even if you have made no changes on the form. After you have saved these settings, you can start using the CRM functionality in Acumatica ERP.

**Parent topic:**[Basic Customer Relationship Management](../ImplementationGuide/config_CRM_Basic_Mapref.md)

