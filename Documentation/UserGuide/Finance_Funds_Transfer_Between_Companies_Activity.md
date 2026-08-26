# Intercompany Funds Transfers: Process Activity {#_0440f70e-50d3-4cca-ba7f-e11c6e158931 .task}

In this activity, you will learn how to make a funds transfer between related companies of an organization.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_ltc_kjv_vxb .section}

At the end of the *01-2026* period, the SweetLife Fruits &amp; Jams and Muffins &amp; Cakes companies need to reconcile their due-to and due-from accounts so that the companies can pay each other.

Acting as an accountant, you need to review the due-to and due-from accounts and create and release a funds transfer from one company to the other.

## Configuration Overview {#section_otc_kjv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *MUFFINS* and *SWEETLIFE* companies have been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *MHEAD* branch of the *MUFFINS* company has been created, and the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, multiple accounts have been created.
-   On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, the *10200MF - Muffins Checking* and *10200WH - Wholesale Checking* cash accounts have been created.
-   On the [Inter-Branch Account Mapping](GL_10_10_10.md) \(GL101010\) form, the account mapping rules between the Muffins &amp; Cakes head office branch \(*MHEAD*\) and the SweetLife head office branch \(*HEADOFFICE*\) have been defined.

## Process Overview {#section_rtc_kjv_vxb .section}

To process an intercompany funds transfer, you will create and release a funds transfer for the needed amount on the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form.

## System Preparation {#section_ttc_kjv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Nenad Pasic by using the *pasic* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/31/2026*. If a different date is displayed, click the Business Date menu button and select *1/31/2026*.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *Muffins Head Office &amp; Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *Muffins Head Office &amp; Wholesale Center*.

## Step: Processing a Funds Transfer Between Companies {#section_vtc_kjv_vxb .section}

To process a funds transfer from the Muffins Head Office branch to the SweetLife Head Office branch, do the following:

1.  Open the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**, and in the **Description** box of the Summary area, type `Intercompany payoff 01-2026`.
3.  In the **Source Account** section, specify the following settings:

    -   **Account**: *10200MF - Muffins Checking*
    -   **Transfer Date**: *1/31/2026*
    -   **Document Ref.**: `01312026`
    -   **Amount**: `70.00`
    These settings indicate to the system that $70 will be transferred from the *10200MF - Muffins Checking* account on January 31, 2026. The document reference number is the number of the corresponding bank document.

4.  In the **Destination Account** section, specify the following details:

    -   **Account**: *10200WH - Wholesale Checking*
    -   **Receipt Date**: *1/31/2026*
    These settings indicate that the funds will be transferred to the *10200WH* account, which is defined as a cash account for the SweetLife company.

5.  On the form toolbar, click **Save** to save the funds transfer.
6.  On the form toolbar, click **Remove Hold** and then click **Release** to release the funds transfer.
7.  Click the link in the **Batch Number** box and review the batch, which the system has opened on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    Notice that the system added the balancing entries to the batch during the posting process. The balancing entries have been created based on the mapping rule that has been configured on the [Inter-Branch Account Mapping](GL_10_10_10.md) \(GL101010\) form.


**Parent topic:**[Processing Inter-Company Funds Transfers](../UserGuide/Finance_Funds_Transfer_Between_Companies_Mapref.md)

