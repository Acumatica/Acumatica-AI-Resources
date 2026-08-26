# Multiple Bill Payments: Implementation Checklist {#_ca06c556-c36b-4283-8099-49cc5930b7b2 .concept}

To ensure that the system is configured properly for processing a payment of multiple bills, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).| |
|[Vendors](AP_30_30_00.md) \(AP303000\)|Verify the existence of the vendor accounts for the vendors whose bills you want to pay with one payment. For details, see [Vendors: Implementation Activity](Vendor_Implem_Activity.md).| |
|[Payment Methods](CA_20_40_00.md) \(CA204000\)|Make sure the *CHECK* payment method has been selected when creating a payment.| |

## Settings That Affect the Workflow {#section_dsk_njv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created payments the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that payments will be automatically posted to the general ledger once they are released.
-   The following payment method settings should be specified for the payment method on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form:
    -   Select the **Print Checks** option in the **Additional Processing** section on the **Settings for Use in AP** tab.
-   The following vendor settings should be specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form:
    -   For the vendor whose bills should be paid by separate payments, select the **Pay Separately** check box in the **Default Payment Settings** section of the **Payment** tab.

With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Paying Multiple AP Bills](../UserGuide/Finance_PayingMultipleBills_Mapref.md)

