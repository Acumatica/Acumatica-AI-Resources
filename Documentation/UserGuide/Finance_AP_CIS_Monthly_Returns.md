# CIS: Monthly Return and Deduction Statements

At the end of each tax month, you report your CIS activity to HMRC from the [Submit CIS Return](AP_50_77_00.md) \(AP507700\) form. You prepare the return, confirm the required declarations, and submit it; you then issue a deduction statement to each subcontractor and generate the tax bill that pays HMRC. A tax month runs from the 6th of one month to the 5th of the next, and both the return and the statements are due by the 19th. Because CIS is reported on a payment basis, the return includes payments by the date you released them, not the date of the bill.

## The Return Lifecycle

A return moves through the values shown in the **Submission State** box. The actions available to you depend on that status.

|Submission State|What You Can Do|
|----------------|---------------|
|*Not Prepared*|Select a contractor and tax period, and prepare the return.|
|*Not Submitted*|Review the prepared return, refresh it, submit it to HMRC, or delete it.|
|*Submitted*|Generate deduction statements, prepare the tax report, or amend the return.|

The **Filing Type** box shows *Original* until you amend a submitted return, after which it shows *Amended*. Once an original return is submitted, the **Amend CIS Return** button replaces **Prepare CIS Return**.

## Preparing and Submitting a Return

If no tax periods exist for the CIS tax agency when you open the [Submit CIS Return](AP_50_77_00.md) \(AP507700\) form, the system generates the tax periods of the tax year that includes the current business date. You therefore do not need to generate the periods manually on the [Tax Periods](TX_20_70_00.md) \(TX207000\) form before you prepare your first return.

1.  In the Summary area on the [Submit CIS Return](AP_50_77_00.md) form, select the **Contractor** and the **Tax Period**. By default, the tax period shows the previous period.
2.  On the form toolbar, click **Prepare CIS Return**. The payments made to your subcontractors in the period appear on the **Details** tab. If you change any of the underlying data before you submit, click **Prepare CIS Return** again to refresh the return.
3.  Click **Submit CIS Return**. The system opens the **CIS Declarations** dialog box with four declarations:

    -   The **Employment Status** and **Subcontractor Verification** declarations are required on every return.
    -   The **Higher Rate Deduction** declaration is available only when at least one subcontractor on the return has the **Unmatched Tax Rate Indicator** check box selected, in which case you must confirm it.
    -   The **Information Correct** declaration becomes available only after you confirm the applicable declarations above.
    Selecting a declaration's check box records a Yes response.

4.  Confirm the required declarations by selecting the check boxes and click **Submit**. The system generates an XML file, submits it to HMRC, and sets the status to *Submitted*.

## Reviewing Payment Details

On the **Details** tab of the [Submit CIS Return](AP_50_77_00.md) \(AP507700\) form for a prepared return, the **Amount Paid** column for each subcontractor is a link. Click it to open the [CIS Payment Details](AP_40_78_00.md) \(AP407800\) form, which lists the individual payments that make up that amount—one row per payment—each with its total payments, cost of materials, amount liable to deduction, deduction rate, and amount deducted. Opened this way, the inquiry is filtered to the subcontractor and the tax period from the return.

You can also open the [CIS Payment Details](AP_40_78_00.md) form on its own. Select a contractor and a date range to list the payments, and optionally narrow the results by **Subcontractor** or **Project**.

## Filing a Nil Return

You must file a return even in a month when you made no payments to subcontractors. This includes the first period you report on: because the system generates the tax periods when you open the form, you can prepare and submit a nil return without any prior CIS setup on the [Tax Periods](TX_20_70_00.md) \(TX207000\) form. If there is no data for the period when you click **Prepare CIS Return**, the system generates a nil return: the **Details** tab is empty and the **Nil Return** check box is selected. You still submit the return to HMRC by the 19th. The **CIS Declarations** dialog box for a nil return contains the **Nil Return Indicator** and the **Information Correct** declaration.

If you later record payments for the period and click **Prepare CIS Return** again, the payments appear on the **Details** tab and the **Nil Return** check box is cleared.

## Amending a Submitted Return

To correct a return you have already submitted, select the same contractor and tax period and click **Amend CIS Return**, then submit it as you would an original return. An amended return contains the full updated data—the original plus your changes—not only the changed amounts. You can prepare and submit more than one amended return for the same period.

If you delete a prepared return that has not been submitted, the system rolls back to the last submitted return for the period.

**Tip:** Correct a change to a rate or payment amount by adjusting it in the next month's return. For a correction to a subcontractor's details, contact HMRC directly.

## Generating Deduction Statements

Once a return is submitted, the **Deduction Statement** button becomes available and opens the [Subcontractor Deduction Statement](AP_60_77_00.md) \(AP607700\) report. Generate a statement for each subcontractor from whom you deducted an amount—one for each tax month, or one for each payment if you pay more often. The statement is a PDF file that the subcontractor can store and print, and it is due within 14 days of the end of the tax month. To reissue a statement, select the **Duplicate Statement** check box; the statement is then marked as *Duplicate*.

Each statement includes the deduction basis \(payment or monthly\), the contractor's name and address, the employer reference number, the name of the scheme, the payment and deduction month, the subcontractor's name and Unique Taxpayer Reference, the total payments excluding VAT, the cost of materials, the amount liable to deduction, the amount deducted, and the amount paid. The verification number appears only when the deduction was made at the higher rate.

## Paying HMRC

After you submit a return, the **Prepare Tax Report** button becomes available and opens the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form with the contractor, the CIS tax agency, the tax period, and the date range already filled in. From that form, you prepare the tax report and generate the tax bill that pays HMRC. The button is unavailable again once the tax report is prepared and released, and it becomes available again when you submit an amended return. For a CIS tax agency, voiding the tax report for the first tax period of a tax year does not remove the tax periods generated for that year; all of them remain available.

**Parent topic:**[Construction Industry Scheme \(CIS\) for Subcontractor Payments](../UserGuide/Finance_AP_CIS_for_Subcontractors_Mapref.md)

