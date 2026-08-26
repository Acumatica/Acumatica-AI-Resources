# Opportunity Management: Sales Quotes {#_de2d7075-64dc-418b-8548-97cb2f839502 .concept}

In Acumatica ERP, you can use sales quotes to present an offer based on an opportunity to a prospect or customer; the sales quote includes a list of products and services offered at specific prices and with specific discounts, taxes, and other terms.

## Creation of Sales Quotes { .section}

A sales quote is a document you create in Acumatica ERP on the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form. You can create sales quotes in the system if the *Sales Quotes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

You can create any number of sales quotes for an opportunity as you negotiate the deal with the prospect or customer. A sales quote can be printed or emailed to the specified customer for review. A sales quote can be selected as primary for an opportunity. When the customer accepts an offer, at least one sales quote must be selected as the primary one.

You can start creating a sales quote in any of the following ways:

-   By clicking **Create Quote** on the form toolbar of the [Opportunities](CR_30_40_00.md) \(CR304000\) form while viewing the opportunity the quote will be based on. This opens the **Create Quote** dialog box, where you can specify basic settings. When you click **Create and Review**, the system closes the dialog box and opens the [Sales Quotes](CR_30_45_00.md) form with applicable settings filled in, so that you can view and edit the created sales quote.
-   By clicking **Create Quote** on the table toolbar of the **Quotes** tab on the [Opportunities](CR_30_40_00.md) form while viewing the opportunity the quote will be based on. This opens the **Create Quote** dialog box, where you can specify the basic settings of the quote.
-   By clicking **New Record** on the form toolbar of the Sales Quotes \(CR3045PL\) form. In this case, you need to enter the settings of the sales quote manually.
-   By clicking **Add New Record** on the form toolbar of the [Sales Quotes](CR_30_45_00.md) form. In this case, you also need to enter the settings of the sales quote manually.
-   By selecting an existing quote and then clicking **Copy Quote**, which is available on the table toolbar of the **Quotes** tab on the [Opportunities](CR_30_40_00.md) form and on the More menu or on the form toolbar of the [Sales Quotes](CR_30_45_00.md) form. This command causes the system to open the **Copy Quote** dialog box, where you can specify the needed settings for a new quote. When you click **OK** in the dialog box, the system copies the settings of the selected quote to a new one.

If you create a sales quote based on an opportunity or another sales quote, the system copies the settings specified on the **Contact**, **Additional Info**, **Addresses**, and **Taxes** tabs of the [Opportunities](CR_30_40_00.md) \(CR304000\) form and inserts them to a new sales quote that is generated on the [Sales Quotes](CR_30_45_00.md) form.

If any automatic group and document discounts has been specified for lines on the **Details** tab on the [Sales Quotes](CR_30_45_00.md) form, the system will apply these discounts even if the value in the **Inventory ID** column for a line is empty.

## Primary Sales Quotes { .section}

When a sales quote is created for an opportunity, the system sets this sales quote as primary by selecting the **Primary** check box in the Summary area on the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form and in the row that has the settings of the sales quote on the **Quotes** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

If multiple sales quotes are created for an opportunity, one of the sales quotes must be set as the primary, which you can do either during the creation of a quote or by clicking **Set as Primary** on the More menu of the [Sales Quotes](CR_30_45_00.md) form or on the table toolbar of the **Quotes** tab of the [Opportunities](CR_30_40_00.md) form.

An opportunity uses the primary sales quote as the source of various settings on the [Opportunities](CR_30_40_00.md) form, such as the list of products and services, the currency and the currency rate, the location, billing address, billing information, contact information, tax details, and discount details. If you change the sales quote set as the primary sales quote for the opportunity, these settings are changed for the opportunity to those of the new primary sales quote.

If a sales quote is the primary one for the opportunity and its status has changed from *Draft* to any other status, the **Business Account** box is unavailable for editing both for the primary sales quote on the [Sales Quotes](CR_30_45_00.md) form and for the opportunity on the [Opportunities](CR_30_40_00.md) form. If the status of a non-primary sales quote has changed from *Draft* to any other status, the **Business Account** box is unavailable for editing only for this sales quote.

## Sales Quote Activities { .section}

On the **Activities** tab of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form, you can create activities associated with the selected sales quote. On the **Activities** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) form, activities related to the selected opportunity are listed, along with activities related to the sales quotes associated with the opportunity.

## Processing of a Sales Quote Through Statuses { .section}

In Acumatica ERP, as a sales quote is being processed by a salesperson, it progresses through various statuses. The current status of the sales quote is displayed in the **Status** box in the Summary area of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form. Because the system updates the status of the sales quote during processing, the **Status** box is unavailable for editing.

A sales quote can have one of the following statuses:

-   *Draft*: The sales quote is being prepared and can be edited. This is the default status of a new sales quote.
-   *Sent*: The quote has been emailed to the customer—that is, an email activity with the quote attached to it has been created and sent to the customer contact.

    **Note:** The *Sent* status does not guarantee that the sales quote has been delivered to the recipient or has been read.

-   *Pending Approval*: The sales quote requires an approval or multiple approvals, which are determined based on the approval map assigned to sales quotes.
-   *Approved*: The sales quote is approved within the company.
-   *Rejected*: The sales quote has been rejected by an approver within the company.
-   *Accepted by Customer*: The sales quote has been accepted by the customer.
-   *Converted*: The sales quote has been converted to a sales order or invoice, and no further work on the quote is planned.
-   *Declined by Customer*: The customer has rejected the offer presented in the sales quote.

You can also see the statuses of a particular opportunity’s sales quotes on the **Quotes** tab \(**Status** column\) of the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

## Approval of Sales Quotes { .section}

Approval of sales quotes can be set up in the system if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

