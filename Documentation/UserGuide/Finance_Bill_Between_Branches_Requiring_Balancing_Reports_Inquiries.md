# Interbranch Bills with Balancing: Reports and Inquiries {#_e6ffce84-9930-49e9-b241-b437bbda984a .concept}

In this topic, you can find information about the reports and inquiries related to bills between branches that need to be balanced.

## Reviewing the Details of an Unreleased Bill {#section_jdn_njv_vxb .section}

If a bill has not yet been released, you can review the details of the bill by running the [AP Edit Detailed](../Shared/../UserGuide/AP_61_05_00.md) \(AP610500\) report. When you run this report from the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form by clicking **AP Edit Detailed** \(under **Reports**\) on the More menu, the report shows the details of the bill opened on this form. You can review what GL batch the system will create when you release the bill, which accounts will be updated by the transaction, and how the vendor's balance will be affected.

## Reviewing the Details of a Released Bill {#section_kdn_njv_vxb .section}

Once you have released a bill, you can review the details of the bill by running a report on the [AP Register Detailed](../Shared/../UserGuide/AP_62_20_00.md) \(AP622000\) form. When you run this report from the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form by clicking **AP Register Detailed** \(under **Reports**\) on the More menu, the report shows the details of the bill opened on this form. You can review the GL batch the system created when releasing the bill and the accounts that have been updated by the transaction.

## Viewing Bill Summaries {#section_ldn_njv_vxb .section}

To view the summary information on bills for a particular financial period, you can use the following reports:

-   [AP Register](../Shared/../UserGuide/AP_62_15_00.md) \(AP621500\): To view the list of released bills
-   [AP Edit](../Shared/../UserGuide/AP_61_07_00.md) \(AP610700\): To view the list of bills with the *On Hold* or *Balanced* status

## Viewing Bills Pending Payment {#section_mdn_njv_vxb .section}

You use the [Bills Pending Payment](../Shared/../UserGuide/AP_61_15_00.md) \(AP611500\) report to view the list of bills that have not been paid. You can limit the data in the report by any of the following criteria: company, branch, cash account, payment method, vendor, and report date.

## Reviewing Vendor Information {#section_ndn_njv_vxb .section}

You can review the balances of a specific vendor on the [Vendor Details](../Shared/../UserGuide/AP_40_20_00.md) \(AP402000\) form. When you open this inquiry from the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form by clicking **Vendor Details** \(under **Inquiries**\) on the More menu, the [Vendor Details](../Shared/../UserGuide/AP_40_20_00.md) form is opened, showing the outstanding balances of the selected vendor and a list of documents of this vendor that have the *Open* status. You can select the **Show All Documents** and **Include Unreleased Documents** check boxes in the Selection area of the form to include all documents and unreleased documents, respectively, in the inquiry.

## Reviewing the Vendor's Balance {#section_odn_njv_vxb .section}

After a bill has been released, you can review the vendor's balance on the [AP Balance by Vendor](../Shared/../UserGuide/AP_63_25_00.md) \(AP632500\) form. On this form, you select *Open Documents* in the **Report Format** box and specify the needed financial period.

In the report, you can review open documents and vendor balances at the end of the period, grouped by vendor and by AP account. When you release a bill or an adjustment, the system updates the vendor balance. **Vendor Documents Total** is the total amount of all open documents of the vendor.

**Parent topic:**[Processing Interbranch Bills With Balancing](../UserGuide/Finance_Bill_Between_Branches_Requiring_Balancing_Mapref.md)

