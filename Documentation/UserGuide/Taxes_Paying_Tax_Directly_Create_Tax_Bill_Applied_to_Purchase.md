# Direct Tax Payment: To Create a Tax Bill for a Tax Agency {#_14e1fbc7-aad9-44fb-9dab-ff90554392f0 .task}

The following activity will walk you through the process of creating a tax bill for a tax agency.

## Story {#section_q3m_fjv_vxb .section}

Suppose that on 1/15/2026, the SweetLife Fruits &amp; Jams company purchased office equipment in the amount of $750 from the Cartridge World Inc. company, which is located in Canada. Taxes on imported goods should be paid directly to a tax agency at the time of import; thus, the bill from the vendor does not include any taxes.

Further suppose that on 1/31/2026, SweetLife Fruits &amp; Jams received a bill from the tax agency with a standard-rated VAT on the imported goods when the goods were released from customs.

Acting as a SweetLife accountant, you need to process the purchase of the office equipment, process the tax bill to pay this amount to the tax agency and record the claimable amount that you will later include in the tax report, and pay taxes on this purchase.

## Configuration Overview {#section_u3m_fjv_vxb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* tax category has been configured.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *CARTRIDGE* vendor account has been configured.

## Process Overview {#section_w3m_fjv_vxb .section}

In this activity, you will first create a tax zone for foreign vendors on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form and create a tax category on the [Tax Categories](TX_20_55_00.md) \(TX205500\) form. On the [Vendors](AP_30_30_00.md) \(AP303000\) form, you will update the settings of the Canada-based vendor. On the [Taxes](TX_20_50_00.md) \(TX205000\) form, you will create a value-added tax for imported goods. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will create an AP bill to record the purchase of imported goods. On the [Tax Bills and Adjustments](TX_30_30_00.md) \(TX303000\) form, you will create a tax bill for the tax agency and apply the AP bill to it. After releasing the tax bill, you will review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. Finally, you will open the original AP bill from the [Tax Bills and Adjustments](TX_30_30_00.md) form and review the VAT applied to it after the release of the tax bill.

## System Preparation {#section_y3m_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date in your system to *1/15/2026*.
3.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured the *VATTAX* tax agency as described in [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).
5.  As a prerequisite activity, be sure that you have configured a tax report as described in [Tax Report Configuration: To Create a Tax Report for VAT](../ImplementationGuide/TaxReport_VAT_Implem_Activity.md).
6.  As a prerequisite activity, be sure that you have created a general VAT as described in [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md).

## Step 1: Creating a Tax Zone {#section_ajm_fjv_vxb .section}

To create a tax zone for foreign vendors, do the following:

1.  On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Tax Zone ID**: `FOREIGN`
    -   **Description**: `Foreign tax zone`
3.  On the form toolbar, click **Save**.

## Step 2: Creating a Tax Category for the Import Tax {#section_cjm_fjv_vxb .section}

To create a tax category for the import tax, do the following:

1.  On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Tax Category ID**: `IMPORT`
    -   **Description**: `Imported Goods and Services`
    -   **Active**: Selected
3.  On the form toolbar, click **Save**.

## Step 3: Updating the Vendor's Settings {#section_ejm_fjv_vxb .section}

To update the setting for *CARTRIDGE* vendor, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *CARTRIDGE*.
3.  On the **Purchase Settings** tab, select *FOREIGN* in the **Tax Zone** box.
4.  On the form toolbar, click **Save**.

## Step 4: Creating a Value-Added Tax on Imported Goods {#section_gjm_fjv_vxb .section}

To create a value-added tax on imported goods, do the following:

