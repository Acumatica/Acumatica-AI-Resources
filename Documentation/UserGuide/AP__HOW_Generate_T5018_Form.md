# To Generate the Original CRA Reporting Forms {#_a63a703b-ddf0-4ea5-9038-e14d4d315cf4 .task}

You use the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form to generate the original T5018 and T4A forms in XML format.

## Before You Proceed {#section_xbq_njv_vxb .section}

Make sure that you have enabled the *Canadian Localization* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and configured the needed entities, as described in [Configuring CRA Reporting](AP__CON_Configuring_T5018.md).

## To Generate the Original T5018 Electronic File {#section_zbq_njv_vxb .section}

1.  Open the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form.
2.  In the **Tax Form** box, select *T5018*.
3.  In the **Payer** box of the Selection area, select the company that will submit the T5018 returns.
4.  In the **Year** box, select the tax year for which you are going to submit the T5018 returns.
5.  Optional: In the **Threshold Amount** box, review the amount that the system uses to filter out payment transactions of T5018 vendors that are below this amount.

    Note that the **Filing Type** read-only box shows the *Original* option, indicating that this is the original e-file.

6.  On the **Summary** tab, in the **Language** box, select the language in which you want the T5018 file to be generated.
7.  Review the information in the **Company** and **Contact** sections on the **Summary** tab. Update the information, if necessary.
8.  On the form toolbar, click **Prepare Report**.
9.  On the **Details** tab, review the aggregated information for the T5018 vendors.
10. On the form toolbar, click **View Validation Report**.

    The system opens the [T5018 Preview Report](AP_60_76_00.md) \(AP607600\) with the T5018 information.

11. Optional: Click the link in the **Amount to Report** column to review the list of documents that will be opened on the [T5018 Report Details](AP_40_76_00.md) \(AP407600\) form. You can review each document on a data entry form by clicking the link in the **Reference Nbr.** column.
12. If the information in the [T5018 Preview Report](AP_60_76_00.md) is correct, click **Create E-File** on the form toolbar.

    The system generates an XML file that you can now submit electronically to the Canada Revenue Agency \(CRA\). The generated file is attached to the form, and you can review it by clicking **Files** on the form title bar.

13. On the form toolbar, click **Save**.
14. When the original e-file has been submitted to CRA, select the **E-File Submitted to CRA** check box and click **Save** to save the changes.

## To Generate the Original T4A Electronic File { .section}

1.  Open the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form.
2.  In the **Tax Form** box, select *T4A*.
3.  In the **Payer** box of the Selection area, select the company that will submit the T4A returns.
4.  In the **Year** box, select the tax year for which you are going to submit the T4A returns.
5.  Optional: In the **Threshold Amount** box, review the amount that the system uses to filter out payment transactions of T4A vendors that are below this amount.

    Note that the **Filing Type** read-only box shows the *Original* option, indicating that this is the original e-file.

6.  On the **Summary** tab, in the **Language** box, select the language in which you want the T4A file to be generated.
7.  Review the information in the **Company** and **Contact** sections on the **Summary** tab. Update the information, if necessary.
8.  On the form toolbar, click **Prepare Report**.
9.  On the **Details** tab, review the aggregated information for the T4A vendors.
10. Optional: Click the link in the **Amount to Report** column to review the list of documents that will be opened on the [T4A Report Details](AP_40_77_00.md) \(AP407700\) form. You can review each document on a data entry form by clicking the link in the **Reference Nbr.** column.
11. On the form toolbar, click **Download E-File**.

    The system generates and downloads an XML file that you can now submit electronically to the Canada Revenue Agency \(CRA\).

12. On the form toolbar, click **Save**.
13. When the original e-file has been submitted to CRA, select the **E-File Submitted to CRA** check box and click **Save** to save the changes.

**Parent topic:**[Filing CRA Forms](../UserGuide/AP__MNG_T5018_Filing.md)

