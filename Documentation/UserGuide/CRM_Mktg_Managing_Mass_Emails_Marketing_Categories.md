# Mass Emails: Marketing Categories

Marketing categories help you organize mass emails by communication type, such as promotions, product updates, newsletters, or events. If you assign a marketing category to a mass email, Acumatica ERP uses the recipients’ category-level unsubscribe preferences to determine whether each generated email can be sent.

## Category-Level Unsubscribe Preferences

Before you can use a marketing category in mass emails, you need to create it on the [Marketing Categories](CR_30_50_00.md) \(CR305000\) form.

After you create the needed marketing categories, you can manage category-level unsubscribe preferences for recipient email addresses on the **Marketing Unsubscribes** tab of the [Leads](CR_30_10_00.md) \(CR301000\), [Contacts](CR_30_20_00.md) \(CR302000\), and [Business Accounts](CR_30_30_00.md) \(CR303000\) forms.

Each row on the **Marketing Unsubscribes** tab of these forms represents an explicit unsubscribe preference. To manually unsubscribe a lead, contact, or business account's email address from a marketing category, you add a row and select the email address and category. Currently, marketing categories support only the *Email* communication channel. These preferences are maintained separately for each recipient email address and marketing category. If a recipient has multiple email addresses, each address can have different preferences.

**Important:** You can create only one unsubscribe preference for each combination of recipient email address, marketing category, and communication channel.

To subscribe the email address to the marketing category again, you delete the corresponding row. If no row exists for an email address and marketing category, the email address is treated as subscribed to that category.

## Using Marketing Categories in Mass Emails

On the [Mass Emails](CR_30_80_00.md) \(CR308000\) form, you can select an active marketing category in the **Marketing Category** box. When you send the mass email with the selected marketing category, the system checks the category-level unsubscribe preferences of the included recipient addresses. If any address included in a generated email is unsubscribed from the selected category, the system does not send that generated email.

If you send a mass email with a marketing category, you can view the selected category in the generated email activity on the [Email Activity](CR_30_60_15.md) \(CR306015\) form.

**Parent topic:**[Managing Mass Emails](../UserGuide/CRM_Mktg_Managing_Mass_Emails_Mapref.md)

