# Contract Management: Fixed-Price Contracts {#_074dee15-6191-4760-98d1-f41a307b1d4b .concept}

You may offer services to a customer at a fixed price, which is not based on the service's usage, as with a fee for internet connection or domain name registration. In fixed-priced contracts, a fixed price is set from the outset and will not change unless there is a change in scope. A fixed price contract allows a customer more predictability about the service \(or products\) costs in the future. You generally collect such a fee on a schedule—for example, once a year or on a monthly basis.

Consider an example: You offer domain name registration and maintenance for a year with the option to renew the contract. To implement such a scenario, you would do the following:

1.  By using the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, you create the *Domain Name Registration* and *Maintenance* non-stock items, which represent services you offer.
2.  On the [Contract Items](CT_20_10_00.md) \(CT201000\) form, you create a contract item and specify its key settings on the **Price Options** tab as follows:

    -   In the **Setup Item** box, you select the *Domain Name Registration* non-stock item and specify the pricing policy for the setup item. The specification of this item reflects that you will provide a domain name \(which is represented by the *Domain Name Registration* non-stock item\) and bill for it during the contract setup stage.
    -   In the **Renewal Item** box, you select the *Maintenance* non-stock item and specify the pricing policy for the renewal item. The specification of this item reflects that you will provide maintenance \(which is represented by the *Maintenance* non-stock item\) only after renewal and bill for it when the contract is renewed.
    -   To bill the customer for maintenance during the first year, you select the **Collect Renewal Fee on Activation** check box. The fee for the renewal item will be included in the first invoice.
    -   You fill in other required settings \(and any optional ones\) at your discretion.
    For details on configuring contract items, see [Contract Item Creation: To Create a Renewal Contract Item \(Regular Contract\)](config_Contract_Management_Implem_Activity_To_Configure_Contract_Item.md).

3.  By using the [Contract Templates](CT_20_20_00.md) \(CT202000\) form, you create a contract template as follows:
    -   You set the **Contract Type** to *Renewable* and the **Duration** to *1 Year*.
    -   You specify *Year* as the **Billing Period**.
    -   In the **Billing Schedule Starts On** box, you select *Setup Date*.
    -   You fill in other required settings \(and any optional ones\) at your discretion.
    -   You add the contract item you have configured to the contract template.

        For details on configuring a contract template, see [Contract Template Creation: To Create a Regular Contract Template](config_Contract_Management_Implem_Activity_To_Configure_Contract_Template.md).

4.  You set up and activate the contract. An invoice for domain name registration and maintenance is issued automatically as a result of the setup procedure. For more information, see [Contract Setup and Activation: General Information](Contracts_Setting_Up_Contract_Setup_GeneralInfo.md).
5.  In a year, you renew the contract. An invoice for maintenance only is issued automatically as a result of the renewal procedure. For details, see [Contract Management: Contract Renewal](Contracts_Setting_Up_Contract_Setup_ContractRenewal.md).

You can combine fixed-price contract items with ones that are billed based on usage. For example, suppose that you provide bandwidth or disk space along with a domain name. In this case, you could include in one contract item a domain name as the setup item and some quantity of disk space as the recurring item, or you could create separate contract items.

**Parent topic:**[Managing Contracts](../UserGuide/Contracts_Managing_Contracts_Mapref.md)

