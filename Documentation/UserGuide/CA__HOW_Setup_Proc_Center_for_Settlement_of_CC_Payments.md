# To Set Up a Processing Center for Settlement of Credit Card Payments {#_3b8420de-92d4-41a2-b85a-cf7ff6d6a02d .task}

On the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, you specify the settings of the processing center that you will use for automatic settlement of credit card payments.

## Before You Begin {#section_i42_kjv_vxb .section}

The processing center you wish to set up for automatic settlement must already be defined in the system. For an example of processing center setup, see [To Configure Acumatica Payments](AR__HOW_To_Configure_Acumatica_Payments.md).

## To Set Up a Processing Center for Settlement of Credit Card Payments {#section_k42_kjv_vxb .section}

1.  Open the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.
2.  In the **Proc. Center ID** box of the Summary area, select a processing center.
3.  Make sure that the **Active** check box is selected in the Summary area.
4.  Open the **Preferences** tab.
5.  In the **Settlement** section, select the **Import Settlement Batches** check box.
6.  In the **Import Start Date** box, specify the start date for which you want to import batches.
7.  Select the **Automatically Create Bank Deposits** check box.
8.  In the **Deposit Account** box, select the cash account to which the settlement batch will be deposited.

    You can select non-clearing accounts only, that is, accounts that have the **Clearing Account** check box cleared for them on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.

9.  Optional: On the **Fees** tab, specify an entry type for each fee type that can be included in the settlement report.

    You can add fees associated with the *Disbursement* and *Receipt* entry types. Only one line for each fee type can be added in the table on this tab.

    **Attention:** If the settlement report includes a fee with a type that is not mapped to an entry type, the bank deposit will not be created.

10. On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Performing Settlement of Credit Card Payments and EFTs](../UserGuide/CA__MNG_Settlement_of_CC_Payments.md)

