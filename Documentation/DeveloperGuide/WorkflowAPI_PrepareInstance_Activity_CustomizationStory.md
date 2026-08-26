# Test Instance for Workflow Customization: To Configure the Instance {#_65347f66-8c3d-4a64-9f6f-3ecbd796727e .task}

Based on the [Customization Description](WorkflowAPI_CustomizationStory_CustomizationDescription.md), you need to configure the instance to be able to test the logic you implement while completing the activities in this guide.

## Story { .section}

In the Smart Fix company, there are no shipments or sales orders associated with repair work orders. Therefore, you need to configure Acumatica ERP so that during the creation of an SO invoice on the [Invoices](../Shared/../UserGuide/SO_30_30_00.md) \(SO303000\) form, stock items can be added directly to the SO invoice without sales orders and shipments being processed.

After you perform the customization tasks, you will be testing your changes, including the **Create Invoice** button or command \(which corresponds to the `CreateInvoice` action that you will create\) of the Repair Work Orders \(RS301000\) form. If you click the button multiple times during testing, you may run into an issue with insufficient stock items in a warehouse. When an SO invoice is released, the quantity of stock items included in the invoice is checked, and if there are not enough stock items in a warehouse, an invoice cannot be created. You need to prevent this issue from occurring.

## Process Overview { .section}

You will enable the *Advanced SO Invoices* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form to make it possible to process repair work orders.

On the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form, you will also change the *STOCKITEM* item class to allow negative quantities for the stock items. This will prevent possible issues during the testing of the **Create Invoice** action.

You will also specify accounts receivable preferences.

## Step 1: Turning on the Feature { .section}

To turn on the feature, on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form, do the following:

1.  On the form toolbar, click **Modify**.
2.  Select the **Advanced SO Invoices** check box.
3.  Click **Enable** on the form toolbar.

## Step 2: Allowing Negative Quantities for Stock Items { .section}

To allow negative quantities for stock items, do the following:

1.  On the [Item Classes](../Shared/../UserGuide/IN_20_10_00.md) \(IN201000\) form, in the **Class ID** box, select *STOCKITEM*. All the stock items used in the activities of this guide belong to this class.
2.  On the **General** tab \(**General Settings** section\), select the **Allow Negative Quantity** check box.
3.  On the form toolbar, click **Save**.

## Step 3: Specifying Accounts Receivable Preferences { .section}

Specify accounts receivable preferences as follows:

1.  Open the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form.
2.  On the **Data Entry Settings** section of the **General** tab, clear the **Validate Document Totals on Entry** and **Require Payment Reference on Entry** check boxes. This will make it possible for users to skip entering values during the release of an invoice.
3.  On the form toolbar, click **Save**.

**Parent topic:**[Preparing an Instance for Workflow Customization](../DeveloperGuide/WorkflowAPI_PrepareInstance_Mapref.md)

