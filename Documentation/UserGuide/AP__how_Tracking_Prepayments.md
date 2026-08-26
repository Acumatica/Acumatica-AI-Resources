# To Track Prepayments to Vendors {#_d5ac436d-720b-4dfd-9eff-f57579880d7f .task}

You use the prepayment account to record prepayments to vendors.

**Note:**

You set up a default prepayment account \(and subaccount\) on the **GL Accounts** tab of the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form. You specify the prepayment account \(and subaccount\) for each vendor class that might be used when a user creates a new vendor.

You can change the prepayment account \(and subaccount\) for a particular vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form.

The system debits the prepayment account by default when a user enters a new prepayment to a vendor.

## To View Prepayment Balances {#section_gb4_njv_vxb .section}

1.  Open the [Vendor Summary](AP_40_10_00.md) \(AP401000\) form.
2.  In the **Branch** box of the Selection area, select the branch for which you want to view prepayments.
3.  In the **Period** box, select the financial period, or leave the box blank to view all open prepayments.
4.  In the **AP Account** box, select the prepayment account.

In the table, the list of vendors \(those that meet the selected criteria\) appears. In the **Prepayments Balance** column, you can view the prepayment balance of each vendor. The **Total Prepayments** box in the Selection area displays the total amount of prepayments for all listed vendors.

## To View Prepayments by Vendor {#section_ib4_njv_vxb .section}

1.  Open the [Vendor Details](AP_40_20_00.md) \(AP402000\) form.
2.  In the **Branch** box of the Selection area, select the branch for which you want to view prepayments.
3.  In the **Vendor** box, select the vendor.
4.  In the **AP Account** box, select the prepayment account.

In the table, you can view the list of prepayments that match the selected criteria. The **Prepayment Balance** box of the Selection area displays the total amount of prepayments to the vendor, based on the selected criteria.

## To View All Prepayments {#section_kb4_njv_vxb .section}

1.  Open the [AP Balance by GL Account](AP_63_20_00.md) \(AP632000\) report.
2.  On the **Report Parameters** tab, specify the report parameters that fit your needs for information.

    **Note:** If you leave the **Branch** box blank, you'll get information on all branches.

3.  On the form toolbar, click **Run Report**.
4.  Find the prepayment account in the report to view all prepayments that fit the specified criteria.

**Parent topic:**[Processing Prepayments for a Bill](../UserGuide/Finance_ProcessingPrepayments_Mapref.md)

