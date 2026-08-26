# Vendors: Vendor Defaults and Overrides {#_548741f9-ad7b-463d-b341-6b74cda50139 .concept}

A vendor class groups vendors that have similar characteristics. You can divide vendors into classes based on the types of goods or services you purchase from them or on other properties, such as the vendors' currency and payment methods. For instance, you might find it useful to create one vendor class for tax agencies and another for 1099 vendors. You define vendor classes and their settings on the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form. You can then select the appropriate vendor class when you are creating a vendor account, which causes the system to fill in the values of the class for the vendor. Any of these default values can be overridden.

Generally, any existing vendor class can be defined as the default vendor class. After you specify the default vendor class, when you create another vendor class, the system automatically inserts the values of the default vendor class, but any of them can be overridden. When you create a new vendor account, the default vendor class is initially specified as the vendor class, but you can change it to any other class.

## Default Vendor Class {#section_r4g_njv_vxb .section}

We recommend that you first create the vendor class that will contain the largest number of vendors \(and thus the most common values\) and specify it as the default vendor class on the **General** tab \(the **Data Entry Settings** section\) of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. Performing these steps will save you time when you create each additional vendor class, because the elements of the new class will be automatically populated with the values from the default vendor class, so that you have fewer values to enter.

Also, when you create a new vendor account, by default, it will be assigned to the *Default* vendor class, so that in most cases, you won't need to select another vendor class.

## Other Vendor Classes {#section_u4g_njv_vxb .section}

You also create non-default vendor classes by using the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form. As mentioned above, when you create a vendor class, the system initially populates it with the values of the default vendor class, any of which can be overridden.

You can create a new vendor class based on any existing vendor class by using commands from the **Edit** menu on the form toolbar of the [Vendor Classes](AP_20_10_00.md) form. You can copy the settings of a particular vendor class and paste them to create another class, or you can create a template that you can use for multiple similar vendor classes.

## Default Values Provided by a Vendor Class {#section_x4g_njv_vxb .section}

A vendor class has only two required settings: class ID and description. For each class, you can decide which additional elements to use. You can select the credit terms, currency, rate type, country, tax zone, and specific general ledger accounts and subaccounts. You can also enter a default cash account and payment method for the class.

When you create a new vendor account on the [Vendors](AP_30_30_00.md) \(AP303000\) form, by default, the elements have the values that were specified for the default vendor class. If the new vendor should be assigned to a more specific class, select this class, which changes the default values. You can override any value, making it specific to the vendor. If you have to override many values similarly for multiple vendors, consider creating a new vendor class.

## Default Currency Settings {#section_apg_njv_vxb .section}

For a vendor class, you can specify the default currency and the default currency rate to be used for vendor accounts. We recommend that you select a foreign currency for a vendor class only if most or all vendors of the class use this currency. If you want to allow override of the currency and the rate by default for all vendors of the class, select these check boxes for the vendor class on the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form: **Enable Currency Override** and **Enable Rate Override** in the **Default Financial Settings** section of the **General** tab.

If all vendors of the class use the same currency, you can prohibit users from overriding the currency on vendor documents, thus reducing the chance of input errors related to the currency choice. If you may use a non-default currency and non-default rate type on individual documents for some vendors, you can allow currency and rate overriding for those vendors by selecting the **Enable Currency Override** and **Enable Rate Override** check boxes, respectively, on the [Vendors](AP_30_30_00.md) \(AP303000\) form \(in the **Financial Settings** section of the **Financial** tab\).

## Default Printing and Emailing Settings {#section_dpg_njv_vxb .section}

A vendor class can provide the default settings that determine whether the documents of vendors of the class should be printed on release or emailed on release. The settings that control the default printing and emailing preferences of vendors of a class are located in the **Default Print and Email Settings** section on the **General** tab of the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form. These settings are the **Print Orders** and **Send Orders by Email** check boxes for the vendor class. Selecting these check boxes makes the documents of the vendors of the class available for mass-printing and mass-emailing, respectively, by default.

You can override this setting for individual vendors of the class, if needed. For details, see [Mailings for Vendors: To Set Up a Mailing for a Vendor Class](Finance_PredefinedMailings_Vendors_Activity1.md).

## Rule for Generating Expense Subaccounts {#section_gpg_njv_vxb .section}

To gather more detailed accounting information, you can specify a rule to generate subaccounts for use on Accounts Payable documents as the expense subaccounts for transactions. A default expense subaccount can be a combination of multiple expense subaccounts, where for different segments, values may be taken from different expense subaccounts related to the document. For each segment of the resulting expense subaccount, you can specify from which subaccount—such as the company's branch, the vendor location, the inventory item, or the employee account—the segment value should be copied. For details, see [Combined Subaccounts: To Define a Subaccount Mask for AP Documents](../ImplementationGuide/config_Combined_Subaccounts_Implem_Activity_2.md).

**Parent topic:**[Creating a Vendor](../UserGuide/Vendor_Mapref.md)

