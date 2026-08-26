# Appointment Billing Correction: Process Activity {#_f1326485-1f4b-418f-9e4f-de8235fd34e9 .task}

This activity will walk you through the processes of making corrections to an appointment after an accounts receivable invoice has been released for it, and generating a new AR invoice for the appointment.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that HM's Bakery &amp; Cafe ordered training on juicer usage for newcomers. A service manager \(Maia Davis\) of the SweetLife Service and Equipment Sales Center created an appointment and included a training service item. The assigned staff member \(Todd Bloom\) performed the necessary service at the customer location and completed the appointment in the system. The accountant \(Yona Jones\) closed the appointment and generated an AR invoice.

Further suppose that after the invoice was generated, the service manager learned that at the end of the appointment where the training was delivered, the staff member performed a repair of a juicer. The service manager contacted the customer and both parties agreed to include the repair service in the previously created appointment, and to generate an updated AR invoice. Acting as the service manager, you will perform the needed steps to update the appointment and generate a new AR invoice, which the accountant will process further.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](CS_10_15_00.md) \(CS101500\) form. Multiple branches of the company have been created on the [Branches](CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Employees](EP_20_30_00.md#) \(EP203000\) form, *EP00000040 \(Maia Davis\)* has been defined.
-   On the [Users](SM_20_10_10.md) \(SM201010\) form, the *davis* account has been created. For this user account, in the **Linked Entity** box of the Summary area of the form, the *Maia Davis* employee account has been specified.
-   On the [Branch Locations](FS_20_25_00.md#) \(FS202500\) form, the *WEST BRIGHTON* branch location has been defined.
-   On the [User Profile](SM_20_30_10.md#) \(SM203010\) form, for the *davis* user, the *WEST BRIGHTON* branch location has been specified as the default branch location.
-   On the [Service Order Types](FS_20_23_00.md) \(FS202300\) form, the *TRN* service order type has been defined to generate AR invoices to bill customers for services that have been provided. That is, *AR Documents* has been selected in the **Generated Billing Documents** box in the **Billing Settings** section of the **General** tab.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *HMBAKERY* \(HM's Bakery and Cafe\) customer has been defined; the *AP AP* billing cycle has been selected in the **Service Management** section of the **Billing** tab.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, for the *TRAINING* and *REPAIR* non-stock items, the *Service* type has been selected, and the *Time* billing rule has been specified.

## Process Overview { .section}

On the [Appointments](FS_30_02_00.md) \(FS300200\) form, you will find the released accounts receivable invoice and click its link to open the invoice. You will reverse this invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form by clicking the **Reverse and Apply to Memo** command on the More menu. You will then unclose the appointment and correct it. Finally, on behalf of the accountant, you will close an appointment and generate a new invoice.

## System Preparation {#section_snv_wpq_ghc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a service manager by using the *davis* username and the *123* password.
2.  In the Date box in the upper-right corner of the Acumatica ERP screen, specify the business date *2/16/2026*. For simplicity, you will use this business date to create and process all documents in this activity.
3.  After signing in, make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.

## Step 1: Opening an Invoice from the Appointment { .section}

To find and open the invoice generated from the appointment, do the following:

1.  On the [Appointments](FS_30_02_00.md) \(FS300200\) form, open the *000018-1* appointment.
2.  On the **Billing Documents** tab, click the reference number of the invoice that was generated for the appointment.

    The [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form opens in a pop-up window with the settings of the invoice.


## Step 2: Reversing the Invoice { .section}

While you are still viewing the accounts receivable invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, reverse it as follows:

1.  On the More menu \(under **Corrections**\), click **Reverse and Apply to Memo**. The system creates a document of the *Credit Memo* type with the settings of the invoice and opens it on the same form.
2.  On the form toolbar, click **Remove Hold**.
3.  On the form toolbar, click **Release** to release the credit memo.
4.  Close the window with the [Invoices and Memos](AR_30_10_00.md) form.

You have released the *Credit Memo* document that reversed the invoice. Now the corresponding appointment can be unclosed and corrections can be made to it.

## Step 3: Correcting the Appointment { .section}

To correct the appointment, do the following:

1.  Return to the *000018-1* appointment on the [Appointments](FS_30_02_00.md) \(FS300200\) form. Refresh the page.
2.  On the **Billing Documents** tab, verify that a row has been added for the *AR Credit Memo* document.
3.  On the form toolbar, click **Unclose**. Then click **Yes** in the **Confirm Appointment Unclosing** dialog box, which appears.
4.  On the **Details** tab, click **Add Row**, and select *REPAIR* in the **Inventory ID** column of the row.
5.  In the **Actual Duration** column of the row, verify `1 h 00 m` has been specified.
6.  On the form toolbar, click **Save**.
7.  On the form toolbar, click **Close**.
8.  On the form toolbar, click **Run Billing**.

The system opens a pop-up window with the prepared invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. Notice that two detail lines have been added on the **Details** tab \(one for the *TRAINING* service, and another for the *REPAIR* service\).

The invoice is on hold. The accountant can process this invoice further.

Return to the appointment on the [Appointments](FS_30_02_00.md) \(FS300200\) form. On the **Billing Documents** tab, you can see that this invoice has been added to the list of billing documents.

**Parent topic:**[Correcting Appointment Billing](../UserGuide/Services_Correction_of_Appointment_Mapref.md)

