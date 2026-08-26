# Opportunities: Settings {#_56c4f179-efdf-4a93-a504-3d13ecee9159 .concept}

You can use and modify the settings on the [Opportunities](CR_30_40_00.md) \(CR304000\) form to track the information related to the opportunity, as described below.

| | |
|---|---|
|Summary area|Change the currency. For details, see [Opportunity Management: Currency in Opportunities and Sales Quotes](CRM_Sales_Managing_Opportunities_Currency_Oppties_Sales_Quotes.md).|
|**Activities** tab|Work with emails, tasks, and activities associated with an opportunity. For details, see [Managing Emails and Activities](CRM_Mktg_Managing_Emails_Activities_Mapref.md).|
|**Details** tab|Specify the details of the products or services. For details, see [Opportunity Management: Products and Services in an Opportunity](CRM_Sales_Managing_Opportunities_Products_Services.md).|
|**Additional Info** tab|Modify the settings such as CRM-related, tax, financial, and shipping. For details, see [Shipping Settings in Opportunities](#_9fcb60e6-7fdb-4c2a-9ae2-7ed7fc7ac336) and [Tax Management Overview](TX__MNG_Tax_Module_Overview.md).|
|**Quotes** tab|Create sales quotes and project quotes associated with the opportunity. For details, see [Opportunity Management: Sales Quotes](CRM_Sales_Managing_Opportunities_Sales_Quotes.md) and [Project Quotes: Creation of Project Quotes from Opportunities](Projects_Project_Quotes_Opportunities.md).|
|**Contact** tab|Review and modify the customer's contact information. For details, see[Copying of Settings from Contacts and Business Accounts to Opportunities](#_21b4d30f-b0a0-4a81-9645-c46a166342c4), [Opportunities: Address Management Through a Third-Party Provider](CRM_Sales_Creating_Opportunities_Address_Validation.md).|
|**Addresses** tab|View and modify the ship-to contact and address settings and the bill-to contact and address settings.|
|**Attributes** tab|Review the list of attributes. For details, see [Attributes](CS__con_Attributes.md) and [User-Defined Fields](CS__con_User_Defined_Fields.md).|
|**Taxes** tab|Review the taxes related to the products or services. For details, see [Tax Management Overview](TX__MNG_Tax_Module_Overview.md). The settings on this tab depend on location settings. For details, see [Customers: Customer Locations](AR__CON_Customer_Locations.md).|
|**Discounts** tab|Review the discounts related to the products or services. This tab is available only if the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.|
|**Relations** tab|Review relations between the opportunity and any associated entities. For details, see [Managing Relations](CRM_Managing_Relations_Mapref.md).|

## Copying of Settings from Contacts and Business Accounts to Opportunities {#_1de6b969-1a09-4b77-be52-e830df7b6246 .section}

In Acumatica ERP, contact and address settings are copied to an opportunity when you specify an account in the **Business Account** box in the Summary area of the [Opportunities](CR_30_40_00.md) \(CR304000\) form. The contact information from the business account or contact specified in the Summary area of the [Opportunities](CR_30_40_00.md) form is displayed on the **Contact** tab as read-only by default, but you can modify it if you select the **Override** check box on this tab.

**Important:** If you modify the contact or address settings of a contact or business account associated with an opportunity on the [Contacts](CR_30_20_00.md) \(CR302000\) or [Business Accounts](CR_30_30_00.md) \(CR303000\) form, the settings displayed on the **Contact** tab of the [Opportunities](CR_30_40_00.md) form will not be changed unless you select and then clear the **Override** check box on the **Contact** tab of the [Opportunities](CR_30_40_00.md) form.

Also, if you select a different business account for an opportunity, the system replaces the existing contact settings specified on the **Contact** tab of the [Opportunities](CR_30_40_00.md) form with the new settings of the contact associated with the newly selected business account.

The overriding of settings applies to all the settings on the **Contact** tab of the [Opportunities](CR_30_40_00.md) form.

## Shipping Settings in Opportunities {#_cabc3b5f-3857-4f1b-8826-aa84bb93d029 .section}

An opportunity’s shipping settings appear in the **Ship-To Address** and **Ship-To Contact** sections of the **Addresses** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) form. When you create an opportunity, the system populates the shipping settings based on the conditions described below.

