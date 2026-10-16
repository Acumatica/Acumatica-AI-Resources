# Mailings for Customers: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for setting up predefined mailings for customers, and to understand \(and change, if needed\) the settings that affect the processing workflow.

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

 Also, make sure that the *Inventory and Order Management* feature has been enabled.

</td></tr><tr><td>

[Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\)

</td><td>

On the **Mailing &amp; Printing** tab of this form, in the **Default Sources** table, select the **Active** check box for the *INVOICE* mailing.

</td></tr><tr><td>

[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

</td><td>

On the **Mailing &amp; Printing** tab of this form, in the **Default Sources** table, select the **Active** check box for the *SALES ORDER* mailing.

</td></tr><tr><td>

[Customer Classes](AR_20_10_00.md) \(AR201000\)

</td><td>

Verify the existence of the customer classes for which you will define mailings. For details, see [Accounts Receivable: To Create a Customer Class](../ImplementationGuide/config_Basic_Company_Implem_Activity_Customer_Classes.md).

</td></tr><tr><td>

[Customers](AR_30_30_00.md) \(AR303000\)

</td><td>

Verify the existence of the customer accounts for the customers for which you will set up mailings. For details, see [Customers: Implementation Activity](Customer_Implem_Activity.md).

</td></tr></tbody>
</table>

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Mailings for Customers: To Set Up a Mailing for a Customer Class](Finance_PredefinedMailings_Customers_Activity1.md) and [Mailings for Customers: To Set Up a Mailing for a Customer](Finance_PredefinedMailings_Customers_Activity2.md).

**Parent topic:**[Configuring Predefined Mailings for Customers](../UserGuide/Finance_PredefinedMailings_for_Customers_Mapref.md)

