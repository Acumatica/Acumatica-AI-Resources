# Filing the T4A Form Electronically {#_a395e925-e7f6-4d7b-a419-e3d0fe91374d .concept}

You use the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form to generate an electronic XML file with T4A returns, which you will submit to the Canada Revenue Agency \(CRA\) at the end of the calendar year.

You file the T4A form by performing the following actions:

1.  On the [Create CRA E-File](AP_50_76_00.md) form, you select *T4A* in the **Tax Form** box.
2.  You specify the needed settings in the **Payer** and **Year** boxes of the Selection area.
3.  On the **Summary** tab, you review the information inserted by the system from the settings of the selected company and update it if necessary.
4.  On the form toolbar, you click **Prepare Report**.

    The **Details** tab of the form shows the aggregated payment transactions of T4A vendors in the selected year that were not previously prepared. When you click **Prepare Report**, the original T4A file \(revision 1\) is created for the selected company and year. On the form toolbar, the **Amend Report** and **Download E-File** buttons appear.

5.  Optional: You review the list of the documents whose amounts are included in the T4A report by clicking the link in the **Amount to Report** column on the **Details** tab. The system opens the [T4A Report Details](AP_40_77_00.md) \(AP407700\) form. On this form, you can review each document by clicking the link in the **Reference Nbr.** column.
6.  If the information in the report is correct, on the [Create CRA E-File](AP_50_76_00.md) form, you create a T4A e-file by clicking **Download E-File** on the form toolbar.

    The system generates and downloads an XML file with information for all vendors displayed on the **Details** tab.

7.  Optional: You can activate the audit history for specific records by performing the following instructions:
    1.  On the form title bar of the [Create CRA E-File](AP_50_76_00.md) form, you click **Tools** &gt; **Audit History**.
    2.  In the **Update History** dialog box, which is opened, you click **Enable Field Level Audit**. The system navigates to the [Audit](SM_20_55_10.md) \(SM205510\) form.
    3.  On this form, you specify the needed settings and then click **Save** on the form toolbar. For details, see [Field-Level Auditing: General Information](SA_Managing_Field_Level_Auditing_GeneralInfo.md).

The following document types are included in the T4A report:

-   *Payment*: A document created on the [Checks and Payments](AP_30_20_00.md) \(AP301000\) form. The document amount is added to the T4A amount.
-   *Prepayment*: A document created on the [Checks and Payments](AP_30_20_00.md) form. The document amount is added to the T4A amount.

    **Attention:** Prepayments without applications are included in the T4A report without any adjustments for the possible taxes. After prepayment applications are released, there will be enough data for the system to adjust the amounts. This means that you will have to generate a new revision of the T4A report to get correct report amounts.

-   *Refund*: A document created on the [Checks and Payments](AP_30_20_00.md) form. The document amount is subtracted from the T4A amount.
-   *Cash Purchase*: A document created on the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form. The document amount is added to the T4A amount.
-   *Cash Return*: A document created on the [Cash Purchases](AP_30_40_00.md) amount. The document amount is subtracted from the T4A amount.

## Generating Amendments to the T4A Form { .section}

You can prepare amendments to a T4A report submitted to the Canada Revenue Agency \(CRA\) whenever a new payment has been added or an existing payment has been voided for a particular subcontractor. You prepare an amendment by clicking **Amend Report** on the form toolbar of the [Create CRA E-File](AP_50_76_00.md) form and entering the settings \(**Payer** and **Year**\) for the amended report.

The **Amend Report** button appears on the form after you prepare the original report \(revision 1\). You can prepare an amendment by clicking this button after you submit the original report to the CRA by selecting the **E-File Submitted to CRA** check box and saving the changes on the form. Likewise, you will be able to prepare an amended report \(revision 3\) after the previously amended report \(revision 2\) has been submitted to the CRA.

## Canceling Submitted T4A Reports { .section}

You can cancel a T4A report already submitted to Canada Revenue Agency \(CRA\) by generating a T4A cancellation report in the XML format and electronically submitting it. A T4A report can be canceled on the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form.

To amend or cancel a T4A report, you should complete the following general steps:

1.  Create a new document or documents for the needed vendor on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.
2.  On the [Create CRA E-File](AP_50_76_00.md) form, select the submitted report that needs to be amended. \(This report revision must have the **E-File Submitted to CRA** check box selected.\)
3.  On the form toolbar, click **Amend Report**.

    The system prepares a new report revision with the *Amendment* filing type if the new **Total Service Amount** is greater than the **Threshold Amount**. The system prepares a new revision with the *Canceled* filing type if the new **Total Service Amount** is less than the **Threshold Amount**.

4.  Create a T4A e-file by clicking **Create E-File** on the form toolbar.

**Parent topic:**[Filing CRA Forms](../UserGuide/AP__MNG_T5018_Filing.md)

