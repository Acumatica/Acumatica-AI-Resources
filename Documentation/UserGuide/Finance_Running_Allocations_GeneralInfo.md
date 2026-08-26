# Running of Allocations: General Information {#_c1d2d038-5ced-45c7-936b-0e10b4f021b2 .concept}

To distribute amounts among account–subaccount pairs based on the allocation rules that you have created, you need to run the allocations. At the end of the process of running allocations, the system creates batches of the *Allocation* type \(one for each allocation rule\). You should then release and post these batches to apply the allocations in the system.

## Learning Objectives {#section_n4l_mjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Run allocations that have been created in the system
-   Review and release the generated allocation batches

## Applicable Scenarios {#section_p4l_mjv_vxb .section}

You run allocations to distribute posted amounts among accounts, subaccounts, and branches according to the specified rules.

## Allocation Process {#section_r4l_mjv_vxb .section}

After you have created the necessary allocation rules on the [Allocations](GL_20_45_00.md) \(GL204500\) form, you run allocations on the [Run Allocations](GL_50_45_00.md) \(GL504500\) form; you can process multiple allocations at once. You need to run allocations as a part of the period-closing procedure when all transactions for the period have been posted to the general ledger.

To run allocations, you specify the date of allocation in the **Allocation Date** box. The system automatically inserts the period related to the date of the allocation in the **Post Period** box.

To perform an allocation for a required period, the required period has to be open.

## Generated Batches {#section_v4l_mjv_vxb .section}

When you run an allocation rule, the system generates an allocation batch that deducts the amounts from one account–subaccount pair and posts the distributed amounts to other account–subaccount pairs according to the allocation rule. The status of the batch depends on the state of the **Hold Batches on Entry** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form as follows:

-   If the check box is cleared, the batch has the *Balanced* status.
-   If the check box is selected, the batch has the *On Hold* status.

The number of transactions in a batch depends on the number of source accounts, the number of subaccounts involved, and the number of destination accounts. After the system has generated the allocation batches, you can review and post the batches.

## Rerunning of Allocations {#section_y4l_mjv_vxb .section}

An allocation can be run multiple times during the same post period. If you want to rerun an allocation, in the **Allocation Date** box of the [Run Allocations](GL_50_45_00.md) \(GL504500\) form, you should select a date that is the same as or later than the date of the previous run. You cannot run the allocation with an allocation date that is earlier than the date of last execution.

If a **Limit Amount** has been specified on the **Source Accounts** tab of the [Allocations](GL_20_45_00.md) \(GL204500\) form, the batches will be generated unless the source accounts' balances become 0 or the limit is reached.

If you have posted batches that were generated during the previous run of an allocation, then the process has affected the balances of the accounts involved in the allocation.

If you have not posted the allocation batches, the balances involved in the allocation are the same as they were before you have run the allocation. You cannot run a new allocation based on an allocation rule if there are unposted batches generated based on that allocation rule.

After you have rerun the allocation, the reference numbers of the newly generated batches are displayed in the **Last Batch** column of the [Run Allocations](GL_50_45_00.md) form.

**Parent topic:**[Running Allocations](../UserGuide/Finance_Running_Allocations_Mapref.md)

