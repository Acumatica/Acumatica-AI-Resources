# Multicurrency Functionality: Currency Rounding Rules {#_024c18e4-a4c6-483c-9fbd-cd445614b7db .concept}

Acumatica ERP uses the following basic rules for rounding:

-   The exchange rates should be specified with eight significant figures. The exchange rates themselves are not rounded or truncated.

    **Tip:** Exchange rates received from the [Open Exchange Rates API](https://openexchangerates.org) service on the [Refresh Currency Rates](../UserGuide/CM_50_70_00.md) \(CM507000\) form are provided with six decimal places.

-   The exchange rates are used for converting the transaction amounts from a foreign currency to the base currency.
-   The amounts resulting from currency conversion operations are rounded up to the nearest currency subunit if the digit in the next decimal place is 5 or greater.

In this topic, you will read about the accounts used for recording the gains and losses that result from rounding, and you will consider an example of rounding in the system.

## Rounding Examples { .section}

The euro currency has two places after the decimal point that denote the number of cents. Suppose that the result of conversion of the U.S. dollar to the euro is an amount with more than two decimal places. The basic rounding rules \(noted above\) are applied as follows:

-   If the digit in the third decimal place is less than 5, the amount in the second decimal place stays as it is. \(For instance, EUR 57.354 becomes EUR 57.35.\)
-   If the digit in the third decimal place is 5 or above, the amount in the second decimal place must be rounded up. \(For example, EUR 57.785 becomes EUR 57.79.\)

**Parent topic:**[Multicurrency Functionality](../ImplementationGuide/config_Multicurrency_Basic_Mapref.md)

