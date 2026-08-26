# Multicurrency Payment of Bills: To Pay a Foreign Currency Bill by Using Another Currency {#_62b80f1c-6225-4e19-b714-dc469f04bbc9 .task}

The following activity will walk you through the process of paying a bill in a foreign currency by using another foreign currency.

## Story {#section_pqy_3jv_vxb .section}

Suppose that on January 17, 2026, SweetLife Fruits &amp; Jams purchased consulting services from Big Green Trucks Ltd. in the amount of 220 euros \(€220\). \(*EUR* is a foreign currency of the company.\) On January 30, SweetLife agreed with the vendor to pay half of the bill in *CAD* \(which is the other foreign currency of the company\) by using the 1.50 exchange rate \(1 EUR = 1.50 CAD\), so that the partial payment amount would be C$165.

Acting as a SweetLife accountant, you need to process the bill in *EUR*, partially pay it with a payment in *CAD*, and then print a multicurrency report. Before you perform these actions, you will make changes to the Big Green Trucks Ltd. vendor’s currency-related settings, which you initially specified in [Multicurrency Payment of Bills: To Pay a Foreign Currency Bill by Using the Base Currency](Multicurrency_FCBillPayment_Activity1.md), to allow the vendor’s preferred currency to be overridden.

## Configuration Overview {#section_mfx_3jv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant.
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *20000 \(Accounts Payable\)*, *83000 \(Realized Gain/Loss Currency\)* accounts have been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *GREENTRUCK* vendor has been predefined.

## Process Overview {#section_wqy_3jv_vxb .section}

In this activity, [Vendors](AP_30_30_00.md) \(AP303000\) form, you will update the currency-related settings of the vendor to prepare it for bill processing. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will create and release a bill in *EUR*. On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you will partially pay the bill in *CAD*, and review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. On the [Bills and Adjustments](AP_30_10_00.md) form, you will review the balance of the partially paid bill. Finally, you will run the [AP Balance by Vendor MC](AP_63_30_00.md) \(AP633000\) report to review the outstanding balances of vendors.

## System Preparation {#section_yqy_3jv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/17/2026*. If a different date is displayed, click the Business Date menu button, and select *1/17/2026* from the calendar.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  Make sure that the multicurrency accounting functionality has been configured as described in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md) and [Configuration of Rate Types and Rates: To Configure Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity1.md).
5.  Make sure that you have configured an account as described in [Multicurrency Cash Accounts: To Configure an Account](../ImplementationGuide/config_Multicurrency_CashAccount_Implem_Activity.md).

## Step 1: Updating the Vendor's Settings {#section_bry_3jv_vxb .section}

To update the vendor’s currency-related settings \(which you updated in [Multicurrency Payment of Bills: To Pay a Foreign Currency Bill by Using the Base Currency](Multicurrency_FCBillPayment_Activity1.md)\) to make it possible to process a bill in *EUR*, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *GREENTRUCK*.
3.  On the **Financial** tab \(**Financial Settings** section\), make sure that *CAD* is selected in the **Currency ID** box. This is still the vendor’s preferred currency.
4.  Select the **Enable Currency Override** check box.

    With this change, although *CAD* will still be initially inserted into bills and adjustments of the vendor, the currency can be overridden \(as it will be in this activity to *EUR*\).

5.  On the form toolbar, click **Save** to save your changes.

## Step 2: Creating and Releasing a Bill {#section_dry_3jv_vxb .section}

To create and release a bill in the *EUR* currency, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**, and in the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Vendor**: *GREENTRUCK*
    -   **Currency**: *EUR*
    -   **Date**: *1/17/2026* \(inserted automatically\)
    -   **Post Period**: *01-2026* \(inserted automatically\)
    -   **Description**: `Consulting services`
3.  On the **Details** tab, click **Add Row**, and in the added row, specify the following settings:
    -   **Transaction Descr.**: `Consulting services`
    -   **Ext. Cost**: `220.00`
4.  On the form toolbar, click **Save**.
5.  In the Summary area, click **View Base** \(right of the **Currency** box\), and review the bill in the base currency.

    The **Detail Total** in *USD* is $251.14 \(Round \(€220 \* 1.14155251\), where 1.14155251 is the current *EUR* exchange rate effective on the bill date\). You cannot override the document rate, because the **Enable Rate Override** check box is cleared on the [Vendors](AP_30_30_00.md) \(AP303000\) form for the vendor.

