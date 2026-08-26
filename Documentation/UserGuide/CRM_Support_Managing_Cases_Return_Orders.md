# Case Management: Return Orders {#_44c7e330-b079-4f30-8cc3-e449a4a7fd92 .concept}

In Acumatica ERP, while you are working with a case, you can create a return order for the customer directly from the case. You can configure the system to monitor the statuses of case-related return orders and generate notifications for users when orders are closed.

## Creation of Return Orders { .section}

You can create a return order based on a case on the [Cases](CR_30_60_00.md) \(CR306000\) form by clicking **Create Return Order** on the More menu. In the **Create Return Order** dialog box, which opens, you can specify the type of the order to be created on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. In the **Return Order Type** box, only order types with the *RMA Order* automation behavior are available for selection. The automation behavior of an order type is specified in the [Order Types](SO_20_10_00.md) \(SO201000\) form. By default, the system inserts in this box the order type specified in the **Default Return Order Type** box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form if one has been specified. This box appears on the [Sales Orders Preferences](SO_10_10_00.md) form only if the *Customer Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

After you specify the order type and click **Create** in the dialog box, the system checks for the following issues before creating the return order:

-   If the **Business Account** box on the [Cases](CR_30_60_00.md) form is empty or contains a business account that has not been extended to be a customer, the system shows an error message indicating that the business account selected in the case must have the *Customer* or *Customer &amp; Vendor* type.
-   If you have insufficient access rights to create a return order on the [Sales Orders](SO_30_10_00.md) form, the system shows an error message.
-   If the *Customer and Vendor Visibility Restriction* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, the creation of return orders for the customer that is selected in the case might be restricted based on the branch specified for the customer in the **Restrict Visibility To** box \(**Financial** tab\) of the [Customers](AR_30_30_00.md) \(AR303000\) form. If this branch is different than your current branch, the system shows an error message indicating that in the user's current branch, the creation of a return order for this customer is restricted.

If no error is generated, the system opens the [Sales Orders](SO_30_10_00.md) form for the creation of a new return order. The system inserts values into the boxes in the Summary area of the form as follows:

-   **Order Type**: The system inserts the order type that was specified in the **Create Return Order** dialog box. If you change the order type in the return order, the other predefined values will be removed, and the relation between the return order and the case will be lost.
-   **Customer**: The system inserts the customer that was specified in the **Business Account** box of the [Cases](CR_30_60_00.md) form for the case.
-   **Location**: The system inserts the location that was specified in the **Location** box in the Summary area of the [Cases](CR_30_60_00.md) form for the case. If no location is specified in this box, the system inserts the *MAIN* location of the customer by default.

    This box appears on the form only if the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

-   **Contact**: The system copies the contact that was specified in the **Contact** box of the [Cases](CR_30_60_00.md) form. If this box is empty for the case, the system leaves the box empty for the return order.
-   **Description**: The system inserts the text that was entered into the **Subject** box of the [Cases](CR_30_60_00.md) form.

The system also creates a new relation between the case and the return order. That is, on the **Relations** tab of the [Cases](CR_30_60_00.md) form, the system adds a record for the sales order with the *Derivative* role and the *Sales Order* type. On the **Relations** tab of the [Sales Orders](SO_30_10_00.md) form, the system adds a record for the case with the *Source* role and the *Case* type.

You can view the list of case-related return orders on the Return Orders \(CR306017\) predefined generic inquiry form. The associated generic inquiry has the *CR-Return Orders* inquiry title specified on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.

## Notifications About the Closure of Case-Related Return Orders { .section}

You can monitor the closure of case-related return orders by using the following predefined business events on the [Business Events](SM_30_20_50.md) \(SM302050\) form:

-   *Return Order - Note*: This business event causes the generation of a note notification.
-   *Return Order - Email*: This business event causes the generation of an email notification.

**Note:** By default, the business events are inactive; a system administrator can activate them. The administrator can also modify these events to meet the company’s business needs.

These business events cause the system to generate notifications if the following conditions are met:

-   The status of a case-related return order has been changed to *Completed*.
-   The related case is active. That is, its status is *New*, *Open*, or *Pending Customer*.

The type of notification depends on whether an owner has been assigned to a related case, as described below:

-   If the case has no owner, the system generates a note notification. That is, it creates an activity of the *Note* type on the [Activity](CR_30_60_10.md) \(CR306010\) form and adds a row with a link to this activity on the **Activities** tab of the [Cases](CR_30_60_00.md) \(CR306000\) form.
-   If the case has an owner, the system generates both a note notification \(as described above\) and an email notification. The system generates an email notification by creating an activity of the *Email* type on the [Email Activity](CR_30_60_15.md) \(CR306015\) form. The system sends the email to the owner of the case; it also adds a row with a link to this activity on the **Activities** tab of the [Cases](CR_30_60_00.md) form.

If multiple return orders are related to a particular case, the system generates the appropriate notifications for each return order.

**Parent topic:**[Managing Cases](../UserGuide/CRM_Support_Managing_Cases_Mapref.md)

