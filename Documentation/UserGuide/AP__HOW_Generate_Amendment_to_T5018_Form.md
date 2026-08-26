# To Generate an Amendment to CRA Reporting Forms {#_94d3832b-9603-4638-b5db-91ef7788be5d .task}

If you have added or voided any payment to a particular subcontractor and require an amended T5018 or T4A report, you can prepare an amendment for the original report on the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form.

## Before You Proceed {#section_xbq_njv_vxb .section}

Before you proceed, make sure that the following actions have been performed in the system:

-   The original T5018 e-file or T4A e-file has been prepared as described in [To Generate the Original CRA Reporting Forms](AP__HOW_Generate_T5018_Form.md).
-   The original file has been submitted to CRA and the **E-File Submitted to CRA** check box has been selected for the needed revision of the report.
-   New documents for T5018 vendors or T4A vendors have been recorded in the system after the original file was submitted.

## To Generate an Amendment to the T5018 E-File { .section}

1.  Open the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form.
2.  In the **Tax Form** box, select *T5018*.
3.  In the **Payer** box, select the needed company.
4.  In the **Year** box, select the needed T5018 tax year.
5.  In the **Revision** box, select the revision of the e-file for which you want to generate an amendment.

    Note that the **E-File Submitted to CRA** check box is selected for the revision.

6.  On the form toolbar, click **Amend Report**.

    The system prepares the next report revision and displays its settings on the form. Notice that the number in the **Revision** box is incremented by 1 and the **Filing Type** box displays the *Amendment* option.

7.  On the **Details** tab, review the aggregated information for the T5018 vendors.
8.  Click the link in the **Amount to Report** column to review the [T5018 Report Details](AP_40_76_00.md) \(AP407600\) form with a list of documents whose amounts will be included in the report.
9.  On the form toolbar, click **View Validation Report**.

    The system opens the [T5018 Preview Report](AP_60_76_00.md) \(AP607600\) with the T5018 information.

10. If the information in the [T5018 Preview Report](AP_60_76_00.md) is correct, click **Create E-File** on the form toolbar.

    The system generates an XML file of one of the following types:

    -   *Amended*: The vendor information is included in an amended T5018 report that is prepared after amendments are made to the vendor payments and their new **Total Service Amount** is still greater than the **Threshold Amount**.
    -   *Canceled*: The vendor information is included in a canceled T5018 report that is prepared after amendments are made to the vendor payments and their new **Total Service Amount** is less than the **Threshold Amount**.
    You can submit the file electronically to the Canada Revenue Agency \(CRA\). The generated file is attached to the form, and you can review it by clicking **Files** on the form title bar.

11. On the form toolbar, click **Save**.
12. When the amended e-file has been submitted to CRA, select the **E-File Submitted to CRA** check box and click **Save** to save the changes.

## To Generate an Amendment to the T4A E-File { .section}

1.  Open the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form.
2.  In the **Tax Form** box, select *T4A*.
3.  In the **Payer** box, select the needed company.
4.  In the **Year** box, select the needed T4A tax year.
5.  In the **Revision** box, select the revision of the e-file for which you want to generate an amendment.

    Note that the **E-File Submitted to CRA** check box is selected for the revision.

6.  On the form toolbar, click **Amend Report**.

    The system prepares the next report revision and displays its settings on the form. Notice that the number in the **Revision** box is incremented by 1 and the **Filing Type** box displays the *Amendment* option.

7.  On the **Details** tab, review the aggregated information for the T4A vendors.
8.  Click the link in the **Amount to Report** column to review the [T4A Report Details](AP_40_77_00.md) \(AP407700\) form with a list of documents whose amounts will be included in the report.
9.  On the form toolbar of the [Create CRA E-File](AP_50_76_00.md) form, click **Download E-File**.

    The system generates and downloads an XML file of one of the following types:

    -   *Amended*: The vendor information is included in an amended T4A report that is prepared after amendments are made to the vendor payments and their new **Total Service Amount** is still greater than the **Threshold Amount**.
    -   *Canceled*: The vendor information is included in a canceled T4A report that is prepared after amendments are made to the vendor payments and their new **Total Service Amount** is less than the **Threshold Amount**.
    You can submit the file electronically to the Canada Revenue Agency \(CRA\). The generated file is attached to the form, and you can review it by clicking **Files** on the form title bar.

10. On the form toolbar, click **Save**.
11. When the amended e-file has been submitted to CRA, select the **E-File Submitted to CRA** check box and click **Save** to save the changes.

**Parent topic:**[Filing CRA Forms](../UserGuide/AP__MNG_T5018_Filing.md)

