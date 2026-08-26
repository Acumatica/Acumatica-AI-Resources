# Bill Prepayments: Implementation Checklist {#_72ff02b9-9d9d-4b8e-aa1a-e57c9b086b66 .concept}

To ensure that the system is configured properly for processing prepayments, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).| |
|[Vendors](AP_30_30_00.md) \(AR303000\)|Verify the existence of the vendor accounts for the vendors for which you will create and process prepayments. For details, see [Vendors: Implementation Activity](Vendor_Implem_Activity.md).| |
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|Verify the existence of non-stock items that can be used when creating prepayment requests. For details, see [Non-Stock Item: Implementation Activity](Non_Stock_Item_Fin_Implem_Activity.md).| |
|[Payment Methods](CA_20_40_00.md) \(CA204000\)|Make sure the *CHECK* payment method has been selected when paying a prepayment request.| |

## Implementation Notes {#section_p4n_njv_vxb .section}

When deciding how many and which prepayment accounts to use to make it easier to track them in the system, you can select one or any of the following options:

-   To use a single prepayment account for all prepayments \(to all vendors\)
-   To specify the prepayment accounts for particular vendor classes
-   To specify separate prepayment accounts for specific vendors

If you do not specify a separate account for prepayments, the vendor prepayments will be debited to the vendor AP account.

To assign the prepayment accounts, do the following:

1.  On the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form, specify the prepayment account and subaccount for the default vendor class and for each of the other vendor classes. This will make it easy to create new vendor classes and new vendors with the proper prepayment account specified.
2.  Use the [Vendors](AP_30_30_00.md) \(AP303000\) form to specify the prepayment account and subaccount for each vendor.

## Settings That Affect the Workflow {#section_t4n_njv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created checks the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that checks will be automatically posted to the general ledger once they are released.
-   The following payment method settings should be specified for the payment method on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form:
    -   Select the **Print Checks** option in the **Additional Processing** section on the **Settings for Use in AP** tab.

With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Processing Prepayments for a Bill](../UserGuide/Finance_ProcessingPrepayments_Mapref.md)

