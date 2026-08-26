# Posting Settings in Sales Order Types {#_5c76a1a1-5e6e-4182-bc7e-b8448feaa84b .concept}

Each order type has its own posting settings that specify to which accounts and subaccounts specific General Ledger transactions should be posted during the processing of orders of this order type. The following sections describe which accounts and subaccounts you can specify to be used for posting.

## Posting Settings of Order Types { .section}

The system can obtain the accounts for transactions generated during the processing of a sales order from several sources, depending on the policies established in your company. For each order type, you can specify the source of the following accounts:

-   The sales account \(of the *Income* type\) and subaccount to be used for each inventory item that is sold and issued from your company's inventory. The system can obtain the sales account from the settings of the inventory item, warehouse \(if applicable\), posting class, customer location \(if applicable\), or the reason code.

    **Note:** This setting overrides the posting settings of a sales account specified in the posting class assigned to an item.

-   The freight account \(of the *Income* type\) and subaccount to be used for recording the freight revenue for each item sold. The system can obtain the freight account from the settings of the order type, customer location \(if applicable\), or ship via code.
-   The discount account \(of the *Income* type\) and subaccount to be used for recording the discounts provided for an order of this type. The system can obtain the discount account from the settings of the order type or the customer location \(if applicable\).

## Rules for Selecting Subaccounts { .section}

If the *Subaccounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you also need to specify for each order type how the system selects the appropriate subaccounts to be used for transaction posting. By default, for the subaccounts, the system uses the same sources as those for the corresponding accounts \(as summarized in the previous section\). You can configure the posting settings in an order type to combine the segment values of multiple subaccount segments from different sources to get subaccounts that would perfectly reflect all the details of the transaction. For more details on the rules for combining subaccounts, see [Combined Subaccounts: General Information](../ImplementationGuide/config_Combined_Subaccounts_GeneralInfo.md).

**Parent topic:**[Managing Sales Documents](../UserGuide/SO__MNG_Managing_Documents.md)

