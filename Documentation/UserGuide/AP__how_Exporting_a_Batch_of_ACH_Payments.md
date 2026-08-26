# To Export a Batch of ACH Payments {#_89f6ffae-8959-46f9-8b0c-a671102f4552 .task}

You export a batch of Automated Clearing House \(ACH\) payments into a file. After the export of the batch, the file contains the required information to be processed in the ACH network.

## To Export a Batch of ACH Payments {#section_yl4_njv_vxb .section}

1.  Open the [Batch Payments](../Shared/../UserGuide/AP_30_50_00.md) \(AP305000\) form.
2.  In the **Reference Nbr.** box of the Summary area, select the identifier of the batch you want to export.
3.  In the **Batch Date** box, make sure that the date is correct.

    By default, the system inserts the current business date.

4.  On the form toolbar, click **Export**.
5.  If needed, in the form title bar, click **Files** to view the name of the file to which the batch was exported.

## Notes About the Procedure {#section_zl4_njv_vxb .section}

Depending on the state of the **Release Batch Payments before Export** check box on the **Settings for Use in AP** tab the [Payment Methods](CA_20_40_00.md) \(CA204000\) form for the payment method, the ACH batch of payments can have the *Balanced* or *Released* status before export.

If the check box is selected, only released ACH batches of payments can be exported. If the check box is cleared, ACH batches can be exported before they are released. In the latter case, the unreleased payments in the batch remain unreleased.

**Parent topic:**[Processing ACH Payments](../UserGuide/AP__con_ACH_Payment_Support.md)

