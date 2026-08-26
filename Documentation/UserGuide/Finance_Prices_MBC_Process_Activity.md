# Prices in Base Currencies: Process Activity {#_e626a3bd-399b-422b-a3c7-afa75c175318 .task}

The following activity will walk you through the process of maintaining default prices in base currencies.

## Story { .section}

Suppose that the SweetLife Canada company, which is implemented in the same tenant as SweetLife Fruits &amp; Jams but using the Canadian dollar as its base currency, sells the same products and services to its customers as SweetLife does. Thus, the company needs to maintain the default prices of non-stock items in *CAD*. One of the company's customers, EasyDiner Co. \(*EASYDINER*\), purchased five hours of consulting services from SweetLife Canada on January 30.

Acting as the implementation consultant, you need to specify the default price in *CAD* for the *CONSULT* non-stock item and make sure that this default price is used in documents originating from the SweetLife Canada company.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Multibranch Support*, *Multicompany Support*, *Customer and Vendor Visibility Restriction*, *Multicurrency Accounting*, and *Multiple Base Currencies* features have been enabled.
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been configured.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *EASYDINER* customer has been created.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *CONSULT* non-stock item has been configured.

## Process Overview { .section}

In this activity, you will specify the default price in *CAD* for the *CONSULT* item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create and release an invoice for the *EASYDINER* customer, selecting the *CONSULT* non-stock item. Finally, you will review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Canada* branch.
4.  In the company to which you are signed in, be sure that you have configured the SweetLife Canada company, as described in [Multiple Base Currencies: Implementation Activity](../ImplementationGuide/config_Multicurrency_MultipleBaseCurrencies_Implem_Activity.md), which is a prerequisite activity.
5.  On the [Company Groups](CS_10_25_00.md) \(CS102500\) form, be sure that you have added the *USCOMP* company group, as described in [Company Groups: Implementation Activity](../ImplementationGuide/config_Finance_Company_Group_Implem_Activity.md), which is a prerequisite activity.
6.  In the company to which you are signed in, be sure that you have restricted the visibility of a customer to the SweetLife Canada company, as described in [Customer Visibility: To Restrict Visibility to a New Company](../ImplementationGuide/Finance_Restricting_Customer_Visibility_Implem_Activity2.md), which is a prerequisite activity.

## Step 1: Specifying the Default Price for a Non-Stock Item { .section}

To specify the default price for a non-stock item, do the following:

1.  Open the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.
2.  In the **Inventory ID** box, select *CONSULT*.
3.  On the **Price/Cost** tab, in the **Default Price** box, specify `65`.

    Notice that multiple boxes in the Summary area and on the **Price/Cost** tab have the C$ symbol, indicating that the prices and costs are in *CAD*, which is the base currency of the company to which you are signed in.

4.  On the form toolbar, click **Save**.

## Step 2: Processing an AR Invoice { .section}

To process an AR invoice in *CAD*, do the following:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  Click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Type**: *Invoice*
    -   **Date**: *1/30/2026* \(inserted automatically\)
    -   **Customer**: *EASYDINER*
3.  On the **Financial** tab, notice that in the **Branch** box *SLCANADA* is selected. This is the originating branch of the document.
4.  On the same tab, specify the following settings:
    -   **Payment Method**: *WIRE*
    -   **Cash Account**: *10215SL*
5.  On the **Details** tab, click **Add Row** on the table toolbar, and specify the following settings for the added row:
    -   **Branch**: *SLCANADA* \(inserted automatically\)
    -   **Inventory ID**: *CONSULT*
    -   **Quantity**: `5`
    -   **Unit Price**: *65* \(inserted automatically\)

        This is the default price in *CAD* that you specified for the non-stock item in Step 1.

    -   **Ext. Price**: *325* \(calculated automatically\)
6.  On the form toolbar, click **Remove Hold** and then click **Release** to release the invoice.
7.  On the **Financial** tab, click the link in the **Batch Nbr.** box to review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    The transaction has been posted for the *SLCANADA* branch and the *SLCANADA* actual ledger. The transaction currency is *CAD*, because you specified it for the customer on the [Customers](AR_30_30_00.md) \(AR303000\) form.

    If you click the **View Base** box in the Summary area, the amount of the transaction is displayed in the base currency of the originating branch, which is *CAD*.


**Parent topic:**[Maintaining Prices and Costs in Different Base Currencies](../UserGuide/Finance_Prices_MBC_Mapref.md)

