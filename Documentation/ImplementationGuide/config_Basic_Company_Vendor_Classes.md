# Accounts Payable: Vendor Classes {#_59923682-1eb5-4edd-8a53-2080ddb7a561 .concept}

A vendor class groups vendors that have similar characteristics. Vendor classes can be based on the types of goods or services you purchase from vendors of the class or on other properties, such as the vendors' currency and payment methods. For instance, you might find it useful to create one vendor class for tax agencies and another for 1099 vendors.

## Creation of a Vendor Class { .section}

You define vendor classes and their settings on the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form. You can then select the appropriate vendor class when you are creating a vendor account on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, which causes the system to fill in the values of the class for the vendor. Any of these default values can be overridden.

During basic system configuration, you need to create only the vendor class to be used by default; you then specify it as the default vendor class on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form. After you specify the default vendor class, when you create another vendor class, the system automatically inserts the values of the default vendor class, any of which can be overridden. When you create a new vendor account, the default vendor class is initially specified as the vendor class, but you can change it to any other class.

**Parent topic:**[Accounts Payable](../ImplementationGuide/config_AP_Mapref.md)

