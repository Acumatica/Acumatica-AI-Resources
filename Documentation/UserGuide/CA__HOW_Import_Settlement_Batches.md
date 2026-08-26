# To Import Settlement Batches {#_c1b1d120-6bf3-45aa-9493-e28519c14e7c .task}

On the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form, you start the import of settlement batches from a processing center to Acumatica ERP.

## Before You Proceed {#section_ep2_kjv_vxb .section}

If you’re using Stripe, make sure that the *Integrated Card Processing* and *Stripe Payment Plug-In* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

Make sure that the processing center from which you are going to import transactions has been set up, as described in [To Set Up a Processing Center for Settlement of Credit Card Payments](CA__HOW_Setup_Proc_Center_for_Settlement_of_CC_Payments.md) or [To Create the Stripe Processing Center](CA__HOW_Create_Stripe_Processing_Center.md).

## To Import Settlement Batches from a Processing Center {#section_gp2_kjv_vxb .section}

1.  Open the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form.
2.  In the **Proc. Center ID** box of the Summary area, select the processing center from which you want to import batches.

    **Tip:** If there is only one active processing center in the system, it is selected in this box by default.

3.  Optional: In the **Import Batches Through** box, change the default value filled in by the system to specify the date up to which the batches should be imported.
4.  On the form toolbar, click **Import Batches** to start the import process.
5.  In the table, review the results of the import.
6.  To review a particular batch, click the link in the **Reference Number** column. The system opens the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form, where you can view the batch’s statistics and lists of transactions.

**Tip:** You can set up an import schedule by clicking **Schedules** &gt; **Add** on the form toolbar of the [Import Settlement Batches](CA_50_70_00.md) form. The system opens the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form in a pop-up window, where you can set up an automatic schedule. For more details, see [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md).

**Parent topic:**[Performing Settlement of Credit Card Payments and EFTs](../UserGuide/CA__MNG_Settlement_of_CC_Payments.md)

