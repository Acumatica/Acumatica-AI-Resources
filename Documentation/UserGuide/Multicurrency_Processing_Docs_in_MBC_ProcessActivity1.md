# Documents in Different Base Currencies: To Process an AR Invoice {#_45e6c6fc-a643-4cd3-bdb8-c4334eec1a1b .task}

The following activity will walk you through the process of processing an invoice between the branches that use different base currencies.

## Story {#section_f5y_3jv_vxb .section}

Suppose that in January 2026, SweetLife Canada \(selling company\) provided 10 hours of consulting services to the employees of the *MHEAD* branch of the Muffins &amp; Cakes company \(purchasing company\).

Acting as Kimberly Gibbs, an employee who has access to the Muffins and SweetLife Canada companies, you need to process an AR invoice from SweetLife Canada to *MHEAD*.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Multibranch Support*, *Multicompany Support*, *Customer and Vendor Visibility Restriction*, *Multicurrency Accounting*, and *Multiple Base Currencies* features have been enabled.
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *MUFFINS* company has been configured.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *MHEAD* branch of the *MUFFINS* company has been created.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *CONSULT* non-stock item has been configured.

## Process Overview {#section_k5y_3jv_vxb .section}

In this activity, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create an invoice originating from the *SLCANADA* branch for the *MHEAD* customer and review the invoice amounts in the base currencies of the branches. You will then release the invoice and review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation {#section_m5y_3jv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Canada* branch.
4.  In the company to which you are signed in, be sure that you have configured the SweetLife Canada company, as described in [Multiple Base Currencies: Implementation Activity](../ImplementationGuide/config_Multicurrency_MultipleBaseCurrencies_Implem_Activity.md), which is a prerequisite activity.
5.  In the company to which you are signed in, be sure that you have restricted the visibility of a customer to the SweetLife Canada company, as described in [Customer Visibility: To Restrict Visibility to a New Company](../ImplementationGuide/Finance_Restricting_Customer_Visibility_Implem_Activity2.md), which is a prerequisite activity.
6.  On the [Company Groups](CS_10_25_00.md) \(CS102500\) form, be sure that you have added the *USCOMP* company group, as described in [Company Groups: Implementation Activity](../ImplementationGuide/config_Finance_Company_Group_Implem_Activity.md), which is a prerequisite activity.
7.  On the [Customers](AR_30_30_00.md) form, be sure that the *MHEAD* customer has been extended from a branch, as described in [Intercompany Sales Setup: Implementation Activity](../ImplementationGuide/Finance_Intercompany_SalesSetup_Implem_Activity.md), which is a prerequisite activity.
8.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, be sure that for the *CONSULT* item, the default price in *CAD* has been defined, as described in [Prices in Base Currencies: Process Activity](Finance_Prices_MBC_Process_Activity.md), which is a prerequisite activity.

## Step: Processing an AR Invoice {#section_o5y_3jv_vxb .section}

To process an AR invoice between branches that use different base currencies, do the following:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  Click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Type**: *Invoice*
    -   **Date**: *1/30/2026* \(inserted automatically\)
    -   **Customer**: *MHEAD*

        This is a customer that has been extended from a branch. It can be used by all the companies in the tenant because on the [Customers](AR_30_30_00.md) \(AR303000\) form, the **Restrict Visibility To** setting \(**Financial** tab\) for this customer is empty.

    -   **Currency**: *USD* \(inserted by default\)
    -   **Description**: `Consulting`
3.  On the **Financial** tab, make sure that *SLCANADA* is selected in the **Branch** box.
4.  In the **Default Payment Info** section of the tab, specify the following settings:
    -   **Payment Method**: *WIRE*
    -   **Cash Account**: *10215SL*
5.  On the **Details** tab, click **Add Row** on the table toolbar, and specify the following settings for the added row:
    -   **Branch**: *SLCANADA* \(inserted automatically\)
    -   **Inventory ID**: *CONSULT*
    -   **Quantity**: `10`
    -   **Unit Price**: *50.10* \(inserted automatically based on the default price recalculated in *USD*\)
    -   **Ext. Price**: *501.00* \(calculated automatically\)
6.  In the Summary area, click the Currency Toggle button. Notice that the system has recalculated the price for the document line based on the currency rate effective on the document date.
7.  On the form toolbar, click **Remove Hold** and then click **Release** to release the invoice.
8.  On the **Financial** tab, click the link in the **Batch Nbr.** box to review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    The transaction has been posted for the *SLCANADA* branch and the *SLCANADA* actual ledger. The transaction currency specified in the **Currency** box is *USD*, because it is the currency assigned to the *MHEAD* customer on the [Customers](AR_30_30_00.md) \(AR303000\) form. If you click the Currency Toggle button in the Summary area, the amount of the transaction is displayed in *CAD* \(the base currency of the originating branch\).


**Parent topic:**[Processing Documents Between Companies with Different Base Currencies](../UserGuide/Multicurrency_Processing_Docs_in_MBC_Mapref.md)

