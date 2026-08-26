# Intercompany Sales: To Pay an Intercompany Bill {#_eb80dc35-c7a9-4a2a-bd9b-1f59f1c966a0 .task}

The following activity will walk you through the payment of an intercompany bill between branches of two companies within the same tenant.

## Story {#section_ids_4jv_vxb .section}

Suppose that the Head Office of the Muffins &amp; Cakes company \(*MHEAD*\) that purchased juicer installation services from the *SWEETEQIUP* branch of SweetLife Fruits &amp; Jams decided to pay for the services on February 15, 2026.

Acting as an accountant of Muffins &amp; Cakes, you have to pay the previously created bill in the amount of $250.

## Configuration Overview {#section_lds_4jv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*
    -   *Multibranch Support*
    -   *Multicompany Support*
    -   *Advanced Financials*
    -   *Inter-Branch Transactions*
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *MUFFINS* and *SWEETLIFE* companies have been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *SWEETEQUIP* and *MHEAD* branches have been defined.

## Process Overview {#section_pds_4jv_vxb .section}

In this activity, on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will open the bill you are going to pay and click **Pay** on the form toolbar. On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you will review the created payment and click **Print/Process**. You will then print the payment on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form and release it on the [Release Payments](AP_50_52_00.md) \(AP505200\) form. Finally, you will review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation {#section_rds_4jv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Nenad Pasic by using the *pasic* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *2/15/2026*. If a different date is displayed, click the Business Date menu button, and select *2/15/2026* on the calendar. For simplicity, in this activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *Muffins Head Office &amp; Wholesale Center* branch.
4.  Make sure the *SWEETEQUIP* branch has been extended as a vendor and the *MHEAD* branch has been extended as a customer, as described in [Intercompany Sales Setup: Implementation Activity](../ImplementationGuide/Finance_Intercompany_SalesSetup_Implem_Activity.md).
5.  Make sure the intercompany invoice and an AP bill based on it have been processed, as described in [Intercompany Sales: To Process an Intercompany Invoice](Finance_Intercompany_Sales_Process_Activity.md).

## Step: Paying an AP Bill Between Branches of Different Companies {#section_tds_4jv_vxb .section}

To pay the AP bill that was automatically generated from an AR invoice that recorded an intercompany sales of services, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  In the **Reference Nbr.** box, select a bill for the *SWEETEQUIP* vendor and the amount of $250.
3.  On the form toolbar, click **Pay**. The system opens the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.
4.  In the Summary area, review the settings of the created payment. Make sure that the *10200MF - Muffins Checking* account is selected in the **Cash Account** box.
5.  On the **Documents to Apply** tab, make sure that the system has added the AP bill in the amount of $250, which you are going to pay.
6.  On the form toolbar, click **Remove Hold** to give the payment the *Pending Print* status.
7.  On the form toolbar, click **Print/Process**.

    The system opens the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.

8.  Review the details of the payment selected in the row with the unlabeled check box selected for it.
9.  On the form toolbar, click **Process**.

    A separate browser tab is opened showing the printable version of the payment.

10. Review the printable version of the payment and close the browser tab. \(For the purposes of this activity, you do not need to actually print the check.\)
11. On the [Release Payments](AP_50_52_00.md) \(AP505200\) form, which the system has opened, review the details of the payment you are going to release.
12. On the form toolbar, click **Process**.
13. Open the Checks and Payments \(AP3020PL\) list of records.
14. Open the payment you have just released. \(It should be the top record in the table and have the *Closed* status.\)
15. On the **Financial** tab, click the link in the **Batch Nbr.** column to review the batch generated by the system.
16. On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form that the system opens, review the batch details.

    When the payment was released, the GL account associated with the cash account of the *MHEAD* branch \(*10200 - Company Checking Account*\) was credited in the amount of the payment. The *26010 - Accounts Payable - Related Company* account specified in the bill was debited in the total amount of the bill.


**Parent topic:**[Processing Intercompany Sales](../UserGuide/Finance_Intercompany_Sales_Mapref.md)

