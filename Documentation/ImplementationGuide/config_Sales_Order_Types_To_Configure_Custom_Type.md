# Sales Order Types: To Configure a Custom Order Type {#_83bbfeaa-7e62-447b-882e-2b42061c783a .task}

In Acumatica ERP, if the *Custom Order Types* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you can create custom order types if the predefined order types do not fit your company's processes and requirements. A custom order type, which you configure on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, is generally based on one of the existing templates.

## To Configure a Custom Order Type { .section}

1.  Open the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.
2.  Optional: If you want to create a custom order type based on any of the predefined order types, open the needed order type, and click **Clipboard &gt; Copy** on the form toolbar to copy its settings.
3.  In the **Order Type** box, specify the two-letter identifier for the new order type.
4.  In the **Description** box, specify a brief description of the new type.
5.  Optional: If you copied order type settings in Step 2, paste them by clicking **Clipboard &gt; Paste** on the form toolbar. \(In further instructions, you will need to change only some of these settings instead of specifying all of them. Review the copied settings to be sure each is what you need for the custom order type.
6.  Optional: In the **Order Template** box, select the template to be used for the order type.
7.  In the **Order Numbering Sequence** box, select the numbering sequence to be used for automatic generation of reference numbers for documents of the type.
8.  In the **Invoice Numbering Sequence** box, select the numbering sequence to be used for the Accounts Receivable document generated for each order of the type.
9.  In the **Posting Settings** section, specify General Ledger accounts and subaccounts, and rules for selecting accounts and subaccounts for the order type.
10. Optional: Specify additional processing options, such as the following:
    -   **Hold Orders on Entry**: Whether an order of this type should be saved with the *On Hold*status when it is entered
    -   **Hold Document on Failed Credit Check**: Whether the system performs a credit check for the customer when an order of this type is entered
    -   **Require Control Total**: Whether the user must type in the control total on order entry and modification for orders of this type
    -   **Bill Separately**: Whether the system should generate separate Sales Orders invoices for each order of this type
    -   **Calculate Freight**: Whether freight calculation is required when a user saves an order of this type
11. Optional: Select the **Require Lot/Serial Entry** check box if you want the lot or serial number to be mandatory for the items in the orders of this type.
12. Optional: Select the **Require Stock Allocation** check box if you want stock allocation to be mandatory for the items in the orders of this type.
13. Optional: Select the **Allow Quick Process** check box if you want to use quick processing for the orders of this type.
14. Click **Save** on the form toolbar to save the created order.

## Notes About the Procedure { .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about this procedure:

-   You may want to specify separate sequences in the **Order Numbering Sequence** and **Invoice Numbering Sequence** boxes of the **General** tab. If you use a prefix for each order type, it will make it easier for users to track documents.
-   For detailed instructions on how to configure quick processing for an order type, see [Sales Order Types: To Configure Quick Processing for an Order Type](config_Sales_Order_Types_To_Configure_Quick_Processing.md).

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

