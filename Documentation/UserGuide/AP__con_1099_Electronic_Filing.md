# Filing 1099 Forms Electronically

If your company files 250 or more Form 1099-MISC or Form 1099-NEC forms for any calendar year, the IRS requires that you file the forms electronically. If fewer than 250 forms are filed, you can file them either electronically or by mailing paper documents. If you file the forms electronically, you do not need to file duplicated paper documents.

In Acumatica ERP, you can use the [Create E-File](AP_50_75_00.md) \(AP507500\) form to generate one or more CSV files that contain information on all 1099 vendors of the companies you select, including the payments that were made to them in the 1099 year you specify.

The columns in the CSV file correspond to the boxes on the paper Form 1099-MISC or Form 1099-NEC, depending on the option selected in the **File Format** box on the [Create E-File](AP_50_75_00.md) form.

After you generate the file, you upload it to the IRS website by using the Information Returns Intake System \(IRIS\).

## E-File Format for the Combined Federal/State Filer Program

For a vendor to be included in Combined Federal/State Filing \(CF/SF\), both of the following conditions must be met:

-   The vendor's state must be one of the states participating in the CF/SF program. You select this state in the **State** box on the **General** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.
-   The branch or company that pays the vendor must have the **Combined Federal/State Filer** check box selected on the **1099 Settings** tab of the [Branches](CS_10_20_00.md) \(CS102000\) or [Companies](CS_10_15_00.md) \(CS101500\) form.

With these conditions met, the vendor's state is included in the file so that the IRS forwards the vendor's 1099 data to that state.

The list of states participating in the CF/SF program is maintained in the **CF/SF States** table on the **1099 Settings** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. Acumatica ERP populates this list based on the IRS's published state participation list, and you can review it or add states manually.

**Tip:** Keep in mind that every upgrade or patch refreshes this list with current IRS data, overwriting any manual changes. If you rely on manual edits, plan to reapply them after each upgrade or patch.

## Preparing for the E-Filing Process

Before performing the configuration steps, which are described in [Configuring 1099 Reporting](AP__con_Support_for_U.S._1099-MISC_Form.md), you need to do the following:

1.  Complete an IRIS Application for a Transmitter Control Code \(TCC\) with the IRS, and set up your account on the IRIS Taxpayer Portal. Because the TCC is associated with your login on the portal rather than stored in Acumatica ERP, you no longer need to enter it in the system.
2.  For each company or branch that’s a legal entity, specify the additional settings in Acumatica ERP that are required for e-filing of the 1099-MISC or 1099-NEC form. For details, see the next section.

**Attention:** The IRIS Taxpayer Portal has no test mode. Every file you upload is treated as a real, official filing.

## Specifying the Vendor and Company Settings

Each company that is a legal entity should report its payments to independent contractors. You have two filing options:

-   **Combine companies into one file.** The IRS lets you submit a single electronic form covering all companies in the tenant. One company \(the transmitter company\) is represented by the transmitter record; all companies, including the transmitter company, are represented by the payer records.
-   **File by branch.** You can submit an electronic form for each branch in each company.

On the **Financial** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form, for each 1099 vendor:

-   Select *Business* or *Individual* in the **Recipient Type** box. You must specify this value because it can't be detected automatically and the file won't be valid without it.
-   Select the **2nd TIN Notice** check box if the IRS has notified you twice about an incorrect TIN for the vendor.

On the [Companies](CS_10_15_00.md) \(CS101500\) form, for each company that is a legal entity and reports 1099 vendors, do the following:

1.  On the **Company Details** tab, select the **1099-MISC Reporting Entity** check box, and make sure the company name, main address, phone number, and tax registration ID are correct.
2.  On the **1099 Settings** tab \(**Contact Settings** section\), specify the reporting contact's **First Name**, **Middle Name**, and **Last Name**, as well as their **Phone Number** and **Phone Number Type** \(*Domestic* or *International*\).

If you file 1099-MISC by branch, specify this same contact information on the **1099 Settings** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form instead.

Once you finish this configuration, you can generate the file.

## Generating the Electronic File

You create one or more files that contain information on 1099 vendors by using the [Create E-File](AP_50_75_00.md) \(AP507500\) form.

In the **Prepare For** box, you specify whether to include only the transmitter company's 1099 data \(*Transmitter Only*\) or the data of all companies marked as reporting entities \(*All 1099 Payers*\). Select the **Direct Sales Only** check box if you only need a file that reports vendors meeting the IRS threshold for direct sales of $5,000 or more.

The system displays the list of 1099 vendors of the branches that meet the selection criteria, showing both the **Amount Paid** \(the full amount paid to the vendor\) and the **Amount to Report** \(the amount that will actually be reported to the IRS after reporting thresholds are applied\). If a vendor's payments fall below the reporting threshold, the system automatically excludes the row from processing and displays a warning.

**Tip:** You can use the **State** column in the table of the [Create E-File](AP_50_75_00.md) form to filter 1099 vendors by state and process them in a single file.

To generate the file, click **Process** \(to include only the records you've selected\) or **Process All** \(to include all listed records\) on the form toolbar. The system splits the output into multiple CSV files—by default, no more than 250 records per file—and names each file so you can identify it by company, year, form type, and file number. If only one file is generated, it downloads it directly; if there are multiple files, they are packaged together in a single ZIP file.

**Attention:** The number of records per file is stored in the `APSetup.IRISRowsPerCSVFile` file and can be updated via SQL if necessary \(for example, if the IRS changes the rule\).

## After You Create the Files

When the files are created, do the following:

1.  Upload the downloaded CSV files to the IRS IRIS Taxpayer Portal.
2.  Review the files for validation errors.
3.  Submit the files from the Taxpayer Portal.

If the portal flags errors before you submit the files, you can delete the files from the portal, correct the data in Acumatica ERP, and generate new files. If you discover an error in the reported amounts after submitting the files, the IRS allows you to submit a correction file with all amounts set to 0 to void the original submission. You can then generate and submit corrected files from Acumatica ERP as usual.

**Parent topic:**[Filing Out the 1099 Forms](../UserGuide/AP__MNG_1099_Filing.md)

