# Sales Tax Adjustments: Generated Transactions

For a tax adjustment of the *Adjust Output* type, the system generates the following GL batch, as shown in the following table.

|Account|Debit|Credit|
|-------|-----|------|
|Specified adjustment account|00.00|Tax amount|
|Tax Payable account|Tax amount|00.00|

For a tax adjustment of the *Adjust Input* type, the system generates the following GL batch, as shown in the following table.

|Account|Debit|Credit|
|-------|-----|------|
|Specified adjustment account|Tax amount|00.00|
|Tax Payable account|00.00|Tax amount|

**Parent topic:**[Creating Sales Tax Adjustments](../UserGuide/Taxes_Creating_Tax_Adjustment_Mapref.md)

