# Filing the T5018 Form Electronically {#_92ef087c-d53e-41da-9517-a927ef4dc835 .concept}

You use the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form to generate an electronic XML file with T5018 returns, which you will submit to the Canada Revenue Agency \(CRA\) at the end of the reporting period or at the end of the calendar year.

You file the T5018 form by performing the following actions:

1.  On the [Create CRA E-File](AP_50_76_00.md) form, you select *T5018* in the **Tax Form** box.
2.  You specify the needed settings in the **Payer** and **Year** boxes of the Selection area.
3.  On the **Summary** tab, you review the information inserted by the system from the settings of the selected company and update it if necessary.
4.  On the form toolbar, you click **Prepare Report**.

    The **Details** tab of the form shows the aggregated payment transactions of T5018 vendors in the selected year that were not previously prepared. When you click **Prepare Report**, the original T5018 file \(revision 1\) is created for the selected company and year. On the form toolbar, the **Amend Report** button appears and the **View Validation Report** and **Create E-File** buttons become available.

5.  You preview the T5018 e-file by clicking **View Validation Report** on the form toolbar. The system opens the [T5018 Preview Report](AP_60_76_00.md) \(AP607600\) with the T5018 information.
6.  Optional: You review the list of the documents whose amounts are included in the T5018 report by clicking the link in the **Amount to Report** column on the **Details** tab. The system opens the [T5018 Report Details](AP_40_76_00.md) \(AP407600\) form. On this form, you can review each document by clicking the link in the **Reference Nbr.** column.
7.  If the information in the report is correct, on the [Create CRA E-File](AP_50_76_00.md) form, you create a T5018 e-file by clicking **Create E-File** on the form toolbar.

    The system generates an XML file with information for all vendors displayed on the **Details** tab. The generated file is attached to the form, and you can review it by clicking **Files** on the form title bar.

8.  Optional: You can activate the audit history for specific records by performing the following instructions:
    1.  On the form title bar of the [Create CRA E-File](AP_50_76_00.md) form, you click **Tools** &gt; **Audit History**.
    2.  In the **Update History** dialog box, which is opened, you click **Enable Field Level Audit**. The system navigates to the [Audit](SM_20_55_10.md) \(SM205510\) form.
    3.  On this form, you specify the needed settings and then click **Save** on the form toolbar. For details, see [Field-Level Auditing: General Information](SA_Managing_Field_Level_Auditing_GeneralInfo.md).

The T5018 e-files generated on the [Create CRA E-File](AP_50_76_00.md) have the following formats of the file name:

-   *Original*: `T5018-<Transmitter_Name>-<Tax_Year>-<Revision>-Original.xml`
-   *Amended*: `T5018-<Transmitter_Name>-<Tax_Year>-<Revision>-Amended.xml`
-   *Canceled*: `T5018-<Transmitter_Name>-<Tax_Year>-<Revision>-Canceled.xml`

In the given file names, `<Tax_Year>` is a date in the *MMDDYY* format and `<Revision>` is the revision number of the report, such as *R1*. For example, an original file can have the following name: `T5018-PRODUCTS-021224-R1-Original.xml`.

The T5018 XML file has the following structure.

|Node|Description|
|----|-----------|
|T619 Electronic Transmittal Details|This node contains the submission reference ID, the type of filing \(*Original* or *Amendment*\), the transmitter number, the transmitter type indicator, the number of summary records, the language of the communication indicator, and the transmitter's name, address, and contact information.|
|T5018 Slip|The T5018 slip contains the following vendor information: the recipient's name, the corporate partnership's name, the payer's SIN or **Tax Registration ID**, the recipient's address, and the amount.|
|T5018 Summary|The T5018 summary aggregates the amounts of all vendors, the number of vendors included in the XML file, and the payer's \(transmitter's\) name, address, contact information, and ending day of the period.|

## Generating Amendments to the T5018 Form { .section}

You can prepare amendments to a T5018 report submitted to the Canada Revenue Agency \(CRA\) whenever a new payment has been added or an existing payment has been voided for a particular subcontractor. You prepare an amendment by clicking **Amend Report** on the form toolbar of the [Create CRA E-File](AP_50_76_00.md) form and entering the settings \(**Transmitter** and **Year**\) for the amended report.

The **Amend Report** button appears on the form after you prepare the original report \(revision 1\). You can prepare an amendment by clicking this button after you submit the original report to the CRA by selecting the **E-File Submitted to CRA** check box and saving the changes on the form. Likewise, you will be able to prepare an amended report \(revision 3\) after the previously amended report \(revision 2\) has been submitted to the CRA.

## Canceling Submitted T5018 Reports { .section}

You can cancel a T5018 report already submitted to Canada Revenue Agency \(CRA\) by generating a T5018 cancellation report in the XML format and electronically submitting it. A T5018 report can be canceled on the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form.

To amend or cancel a T5018 report, you should complete the following general steps:

1.  Create a new document or documents for the needed vendor on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, and select or clear the **T5018 Service** check box for the needed lines.
2.  Pay the document on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.
3.  On the [Create CRA E-File](AP_50_76_00.md) form, select the submitted report that needs to be amended. \(This report revision must have the **E-File Submitted to CRA** check box selected.\)
4.  On the form toolbar, click **Amend Report**.

    The system prepares a new report revision with the *Amendment* filing type if the new **Total Service Amount** is greater than the **Threshold Amount**. The system prepares a new revision with the *Canceled* filing type if the new **Total Service Amount** is less than the **Threshold Amount**.

5.  Create a T5018 e-file by clicking **Create E-File** on the form toolbar.

**Parent topic:**[Filing CRA Forms](../UserGuide/AP__MNG_T5018_Filing.md)

