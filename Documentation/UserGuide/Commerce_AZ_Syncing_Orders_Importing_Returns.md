# Order Synchronization: Import of Returns {#_d61181f5-1fed-4c34-82e9-38c7195ad512 .concept}

To track information about returns and refunds, you can import returns along with seller-fulfilled and marketplace-fulfilled orders from Amazon to Acumatica ERP. The details of these returns are available in the return reports provided by Amazon.

## Configuration of the Import of Seller-Fulfilled Returns { .section}

To set up the synchronization of seller-fulfilled returns, you perform the following general steps on the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form:

1.  Activate the entity.

    To synchronize seller-fulfilled returns, you must activate the *Seller-Fulfilled Return* entity on the **Entities** tab.

2.  Specify the order type for imported returns.

    In the **Seller-Fulfilled Return Type** box on the **Orders** tab \(**Returns** section\), you must specify the order type that will be used for imported seller-fulfilled returns. An order type is available for selection in this box only if it is defined on the [Order Types](SO_20_10_00.md) \(SO201000\) form based on the *RC - Return for Credit* template.

3.  Specify the charge item.

    On the **Orders** tab \(**Returns** section\), you fill in the **Charge Item** box with a non-stock item that will be used to represent additional charges in imported returns, such as refund shipping, restocking fees, and other fees that Amazon charges customers during refunds.

4.  Specify the refund reason code.

    On the **Orders** tab \(**Returns** section\), you fill in the **Refund Reason Code** box with a reason code of the *Issue* usage type that will be used for the lines of the imported marketplace-fulfilled returns to indicate an issued refund.

5.  Configure refund fees.

    When you import refunds and the import includes refund fee types that have not been configured in the system yet, the system prompts you to set them up first. To help you, it adds new refund fee types to the **Payments** tab \(**Payment Fees** table\) for the payment method used for refunds. You need to map each added refund fee type to an ERP entry type.

    You may use one ERP entry type for all fees or assign different entry types for a more accurate breakdown. The ERP entry type you map to a refund fee type must comply with the following requirements:

    -   On the [Entry Types](../Shared/../UserGuide/CA_20_30_00.md) \(CA203000\) form, the entry type has the *Disbursement* type.
    -   On the [Cash Accounts](../Shared/../UserGuide/CA_20_20_00.md) \(CA202000\) form, the entry type is linked with the cash account associated with the store payment method.
    If you don't want to import a particular refund fee type to Acumatica ERP, you leave that fee type inactive.


## Configuration of the Import of Marketplace-Fulfilled Returns { .section}

To set up the synchronization of marketplace-fulfilled returns, you perform the following general steps on the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form:

1.  Activate the entity.

    To synchronize marketplace-fulfilled returns, you must activate the *Marketplace-Fulfilled Return* entity on the **Entities** tab.

2.  Specify the order type for imported returns.

    In the **Marketplace-Fulfilled Return Type** box of the **Orders** tab \(**Returns** section\), you must specify the order type that will be used for imported marketplace-fulfilled returns. An order type is available for selection in this box only if it is defined on the [Order Types](SO_20_10_00.md) \(SO201000\) form based on the *CM - Credit Memo* template.

3.  Specify the charge item.

    On the **Orders** tab \(**Returns** section\), you fill in the **Charge Item** box with a non-stock item that will be used to represent additional charges in imported returns, such as refund shipping, restocking fees, and other fees that Amazon charges customers during refunds.

4.  Specify the refund reason code.

    On the **Orders** tab \(**Returns** section\), you fill in the **Refund Reason Code** box with a reason code of the *Issue* usage type that will be used for the lines of the imported marketplace-fulfilled returns to indicate an issued refund.

5.  Configure refund fees.

    When you import refunds and the import includes refund fee types that have not been configured in the system yet, the system prompts you to set them up first. To help you, it adds new refund fee types to the **Payments** tab \(**Payment Fees** table\) for the payment method used for refunds. You need to map each added refund fee type to an ERP entry type.

    You may use one ERP entry type for all fees or assign different entry types for a more accurate breakdown. The ERP entry type you map to a refund fee type must comply with the following requirements:

    -   On the [Entry Types](../Shared/../UserGuide/CA_20_30_00.md) \(CA203000\) form, the entry type has the *Disbursement* type.
    -   On the [Cash Accounts](../Shared/../UserGuide/CA_20_20_00.md) \(CA202000\) form, the entry type is linked with the cash account associated with the store payment method.
    If you don't want to import a particular refund fee type to Acumatica ERP, you leave that fee type inactive.


