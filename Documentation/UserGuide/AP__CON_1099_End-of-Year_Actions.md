# End-of-Year Actions {#_933ad755-8ef1-4291-a24b-7009dce8cdd1 .concept}

At the end of the 1099 reporting year, you print or prepare electronic versions of 1099-MISC and 1099-NEC forms for each 1099 vendor by using the [1099-MISC Form](AP_65_30_00.md) \(AP653000\) and [1099-NEC Form](AP_65_31_00.md) \(AP653100\) forms. You then send the appropriate copies of the forms to vendors and the IRS.

If multiple companies in a tenant are configured as 1099 reporting entities, you print 1099-MISC and 1099-NEC forms for the vendors of each company. In the **Company ID** box of the [1099-MISC Form](AP_65_30_00.md) and [1099-NEC Form](AP_65_31_00.md) reports, you select the company for which you want to print the 1099 forms. In the list of options for this box, the system displays only companies that are 1099 reporting entities.

Once the forms have been filed for a particular 1099 year, you can close the 1099 year on the [Close 1099 Year](AP_50_70_00.md) \(AP507000\) form to avoid duplicate filing of information. When a user enters the first transactions for a 1099 vendor defined in your system, the system initializes the next reporting year for 1099 information. The system tracks 1099 payments for each calendar year independently from 1099 payments of the previous year; thus, closing a year is not mandatory and you can have multiple open 1099 years.

If on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, the date of a payment to a 1099 vendor falls within a closed 1099 year, you cannot process \(record, apply, or void\) this payment. On the [Checks and Payments](AP_30_20_00.md) form, you cannot change the originating branch of a payment to a 1099 vendor to a branch of the company for which the payment date falls within a closed 1099 year. On the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form, you cannot change the originating branch of a cash purchase from a 1099 vendor to a branch of the company for which the payment date falls within a closed 1099 year.

However, you can generate 1099-related reports, as well as the electronic 1099-MISC and 1099-NEC forms, for the closed 1099 year.

If you discover that a 1099 year has been closed by mistake, you can reopen it on the [Close 1099 Year](AP_50_70_00.md) form. For details, see [To Reopen a 1099 Year](AP__HOW_To_Reopen_1099_Year.md).

**Parent topic:**[Filing Out the 1099 Forms](../UserGuide/AP__MNG_1099_Filing.md)

