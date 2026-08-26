# Opportunity Management: To Create an Opportunity-Based Sales Order {#_c55b3631-dc4f-4e98-acbe-abec5f3a1109 .task}

The following activity demonstrates how to create a sales order that is based on an opportunity in Acumatica ERP.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company.Your potential customer, the Greenex Cafe, would like to purchase apple and orange jams, and both companies have agreed to the deal. You need to close the opportunity as won, extend the *GREENEX* business account as a customer, create a sales order based on the opportunity, and send the sales order to the customer.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled. This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and marketing campaigns.
-   The *Sale of jams to Greenex Cafe* opportunity has been created on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.
-   On the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, the *GREENEX* business account with the *Business Account* type has been created.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *APJAM96* and *ORJAM96* stock items, which hold the settings of apple and orange jams, have been created.
-   On the **Details** tab of the [Opportunities](CR_30_40_00.md) form, five *APJAM96* and five *ORJAM96* stock items have been added to the *Sale of jams to Greenex Cafe* opportunity.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Opportunities](CR_30_40_00.md) \(CR304000\) form, close the *Sale of jams to Greenex Cafe* opportunity as won.
2.  Starting on the [Opportunities](CR_30_40_00.md) form, extend the *GREENEX* business account to be a customer, and create a sales order associated with the *Sale of jams to Greenex Cafe* opportunity, which opens the [Sales Orders](SO_30_10_00.md) \(SO301000\) form with the sales order.
3.  Starting on the [Sales Orders](SO_30_10_00.md) form, send the sales order to the customer by email, which opens the [Email Activity](CR_30_60_15.md) \(CR306015\) form.

## System Preparation { .section}

Before you start creating an opportunity-based sales order, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded
2.  Sign in to the system as sales manager David Chubb by using the following credentials:
    -   **Username**: *chubb*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Closing an Opportunity as Won { .section}

To close the *Sale of jams to Greenex Cafe* opportunity as won, do the following:

1.  Open the *Sale of jams to Greenex Cafe* opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

    **Tip:** To search for a record in a list of records, you can enter a keyword or phrase in the Search box of the table toolbar. The system will find all the records that match your search criteria and display these records in the table.

2.  On the form toolbar, click **Close as Won**.
3.  In the **Details** dialog box, which opens, do the following:
    1.  In the **Reason** box, select *Order Placed*.
    2.  In the **Stage** box, select *Won*.
    3.  Click **OK**. The system closes the dialog box. Most of the settings of the opportunity on the [Opportunities](CR_30_40_00.md) form become unavailable for editing.

You have closed the opportunity as won.

## Step 2: Creating a Sales Order { .section}

The creation of a sales order requires the selection of a customer. To meet this requirement, you need to extend the *GREENEX* business account to be a customer. You can do this while you create an opportunity-based sales order as follows:

1.  While you are still viewing the *Sale of jams to Greenex Cafe* opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form, on the More menu, under **Record Creation**, click **Create Sales Order**.
2.  In the **Create Sales Order** dialog box, which opens, do the following:
    1.  In the **Order Type** box \(**Sales Order** section\), make sure that *SO* is selected.
    2.  In the **Customer Class** box \(**Customer** section\), select *DEFAULT*.
    3.  In the **Customer Email** box, make sure that the *cathy@greenex.example.com* email address is inserted.
    4.  Click **Create and Review**. The system verifies that all required boxes in the dialog box are filled in, closes the dialog box, creates the new customer based on the existing business account, and opens the [Sales Orders](SO_30_10_00.md) \(SO301000\) form with a new sales order that contains many of the settings copied from the opportunity. Notice that on the **Details** tab, the lines contain the product data specified on the same tab of the opportunity.
3.  On the form toolbar, click Save and Close. The system closes the [Sales Orders](SO_30_10_00.md) form and returns you to the [Opportunities](CR_30_40_00.md) form.
4.  On the Summary area, click the link in the **Business Account** box. The [Business Accounts](CR_30_30_00.md) \(CR303000\) form opens. On the **General** tab, notice that the type of the business account is now *Customer*.
5.  On the **Relations** tab of the [Opportunities](CR_30_40_00.md) form, the system has added a row that holds the basic settings of the newly created sales order. For details, see [Managing Relations](CRM_Managing_Relations_Mapref.md).

## Step 3: Sending the Sales Order to the Customer by Email { .section}

To send the sales order to the customer by email, do the following:

1.  While you are still viewing the *Sale of jams to Greenex Cafe* opportunity on the **Relations** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) form, in the **Document** column, click the link to the sales order that you have created in the previous step. The system opens the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form in a new browser tab.
2.  On the More menu, under **Printing and Emailing**, click **Print Sales Order**. The system opens the [Sales Order](SO_64_10_10.md) \(SO641010\) report, which displays a printable version of the sales order in a new browser tab.
3.  On the report toolbar, click **Send**.
4.  On the [Email Activity](CR_30_60_15.md) \(CR306015\) form, which opens in a pop-up window, do the following:
    1.  In the **From** box, select *sales@sweetlife.example.com*.
    2.  In the text area, notice the template of the message for the customer. You can change the information in the message if needed.
    3.  On the form toolbar, click **Send**. The system closes the form and sends an email to the customer email address from the system email account that you have selected.

        **Tip:** If the mailing settings have been specified and a template of the email has been created in the system, you can skip printing a sales order and instead click **Email Sales Order** on the More menu of the [Sales Orders](SO_30_10_00.md) form. The system sends the email to the customer’s email address from the system email account that you have selected.


You have sent the sales order to the customer by email.

**Tip:** If you want to see emails associated with the sales order, on the title bar of the [Sales Orders](SO_30_10_00.md) form for the sales order, click **Activities**. In the **Tasks &amp; Activities** dialog box, you can see the list of these emails. You can click the link to the needed email to view the email on the [Email Activity](CR_30_60_15.md) form.

**Parent topic:**[Managing Opportunities](../UserGuide/CRM_Sales_Managing_Opportunities_Mapref.md)

