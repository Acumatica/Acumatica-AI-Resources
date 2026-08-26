# Emailing T4A Slips {#_53751313-d097-4e18-962e-dc94a625795a .concept}

You can email T4A slips on the [Print/Email T4A Slips](AP_50_76_10.md) \(AP507610\) form.

You select *Email T4A Slips* in the **Action** box. Then you either click **Process All** or select the unlabeled check box for each T4A slip to be emailed and click **Process**. The system generates and emails the slips to the vendors by using the *T4A Slip* mailing ID and the email template from the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.

You can override the mailing ID and email template on the **Mailing and Printing** tab of the [Vendors](AP_30_30_00.md) and [Vendor Classes](AP_20_10_00.md) \(AP201000\) forms. The system will use the overridden email settings to send out the emails.

The T4A slips emailed to vendors are generated in PDF format and have two copies on a page. A T4A slip is also attached as a PDF to each vendor row. You can download this slip.

After a T4A slip is emailed for the first time, the **Emailed** check box for the vendor is selected. This slip won't be displayed if you select *Email T4A Slips* in the **Action** box. You can display it by selecting the **Show All** check box and then email it again.

If you generate an amended T4A report on the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form, submit it to the Canada Revenue Agency \(CRA\), and select the **E-File Submitted to CRA** check box, the **Emailed** check box will be automatically cleared for all vendors that were included in the amended T4A report.

**Attention:** Make sure that the vendors who want to receive T4A slips by email have the **Email T4A Slip Consent** check box selected in the **Vendor Properties** section on the **Financial** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

If you try to email slips for the vendors that don't have this check box selected, the system will display an error message.

For details on setting up predefined mailing for vendors, see [Mailings for Vendors: General Information](Finance_PredefinedMailings_Vendors_GeneralInfo.md).

For details on emailing slips, see [To Email a T4A Slip](AP__HOW_To_Email_T4ASlip.md).

**Parent topic:**[Filing CRA Forms](../UserGuide/AP__MNG_T5018_Filing.md)

