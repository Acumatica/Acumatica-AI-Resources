# Configuring CRA Reporting {#_4d7cd190-51cd-4f54-82f5-a3b186ec4bf1 .concept}

To configure reporting for the Canada Revenue Agency \(CRA\) in your system, you need to perform the tasks described in this chapter.

## Enabling the Canadian Localization Feature {#section_dyp_njv_vxb .section}

In Acumatica ERP, you need to enable the *Canadian Localization* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form to be able to configure T5018 and T4A vendors and transmitters.

You configure CRA reporting once. Then over a calendar year, you record your payments to T5018 vendors and to T4A vendors. At the end of the year \(if you are using a calendar-year basis\) or at the end of the reporting period, you report payments by generating an electronic file in XML format on the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form and submit it to the CRA.

## Specifying the Canadian Localization for Needed Companies {#section_hyp_njv_vxb .section}

When the *Canadian Localization* feature is enabled, on the **Company Details** tab of the [Companies](CS_10_15_00.md) \(CS101500\) form, the system administrator must specify *Canada* in the **Localization** box for each company to which the Canadian localization will be applied.

## Specifying Canadian Tax Reporting Settings {#section_jyp_njv_vxb .section}

When the Canadian localization is specified for a company, the system administrator must specify the following settings on the **Canadian Tax Reporting** tab, which appears on the [Companies](CS_10_15_00.md) \(CS101500\) form:

-   **T5018 Year Type**: The type of year for T5018 reporting—*Calendar Year* or *Fiscal Year*. By default, *Fiscal Year* is selected. You can change the year type if no T5018 file has yet been prepared for the selected company.
-   **Information Returns Account Number**: The recipient's program account number that will be used as the *Account Number* in a T5018 submission file in the *T5018 Summary* section. This value consists of 15 alphanumeric characters.
-   **Payroll Account Number**: The recipient's payroll account number that will be used in a T4A submission file.
-   **Transmitter RepID**: The ID used to identify a representative when they register with the Represent a Client service. This value is copied from the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form for both T5018 and T4A files.

On the **Canadian Tax Reporting** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, the system administrator must specify the threshold amount to be used on the [Create CRA E-File](AP_50_76_00.md) form. The default value in the **Threshold Amount** box is *500* for both T5018 and T4A, but it can be overridden depending on the provincial and federal GST or HST rates.

## Specifying the Tax Registration Number at the Company and Branch Level {#section_lyp_njv_vxb .section}

When the Canadian localization is specified for a company, the system administrator must specify a tax registration ID number for the company by filling in the **Tax Registration ID** box on the **Company Details** tab \(**Tax Registration Info** section\) of the [Companies](CS_10_15_00.md) \(CS101500\) form. This tax registration ID will be used when generating a T5018 file on the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form.

If your organization files taxes for each company branch—that is, if the company's type is *With Branches Requiring Balancing*—and the **File Taxes by Branch** check box is selected for the company on the **Company Details** tab of the [Companies](CS_10_15_00.md) form, you can specify a tax registration number for each branch on the **Taxes** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form. If no tax registration number is specified for a branch, the number specified at the company level is used.

The tax registration numbers specified on the [Companies](CS_10_15_00.md) and [Branches](CS_10_20_00.md) forms appear next to the corresponding taxes on the following reports:

-   [Invoice/Memo](AR_64_10_00.md) \(AR641000\)
-   ProInvoice/Memo \(PM641000\)
-   [Quote](SO_64_10_00.md) \(SO641000\)
-   [Sales Order](SO_64_10_10.md) \(SO641010\)
-   [Matrix Sales Order](SO_64_10_20.md) \(SO641020\)
-   [Matrix Invoice/Memo](SO_64_30_10.md) \(SO643010\)
-   [Invoice &amp; Memo](SO_64_30_00.md) \(SO643000\)

**Tip:** You can run Canadian versions of multiple reports for which a localized version exists in the system. For a report that has a localized version, the **Localization** box appears on the report form. To run a Canadian version of the report, you select *Canada* in the **Localization** box, specify the report parameters, and click **Run Report** on the report form toolbar.

## Configuring a Canadian Tax Agency {#section_qyp_njv_vxb .section}

You use the [Vendors](AP_30_30_00.md) \(AP303000\) form to create a Canadian tax agency. When creating an agency, you must specify *Canada* in the **Country** box \(**General** tab\) of the form. For more details about creating a tax agency, see [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).

## Configuring Printing Parameters for Taxes {#section_syp_njv_vxb .section}

On the **Printing Parameters** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form, you should specify short and long tax labels to be shown in printable versions of the following reports run from the corresponding processing forms:

-   [Invoice/Memo](AR_64_10_00.md) \(AR641000\)
-   *ProInvoice/Memo* \(PM641000\)
-   [Quote](SO_64_10_00.md) \(SO641000\)
-   [Sales Order](SO_64_10_10.md) \(SO641010\)
-   [Matrix Sales Order](SO_64_10_20.md) \(SO641020\)
-   [Invoice &amp; Memo](SO_64_30_00.md) \(SO643000\)
-   [Matrix Invoice/Memo](SO_64_30_10.md) \(SO643010\)

If you want to have the long and short tax labels printed on the listed reports that are run from the site map, you should manually add the needed reports to the site map.

**Tip:** You can run Canadian versions of multiple reports for which a localized version exists in the system. For a report that has a localized version, the **Localization** box appears in the Selection area of the report form. To run a Canadian version of the report, you select *Canada* in the **Localization** box, specify the report parameters, and click **Run Report** on the report form toolbar.

## Configuring T5018 Vendors {#section_wyp_njv_vxb .section}

You use the [Vendors](AP_30_30_00.md) \(AP303000\) form to set up each T5018 contractor \(which is defined in the system as a vendor\) as follows:

1.  If a contractor doesn’t have a vendor account in the system, create a new vendor account and do the following:
    1.  On the **General** tab, select *T5018* in the **CRA Reporting Type** box.
    2.  In the **CRA Vendor Type** box, select the type of the vendor: *Corporation*, *Partnership*, or *Individual*.
2.  Depending on the vendor type you have selected, specify the contractor's **SIN** \(if *Individual* is selected\) or **CRA Information Returns Account Number** \(if *Corporation* or *Partnership* is selected\).
3.  Whether the vendor is new or existing, on the **Purchase Settings** tab, in the **Tax Zone** box, specify the contractor's tax zone.
4.  Click **Save** to save your changes.

The system uses the contractor's name, address, and **CRA Information Returns Account Number** or **SIN** to fill in the elements in the electronic XML file when it is generated on the [Create CRA E-File](AP_50_76_00.md) \(AP507600\) form.

## Configuring T4A Vendors { .section}

On the [Vendors](AP_30_30_00.md) \(AP303000\) form, set up each T4A vendor as follows:

1.  If a contractor doesn’t have a vendor account in the system, create a new vendor account and on the **Financial** tab \(**Vendor Properties** section\), do the following:
    1.  Select *T4A* in the **CRA Reporting Type** box.
    2.  In the **T4A Box**, select the type of payments, which can be one of the following: *Box 20 - Self Employed Commissions*, *Box 28 - Other Income*, or *Box 48 - Fees for Services* \(default\).
    3.  In the **CRA Vendor Type** box, select the type of the vendor: *Corporation*, *Partnership*, or *Individual*.
2.  Depending on the vendor type you’ve selected, specify the contractor's **SIN** \(if *Individual* is selected\) or **CRA Payroll Account Number** \(if *Corporation* or *Partnership* is selected\).
3.  Whether the vendor is new or existing, in the **Tax Zone** box of the **Purchase Settings** tab, specify the contractor's tax zone.
4.  If you’ve obtained the vendor's written consent to receive T4A slips by email, select the **Email T4A Consent** check box.

    This check box must be selected before you start emailing T4A slips. If the check box is cleared for a particular vendor, you’ll get an error message when trying to email a T4A slip to this vendor.

5.  On the form toolbar, click **Save** to save your changes.

## Configuring Non-Stock Items and Item Classes { .section}

You use the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) and [Item Classes](IN_20_10_00.md) \(IN201000\) forms to set up specific non-stock items and item classes for CRA reporting.

To configure a non-stock item, do the following:

1.  On the [Non-Stock Items](IN_20_20_00.md) form, select the needed item.
2.  On the **General** tab \(**Item Defaults** section\), select the **T5018 Service** check box.

    With this setting, when you create a document with this item selected in a line on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, the document amount will be included in the T5018 report.

3.  Save your changes.

To configure an item class, do the following:

1.  On the [Item Classes](IN_20_10_00.md) form, select the needed item class.
2.  On the **General** tab \(**General Settings** section\), select the **T5018 Service** check box.

    With this setting, when you create a document with an item of this class selected for a line on the [Bills and Adjustments](AP_30_10_00.md) form, the document amount will be included in the T5018 report.

3.  Save your changes.

The state of the **T5018 Service** check box of an item class determines the default setting for the items of this class. You can override this setting when creating a document. The system always checks the state of the **T5018 Service** check box for a particular non-stock item—not for an item class.

**Tip:** If a document that you create on the [Bills and Adjustments](AP_30_10_00.md) form doesn’t include non-stock items and you want this document to be included in the T5018 report, you should select the **T5018 Service** check box for each needed line on the **Details** tab.

**Parent topic:**[Filing CRA Forms](../UserGuide/AP__MNG_T5018_Filing.md)