6.  On the form toolbar, click **Remove Hold** and then click **Release** to release the bill.

## Step 3: Creating a Partial Payment for the Bill {#section_fry_3jv_vxb .section}

To create a partial payment for the bill, do the following:

1.  Open the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.
2.  On the form toolbar, click **Add New Record**, and in the Summary area, specify the following settings:
    -   **Type**: *Payment*
    -   **Vendor**: *GREENTRUCK*
    -   **Payment Method**: *WIRE* \(inserted automatically when you selected the vendor\)
    -   **Cash Account**: *10215WH \(Checking Account CAD\)*
    -   **Currency**: *CAD* \(inserted automatically based on the selected cash account\)
    -   **Application Date**: *1/30/2026*
    -   **Application Period**: *01-2026*
    -   **Description**: `Partial payment on consulting services`
    -   **Payment Amount**: `165`
3.  On the table toolbar of the **Documents to Apply** tab, click **Load Documents**. The bill dated 1/17/2026, which you created in Step 2, appears in the table.

    The calculated cross rate from *CAD* to *EUR* is 1.42477975 \(1.2776 / 0.8967, which is the *CAD* rate that was effective on the payment date divided by the *EUR* rate that was effective on the payment date\). The amount to be paid is the **Amount Paid \(EUR\)** divided by the **Cross Rate** and is currently €115.81 \(Round \(C$165 / 1.42477975\)\).

4.  Enter `1.50` in the **Cross Rate** column to change the cross rate to the one agreed on with the vendor, and enter `165.00` in the **Amount Paid \(EUR\)** column. The **Balance** of the bill after payment will be €110.
5.  On the form toolbar, click **Remove Hold** and then click **Release** to release the payment.
6.  On the **Financial** tab, click the **Batch Nbr.** link.
7.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the generated batch in the base currency.

    When the payment was released, the following actions were performed in the system:

    -   The checking account specified in the payment \(*10215*\), which you created in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md)\) was credited in the amount of the payment, which the system converted to the base currency by using the payment rate \($129.15 = Round \(C$165 \* 0.7827176\)\).
    -   The Accounts Payable account of the vendor \(*20000*\) was debited in the amount in the base currency deducted from the balance of the bill \($125.57 = Round \(Round \(C$165 / 1.5\) \* 1.14155251\)\).
    -   The realized gain/loss account of the document currency \(*83000*\), which you specified when you defined the *EUR* currency in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md)\) was debited in the amount of the realized loss, which is the amount of the payment in the base currency minus the amount in the base currency deducted from the balance of the bill \($3.58 = $129.15 – $125.57\).

## Step 4: Reviewing the Bill Balance {#section_jry_3jv_vxb .section}

To review the balance of the partially paid bill, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  Open the bill to which you have applied the payment and review the **Applications** tab.

    The payment in *CAD* with the amount equivalent to €110.00 \(C$129.15\) was applied to the bill. The open balance of the bill is €110.00; that is, half of the bill was paid with the payment.


## Step 5: Printing a Multicurrency Report {#section_mry_3jv_vxb .section}

To review the outstanding balance for the vendors and print a multicurrency report, do the following:

1.  Open the [AP Balance by Vendor MC](AP_63_30_00.md) \(AP633000\) form.
2.  On the **Report Parameters** tab, specify the following parameters:
    -   **Report Format**: *Open + Current Period*
    -   **Company/Branch**: *HEADOFFICE \(SweetLife Head Office and Wholesale Center\)* \(inserted by default\)
    -   **Financial Period**: *01-2026* \(inserted by default\)
    -   **Vendor**: Empty
    -   **Include Applications**: Cleared
3.  On the form toolbar, click **Run Report**.
4.  Review the generated report.

    The report lists all the documents processed in the *01-2026* period, along with the documents that are open at the end of the period; the documents are grouped by vendor. For each document, you can review the document balance in the document currency. Also, for each vendor, you can review the total of the documents in each currency at the end of the period.

    **Tip:** In a production environment, you would click **Print** on the form toolbar to print the multicurrency report.


**Parent topic:**[Paying Multicurrency Bills](../UserGuide/Multicurrency_FCBillPayment_Mapref.md)