**Project-Related Opportunities with No Account or Contact**

An opportunity may be project-related—that is, a project is specified on the **Additional Info** tab of the [Opportunities](CR_30_40_00.md) form. If a project-related opportunity isn't assigned to a business account or contact, the state of the **Calculate Project-Specific Taxes** check box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form determines whether the system populates shipping settings:

-   If the check box is selected, the system copies the **Ship-To Address** settings from the **Addresses** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. The **Ship-To Contact** settings remain empty.
-   If the check box is cleared, neither the **Ship-To Address** settings nor the **Ship-To Contact** settings are populated.

**Opportunities Created from or Assigned to a Business Account**

If an opportunity is created from a business account \(or a business account is later assigned to it\), the system copies the **Ship-To Address** settings from the **Shipping** tab of the [Business Accounts](CR_30_30_00.md) \(CR303000\) form. The **Ship-To Contact** settings are copied from the **Account Address** section on the **General** tab of the [Business Accounts](CR_30_30_00.md) form.

The same logic applies to a project-related opportunity created from a business account when the **Calculate Project-Specific Taxes** check box is cleared on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. If the check box is selected, the **Ship-To Address** settings are copied from the **Addresses** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. The **Ship-To Contact** settings are still copied from the **Account Address** section of the [Business Accounts](CR_30_30_00.md) form.

**Changing of the Default Location of the Opportunity’s Account**

If you change the default location of the business account an opportunity is created from, the system copies the **Ship-To Address** settings of new location from:

-   The [Customer Locations](AR_30_30_20.md) \(AR303020\) form
-   The [Account Locations](CR_30_30_10.md) \(CR303010\) form if no customer has been created for the specified business account

The **Ship-To Contact** settings are copied from the **Account Address** section of the [Business Accounts](CR_30_30_00.md) form.

**An Opportunity Converted from a Lead**

If an opportunity is converted from a lead, the system copies the **Ship-To Address** and **Ship-To Contact** settings from the **Address** and **Contact** sections of the [Leads](CR_30_10_00.md) \(CR301000\) form.

**An Opportunity Without Related Records**

If an opportunity either isn't assigned to any business account or contact and isn't related to a project, the **Ship-To Address** and **Ship-To Contact** settings remain empty.

**Overriding of Shipping Settings**

The settings in the **Ship-To Address** or **Ship-To Contact** sections can be modified if you select the **Override Address** or **Override Contact** check box. If one or both check boxes is selected and you change the business account, the system prompts you to confirm that you want to override the settings on the **Addresses** tab with those of the new business account. If you click **No**, the previously specified settings are retained; in this case, the corresponding check box remains selected to indicate that the settings of the opportunity differ from those of the related contact, business account, or location.

**Tip:** If you later use the [Account Locations](CR_30_30_10.md) or [Customer Locations](AR_30_30_20.md) form to modify the account location’s contact or address settings, the system doesn’t update the opportunity’s settings on the **Addresses** tab of the [Opportunities](CR_30_40_00.md) form unless you select and then clear the check box in the appropriate section.

**Population of Other Address Settings**

To populate the remaining sections on the **Addresses** tab of the [Opportunities](CR_30_40_00.md) form, the system copies the corresponding settings from:

-   The source record if the opportunity is created or converted from another record.
-   The business account location specified on the **General** tab of the [Account Locations](CR_30_30_10.md) form.

## Shipping Settings in Quotes, Sales Orders, and Invoices { .section}

The shipping settings specified for an opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form are copied to any sales order, invoice, or quote you create based on that opportunity.

If a primary quote exists for an opportunity, the shipping settings specified for the primary sales quote on the **Addresses** tab of the quote are synchronized with the shipping settings specified for the opportunity on the **Addresses** tab of the opportunity in both directions.

On the [Opportunities](CR_30_40_00.md) form, if you modify the shipping settings specified for an opportunity that is already associated with a sales order, invoice, or non-primary sales quote, the changes you have made to the opportunity will not be reflected in the settings of the associated document. Similarly, changes in the shipping settings specified for a sales order, invoice, or non-primary sales quote are not reflected in the settings of the associated opportunity.

**Parent topic:**[Creating Opportunities](../UserGuide/CRM_Sales_Creating_Opportunities_Mapref.md)

