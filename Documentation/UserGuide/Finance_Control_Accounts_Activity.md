# Control Accounts: Process Activity {#_dc3b27d8-1cc3-47e4-acd0-a37ab421ac2d .task}

In this activity, you will explore how the use of control accounts is restricted in Acumatica ERP.

## Story {#section_l3f_mjv_vxb .section}

The SweetLife Fruits &amp; Jams company has migrated to a new version of Acumatica ERP. \(Starting in 2020 R2, it became possible to configure some of the GL accounts as control accounts and to restrict direct posting to the control accounts.\)

The implementation consultant responsible for the update has configured some of the accounts as control accounts in the system and has asked you, the SweetLife accountant, to review the control accounts in the system and become familiar with the system’s restrictions on the use of control accounts.

## Process Overview {#section_o3f_mjv_vxb .section}

First, on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, you will review the two GL accounts configured as control accounts for accounts receivable and accounts payable. On this form, you will also allow direct posting to the GL account configured as a control account for the AR subledger.

On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create an invoice for a customer, and in an invoice line, you will select the control account for the AR subledger in the **Account** column. You will explore how the system behaves when direct posting to the control account is prohibited.

On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will create a bill for a vendor, and in a bill line, you will select the control account for the AP subledger in the **Account** box. You will explore how the system behaves when direct posting to the control account is allowed.

On the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form, in the **AR Account** box, in which the system expects that a control account for accounts receivable will be selected, you will select first a non-control account and then a control account for a subledger other than AR; you will then explore what happens.

For a list of the specific UI elements in which the system expects a control account for a particular subledger, see [Control Accounts: UI Elements for Which Control Accounts Are Expected](Finance_Control_Accounts_UI_Elements.md).

## System Preparation {#section_u3f_mjv_vxb .section}

Before you perform the steps of this lesson, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. To sign in as an accountant, use the following credentials:
    -   Username: *johnson*
    -   Password: *123*
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/31/2026*. If a different date is displayed, click the Business Date menu button and select *1/31/2026*. For simplicity, in this process activity, you will create all documents in the system on this business date.
3.  On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Reviewing the GL Accounts Configured in the System {#section_w3f_mjv_vxb .section}

To review the GL accounts configured in the system as control accounts for the accounts receivable and accounts payable subledgers, do the following:

1.  Open the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.

    Notice that for the *11000 - Accounts Receivable* account, *AR* is selected in the **Control Account Module** column, and for the *20000 - Accounts Payable*, *AP* is selected in the **Control Account Module** column. This means that the *11000* account is a control account for accounts receivable and the *20000* account is a control account for accounts payable.

    Further notice that the **Allow Manual Entry** check box is cleared for both accounts. This indicates that direct posting to these accounts is prohibited.

2.  Select the **Allow Manual Entry** check box for the *20000* account and click **Save** to save your changes.

    When the **Allow Manual Entry** check box is selected for a control account, users can select this account in documents on data entry forms.

    In the next steps of this lesson, you will begin creating documents to explore how the system restricts posting to these accounts based on this setting.


## Step 2: Creating an Invoice {#section_cjf_mjv_vxb .section}

To create an invoice for GoodFood One Restaurant to test the control accounts, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Type**: *Invoice*
    -   **Customer**: *GOODFOOD*
    -   **Date**: *1/31/2026* \(selected by default\)
2.  On the **Details** tab, add a new row, and in the added row, specify the following settings:

    -   **Branch**: *HEADOFFICE* \(selected by default\)
    -   **Inventory ID**: *ONLCOURSE*
    -   **Quantity**: `5`
    -   **UOM**: *DAY* \(selected by default\)
    -   **Unit Price**: `14.50` \(selected by default\)
    In the **Account** column, notice that the system has automatically inserted the *40000 - Sales Revenue* account.

3.  Enter *11000* in the **Account** column and press Ctrl + Enter to submit the changes.

    Notice that the system displays an error indicating that this account is configured as a control account for accounts receivable and that posting to it is prohibited. This happens because *11000* is selected as a control account for accounts receivable but the settings do not allow posting to it—that is, you left the **Allow Manual Entry** check box cleared for it on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.


You do not have to save the invoice or process it any further. You started creating it solely to see how the system restricts posting to the account configured as a control account.

## Step 3: Creating a Bill {#section_hjf_mjv_vxb .section}

To start to create a bill for Blueline Advertisement, do the following:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Type**: *Bill*
    -   **Vendor**: *BLUELINE*
    -   **Date**: *1/31/2026* \(selected by default\)
2.  On the **Details** tab, add a new row, and in the added row, specify the following settings:

    -   **Branch**: *HEADOFFICE* \(selected by default\)
    -   **Inventory ID**: *ADVERT*
    -   **Quantity**: `2`
    -   **UOM**: *DAY* \(selected by default\)
    -   **Unit Cost**: `300`
    In the **Account** column, notice that the system has automatically inserted the *61000 - Advertising Expense* account.

3.  Enter *20000* in the **Account** column and press Ctrl + Enter to submit the changes.

    Notice that unlike in Step 2, the system does not display any errors. This happens because the **Allow Manual Posting** check box has been selected for the *20000* account on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.


You do not have to save the bill or process it any further. You started creating it solely to see how the system restricts posting to the account configured as a control account.

## Step 4: Reviewing the GL Accounts Specified for a Customer {#section_mjf_mjv_vxb .section}

To review the GL accounts specified for the GoodFood One Restaurant customer, do the following:

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, select the *GOODFOOD* customer.
2.  On the **GL Accounts** tab of the form, review the GL accounts selected for the customer.

    Notice that in the **AR Account** box, the *11000* account is selected. This account has been configured as a control account for accounts receivable; that is, on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, *AR* has been selected for this account in the **Control Account Module** box.

3.  In the **AR Account** box, select *11010*, which is not configured as a control account for any subledger.

    The system displays a warning that this account has not been configured as a control account for accounts receivable. Despite the warning, it is still possible to select the non-control account in this box.

4.  In the **AR Account** box, select *20000*.

    Notice that the system displays an error. The *20000* account is configured as a control account for AP and cannot be selected in the **AR Account** box because the system expects that a control account for accounts receivable should be selected in this box.

5.  In the **AR Account** box, select *11000* again, and save your changes.

**Parent topic:**[Managing Control Accounts](../UserGuide/Finance_Control_Accounts_Mapref.md)

