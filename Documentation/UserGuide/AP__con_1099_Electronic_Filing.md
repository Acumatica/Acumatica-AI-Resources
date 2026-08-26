# Filing the 1099 Forms Electronically {#_e5360074-b045-412d-8450-917db7c3e8a1 .concept}

If your company files 250 or more Form 1099-MISC or Form 1099-NEC forms for any calendar year, the IRS requires that you file the forms electronically. If fewer than 250 forms are filed, you can file them either electronically or by mailing paper documents. If you file the forms electronically, you do not need to file duplicated paper documents.

In Acumatica ERP, you can use the [Create E-File](AP_50_75_00.md) \(AP507500\) form to generate an electronic file that contains information on all 1099 vendors of the companies you select, including the payments that were made to them in the 1099 year you specify. You can generate a file of any of the available file types \(for example, a correction file\) by specifying the appropriate option on the form.

The boxes in the electronic file correspond to the boxes on the paper Form 1099-MISC or Form 1099-NEC, depending on the value selected in the **File Format** box on the [Create E-File](AP_50_75_00.md) form. The format of the electronic file generated in Acumatica ERP matches the file format described by the requirements and specifications for electronic filing under *Publication 1220* for tax year 2025 released by the IRS on [http://www.irs.gov](http://www.irs.gov).

After the system generates the file, you need to upload it to the IRS website by using the Filing Information Returns Electronically \(FIRE\) system.

In this topic, you will read about the steps to configure the e-filing process and the details of the generation of the electronic form.

## E-File Format for the Combined Federal/State Filer Program { .section}

For vendors based in the states participating in the Combined Federal/State Filer \(CF/SF\) program, the e-file generated on the [Create E-File](AP_50_75_00.md) \(AP507500\) form has the following format:

-   The *A* record of the file has the *1* value in position 6.
-   The *B* record of the vendor has a valid state code in positions 747–748.
-   The *K* record of the vendor is included.

The following states participate in the Combined Federal/State Filer \(CF/SF\) program.

|State|Code|
|-----|----|
|Alabama|01|
|Arizona|04|
|Arkansas|05|
|California|06|
|Colorado|07|
|Connecticut|08|
|Delaware|10|
|District of Columbia|11|
|Georgia|13|
|Hawaii|15|
|Idaho|16|
|Indiana|18|
|Kansas|20|
|Louisiana|22|
|Maine|23|
|Maryland|24|
|Massachusetts|25|
|Michigan|26|
|Minnesota|27|
|Mississippi|28|
|Montana|30|
|Nebraska|31|
|New Jersey|34|
|New Mexico|35|
|North Carolina|37|
|North Dakota|38|
|Ohio|39|
|Oklahoma|40|
|Oregon|41|
|Pennsylvania|42|
|Rhode Island|44|
|South Carolina|45|
|Wisconsin|55|

**Attention:**

According to *Publication 1220* for tax year 2024:

-   The District of Columbia and Pennsylvania were added in the CF/SF program
-   Rhode Island was added in the CF/SF program

According to the latest *Publication 1220* for tax year 2025:

-   Oregon has been added to the CF/SF program
-   Missouri has been removed from the CF/SF program

For a 1099 year of 2023 or later, the e-file created on the [Create E-File](AP_50_75_00.md) form has the following format:

-   The *A* record of the file has the *1* value in position 6.
-   The *B* record of the vendor has a valid state code in positions 747–748 as follows:
    -   *11* for the District of Columbia
    -   *42* for Pennsylvania
-   The *K* record of the vendor is included.

For the e-file to have the listed format, the needed settings should be applied in the system as follows:

-   On the **1099 Settings** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form, the **Combined Federal/State Filer** check box is selected for the current branch.
-   On the **General** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form, a state participating in the CF/SF program is selected in the **State** box \(**Account Address** section\) for the vendor.
-   If the vendor's state is *District of Columbia* or *Pennsylvania*, on the [Create E-File](AP_50_75_00.md) form, *2023* or a later year is selected in the **1099 Year** box.

## Configuration of the E-Filing Process {#section_pqp_njv_vxb .section}

In addition to the configuration steps, which are described in [Configuring 1099 Reporting](AP__con_Support_for_U.S._1099-MISC_Form.md), you need to do the following:

1.  Set up an account with the Internal Revenue Service's FIRE system to upload forms to the IRS website. By using this system, you can upload multiple files for the same type of form \(Form 1099-MISC or Form 1099-NEC\)—for example, if your organization includes multiple companies that are legal entities and you have to report each company separately. For details, see the following section in this topic.
2.  For each branch company that is a legal entity, configure additional settings in Acumatica ERP that are required for e-filing of the 1099-MISC or 1099-NEC form. For details, see the [Configuration of Company Settings](#section_l31_dbm_1v) section in this topic.

## Setup of a FIRE System Account {#section_rqp_njv_vxb .section}

To transmit files, you must establish an account on the FIRE system and get a Transmitter Control Code \(TCC\). A representative of your company must use Form 4419 to apply for a TCC at least 45 days before the 1099 due date. The TCC must be included on all 1099-MISC and 1099-NEC electronic forms.

Before submitting the first file, you also need to get approval from the IRS for using the FIRE system. To get this approval, you need to upload a specially coded test file to the FIRE test system. You can generate the test file by using the [Create E-File](AP_50_75_00.md) form and selecting the **Test File** check box on the form.

## Configuration of Company Settings {#section_l31_dbm_1v .section}

Each company that is a legal entity should report its payments to independent contractors. The IRS allows you to submit one electronic form that covers all companies in the tenant. In this case, one of the companies \(the *transmitter company*\) is used to form the transmitter record in the file, and all companies \(including the transmitter company\) are used to form the payer records in the file. You can submit an electronic form for a single branch as well. The one TCC received by your company representative can be used for all companies.

On the [Companies](CS_10_15_00.md) \(CS101500\) form, for each company that is a legal entity and reports 1099 vendors, do the following:

1.  On the **Company Details** tab, select the **1099-MISC Reporting Entity** check box, and make sure that the following information is correct: company name, main address, phone number, and tax registration ID \(in the **Main Contact**, **Main Address**, and **Tax Registration Info** sections of the form\).
2.  On the **1099 Settings** tab, specify the TCC and contact information of the person who is responsible for e-filing.

Once the configuration is done, you can proceed with the generation of the electronic file.

## Generation of the Electronic File {#properties_e-file .section}

You create an electronic file that contains information on 1099 vendors \(that is, an electronic version of Form 1099-MISC or Form 1099-NEC\) by using the [Create E-File](AP_50_75_00.md) \(AP507500\) form.

You select the company whose details will be used to form the transmitter record in the file, and specify whether the system should include the 1099 data of the transmitter company only or the 1099 data of all companies marked as reporting entities \(that is, all companies for which the **1099-MISC Reporting Entity** check box is selected\).

The system will display the list of 1099 vendors of the branches that meet the selection criteria to which payments were made in the selected 1099 year, and the amounts that were paid to each 1099 vendor. You review the information and select the vendors whose data will be used to generate payee records in the file.

**Tip:** You can use the **State** column in the table of the [Create E-File](AP_50_75_00.md) form to filter 1099 vendors by state and process them in a single file.

To initiate the generation of the electronic file, you click **Process** \(to include the records you have selected in the file\) or **Process All** \(to include all listed records in the file\) on the form toolbar. The system generates a text file that is formatted according to the IRS requirements.

The file contains the transmitter record followed by a payer record that precedes the list of payee records for the payer, followed by the next payer record with its payee records and so on. For each payee record, all the possible boxes are listed with the corresponding paid amount. The amount is shown if it is at or above the minimum specified for the 1099 box on the **1099 Settings** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, otherwise zero amount is reported.

**Parent topic:**[Filing Out the 1099 Forms](../UserGuide/AP__MNG_1099_Filing.md)

