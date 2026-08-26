# To Quickly Prepare a Batch of Payments {#_0c1b87a9-cc22-4c49-b306-851aee012cd2 .task}

You use the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form to quickly prepare a batch of AP payments.

## Before You Proceed {#section_ok4_njv_vxb .section}

-   Make sure that a payment method and a cash account for quick batch processing have been set up, as described in [Setup of ACH Payment Processing](CA__CON_Setup_ACH_Payments.md).
-   Make sure that appropriate AP documents \(bills, bill lines, and debit and credit adjustments, and prepayments\) with the *Open* status exist in the system.

## To Quickly Prepare a Batch of Payments {#section_pk4_njv_vxb .section}

1.  Open the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form.
2.  In the Selection area, specify the following settings:
    -   **Payment Method**: The payment method for which quick generation of batches has been set up
    -   **Cash Account**: The cash account that associated with the selected payment method
    -   **Payment Date**: The payment date for which you want to generate a batch
    -   **Vendor**: The vendor for which you want to generate a batch
3.  Make sure that the **Quick Batch Generation** check box is selected.
4.  On the **Documents to Pay** tab, the system has listed the vendor documents available in the system. Select the unlabeled check boxes in the rows of the documents that you want to include in the batch.
5.  On the form toolbar, click **Process**. The system processes the documents and navigates to the [Batch Payments](AP_30_50_00.md) \(AP305000\) form.

    All payments are generated with the *Pending Print* status and are added to the created batch payment that opens on the [Batch Payments](AP_30_50_00.md) form. For each payment added to the batch, the system generates a **Payment Ref.** number by incrementing the number specified in the **AP Last Reference Number** column on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form for the payment method.

6.  Optional: In the **Description** box, type the description of the batch.
7.  Review the batch details in the table, and click **Remove Hold** on the form toolbar to give the batch the *Balanced* status.
8.  On the form toolbar, click **Export** to export the batch.

**Parent topic:**[Processing ACH Payments](../UserGuide/AP__con_ACH_Payment_Support.md)

