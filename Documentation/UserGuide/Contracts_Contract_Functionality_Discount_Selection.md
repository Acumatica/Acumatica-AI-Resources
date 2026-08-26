# Contract Functionality Implementation: Discount Application to a Contract {#_9f33e6ff-9953-4f0f-9d4e-48563ae1b799 .concept}

In this topic, you will find details on the discount code that you can apply to a contract. The discount code determines the discount rate, the application rules, and the items it can be applied to.

The discount codes that may be available for selection are created on the [Discount Codes](AR_20_90_00.md) \(AR209000\) form, and the discount sequences of each discount code are created on the [Discounts](AR_20_95_00.md) \(AR209500\) form.

## Discounts Available for Selection { .section}

To apply a discount to a contract, open the **Details** tab on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form, and select a discount code in the lookup table for the **Promo Code** box.

The system forms the list of discount codes in the lookup table as follows:

1.  The system selects all discount codes with the *Line* type that have at least one active discount sequence.
2.  For the discount codes that have not been excluded in Step 1, the system checks the conditions defined in the active discount sequences of the discount codes. A discount code proceeds to Step 3 for possible conclusion only if the code is applicable to any of the following:
    -   The customer account for which you are preparing a contract
    -   The customer price class to which the customer account belongs
    -   The non-stock items used in the contract items
    -   The item price class to which the non-stock item belongs

        **Note:** The system displays in the lookup table for the **Promo Code** box all discount codes that may be applicable to the items in the contract. In other words, the selector might show some discount codes that aren’t suitable for any of the contract items at the current moment.

3.  For each discount code that has not been excluded in Step 2, if an applicable discount sequence of the discount code is marked as promotional, the discount code will be listed in the lookup table only if the contract start date is in the promotional range.

If you do not specify a discount code for a contract, the system will apply the best active line discount when you run the contract billing process. If you specify a discount code for a contract, the system will apply the specified discount, even if a better discount is available.

The system applies the specified discount to only the non-stock items used in contract items. If you record the contract usage of a non-stock item that is not included in the contract, the system will apply the best available discount for this non-stock item.

For more information, see [Customer Discounts: General Information](Prices_Customer_Discounts_GeneralInfo.md).

**Parent topic:**[Implementing the Contract Functionality](../UserGuide/Contracts_Implementing_Contracts_Functionality_Mapref.md)

