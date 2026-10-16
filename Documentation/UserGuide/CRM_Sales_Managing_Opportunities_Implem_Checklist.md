# Opportunity Management: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for managing opportunities, and to understand \(and change, if needed\) the settings that affect the workflow of opportunity management.

## Mandatory Configuration

We recommend that before you start managing opportunities, you make sure the needed CRM features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:-   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns.
-   *Sales Quotes* in the *Customer Management* group of features: This feature gives you the ability to create opportunity-based sales quotes, send them to customers for review, and create sales orders and invoices based on these quotes.

</td></tr><tr><td>

[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)

</td><td>

The predefined settings in the **Numbering Sequences** section of the **General** tab have been saved, as described in [Basic Customer Relationship Management](../ImplementationGuide/config_CRM_Basic_Mapref.md).

</td></tr><tr><td>

[Opportunity Classes](CR_20_90_00.md) \(CR209000\)

</td><td>

Opportunity classes with the necessary settings, attributes, and stages have been created, as described in [Defining Opportunity Classes](CRM_Opportunity_Classes_Mapref.md).

</td></tr><tr><td>

[Business Account Classes](CR_20_80_00.md) \(CR208000\)

</td><td>

Business account classes with the necessary settings and attributes have been created, as described in [Defining Business Account Classes](CRM_Bus_Account_Classes_Mapref.md).

</td></tr><tr><td>

[Business Accounts](CR_30_30_00.md) \(CR303000\)

</td><td>

Business accounts with the necessary settings and attributes have been created, as described in [Creating Business Accounts](CRM_Sales_Creating_Bus_Accounts_Mapref.md).

</td></tr><tr><td>

[Customer Classes](AR_20_10_00.md) \(AR201000\)

</td><td>

Customer classes with the necessary settings and attributes have been created, as described in [Creating a Customer](Customer_Mapref.md).

</td></tr><tr><td>

[Contacts](CR_30_20_00.md) \(CR302000\)

</td><td>

Contacts with the necessary settings and attributes have been created, as described in [Creating Contacts](CRM_Sales_Creating_Contacts_Mapref.md).

</td></tr></tbody>
</table>

## Recommended Configuration

<table id="_cf9f1fa8-89e1-4a19-a5f3-7e1c5da327d4"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:

 -   *Scheduled Processing* \(under the *Monitoring &amp; Automation* group of features\): This feature gives you the ability to create schedules for the automatic processing of documents, including the sending of emails.
-   *Time Management*: This feature gives you the ability to track the time your organization's employees spend on activities that can be included in time cards.

</td></tr><tr><td>

[Email Accounts](SM_20_40_02.md) \(SM204002\)

</td><td>

A system email account has been configured, as described in [Configuring Email Accounts](EM__con_Configuring_Email_Accounts.md).

</td></tr><tr><td>

[Business Events](SM_30_20_50.md) \(SM302050\)

</td><td>

A business event that causes the system to send emails to customers has been created.

</td></tr><tr><td>

[Email Templates](SM_20_40_03.md) \(SM204003\)

</td><td>

A notification template that is a subscriber for the business event has been created.

</td></tr><tr><td>

[Automation Schedules](SM_20_50_20.md) \(SM205020\)

</td><td>

A schedule for the sending of emails has been created, as described in [Managing Emails](EP__con_Email_Management.md).

</td></tr><tr><td>

[Non-Stock Items](IN_20_20_00.md) \(IN202000\)

</td><td>

The required non-stock items of the *Labor* type with needed settings have been created, as described in [Creating Labor Items](Non_Stock_Item_Projects_Mapref.md).

</td></tr><tr><td>

[Labor Rates](PM_20_99_00.md) \(PM209900\)

</td><td>

The cost rates that are specific to particular labor items have been created, as described in [Creating Labor Items](Non_Stock_Item_Projects_Mapref.md).

</td></tr><tr><td>

[Attributes](CS_20_50_00.md) \(CS205000\)

</td><td>

Attributes have been created with the necessary settings.

</td></tr><tr><td>

[Earning Types](EP_10_20_00.md) \(EP102000\)

</td><td>

If you will be using the *Per Activity* billing mode, the needed earning types that are used in activities have been created.**Tip:** A predefined set of earning types has been created in the system. You can modify this set as needed.

</td></tr><tr><td>

[Activity Types](CR_10_20_00.md) \(CR102000\)

</td><td>

The activity types that you plan to use are defined and have the **Active** check box selected.

</td></tr></tbody>
</table>

## Opportunity-Based Documents Checklist

We recommend that before you start creating opportunity-based sales orders or invoices, you make sure the needed settings have been specified and entities have been created, as summarized in the following checklist.

<table id="_48a190c2-e205-440d-b114-961275543e99"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

Multiple forms

</td><td>

Order and inventory management functionality has been configured as described in [Order Management Basic Configuration: General Information](../ImplementationGuide/config_OrderMgmt_Basic_GeneralInfo.md) and [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\)

</td><td>

Stock items with the necessary settings have been added, as described in [Stock Items: General Information](Stock_Items_GeneralInfo.md).

</td></tr><tr><td>

[Non-Stock Items](IN_20_20_00.md) \(IN202000\)

</td><td>

Non-stock items with the necessary settings have been added, as described in [Non-Stock Items: General Information](Non_Stock_Items_OrderMgmt_GeneralInfo.md) and [Service Items: General Information](Services_GeneralInfo.md).

</td></tr><tr><td>

[Opportunities](CR_30_40_00.md) \(CR304000\)

</td><td>

The following tasks have been performed:-   An opportunity has been created and at least one inventory item, stock or non-stock, has been specified on the **Details** tab.
-   A business account of the *Customer* type has been selected for the opportunity.
-   If the *Sales Quotes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, a primary quote has been created for the opportunity.
-   If the *Service Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, the opportunity does not have any service orders associated with this opportunity.

**Attention:** If an opportunity includes detail lines with inventory items and detail lines with the **Inventory ID** column left blank, a sales order created from that opportunity will include only the lines with inventory items.

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of opportunity management by specifying additional settings as follows:

-   To cause the system use opportunity classes during lead conversion, create the needed classes on the [Lead Classes](CR_20_70_00.md) \(CR207000\) form.
-   To give users the ability to specify discounts for an opportunity, enable the *Customer Discounts* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and configure discounts. For details, see [Customer Discounts: General Information](Prices_Customer_Discounts_GeneralInfo.md).
-   To provide the ability to include taxes in an opportunity, configure taxes, as described in [Sales Taxes: General Information](../ImplementationGuide/SalesTaxes_GeneralInfo.md).
-   To set up required approvals for sales quotes, sales orders, or invoices, enable the *Approval Workflow* feature on the [Enable/Disable Features](CS_10_00_00.md) form \(in the *Monitoring &amp; Automation* group of features\) and configure an approval map.
-   To give users the ability to create service orders, enable the *Service Management* feature on the [Enable/Disable Features](CS_10_00_00.md) form and configure the field services functionality.

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in the following topics:

-   [Opportunity Management: To Add Products to an Opportunity](CRM_Sales_Managing_Opportunities_To_Add_Products_To_an_Oppty.md)
-   [Opportunity Management: To Create a Sales Quote](CRM_Sales_Managing_Opportunities_To_Create_a_Sales_Quote.md)
-   [Opportunity Management: To Create an Opportunity-Based Sales Order](CRM_Sales_Managing_Opportunities_To_Create_an_Oppty-Based_Sales_Order.md)

**Parent topic:**[Managing Opportunities](../UserGuide/CRM_Sales_Managing_Opportunities_Mapref.md)

