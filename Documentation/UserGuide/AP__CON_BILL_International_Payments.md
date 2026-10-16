# International Payments with BILL

You can use the BILL integration to prepare payments for **international vendors** \(those outside the United States\) while working with bills in USD and in foreign currencies. You can pay vendor bills in USD or in a foreign currency from Acumatica ERP, and vendors can receive funds in either their local currency or USD. BILL manages the currency conversion, regulatory compliance, and cross-border payment delivery.

**Attention:** These capabilities are available only if the *Third-Party Integrations* and *BILL Integration* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

For details on processing international payments, see [Processing International Payments](AP__con_BILL_International_Payments_Processing.md).

## Vendor Definition: Domestic or International

The system determines whether a vendor is domestic or international based on the country specified in the remit-to address on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form. If *US* is specified, this is a domestic vendor. If any other country is specified, this is an international vendor.

If the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system uses the remit-to address of the vendor location. This address is specified in the **Remit-To Address** section on the **Payment** tab of the [Vendor Locations](AP_30_30_10.md) \(AP303010\) form. If the *Business Account Locations* feature is disabled, the system uses the remit-to address of the vendor's hidden *MAIN* location.

## Creating an International Vendor in BILL from Acumatica ERP

For international vendors, Acumatica ERP provides a widget-based flow for creating the vendor in BILL. To create the vendor, on the [Vendors](AP_30_30_00.md) \(AP303000\) or [Vendor Locations](AP_30_30_10.md) \(AP303010\) form:

1.  On the More menu, click **Create Vendor in BILL**.
2.  Review the vendor name and country, which the system inserts from the **Remit-To Info** and **Remit-To Address** sections, and click **Next**.

    If the vendor already exists in BILL, the system displays an error message.

    The system searches the BILL network for a matching vendor. Because the network includes few vendors outside the United States, the search usually finds no match.

3.  Click the *Set vendor up another way* link.
4.  Review the vendor's name, address, city, and postal code; correct them if necessary; select the vendor type; and click **Next**. Optionally, you can specify the vendor's phone number and your account number with the vendor.
5.  Select the way you want to provide the vendor's bank details, and click **Next**.

    If you select **Ask vendor to provide bank details by email**, specify the vendor's email address. BILL sends the vendor a link for providing these details, and you must wait until the vendor uses it.

6.  If you selected **Enter vendor's bank details myself**, specify the vendor's preferred currency and click **Next**.

    **Attention:** The currency you specify here determines the currency pair for this vendor: the currency of the bills and the currency of the payments. Each of these currencies can be USD or a foreign currency. BILL saves these settings and applies them to the bills you pay for this vendor. Acumatica ERP validates these currencies. If a bill or a payment is created in a currency other than the one specified in the widget, Acumatica ERP does not process the payment through BILL.

7.  Specify the vendor's bank account details and email address as the widget prompts, and click **Save**.

    The widget displays a confirmation message that the vendor has been added.


## Reviewing the Vendor’s Details from BILL

After the vendor has been created, its BILL-provided details are displayed in the **External Payment Processing** section on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

**Attention:** The **Financial Institution** and **Payment Currency** boxes appear on the form only for international vendors.

## Updating an International Vendor in BILL

For international vendors, Acumatica ERP also provides widget-based update of vendor details in BILL. You click **Update Vendor in BILL** on the More menu of the [Vendors](AP_30_30_00.md) \(AP303000\) and [Vendor Locations](AP_30_30_10.md) \(AP303010\) forms.

The system opens a widget in which you update the vendor details. You cannot update the vendor's details if at least one payment to the vendor has the *Scheduled* status. In this case, the widget displays an error message. If no vendor payment has been created yet, you can update the vendor's currency and bank details. When the widget is closed, the system fetches the vendor's details from BILL and updates the **External Payment Processing** section on the **Payment** tab of the [Vendors](AP_30_30_00.md) form.

For details on updating a domestic vendor in BILL, see the *Updating a Domestic Vendor's Details in BILL* section in [Setup of Integration with BILL](AP__CON_BillCom_Integration_Setup.md).

**Parent topic:**[Setup of Integration with BILL](../UserGuide/AP__CON_BillCom_Integration_Setup.md)