1.  On the [Taxes](TX_20_50_00.md) \(TX205000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Tax ID**: `VATIMPORT`
    -   **Description**: `VAT on Imported Goods`
    -   **Tax Type**: *VAT*
    -   **Direct-Entry Tax**: Selected

        This setting indicates that this tax should be calculated only in tax bills entered on the [Tax Bills and Adjustments](TX_30_30_00.md) \(TX303000\), [Bills and Adjustments](AP_30_10_00.md) \(AP301000\), [Cash Purchases](AP_30_40_00.md) \(AP304000\), and [Landed Costs](PO_30_30_00.md) \(PO303000\) forms.

    -   **Tax Agency**: *VATTAX*
3.  On the table toolbar of the **Tax Schedule** tab, click **Add Row** and specify the following settings for the added row:
    -   **Start Date**: *1/1/2026*
    -   **Tax Rate**: `10`
    -   **Reporting Group**: *Taxable Purchases*

        **Tip:** Your company is allowed to reclaim the VAT paid on imported goods. Thus, you have selected the *Taxable Purchases* reporting group for the tax. The *VATIMPORT* amount will update the *Total Input Tax* report line and will be included in the amount to be claimed from the tax agency. If your company is not allowed to reclaim taxes on imported goods, you have to create a separate reporting group that will not update the *Tax Amount Payable* report line.

4.  On the table toolbar of the **Categories** tab, click **Add Row** and select *IMPORT* in the **Tax Category** column.
5.  On the table toolbar of the **Zones** tab, click **Add Row** and select *FOREIGN* in the **Tax Zone ID** column.
6.  On the form toolbar, click **Save**.

## Step 5: Creating an AP Bill {#section_kjm_fjv_vxb .section}

To create an AP bill for the purchase of imported office equipment, do the following:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Vendor**: *CARTRIDGE*
    -   **Date**: *1/15/2026*
    -   **Post Period**: *01-2026*
    -   **Description**: `Office equipment (imported)`
3.  On the table toolbar of the **Details** tab, click **Add Row** and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Office equipment (imported)`
    -   **Ext. Cost**: `750`
    -   **Account**: *50000 \(COGS - Inventory\)*
    -   **Project**: *X \(Non-Project Code\)*
    -   **Tax Category**: *TAXABLE*
4.  On the form toolbar, click **Save**.
5.  On the **Taxes** tab, review the **Vendor Tax Zone** box. The vendor is assigned to the *FOREIGN* tax zone, which has been copied to the bill.
6.  Review the **Taxes** tab.

    Although the document line is assigned to the *TAXABLE* category and the vendor is assigned to the *FOREIGN* tax zone, no tax has been applied to the bill, because the *VATIMPORT* tax has the **Direct-Entry Tax** check box selected. Consequently, this tax should not be paid to the goods supplier and is not automatically applicable to the document. The tax will be calculated later, when the tax bill is processed for the goods.

7.  On the form toolbar, click **Remove Hold** and click **Release** to release the bill.

## Step 6: Creating a Tax Bill {#section_mjm_fjv_vxb .section}

To create a tax bill, do the following:

1.  On the [Tax Bills and Adjustments](TX_30_30_00.md) \(TX303000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Vendor**: *VATTAX*
    -   **Date**: *1/31/2026*
    -   **Post Period**: *01-2026*
    -   **Description**: `VAT paid on imported goods`
3.  On the **Apply Tax To** tab, click **Add Row** and specify the following settings for the added row:

    -   **Orig. Tran. Type**: *Bill* \(inserted automatically\)
    -   **Orig. Doc. Number**: The reference number of the bill that you created in Step 5
    -   **Tax ID**: *VATIMPORT*
    The calculated tax amount is $75.

4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Remove Hold** and click **Release** to release the bill.
6.  On the **Financial** tab, click the **Batch Nbr.** link and on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the generated GL transaction.

    On release of the tax bill, the system generated the following entries:

    -   The Accounts Payable account of the tax agency \(*20000*\) is credited in the tax amount that should be paid to the tax agency.
    -   The Tax Claimable account \(*17000*\) is debited in the tax amount to be claimed from the tax agency.
7.  On the **Apply Tax To** tab of the [Tax Bills and Adjustments](TX_30_30_00.md) form, click the **Orig. Doc. Number** link in the table row to open the bill. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, which opens, review the **Taxes** tab.

    After you have released the tax bill, the *VATIMPORT* tax has been applied to the bill. Notice that the bill's **Tax Total** and **Amount** have not changed.


**Parent topic:**[Paying Taxes Directly to the Tax Agency](../UserGuide/Taxes_Paying_Tax_Directly_Mapref.md)

