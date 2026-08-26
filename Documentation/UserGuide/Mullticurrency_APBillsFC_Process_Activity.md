# AP Bills in Foreign Currencies: Process Activity {#_e93585fc-5f1b-4ee3-828f-f7bb43c67c43 .task}

The following activity will walk you through the processing of an AP bill in a foreign currency.

## Story {#section_w1y_3jv_vxb .section}

Suppose that on January 13, 2026, MapleLeaf Ads Co. provided services to the SweetLife Fruits &amp; Jams company in the amount of 350 Canadian dollars \(defined as *CAD* in the system\), for which MapleLeaf billed SweetLife. On January 30, 2026, SweetLife paid this bill.

Acting as a SweetLife accountant, you need to create a bill and apply a payment in *CAD* \(that is, in the same foreign currency\) to the bill. Before you perform these actions, you will make changes to the MapleLeaf vendor’s settings so that bill processing can be performed in line with its currency-related preferences.

## Configuration Overview {#section_mfx_3jv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant.
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *20000 \(Accounts Payable\)*, *81000 \(Other Expenses\)*, and *42010 \(Realized Gain CAD\)* accounts have been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *MAPLELEAF* vendor has been predefined.

## Process Overview {#section_dby_3jv_vxb .section}

In this activity, you will first update the currency-related settings of the MapleLeaf Co. vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will then create and release an AP bill in the *CAD* currency. You will then pay this bill on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

## System Preparation {#section_fby_3jv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/13/2026*. If a different date is displayed, click the Business Date menu button, and select *1/13/2026* from the calendar.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  Make sure that the multicurrency accounting functionality has been configured as described in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md) and [Configuration of Rate Types and Rates: To Configure Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity1.md).
5.  Make sure that you have configured an account as described in [Multicurrency Cash Accounts: To Configure an Account](../ImplementationGuide/config_Multicurrency_CashAccount_Implem_Activity.md).

## Step 1: Updating the Vendor's Settings {#section_iby_3jv_vxb .section}

To update the currency-related settings of the vendor \(which has been preconfigured in the *U100* dataset\) in preparation for multicurrency bill processing, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *MAPLELEAF*.
3.  On the **Financial** tab \(**Financial Settings** section\), do the following:
    -   In the **Currency ID** box, select *CAD*.

        This is the primary currency to be inserted in bills and adjustments to this vendor.

    -   Notice that the **Curr. Rate Type** box is empty, which is the default value of this setting copied from the settings of the vendor class.

        This setting specifies the currency rate type to be used for the vendor. Because you are not specifying a **Curr. Rate Type** for the vendor, the system will use the *SPOT* rate, which is set as the default rate for accounts payable on the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form.

    -   Notice that the **Enable Currency Override** check box is cleared, which is the default state of the setting copied from the vendor class.

        With this check box cleared, you cannot override the currency in the bills and adjustments to this vendor. That is, the setting in the **Currency ID** box on this form for the vendor is the only currency that may be used in documents for this vendor.

    -   Make sure that the **Enable Rate Override** check box is cleared.

        With this check box cleared, you cannot override the rate type and exchange rate in documents created for this vendor.

4.  On the **Payment** tab \(**Default Payment Settings** section\), specify the following settings:
    -   **Payment Method**: *WIRE*
    -   **Cash Account**: *10215WH \(Checking Account CAD\)*
5.  On the form toolbar, click **Save** to save your changes.

## Step 2: Creating and Releasing a Bill {#section_oby_3jv_vxb .section}

To create and release a bill in the *CAD* currency, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**, and in the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Vendor**: *MAPLELEAF*
    -   **Currency**: *CAD* \(inserted automatically when you selected the vendor\)

        The *CAD* currency is selected in the bill because you have assigned this currency to the vendor. Thus, the document amounts are specified in Canadian dollars. You cannot override the currency in this particular bill because the **Enable Currency Override** check box is cleared for the vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form.

    -   **Date**: *1/13/2026*
    -   **Post Period**: *01-2026*
    -   **Description**: `Services`
3.  On the **Details** tab, click **Add Row**, and in the added row, specify the following settings:
    -   **Transaction Descr.**: `Services`
    -   **Ext. Cost**: `350.00`
