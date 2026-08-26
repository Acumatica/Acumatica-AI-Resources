# Accounts Payable: General Information {#_94b88557-fb99-494e-b27c-b931f2feb4cf .concept}

For users to be able to define vendors and enter and process documents to vendors in the system, the accounts payable functionality has to be implemented in Acumatica ERP. The implementation process includes creating vendor classes and specifying the accounts payable preference settings.

## Learning Objectives { .section}

In this chapter, you will learn how to implement the basic configuration of the accounts payable functionality for a company.

## Applicable Scenarios { .section}

You perform the basic configuration of the accounts payable functionality during the implementation of Acumatica ERP, after a company has been configured in the system and the general ledger functionality and cash management functionality have been implemented.

## Workflow of the Implementation of the Accounts Payable Functionality { .section}

To implement the accounts payable functionality, you perform the following general steps:

1.  On the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form, you create the default vendor class, which will be used to provide default values for vendor accounts of the class when these vendors are created and for other vendor classes that may be created. For details, see [Accounts Payable: To Create a Vendor Class](config_Basic_Company_Implem_Activity_Vendor_Classes.md).
2.  On the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form, you specify the necessary settings \(and any optional settings\) to be used in accounts payable. For details, see [Accounts Payable: To Specify Accounts Payable Preferences](config_Basic_Company_Implem_Activity_AP_Preferences.md).

## Speeding Data Entry {#section_ekg_njv_vxb .section}

To help make data entry easier and more accurate, you can use the following settings on the **General** tab \(**Data Entry Settings** section\) of the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form:

-   **Default Vendor Class ID**: In this box, you specify the default vendor class, as described in [Vendors: Vendor Defaults and Overrides](../UserGuide/AP__CON_VendorClasses.md), and use it to ease the creation of other vendor classes.
-   **Combine Expense Sub. from**: To gather more detailed accounting information, in this box, you can specify the rule to create the default expense subaccount \(if subaccounts are used in your system\) for use in AP documents as the expense subaccount for transactions. For this default subaccount, the values for different segments can be copied from different subaccounts related to the document. That is, for each segment of the resulting expense subaccount, you can specify from which subaccount—such as the company branch, vendor location, inventory item, employee account, project, or project task—the segment value should be copied.

    **Tip:** You can press the F3 key to open the **Product Group** dialog box, which lists the available product groups that can be used as subaccount segments. Select a required product group and click **Select** on the dialog box toolbar.

    For details, see [Combined Subaccounts: To Define a Subaccount Mask for AP Documents](config_Combined_Subaccounts_Implem_Activity_2.md).

-   **Payment Lead Time**: In this box, you specify the number of days required for a payment to reach a vendor location. This value is used as the default value for multiple boxes on the [Approve Bills for Payment](../UserGuide/AP_50_20_00.md) \(AP502000\) and [Prepare Payments](../UserGuide/AP_50_30_00.md) \(AP503000\) forms.

**Parent topic:**[Accounts Payable](../ImplementationGuide/config_AP_Mapref.md)

