# Vendors: Vendor Locations {#_fcecee2b-6a65-4464-bdd6-f6c52ba2a03f .concept}

In this topic, you will read about the main location and the default location of a vendor, as well as the values provided by vendor locations for purchase orders and payments.

In Acumatica ERP, you can reflect whether a particular vendor has one location or multiple locations, each with specific settings. You can use the [Vendor Locations](AP_30_30_10.md) \(AP303010\) form to add, edit, and view locations, as well as set default locations. On this form, you can also provide the following information about the vendor location, which is used by default for purchase orders and for payments to vendors:

-   Accounts payable and expense accounts and the corresponding subaccounts
-   Payment settings and remittance information
-   Purchasing and shipping-related information
-   Tax-related information

The main location is created automatically when you fill in the vendor's main address and contact information on the [Vendors](AP_30_30_00.md) \(AP303000\) form. The main location always has *MAIN* as its ID, and the *Active* status, both of which cannot be changed.

**Note:** You can define multiple vendor locations only if the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

Once the main location is created, it is automatically listed and marked as the default location on the **Locations** tab of the [Vendors](AP_30_30_00.md) form and in the Summary area of the [Vendor Locations](AP_30_30_10.md) form. If additional locations have been added for the vendor account, you can make another location the default location. On the **Locations** tab of the [Vendors](AP_30_30_00.md) form , you click the row with the location and click **Set as Default** on the table toolbar of the **Locations** tab. Alternatively, you can select the **Default** check box in the Summary area of the [Vendor Locations](AP_30_30_10.md) form.

The purchase and payment settings specified for the default vendor location are also displayed, respectively, on the **Purchase Settings** and **Payment** tabs of the [Vendors](AP_30_30_00.md) form. If you update the elements on those tabs, the system also updates the corresponding elements for the default location on the [Vendor Locations](AP_30_30_10.md) form.

The default location's settings are also used to populate elements when you create a new location. If needed, you can override these default settings, which include the address, contact information, purchase settings, payment settings, and general ledger accounts.

If you change the vendor class for an existing vendor, the following values will not be overridden for the main and additional locations:

-   The country specified in the **Country** box on the **General** tab of the [Vendor Locations](AP_30_30_10.md) form
-   The tax zone specified in the **Tax Zone** box on the **Purchase Settings** tab of the [Vendor Locations](AP_30_30_10.md) form

## Use of Location Default Settings {#section_upg_njv_vxb .section}

When you enter a new purchase order, bill, payment, or quick check, the first value you must specify is the vendor. When the vendor is selected, relevant elements on the form are automatically filled in with the vendor's default values, including the default location and its associated purchase or payment settings. The settings of a vendor location include such information as the payment method, the cash account, the tax zone, the tax registration, the shipping settings, and the accounts payable and expense accounts with the corresponding subaccounts \(if applicable\). If you select a vendor location that is different from the default one, the values change to those associated with the selected location; if needed, you can override any of the default values.

As a result of these default settings being used to populate elements, data entry is faster and more efficient.

**Parent topic:**[Creating a Vendor](../UserGuide/Vendor_Mapref.md)

