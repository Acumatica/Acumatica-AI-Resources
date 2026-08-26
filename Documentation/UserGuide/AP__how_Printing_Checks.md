# To Print Checks {#_21b7ec92-1418-4c90-bdbd-6a883c4b1955 .task}

You print the physical checks for AP payments by using the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.

Check printing is required for AP payments if their payment methods have the **Print Checks** check box selected on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

## Before You Proceed {#section_dfj_njv_vxb .section}

To prevent damage to or wasting of checks during printing, do the following:

1.  Make sure the printer is connected to your computer and ready for printing checks.
2.  Print a test page to check which side of the paper is printed on and whether there is enough toner in the printer.
3.  If your checks include MICR characters, prepare the system for printing these characters. For details, see the [To Prepare for Printing Checks with MICR Characters](#_znd_gcc_hk) section of this topic.

## To Print Checks {#section_ffj_njv_vxb .section}

1.  Open the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.
2.  In the **Payment Method** box, select *Check* \(or another value that in your system designates a payment method that involves printing checks\).
3.  In the **Cash Account** box, select the bank account \(a checking account\) from which the check should be drawn.
4.  In the **Next Check Number** box, enter the number \(if the box is blank\) or make sure the check number suggested by the system matches the first check number of the checks you plan to print.
5.  In the table, select the unlabeled check box for each payment document for which you intend to print a check.
6.  On the form toolbar, click **Process**.

    For each of the selected documents, a check appears in a new browser tab.

7.  Click **Print** on the form toolbar to start the printing process for each check. The browser opens the **Print** page.
8.  Select appropriate options, and then click **OK**. The checks for the selected documents are printed.
9.  Close the browser tabs that contain the printable versions of the checks.

    The system displays the [Release Payments](AP_50_52_00.md) \(AP505200\) form, which lists the AP payments for which you have printed checks.

10. Review the printed checks and proceed as follows:
    -   If all checks have printed successfully, release the respective documents \(which now have the *Printed* status\).
    -   If at least one check requires reprinting, proceed as described in [Check Reprinting: Process Activity](Finance_CheckReprinting_Activity.md).

## To Prepare for Printing Checks with MICR Characters {#_znd_gcc_hk .section}

1.  Download a ZIP file with the MICR Encoding font at [http://www.fontspace.com/digital-graphics-labs/micr-encoding](http://www.fontspace.com/digital-graphics-labs/micr-encoding).
2.  Extract the contents of the ZIP file into a temporary folder.
3.  Install the MICR Encoding font on the computer running the instance of the Acumatica ERP site you want to use for printing.
4.  Install the MICR Encoding font on the client computer you plan to use for printing.

**Tip:** For detailed instructions about how to install a font on a computer, see the Help for the operating system the computer runs.

**Parent topic:**[Paying AP Bills](../UserGuide/Finance_PayingAPBills_Mapref.md)

