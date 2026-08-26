# To Modify a Branch's Configuration for 1099 Reports {#_75ab8b85-4628-46a2-bc5d-14e926d56316 .task}

If your organization consists of legal entities that are configured as branches requiring balancing and are consolidated under a company, you can prepare 1099-MISC reports by branch. In this case, each branch is a separate reporting entity.

To be able to generate the [1099-MISC Form](AP_65_30_00.md) \(AP653000\) report and any other 1099 reports, you should modify the configuration of the branch that you will select as a report parameter for all required 1099 reports.

## Before You Proceed {#section_tnp_njv_vxb .section}

Make sure that the *1099 Reporting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Modify a Branch's Configuration for 1099 Reports {#section_vnp_njv_vxb .section}

1.  Open the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
2.  On the **1099 Settings** tab, review the tax boxes, and specify minimum report amounts for the applicable tax boxes in the **Minimum Report Amount** column and the associated accounts in the **Account** column.
3.  On the form toolbar, click **Save**.
4.  Open the [Companies](CS_10_15_00.md) \(CS101500\) form.
5.  Select the company whose branch you want to modify for 1099 reports.
6.  On the **Company Details** tab, in the **Tax Registration Info** section, select the **File 1099-MISC by Branch** check box.
7.  On the form toolbar, click **Save**.
8.  Open the [Branches](CS_10_20_00.md) \(CS102000\) form.
9.  Select the branch whose configuration you want to modify for 1099 reports.
10. On the **Branch Details** tab, in the boxes of the **Main Address** section, enter the branch address, if these settings have not already been specified.
11. In the **Tax Registration Info** section, enter the legal name of the branch in the **Legal Name** box or leave the default value.
12. In the **Tax Registration ID** box, enter the branch's tax identification number \(TIN\).

    The tax registration ID of this branch will be printed on 1099 reports if the **File 1099-MISC by Branch** check box is selected for the company on the **Company Details** tab of the [Companies](CS_10_15_00.md) form.

13. Optional: In the **Tax Exemption Type** box, select the tax exemption type for the branch.
14. Select the **1099-MISC Reporting Entity** check box.
15. Optional: On the **1099 Settings** tab, in the **E-Filing Settings** section, enter the appropriate settings related to the Transmitter Control Code and the contact information.
16. On the form toolbar, click **Save**.

**Parent topic:**[Configuring 1099 Reporting](../UserGuide/AP__con_Support_for_U.S._1099-MISC_Form.md)