Sales quotes require approval if an approval map for sales quotes has been specified in the **Approval Map** box of the **General** tab \(**Quote Approval Settings** section\) of the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form.

With this configuration performed, you can submit a sales quote with the *Draft* status for approval by clicking **Request Approval** on the form toolbar of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form. When a sales quote has been submitted for approval, the **Approve** and **Reject** buttons are displayed on the form toolbar. The information on approvals of a sales quote is added to the **Approvals** tab of the form.

The following settings of a sales quote that has the *Pending Approval* status cannot be modified:

-   The business account, location, and settings related to amounts in the Summary area
-   The settings on the **Details** tab
-   The settings on the **Addresses** tab
-   The settings on the **Taxes** tab
-   The settings on the **Discounts** tab

An assigned approver can approve or reject the sales quote by clicking **Approve** or **Reject** on the form toolbar of the [Sales Quotes](CR_30_45_00.md) form. After a sales quote has been approved, it can be sent to the customer.

## Emailing of a Sales Quote { .section}

You can send a sales quote to a contact of the customer or prospective customer for review by clicking **Send** on the More menu of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form. The system creates an activity of the *Email* type, attaches the [Sales Quote](CR_60_45_00.md) \(CR604500\) report \(which is a printable version of the sales quote\) to the email, sends the email, and changes the status of the quote to *Sent*. A row with the details of the email is added on the **Activities** tab of the [Sales Quotes](CR_30_45_00.md) form.

The email is generated automatically in accordance with the mailing settings specified for customer relationship management \(CRM\) in Acumatica ERP, as described in [Emails and Activities: Emails](CRM_Mktg_Managing_Emails_Activities_Emails.md).

## Mass-Emailing of Sales Quotes { .section}

You can email multiple sales quotes to each customer or prospective customer at once on the [Print/Email Sales Quotes](CR_50_45_45.md) \(CR504545\) form. To do this, select the *Send* action, and specify any other selection criteria to narrow the list of sales quotes.

Then select the **Send Documents in One Email** check box. If you want to combine each customer’s processed sales quotes into one PDF file, select the **Combine into One File** check box. The system will attach this file to the email.

**Attention:**

-   You can include up to 100 documents in a single email or combine up to 100 documents into one file.
-   If you select more than 100 documents, the system creates multiple emails, each within this limitation.

To send emails with sales quotes, do one of the following:

-   To email only particular sales quotes, select the unlabeled check boxes in the rows of the sales quotes you want to email. Then click **Process** on the form toolbar.
-   To email all the listed sales quotes, click **Process All**.

## Printing of a Sales Quote { .section}

You can print a sales quote by clicking **Print Quote** on the More menu of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form. The system opens the printable version of the sales quote on the [Sales Quote](CR_60_45_00.md) \(CR604500\) form, where you can click *Print*.

## Mass-Printing of Sales Quotes { .section}

You can print multiple sales quotes on the [Print/Email Sales Quotes](CR_50_45_45.md) \(CR504545\) form. To do this, select the *Print Quote* action and specify any needed selection criteria to narrow the list of quotes to be displayed. If the *DeviceHub* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can select the printer and specify the number of copies to be printed.

Then select the unlabeled check boxes in the rows of the quotes you want to print and click **Process** on the form toolbar. Alternatively, click **Process All** to print all listed quotes.

## Location-Related Settings of a Sales Quote { .section}

The location-related settings of a sales quote are specified in the **Ship-To Address** and **Ship-To Contact** sections of the **Addresses** tab of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form. When you create the sales quote, the system inserts the location-related settings, which it copies from the same sections of the **Addresses** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) form for the associated opportunity.

On the **Addresses** tab of the [Sales Quotes](CR_30_45_00.md) form, the **Override Contact** check box in the **Ship-To Contact** section and the **Override Address** check box in the **Ship-To Address** section are cleared, meaning that the location-related settings are synchronized between the sales quote and the opportunity. However, you can update these settings with new location-related settings on the [Sales Quotes](CR_30_45_00.md) form in any of the following ways:

-   By selecting the **Override Contact** or **Override Address** check box in the **Ship-To Contact** or **Ship-To Address** section \(or in both sections\) and changing the settings manually.
-   By specifying a different business account in the **Business Account** box or another location of the business account in the **Location** box of the Summary area.

## Opportunities with Quotes for Multiple Business Accounts { .section}

If an opportunity has multiple sales quotes, the business accounts specified for these sales quotes on the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form can differ from the business account specified for the opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

**Important:**

A sales quote can have a different business account than that of the associated opportunity only if the following conditions are met:

-   The quote \(whether it is primary or non-primary\) has the *Draft* status.
-   The opportunity associated with the sales quote has the *New* or *Open* status.

In an opportunity that has sales quotes for different prospects or customers, on the **Quotes** tab of the [Opportunities](CR_30_40_00.md) form, you can track the business account, location, and contact of each sales quote in the following columns: **Business Account**, **Location**, and **Contact**.

If the *Row-Level Security* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the access to a business account selected in an opportunity may be restricted for your current user account. In this case, access to any sales quotes associated with this opportunity will also be restricted. This applies even if the business account of the sales quote is different from the one in the opportunity, or if no business account is selected in the sales quote. You can only see these sales quotes on the **Quotes** and **Relations** tabs of the [Opportunities](CR_30_40_00.md) form for the associated opportunity.

## Relations Between a Sales Quote and Its Associated Records { .section}

As you work with a sales quote in Acumatica ERP, you can track the records associated with the quote on the **Relations** tab of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form. For details, see [Managing Relations](CRM_Managing_Relations_Mapref.md).

**Parent topic:**[Managing Opportunities](../UserGuide/CRM_Sales_Managing_Opportunities_Mapref.md)

