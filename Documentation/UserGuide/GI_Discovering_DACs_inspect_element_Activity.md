# DAC Discovery: To Inspect UI Elements {#_b0d356c9-b08a-4540-b38a-60cb8aa80735 .task}

The following activity will walk you through the process of inspecting the user interface elements on Acumatica ERP forms to find the data access classes \(DACs\) and data fields related to these elements.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a technical specialist in your company who is working on simple customizations. A sales representative has requested that you create a generic inquiry that lists sales orders. The inquiry should include the following data for each listed sales order: the sales order number, the order type, the status, the date, and the customer name.

To get started in this effort, you need to inspect the relevant user interface elements on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and the [Customers](AR_30_30_00.md) \(AR303000\) form—the data entry forms on which sales orders and customers are created—in order to figure out which data access classes and data fields are related to them. \(In this activity, you will only inspect the UI elements. You will not develop the generic inquiry.\)

## Process Overview { .section}

In this activity, you will inspect the relevant user interface elements of the entry forms whose data will be used in the generic inquiry. To do this, for each relevant element on the form, you will invoke the **Element Properties** dialog box, which displays the data access class and data field you will need when you develop the generic inquiry.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a tenant with the *U100* dataset preloaded as system administrator Kimberly Gibbs. You should sign in by using the *gibbs* username and the *123* password.

**Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to manage the system configuration and to modify generic inquiries, advanced filters, pivot tables, and dashboards.

## Step: Inspecting the UI Elements { .section}

To inspect the UI elements, do the following:

1.  Open the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, which displays a single sales order.
2.  Point to the **Order Type** box, press Ctrl+Alt, and then click. The **Element Properties** dialog box opens.

    **Tip:** As an alternative, you can click **Settings** &gt; **Inspect Element** on the form title bar and then click the needed UI element.

    Note the values of the **Data Class** and **Data Field** elements \(*SOOrder* and *OrderType*, respectively\), which are the data access class and field you need.

    The **Data Class** value reflects a data access class you need to add on the **Data Sources** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, so that the inquiry can access various data fields of the data access class. You will use the **Data Field** value when you customize various generic inquiry parameters and conditions, as well as listed items on the results grid \(that is, the table showing the inquiry results\).

3.  Close the dialog box.
4.  Inspect the UI elements listed in the **UI Element** column of the following table, and make a note of the data access class and data field of each element. Make sure that you get the same results as the following table shows.

    |UI Element|Data Access Class|Data Field|
    |----------|-----------------|----------|
    |**Order Nbr.**|*SOOrder*|*OrderNbr*|
    |**Status**|*SOOrder*|*Status*|
    |**Date**|*SOOrder*|*OrderDate*|

5.  Open the [Customers](AR_30_30_00.md) \(AR303000\) form.
6.  Point to the **Customer ID** box, press Ctrl+Alt, and then click. The **Element Properties** dialog box opens.
7.  Make a note of the values in the **Data Class** and **Data Field** boxes \(*Customer* and *AcctCD*, respectively\), which are the data access class and data field you need.
8.  Close the dialog box.
9.  In the Summary area, inspect the **Account Name** element. Notice that the **Data Class** and **Data Field** values are *Customer* and *AcctName*, respectively.
10. Close the dialog box.

**Parent topic:**[Discovering DACs](../UserGuide/GI_Discovering_DACs_Mapref.md)