4.  On the form toolbar, click **Save**.
5.  In the Summary area, click the **Exchange Rate** box \(right of the **Currency** box\), and review the **Rate Selection** dialog box, which opens.

    The **Curr. Rate Type ID** \(*SPOT*\) is the default rate type determined by the **AP Rate Type** setting on the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form, because you haven't specified a rate type in the vendor record. The currency rate of the *SPOT* rate type for 1/13/2026 is the currency rate that is effective starting on 1/1/2026. You cannot override the rate type and rate in this document because the **Enable Rate Override** check box is cleared for the vendor on the [Vendors](AP_30_30_00.md) form.

    **Tip:** Any time you need to check which currency rate was effective on a particular date, on the [Currency Rates](CM_30_10_00.md) \(CM301000\) form, you can select the needed date in the **Effective Date** box and review the **Effective Currency Rates** tab.

6.  Click **OK** to close the **Rate Selection** dialog box.
7.  In the Summary area, click the **View Base** button \(right of the **Currency** box\) to review the bill amounts in the base currency \(*USD*\).

    For converting the bill amounts, the system uses the *CAD*-to-*USD* rate that was effective on the bill date. Thus, the detail total is C$350.00 \* 0.78907914 = $276.18

    **Tip:** You can edit amounts in the document only while viewing the document in the document currency. When you are reviewing the document in the base currency, you cannot modify the document amounts.

8.  On the form toolbar, click **Remove Hold** and then click **Release** to release the bill.
9.  On the **Financial** tab, click the **Batch Nbr.** link.
10. On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, review the generated GL transaction in the foreign currency of the document \(*CAD*\) and in the base currency \(*USD*\).

    When the system released the transaction:

    -   The AP account specified in the bill \(*20000*\) was credited in the amount of the bill, which the system converted to the base currency by using the rate specified in the bill \(Round \(C$350.00 \* 0.78907914\) = $276.18\).
    -   The expense account specified in the document line \(*81000*\) was debited in the line amount \(Round \(C$350.00 \* 0.78907914\) = $276.18\).

## Step 3: Applying a Payment in the Same Foreign Currency to the Bill {#section_uby_3jv_vxb .section}

To apply a payment in the same foreign currency to the bill, do the following:

1.  While you are still on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form with the bill opened, on the form toolbar, click **Pay**. The [Checks and Payments](AP_30_20_00.md) \(AP302000\) form opens.
2.  In the Summary area of this form, specify the following settings:

    -   **Application Date**: *1/30/2026*
    -   **Application Period**: *01-2026*
    The payment is created in *CAD*, because the cash account denominated in *CAD* is specified as the default payment account for the vendor.

3.  Click **View Base** \(right of the **Currency** box\), and review the payment in the base currency.

    The payment amount in *USD* is $273.95 \(C$350 \* 0.78271760, which is the *CAD*-to-*USD* exchange rate that was effective on the payment date *1/30/2026*\).

4.  On the form toolbar, click **Remove Hold** and then click **Release** to release the payment.
5.  On the **Financial** tab, click the **Batch Nbr.** link.
6.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the generated GL transaction in the document currency \(*CAD*\) and in the base currency \(*USD*\).

    When the payment was released, the following actions were performed in the system:

    -   The checking account specified in the payment \(*10215*\) was credited in the payment amount, which the system converted to the base currency by using the payment rate as follows: $273.95 = Round \(C$350 \* 0.78271760\).
    -   The Accounts Payable account specified in the bill \(*20000*\) was debited in the payment amount applied to the bill; the system converted the payment amount to the base currency by using the rate specified in the bill \($276.18 = Round \(C$350 \* 0.78907914\)\).
    -   The realized gain account of the document currency \(*42010*\), which you specified when you defined the currency in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md), was credited in the amount of the realized gain, which is the result of the difference between the rates specified in the bill and in the payment. The payment rate is less than the bill rate, so the result of applying the payment is a gain in the amount of $2.23 \($276.18 – $273.95\).

**Parent topic:**[Processing Bills in Foreign Currencies](../UserGuide/Multicurrency_APBillsFC_Mapref.md)

