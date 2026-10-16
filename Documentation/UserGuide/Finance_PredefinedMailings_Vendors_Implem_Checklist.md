# Mailings for Vendors: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for setting up predefined mailings for vendors, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially set up mailings, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

Make sure the minimum set of features has been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).

 Also, make sure that the *Inventory and Order Management* and *Purchase Requisitions* features have been enabled.

</td></tr><tr><td>

[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)

</td><td>

On the **Mailing &amp; Printing** tab of this form, in the **Default Sources** table, select the **Active** check box for the *PURCHASE ORDER* mailing.

</td></tr><tr><td>

[Purchase Requisitions Preferences](RQ_10_10_00.md) \(RQ101000\)

</td><td>

On the **Mailing &amp; Printing** tab of this form, in the **Default Sources** table, select the **Active** check box for the *RQPROPOSAL* mailing.

</td></tr><tr><td>

[Vendor Classes](AP_20_10_00.md)\(AP201000\)

</td><td>

Verify the existence of the vendor classes for which you will define mailings. For details, see [Accounts Payable: To Create a Vendor Class](../ImplementationGuide/config_Basic_Company_Implem_Activity_Vendor_Classes.md).

</td></tr><tr><td>

[Vendors](AP_30_30_00.md) \(AP303000\)

</td><td>

Verify the existence of the vendor accounts for the vendors for which you will set up mailings. For details, see [Vendors: Implementation Activity](Vendor_Implem_Activity.md).

</td></tr></tbody>
</table>

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Mailings for Vendors: To Set Up a Mailing for a Vendor Class](Finance_PredefinedMailings_Vendors_Activity1.md) and [Mailings for Vendors: To Set Up a Mailing for a Vendor](Finance_PredefinedMailings_Vendors_Activity2.md).

**Parent topic:**[Configuring Predefined Mailings for Vendors](../UserGuide/Finance_PredefinedMailings_for_Vendors_Mapref.md)

