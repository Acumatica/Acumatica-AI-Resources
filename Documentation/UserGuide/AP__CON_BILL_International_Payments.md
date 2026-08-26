# International Payments with BILL {#_02f59bed-c1aa-423c-a767-01d080d17534 .concept}

You can use the BILL integration to prepare payments for **international vendors** \(those outside the United States\) while working with USD bills. You can pay vendor bills in USD from Acumatica ERP, and vendors can receive funds in either their local currency or USD. BILL manages the currency conversion, regulatory compliance, and cross-border payment delivery.

**Attention:** These capabilities are available only if the *Third-Party Integrations* and *BILL Integration* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

For details on processing international payments, see [Processing International Payments](AP__con_BILL_International_Payments_Processing.md).

## Vendor Definition: Domestic or International { .section}

The system determines whether a vendor is domestic or international based on the country specified in the remit-to address on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form. If *US* is specified, this is a domestic vendor. If any other country is specified, this is an international vendor.

If the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system uses the remit-to address of the vendor location. This address is specified in the **Remit-To Address** section on the **Payment** tab of the [Vendor Locations](AP_30_30_10.md) \(AP303010\) form. If the *Business Account Locations* feature is disabled, the system uses the remit-to address of the vendor's hidden *MAIN* location.

## Creating an International Vendor in BILL from Acumatica ERP { .section}

For international vendors, Acumatica ERP provides a widget-based flow for creating the vendor in BILL. To create the vendor, on the [Vendors](AP_30_30_00.md) \(AP303000\) or [Vendor Locations](AP_30_30_10.md) \(AP303010\) form:

1.  On the More menu, click **Create Vendor in BILL**.
2.  In the widget, enter the vendor name and country and click **Next**.

    If the vendor already exists in BILL, the system displays an error.

3.  Click the *Set vendor up another way* link.
4.  Enter the vendor's name, type, address, and other info and click **Next**.
5.  Enter the vendor's email address or click the **Enter vendor's bank info myself** option button and click **Save**.

    **Tip:** If the **Ask vendor to provide bank details by email** option button is selected, you’ll have to wait for the vendor's email. If you have the vendor data, selecting the **Enter vendor's bank info myself** option button can speed up data entry.

6.  If you clicked **Enter vendor's bank info myself**, specify the vendor's preferred currency and click **Next**.

    **Attention:** The current functionality enables bill payments in USD, so you should click the **USD - United States Dollar** option button to select USD as the bill currency. Your vendor can receive payments in USD or a foreign currency. This data will be saved in BILL. When you create bills in Acumatica ERP in the future and pay them in BILL, these settings will be used.

7.  Follow the instructions in the widget to add the vendor's bank info and account number and then click **Save**. The widget shows a confirmation message that the vendor has been added.

## Reviewing the Vendor’s BILL-Provided Payment Details { .section}

After the vendor has been created, its BILL-provided details are displayed in the **External Payment Processing** section on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

**Attention:** The **Financial Institution** and **Payment Currency** boxes appear on the form for only international vendors.

## Updating an International Vendor in BILL { .section}

For international vendors, Acumatica ERP also provides widget-based update of vendor info in BILL. To get started, you click **Update Vendor in BILL** on the More menu of the [Vendors](AP_30_30_00.md) \(AP303000\) and [Vendor Locations](AP_30_30_10.md) \(AP303010\) forms.

The system opens a widget where you update the vendor settings. If at least one vendor payment has the *Scheduled* processing status, the vendor settings can't be updated and the widget displays an error. If no vendor payment has been created yet, you can update the vendor's currency and bank details. When the widget is closed, the system fetches the vendor data and updates the vendor’s **External Payment Processing** section on the **Payment** tab of the [Vendors](AP_30_30_00.md) form.

**Parent topic:**[Setup of Integration with BILL](../UserGuide/AP__CON_BillCom_Integration_Setup.md)

