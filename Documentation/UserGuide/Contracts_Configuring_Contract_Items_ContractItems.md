# Contract Item Creation: Contract Items {#_06ebd6cc-4045-4fa9-adf2-2c5e08c5f9a4 .concept}

In Acumatica ERP, a contract item is an entity that you create on the [Contract Items](CT_20_10_00.md) \(CT201000\) form that represents the services you provide to customers as part of the contract. The contract items of a particular contract are listed on the **Details** tab of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form.

A contract item consists of such settings as the services that are provided on setup, on renewal, or on a recurring basis for this contract item. It also contains the pricing and provisioning settings. The services that are specified for a contract item must be first defined as non-stock items in the system.

## Non-Stock Items Included in a Contract Item { .section}

Before you create a contract item on the [Contract Items](CT_20_10_00.md) \(CT201000\) form, you should consider what services you will offer to your customers as the setup item, renewal item, or recurring item of the contract item.

These items should be defined as non-stock items on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form before the contract items are created. The base price of the non-stock item will be used to calculate the price of the contract item, and the GL sales account and subaccount of the non-stock item will be used to record item-related transactions. For details on creating non-stock items, see [Non-Stock Items: General Information](Non_Stock_Items_OrderMgmt_GeneralInfo.md).

**Tip:** You cannot use a non-stock item that is a kit in a contract item.

## Contract Item {#section_kph_5ty_1vb .section}

Once you have defined the needed non-stock items, you define the contract items on the [Contract Items](CT_20_10_00.md) \(CT201000\) form.

**Tip:** All non-stock items included in a contract item should be priced in the same currency.

The key settings of a contract item are specified on the **Price Options** tab of the form. They cover the following parts of contract fulfillment, and a contract item can have settings specified for any or all of the parts:

-   Setup: In the **Setup and Renewal** section, you specify the setup item, which is the non-stock item that you want to provide during contract setup, and specify the pricing policy to be used to calculate the setup price. Also, you can use these settings to create the deposit contract item that is used in deposit contracts. For details on creating deposit contract, see [Contract Configuration: Deposit Contracts](Contracts_Configuring_Contracts_Configuring_Deposit_Contract.md).
-   Renewal: The renewal settings of the contract item are also specified in the **Setup and Renewal** section. You specify the renewal item, which is the non-stock item that you want to provide during contract renewal, and specify the pricing policy to be used to calculate the renewal price. You can define the renewal price to be dependent on the setup price.
-   Recurring: In the **Recurring Billing** settings, you define the policy for the recurring billing, specify the non-stock item you want to provide recurrently, and define the pricing policy to be used to calculate the recurring price. For items that are provided recurrently, you can specify a price for extra usage, which is the usage that exceeds the included usage; thus, the extra quantity can be billed at a different price. You can set up both the recurring price and the extra usage price to be dependent on the setup price.

    For example, you might provide a customer with a software package or another product that might need ongoing service or support. In this case, you would specify the software or product as the setup item and specify the support services as the recurring item.


For each of these parts, you select one of the following pricing options in the **Setup Pricing**, **Renewal Pricing**, or **Recurring Pricing** box:

-   *Use Item Price*: The price is determined by the first available source of the non-stock item price, which the system checks in the following order: customer price lists, customer price class prices, base price lists, and the default price.
-   *Percent of Item Price*: The price is a percentage that the system calculates by applying the percent specified in the **Item Price/Percent** box of the [Contract Items](CT_20_10_00.md) \(CT201000\) form to the price of the non-stock item.
-   *Percent of Setup Price* \(for renewal and recurring items only\): The system calculates the item price by applying the percent specified in the **Item Price/Percent** box to the contract item setup price.
-   *Enter Manually*: The price should be specified manually in the **Item Price/Percent** box of the [Contract Items](CT_20_10_00.md) form. It can be changed in a contract.

**Parent topic:**[Creating Contract Items](../UserGuide/Contracts_Configuring_Contract_Items_Mapref.md)

