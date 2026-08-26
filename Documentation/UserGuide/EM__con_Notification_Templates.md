# Email Templates {#_b95a9c38-deb7-4735-8d9a-e47c4702adf1 .concept}

You can configure Acumatica ERP to automatically send template-based email notifications to users on different occasions. For example, a new user may receive an email with the user credentials to be used to access the system, or a user can receive a notification that a record has been approved and needs further processing. Also, you can use template-based emails in mass mailings. For an example of a notification template for notifications about changes to a case made through the Self-Service Portal, see [To Add a Notification Template for Changes in the Contents of a Case](EM__how_Case_Notification.md).

In addition to the standard set of templates that comes with Acumatica ERP, you can create new templates for notifications or emails by using the [Email Templates](SM_20_40_03.md) \(SM204003\) form. On the [Email Preferences](SM_20_40_01.md) \(SM204001\) form, you can specify the default templates for welcoming new users and for helping users with sign-in and password recovery.

**Tip:** You can create notification templates directly from a data entry form. You open the entry form and select **Settings** &gt; **Notifications**. For details, see [Business Events: Use of a Data Entry Form as a Source](SA_Using_Business_Events_Data_Entry_Source_Concept.md).

Also, you can create notification templates directly from a report form. You open the report form, go to the **Email Notifications** tab, and click **Schedule Report** on the table toolbar.

## Using Placeholders in Email Templates { .section}

To specify the recipients of an email on the [Email Templates](SM_20_40_03.md) \(SM204003\) form, you can use the data fields \(as placeholders\) that hold email addresses; these data fields should be separated with semicolons. Their values are retrieved when the system sends the email. In the **To**, **CC**, and **BCC** boxes, you can specify an email address as follows:

-   A specific user in the system. To do this, you open the lookup table, search for the needed username, and double-click it. The system adds it as *EMAIL\(\(&lt;username&gt;\)\);*.
-   A specific email address that you manually type in the box, such as `sales@acumatica.com`.
-   A placeholder for an email address stored in the system, which you add by opening the lookup table and going to the **Screen Fields** tab. On the tab, you find the needed database field in a node of the entity node. The contents of the node are provided by the data entry form or generic inquiry form selected in the **Screen** box of the form. This adds the placeholder associated with the database field—for example, *\(\(customer.DefContactID.EMail\)\)*.

In the body of the email template \(on the **Message** tab\), you can insert as a placeholder any data field of the selected form. To do this, you click **Insert Data Field** &gt; **Data Field** on the formatting toolbar and select the data field in the appropriate node.

Suppose that you want the system to insert a user-defined email signature from the [User Profile](SM_20_30_10.md) \(SM203010\) form into all email notifications of the signed-in user. To accomplish this, you click **Insert Data Field** &gt; **Data Field** on the formatting toolbar of the **Message** tab, and then double-click **Email Signature** in the **General Info** node. The system adds *\(\(GeneralInfo.MailSignature\)\)* to the body of the email template. When a signed-in user sends an email notification, the system includes the user-defined email signature in the body of the message.

**Tip:** Depending on the type of form \(data entry or generic inquiry\) selected in the **Screen** box, different separators are used between fields in placeholders.

For a data entry form, in the email body and in the **Subject**, **To**, **CC**, and **BCC** boxes, a period separates the table from the field—for example, \(\(Approval.OwnerID.Title\)\).

For a generic inquiry form:

-   In the **To**, **CC**, and **BCC** boxes:
    -   An underscore separates the table from the field, such as *\(\(Contact\_eMail\)\)*.
    -   An exclamation mark separates the field from its selector’s fields, such as \(\(ARRegister\_refNbr!ApproverID!EMail\)\).
-   In the **Subject** box and the email body, an underscore separates the table name and the field name—for example, *\(\(SOOrder\_orderNbr\)\)*.

For email templates used as subscribers of business events, you can insert as a placeholder any data field whose value was retrieved before the business event occurred. To do this, you click **Insert Data Field** &gt; **Previous Data Field** on the formatting toolbar and select the needed data field. You can use this ability to demonstrate how the value of the data field has changed—for example, if a case’s status has changed from *New* to *Open*.

**Tip:** Any template that you want to use as a welcome template for a new Acumatica ERP user must have four placeholders specified in the following order: *\(\(Company\)\)*, *\(\(Name\)\)*, *\(\(Username\)\)*, and *\(\(Password\)\)*. To see an example, view the *User Welcome Notification* template.

## Including Document Details { .section}

You can include information from document detail lines in notifications. If you want to simply list document details, you add the `foreach view="view_name"` loop to the body of the notification template in HTML format. For instance, you can use the following construction for notifications about opportunities.

```
<foreach view="Products"> 
    ((Products.InventoryID)) - ((Products.Quantity)) - ((Products.CuryExtPrice)) <br> 
</foreach>
```

If you want to list details in a table or as a numbered or unordered list, you can use the `data-foreach-view="view_name"` attribute. The attribute indicates that the markup embedded inside the tag will be repeated for all document lines, as shown in the following example for notifications about opportunities. The attribute is supported for the following HTML tags: `<tr>`, `<td>`, `<li>`, and `<div>`. In the following example, when the email content is generated, all tags included in the `<table>` tag are repeated for every record in the`"Products"` view.

```
<table border="1" >
	<tbody>
		<tr data-foreach-view="Products" >                    
			<td class="warncell">((Products.InventoryID)) </td>
			<td class="warncell">((Products.Quantity)) </td>
			<td class="warncell">((Products.CuryExtPrice)) </td>
		</tr>
	</tbody>
</table>
```

**Attention:** You can use the `"data-foreach-view"` and `foreach` attributes in the notification templates used for business events, but leave empty the view name in the attribute: `<tr data-foreach-view="">` or `foreach view=""`. If you specify the view name in this attribute, the system will insert the values of only the first record in the email.

## Associating an Email Template with an Entity Type { .section}

You can associate an email template with a specific entity type. As a result, emails created with the email template will also be linked to a specific record of that entity type \(that is, the record for which a user created an email with the template\) and shown on the **Activities** tab of the respective entity type's form for the record. To set up this association, you need to select the entity type's unique identifier—*noteID*—in the **Link to Entity** box on the [Email Templates](SM_20_40_03.md) \(SM204003\) form, as described in the following example.

Suppose that you have an email template for which *Leads \(CR3010PL\)* is selected in the **Screen** box of the [Email Templates](SM_20_40_03.md) form. You want to associate the email template with the lead entity type. To do this, you click the magnifier button in the **Link to Entity** box, expand the **Lead** node, and select *noteID* in the list of fields. The system will insert *\(\(Lead\_noteID\)\)* in the **Link to Entity** box. When a user creates an email by using this email template, the email will be associated with the lead for which the user created the email.

**Tip:** If the *noteID* field is not available in the **Link to Entity** box on the [Email Templates](SM_20_40_03.md) form, you may need to add this field on the **Results Grid** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form for the respective generic inquiry form.

-   **[To Add a Notification Template for Changes in the Contents of a Case](../UserGuide/EM__how_Case_Notification.md)**  


**Parent topic:**[Managing Emails](../UserGuide/EP__con_Email_Management.md)

