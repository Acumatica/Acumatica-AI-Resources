# Intercompany Sales: To Pay an Intercompany Invoice {#_8e65e73c-8eb5-4a97-bab2-ccc158799bd4 .task}

The following activity will walk you through the process of creating a payment for an intercompany invoice.

## Story {#section_y2s_4jv_vxb .section}

Suppose that on February 15, 2026, the Head Office of the Muffins &amp; Cakes \(*MHEAD*\) branch paid for the juicer installation services that it purchased from the Service and Equipment Sales Center \(*SWEETEQUIP*\) branch, and on February 18, 2026, the *SWEETEQUIP* branch received this payment.

Acting as an accountant of the *SWEETEQUIP* branch, you need to create an AR payment in the system to record this payment to the branch's cash account.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*
    -   *Multibranch Support*
    -   *Multicompany Support*
    -   *Advanced Financials*
    -   *Inter-Branch Transactions*
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *MUFFINS* and *SWEETLIFE* companies have been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *SWEETEQUIP* and *MHEAD* branches have been defined.

## Process Overview {#section_efs_4jv_vxb .section}

In this activity, you will open an intercompany invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form and create a payment for this invoice. After releasing the payment, you will review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation {#section_gfs_4jv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Nenad Pasic by using the *pasic* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *2/18/2026*. If a different date is displayed, click the Business Date menu button, and select *2/18/2026* on the calendar. For simplicity, in this activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *Service and Equipment Sales Center* branch.
4.  Make sure the *SWEETEQUIP* branch has been extended as a vendor and the *MHEAD* branch has been extended as a customer, as described in [Intercompany Sales Setup: Implementation Activity](../ImplementationGuide/Finance_Intercompany_SalesSetup_Implem_Activity.md).
5.  Make sure an intercompany AR invoice has been processed, as described in [Intercompany Sales: To Process an Intercompany Invoice](Finance_Intercompany_Sales_Process_Activity.md).
6.  Make sure the intercompany AP bill has been paid, as described in [Intercompany Sales: To Pay an Intercompany Bill](Finance_Intercompany_Sales_Process_Activity2.md).

## Step: Paying an AR Invoice Between Branches of Different Companies {#section_ifs_4jv_vxb .section}

To create an AR payment for an intercompany AR invoice, do the following:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
2.  In the **Reference Nbr.** box, select an invoice with the amount of $250 and the *MHEAD* customer \(this is the invoice you created in [Intercompany Sales: To Process an Intercompany Invoice](Finance_Intercompany_Sales_Process_Activity.md)\).
3.  On the form toolbar, click **Pay**.
4.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, which opens, make sure that the following settings are specified in the Summary area:
    -   **Application Date**: *2/18/2026*
    -   **Customer**: *MHEAD*
    -   **Payment Method**: *CHECK* \(inserted automatically\)
    -   **Cash Account**: *10200EQ - Equipment Checking* \(inserted automatically\)
5.  On the **Documents to Apply** tab, make sure that the system has inserted the invoice in the amount of $250.
6.  On the form toolbar, click **Remove Hold** to give the payment the *Balanced* status.
7.  On the form toolbar, click **Release** to release the payment.
8.  On the **Financial** tab, click the link in the **Batch Nbr.** box to review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    When the payment was released, the GL account associated with the cash account of the *SWEETEQUIP* branch \(*10200 - Company Checking Account*\) was debited in the amount of the payment. The *19010 - Accounts Receivable - Related Company* account specified in the invoice was credited in the total amount of the invoice.


**Parent topic:**[Processing Intercompany Sales](../UserGuide/Finance_Intercompany_Sales_Mapref.md)

