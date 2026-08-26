# Business Accounts: Association with a Contact {#_eec596a8-5447-4a65-8f27-c6456db041b2 .concept}

Once a business account has been created, you can associate one or multiple contacts with the business account and select a primary contact for it, as described in the following sections.

## Creation of Contacts Associated with a Business Account { .section}

When you create a business account on the [Leads](CR_30_10_00.md) \(CR301000\) or [Contacts](CR_30_20_00.md) \(CR302000\) form by specifying the business account and contact settings in the **Create Account** dialog box, the system also creates a contact and associates this contact with the business account. On the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, you can view and modify the address details of the contact on the **General** tab and view the contact settings of the contact on the **Contacts** tab. On the **Contacts** tab, you can also create as many contacts associated with the business account as needed.

We recommend that you specify a primary contact associated with the business account, as described in the following section.

## Primary Contact for a Business Account { .section}

In Acumatica ERP, you can specify a primary contact for a business account. A primary contact is the contact whose contact and address settings the system uses as the default contact for the associated records and documents that have contact settings on them, such as an opportunity created for the business account on the [Opportunities](CR_30_40_00.md) \(CR304000\) form, thus ensuring that the contact who officially represents the business is used in these records. A primary contact gives you the following abilities:

-   Quickly add to the system the contact information of a business and the official representative of this business
-   Easily differentiate between the contact information of the business and the official representative of this business
-   View the contact information of both the business and the official representative of this business on the same tab \(the **General** tab\) of the [Business Accounts](CR_30_30_00.md) \(CR303000\) form.

Only one primary contact can be selected for a business account. You can define a primary contact in either of the following ways:

-   On the **General** tab of the [Business Accounts](CR_30_30_00.md) form, you can specify or change the primary contact.
-   On the **Contacts** tab of this form, you can select any contact associated with the business account and then clicking the **Set as Primary** button on the table toolbar. This causes the system to select the check box in the **Primary** column for the new primary contact and to populate the UI elements in the **Primary Contact** section of the **General** tab with the settings of the new primary contact.

For an existing contact on the [Contacts](CR_30_20_00.md) \(CR302000\) form that is a primary contact of a business account, if you clear the value in the **Business Account** box, the system displays a warning about the possibility of changing the primary contact for the account. If you proceed with clearing the **Business Account** box for the contact—thus deleting the link between the contact and the business account—on the **General** and **Contacts** tabs of the [Business Accounts](CR_30_30_00.md) form, the system clears all settings related to the primary contact.

**Parent topic:**[Creating Business Accounts](../UserGuide/CRM_Sales_Creating_Bus_Accounts_Mapref.md)