## Synchronization of Returns { .section}

Returns are imported into Acumatica ERP during the synchronization of the *Seller-Fulfilled Refund* and *Marketplace-Fulfilled Refund* entities. A return can be imported only after the processing of the refund is completed in the Amazon seller account—that is, only if the refund has the *Prior refund: Applied* or *Prior refund: Pending* status.

During the import, the system creates a return order of the type specified on the **Orders** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form that corresponds to the return fulfillment. The system imports a return order only if the original order \(the order for which the return was created\) has been already imported to Acumatica ERP. For each return order, the system also imports the payment with the refunded amount if the payment for the original order has already been imported.

On the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the system adds returned items to the created return order with the following settings:

-   **Warehouse**: The default warehouse of the item.

    For a marketplace-fulfilled return, the system uses the warehouse \(if any\) specified in the **Marketplace Warehouse** box on the **Orders** tab \(**Marketplace-Fulfilled Order** section\) of the [Amazon Stores](BC_20_10_20.md) form.

-   **Location**: The default receipt location of the item.

    For a marketplace-fulfilled return, the system uses the location \(if any\) specified in the **Marketplace Warehouse Location** box on the **Orders** tab \(**Marketplace-Fulfilled Order** section\) of the [Amazon Stores](BC_20_10_20.md) form.

-   **UOM**: The sales UOM of the item.
-   **Reason Code**: The reason code specified in the **Refund Reason Code** box on the **Orders** tab of the [Amazon Stores](BC_20_10_20.md) form.
-   **Notes**: The specific reason code from the Amazon store in the following format: *&lt;return type&gt; \|\| &lt;return reason code&gt;*.

Also, on the **Details** tab of the [Sales Orders](SO_30_10_00.md) form, the system adds additional charges, such as refund shipping, restocking fees, and other fees that Amazon charges customers. Each additional charge is added as a separate line. As the inventory item for these lines, the system uses the non-stock item selected in the **Charge Item** box on the **Orders** tab \(**Returns** section\) of the [Amazon Stores](BC_20_10_20.md) form. The description for each line indicates the type of charge.

The total of all promotion amounts related to the return order is added to the **Document Discount** box in the Summary area.

## Synchronization of Refunds { .section}

Along with a return order, the connector imports payments with the refunded amounts related to the Amazon order. All partial refunds are imported within a single sync record. The system creates a separate payment of the *Refund* type on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form for each refund payment that has a unique posted date. The external reference number for these refund payments is also *\{Order External ID\};\{Posted Date\}*.

On the **Payments** tab of the [Sales Orders](SO_30_10_00.md) form, the system adds the imported refund payments for the return order. On the **Charges** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, this refund payment has refund fees grouped by the entry type they are mapped to on the **Payments** tab \(**Payment Fees** table\) of the [Amazon Stores](BC_20_10_20.md) form. Only one line is displayed per entry type. These refund fees cannot be modified.

## Limitations of Importing Returns and Refunds { .section}

The following limitations apply to the import of returns and refunds from Amazon:

-   The system does not support real-time synchronization of returns and refunds because Amazon provides information about them with the return reports but not through the API.
-   Amazon limits the time you can generate the same report again by 30 minutes. That means you cannot resynchronize the failed record immediately; you can do so only when at least 30 minutes have passed. If you configure an automation schedule to sync returns and refunds, the schedule's frequency must exceed 30 minutes.
-   Returns can be imported for a date range of not more than 60 days at once. That is, on the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, in the *Incremental* mode, the system prepares the returns to be imported that have been created within the last 60 days. In the *Incremental by Date* or *Full* mode, the selected date range must not exceed 60 days.
-   During the import of marketplace-fulfilled returns for which Amazon's warehouse has received returned items, Amazon provides no information if the items have been discarded or put back in stock. Thus, the system always puts the returned items in stock with the imported marketplace-fulfilled returns.
-   Amazon charges a seller fees for refunds and pays the seller back the refund amount deducting the fee. However, these refund fees are not imported to Acumatica ERP and added to payments.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_AZ_Syncing_Orders_Mapref.md)

