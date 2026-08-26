# Direct Tax Payment: To Create an AP Bill with a Direct-Entry Tax {#_628d1dac-128e-46a1-9851-81a976fe16c9 .task}

The following activity will walk you through the process of creating an AP bill containing a line with a direct-entry tax.

## Story {#section_ikm_fjv_vxb .section}

Suppose that on 1/20/2026, SweetLife Fruits &amp; Jams purchased two juicers from Jalooza Inc. in a total amount of $4,000. On 1/30/2026, SweetLife received a tax bill from the freight company \(Big Green Trucks Ltd.\) that assisted SweetLife with importing the goods from Canada and is SweetLife's customs agent. The bill includes a taxable fee for the company's services \($55\) and an import tax \($300\).

Acting as a SweetLife accountant, you need to process two documents in the system—a purchase order for Jalooza, and an AP bill for Big Green Trucks, which includes both an expense line and a direct-entry tax.

## Configuration Overview {#section_lkm_fjv_vxb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* tax category has been configured.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *JALOOZA* and *GREENTRUCK* vendor accounts have been configured.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *JUICER15* stock item has been configured.

## Process Overview {#section_nkm_fjv_vxb .section}

In this activity, you will first update the settings of the vendors on the [Vendors](AP_30_30_00.md) \(AP303000\) form. On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, you will create and process a purchase order for the *JALOOZA* vendor. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will review the AP bill that was generated automatically on release of the purchase receipt. On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, you will update the settings of the *FOREIGN* tax zone assigned to the *GREENTRUCK* vendor, so that this tax zone should include the *VAT* and *VATIM* taxes. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will create a bill for the *GREENTRUCK* vendor with a line for taxable services and a tax line. After releasing the bill, you will review the generated transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation {#section_pkm_fjv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date in your system to *1/20/2026*.
3.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured the *VATTAX* tax agency as described in [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).
5.  As a prerequisite activity, be sure that you have configured the tax report as described in [Tax Report Configuration: To Create a Tax Report for VAT](../ImplementationGuide/TaxReport_VAT_Implem_Activity.md).
6.  As a prerequisite activity, be sure that you have created the direct-entry tax as described in [Direct Tax Payment: To Create a Tax Bill for a Tax Agency](Taxes_Paying_Tax_Directly_Create_Tax_Bill_Applied_to_Purchase.md).

## Step 1: Updating the Vendors' Tax Zones {#section_rkm_fjv_vxb .section}

To update the tax zones of the *JALOOZA* and *GREENTRUCK* vendors, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *JALOOZA*.
3.  On the **Purchase Settings** tab, select *CANADA* in the **Tax Zone** box.
4.  On the form toolbar, click **Save**.
5.  In the **Vendor ID** box, select *GREENTRUCK*.
6.  On the **Purchase Settings** tab, select *FOREIGN* in the **Tax Zone** box.
7.  On the form toolbar, click **Save**.

## Step 2: Processing a Purchase Order for Jalooza {#section_tkm_fjv_vxb .section}

To process a purchase order for two juicers for Jalooza, do the following:

1.  On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Normal*
    -   **Vendor**: *JALOOZA*
    -   **Date**: *1/20/2026* \(inserted by default\)
    -   **Description**: `Juicers`
3.  On the **Details** tab, click **Add Row**, and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *JUICER15*
    -   **Warehouse**: *EQUIPHOUSE*
    -   **Order Qty**: `2`
    -   **Ext. Cost**: *4,000* \(calculated automatically\)
    -   **Tax Category**: *TAXABLE*
4.  On the form toolbar, click **Save**.
5.  Review the **Taxes** tab.

    Because the document line is assigned to the *TAXABLE* category and the vendor is assigned to the *CANADA* tax zone, the *VAT* tax has been applied to the purchase order.

6.  On the form toolbar, click **Remove Hold**.

    The purchase order is assigned the *Open* status.

7.  On the form toolbar, click **Enter PO Receipt**.

    The system prepares the purchase receipt for the selected purchase order and opens it on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

8.  On the form toolbar, click **Save**. Review the details of the prepared purchase receipt.
9.  In the Summary area, select the **Create Bill** check box.

    With this check box selected, the system will create an AP bill automatically when the purchase receipt is released.

10. On the form toolbar, click **Release**.
11. On the **Billing** tab, click the link in the **Reference Nbr.** column to review the automatically prepared bill.
12. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, which is opened, review the created bill.

    On the **Taxes** tab, notice that a 7% VAT in the amount of $280 has been applied to the bill.


## Step 3: Updating the Tax Zone Settings {#section_wkm_fjv_vxb .section}

To update the settings of the *FOREIGN* tax zone, do the following:

1.  Open the [Tax Zones](TX_20_60_00.md) \(TX206000\) form.
2.  In the **Tax Zone ID** box, select *FOREIGN*.
3.  On the **Applicable Taxes** tab, click **Add Row** on the table toolbar, and select *VAT* in the **Tax ID** column.
4.  On the form toolbar, click **Save**.

## Step 4: Creating an AP Bill for Big Green Trucks {#section_ykm_fjv_vxb .section}

In this step, you will create an AP bill, which will have an expense line and a direct-entry tax, for Big Green Trucks. Do the following:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Vendor**: *GREENTRUCK*
    -   **Date**: *1/30/2026*
    -   **Post Period**: *01-2026*
    -   **Description**: `Tax bill`
3.  Click **Add Row** on the table toolbar of the **Details** tab, and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Service fee`
    -   **Ext. Cost**: `55`
    -   **Account**: *81000 \(Other Expenses\)*
    -   **Project**: *X \(Non-Project Code\)*
    -   **Tax Category**: *TAXABLE*
4.  Click **Add Row** again, and specify the following settings for the second row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Import tax`
    -   **Ext. Cost**: `300`
    -   **Account**: *81000 \(Other Expenses\)*
    -   **Project**: *X \(Non-Project Code\)*
    -   **Tax Category**: *IMPORT*
5.  On the form toolbar, click **Save**.
6.  On the **Taxes** tab, review the **Vendor Tax Zone** box.

    The vendor is assigned to the *FOREIGN* tax zone, which has been copied to the bill.

7.  Review the **Taxes** tab.

    Because the first document line is assigned to the *TAXABLE* category and the vendor is assigned to the *FOREIGN* tax zone, the *VAT* tax has been applied to the bill.

    The second document line is assigned to the *IMPORT* category, which is associated with the *VATIMPORT* direct-entry tax. For this document line to which the *VATIMPORT* direct-entry tax is applied, the full line amount is the **Tax Amount**, and the **Taxable Amount** is *0.00*.

8.  On the form toolbar, click **Remove Hold** and then click **Release** to release the bill.
9.  On the **Financial** tab, click the **Batch Nbr.** link. On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the generated GL transaction.

    On release of the tax bill, the system generated the following entries:

    -   The Accounts Payable account of the vendor \(*20000*\) is credited in the **Amount** of the released tax bill \($358.85\).
    -   The Other Expenses account of the first document line \(*81000*\) is debited in the amount of the service fee \($55\).
    -   The Tax Claimable account \(*17000*\) is debited in the total amount of the 7% VAT and the 10% of VAT on import to be claimed from the tax agency \($303.85 = $53.85 + $300\).

**Parent topic:**[Paying Taxes Directly to the Tax Agency](../UserGuide/Taxes_Paying_Tax_Directly_Mapref.md)

