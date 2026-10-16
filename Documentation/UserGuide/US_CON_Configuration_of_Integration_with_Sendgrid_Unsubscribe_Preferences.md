# SendGrid Subscription Preferences

With SendGrid integration configured, you can synchronize SendGrid unsubscribe groups for each SendGrid connection with Acumatica ERP and map these groups to marketing categories.

**SendGrid Unsubscribe Groups** represent types of marketing communication that recipients can subscribe to or unsubscribe from on the SendGrid preference page. A mapping associates an unsubscribe group with a marketing category in Acumatica ERP, allowing the related category-level unsubscribe preferences to be applied.

The synchronization of unsubscribe groups works in one direction: from SendGrid to Acumatica ERP.

## Synchronization of Unsubscribe Groups

To retrieve unsubscribe groups from SendGrid, click **Sync Unsubscribe Groups** on the form toolbar of the [SendGrid Connections](SG_20_50_00.md) \(SG205000\) form. The synchronized groups are displayed on the **SendGrid Unsubscribe Groups**tab.

For an unsubscribe group, you can select a marketing category created on the [Marketing Categories](CR_30_50_00.md) \(CR305000\) form and select the **Mapping is Active** check box. An active mapping associates the SendGrid unsubscribe group with the selected marketing category in Acumatica ERP.

**Important:** You can’t map the same marketing category to more than one active SendGrid unsubscribe group for the same connection.

After you activate the mapping, Acumatica ERP can use it when processing mass emails sent through the SendGrid connection.

## Applying Preferences to Mass Emails

When you create a mass email on the [Mass Emails](CR_30_80_00.md) \(CR308000\) form, you can select a marketing category in the **Marketing Category** box. The selected category determines which category-level unsubscribe preferences Acumatica ERP checks when processing the generated emails. For details about using marketing categories in mass emails, see [Mass Emails: Marketing Categories](CRM_Mktg_Managing_Mass_Emails_Marketing_Categories.md).

If the email account selected in the **From** box uses an active SendGrid connection, the selected marketing category also links the mass email to the corresponding SendGrid unsubscribe group. Before sending the mass email, the system checks whether the category is mapped to an active unsubscribe group for the connection.

If the mapping is active, the system applies the category-level unsubscribe preferences associated with the marketing category and the preferences of the mapped SendGrid unsubscribe group.

If no marketing category is selected or the selected category doesn’t have an active mapping, the system displays a warning before sending the mass email. If you continue, the system applies only the category-level unsubscribe preferences that were added manually in Acumatica ERP.

## Using SendGrid Preference Links

On the [Mass Emails](CR_30_80_00.md) \(CR308000\) or [Email Templates](SM_20_40_03.md) \(SM204003\) form, you can use the **Data Field** menu to insert the following SendGrid-managed links in a mass email or email template:

-   **Subscription Preferences:** Opens the SendGrid preference page, where recipients can manage their subscription preferences.
-   **Group Unsubscribe:** Unsubscribes recipients from the SendGrid unsubscribe group associated with the selected marketing category.
-   **Global Unsubscribe:** Unsubscribes recipients from all SendGrid emails.


The system inserts each link as an HTML hyperlink with default link text, which you can modify.

## Processing Subscription Events

When a recipient unsubscribes from a SendGrid unsubscribe group, the system receives this information from SendGrid. Based on this information, the system adds or updates the row with the corresponding unsubscribe preference for the recipient’s email address on the **Marketing Unsubscribes** tab of the [Leads](CR_30_10_00.md) \(CR301000\), [Contacts](CR_30_20_00.md) \(CR302000\), and [Business Accounts](CR_30_30_00.md) \(CR303000\) forms. For this row, the **Source** column displays *SendGrid*. When the recipient subscribes to the group again with this email address, the system removes the row with the corresponding unsubscribe preference from the **Marketing Unsubscribes** tab.

When a recipient globally unsubscribes from SendGrid emails, the system selects the **Do Not Email** check box for the corresponding lead, contact, or business account. The existing category-level unsubscribe preferences aren’t changed.

**Parent topic:**[Integrating Acumatica ERP with SendGrid](../UserGuide/US_MNG_Integrating_with_SendGrid.md)

