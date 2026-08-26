# Inventory Planning with MRP: Process Activity {#_008875d2-45e9-4a9f-9fb5-231363f007a2 .task}

The following activity will walk you through the process of running inventory planning.

## Story { .section}

Suppose that GoodFood One Restaurant ordered five citrus juicers from SweetLife Fruits &amp; Jams. The company does not have the juicers in stock, so the juicers must be assembled to satisfy the customer's order. The company also does not have the components required for the juicer assembly in stock, so the components must be ordered from the Jalooza Inc. vendor. The default lead time of the vendor is seven days.

Acting as the sales manager, you need to create the sales order with the juicers and then create a production order to request the production of the juicers. Acting as the planning manager, you need to run inventory planning, analyze the results, and take the required actions to cause the juicers to be produced and shipped to the customer by the requested date.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *GOODFOOD* customer has been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *JALOOZA* vendor has been configured.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *CFJCITRUS*, *JCREAMER*, *JUICECUP1L*, *MRBASEHIGH*, *STRBASKET*, and *SPLGUARD* stock items have been predefined.

## Process Overview { .section}

In this activity, to perform inventory planning and process the results, you will do the following:

1.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, create a sales order with a citrus juicer to generate demand for inventory planning analysis.
2.  On the same form, create a production order linked to the sales order to generate the supply that will satisfy the customer's order.
3.  On the [Regenerate Inventory Planning](AM_50_50_00.md) \(AM505000\) form, run inventory planning, and then on the [Inventory Planning Exceptions](AM_40_30_00.md) \(AM403000\) form, view the list of exception messages.
4.  On the [Inventory Planning Display](AM_40_00_00.md) \(AM400000\) form, view the list of actions the system has suggested as a result of inventory planning and create a purchase order for the materials required to produce the citrus juicers.
5.  On the [Regenerate Inventory Planning](AM_50_50_00.md) form, rerun inventory planning, and on the [Inventory Planning Exceptions](AM_40_30_00.md) form, view the changes in the list of exception messages.
6.  On the [Sales Orders](SO_30_10_00.md) form, change the requested date for the juicers to be shipped to the customer; on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, change the promised date to an earlier date to meet the date the customer wanted the juicers to be shipped; on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form, change the production end date \(at which the juicers will be ready for shipping\).
7.  On the [Regenerate Inventory Planning](AM_50_50_00.md) form, rerun inventory planning, and on the [Inventory Planning Exceptions](AM_40_30_00.md) form, make sure that no exception messages are listed.

## System Preparation { .section}

Do the following:

1.  As prerequisites to the current activity, perform the following activities in the listed order:
    1.  [Bills of Material: Implementation Activity](BOM_Implem_Activity.md) so that the needed bill of material has been created in a company with the *U100* dataset preloaded.
    2.  [Production Order Types: To Create a Planning Production Order Type](../ImplementationGuide/config_MFG_Production_Order_Types_Implem_Activity_PL.md) so that a production order type for planning orders has been created in this company.
2.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as the sales and planning manager by using the *peters* username and the *123* password.
3.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Creating a Sales Order { .section}

To create a sales order for the GoodFood One Restaurant customer with five citrus juicers, do the following:

1.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Customer**: *GOODFOOD*
    -   **Requested On**: Today's date plus 1 day
    -   **Description**: `Sale of 5 citrus juicers to GoodFood One Restaurant`
3.  On the **Details** tab, add a new row and specify the following settings in the row:
    -   **Inventory ID**: *CFJCITRUS*
    -   **Quantity**: `5`
    -   **Unit Price**: `2000`
4.  On the form toolbar, click **Save**.

## Step 2: Creating a Production Order { .section}

To create a production order from the sales order, do the following:

1.  While you are still viewing the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, on the More menu \(under **Manufacturing**\), click **Create Production Orders**.

    **Tip:** You open the More menu by clicking the More button \(…\) on the form toolbar.

2.  In the **Production Orders** dialog box, which opens, select the unlabeled check box in the only row, and click **Create**. The system creates the production order and closes the dialog box.

    On the **Details** tab, notice that the system has added the reference number of the production order in the **Production Nbr.** column for the only line.

3.  Click the link in the **Production Nbr.** column. The system opens the production order on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

    On the **General** tab, notice that today's date plus 1 day is specified in the **Due Date** box.


## Step 3: Running Inventory Planning and Viewing Exception Messages { .section}

To run inventory planning and view exception messages, do the following:

1.  Open the [Regenerate Inventory Planning](AM_50_50_00.md) \(AM505000\) form.
2.  On the form toolbar, click **Process**. Wait until the log records appear in the table.
3.  Open the [Inventory Planning Exceptions](AM_40_30_00.md) \(AM403000\) form.
4.  Notice that no exception messages are displayed in the table.

## Step 4: Creating a Purchase Order { .section}

To create a purchase order for the components, do the following:

1.  Open the [Inventory Planning Display](AM_40_00_00.md) \(AM400000\) form.

    Notice that the table contains five rows of the *Production Material* type. These rows correspond to the components required for the juicer assembly. In the **Source** column, notice that *Purchase* is specified, which is the replenishment source for the items.

2.  Select the unlabeled check box in each of the five rows.
3.  On the form toolbar, click **Purchase** on the More menu to create a purchase order for the components.
4.  In the **Create Purchase Order** dialog box, which opens, make sure that the *JALOOZA* vendor is selected in the **Vendor** box and all five components are listed in the table.
5.  Click **Create**. The system creates the purchase order and shows its type and reference number in the **Purchase Order Created** dialog box.
6.  Click **OK** to close the dialog box.
7.  Open the created purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form.

    Notice that the **Promised On** box contains the date that is today's date plus 7 days, which is the default lead time of the *JALOOZA* vendor. This purchase order does not satisfy the demand of the sales order because the components will be delivered later than the customer expected to receive the juicers.


## Step 5: Rerunning Inventory Planning and Viewing Exception Messages { .section}

You will view how the list of inventory planning exception messages has changed because of the creation of the purchase order. Do the following:

1.  Open the [Regenerate Inventory Planning](AM_50_50_00.md) \(AM505000\) form.
2.  On the form toolbar, click **Process** and wait until the system completes processing.
3.  Open the [Inventory Planning Exceptions](AM_40_30_00.md) \(AM403000\) form.

    Notice that the *Expedite* messages for the component lines from the purchase order have appeared in the list. This means that to satisfy the demand, you need to negotiate an earlier delivery date with the vendor or a later shipping date with the customer \(or both\).


## Step 6: Changing the Dates in the Documents { .section}

Suppose that you have negotiated with the vendor an earlier delivery date of 2 days after today's date for the juicer components. Do the following to change the date in the purchase order:

1.  On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, open the purchase order that you created earlier in this activity.
2.  In the **Promised On** box of the Summary area, change the value to today's date plus 2 days.
3.  In the dialog box with the warning message that appears, click **Yes**.
4.  On the form toolbar, click **Save**.

## Step 7: Rerunning Inventory Planning and Viewing Exceptions { .section}

You will rerun inventory planning and make sure that all exception messages have been processed. Do the following:

1.  Open the [Regenerate Inventory Planning](AM_50_50_00.md) \(AM505000\) form.
2.  On the form toolbar, click **Process** and wait till the system completes processing.
3.  Open the [Inventory Planning Exceptions](AM_40_30_00.md) \(AM403000\) form.

    Notice that no exception messages are displayed in the list.


You have successfully processed all the exception messages.

**Parent topic:**[Inventory Planning with MRP](../UserGuide/MFG_MRP_Mapref.md)

