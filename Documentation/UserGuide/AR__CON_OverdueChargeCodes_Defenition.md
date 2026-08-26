# Overdue Charges: Charge Codes {#_d2a54aa4-2cd1-4590-a89c-c61a6a51d396 .concept}

By using the [Overdue Charges](AR_20_45_00.md) \(AR204500\) form, you can create an unlimited number of overdue charge codes—particular overdue charge entities with their own rates and settings. Overdue charges are applied in either the base currency or the currency of the overdue document.

You plan the overdue charge code or codes needed to suit your company's credit policy. The planning includes the following for each overdue charge code:

-   Selecting the calculation method to be used with the code
-   Deciding on the amount of the overdue charge
-   Deciding on the amount of the overdue fee, if you plan to charge one
-   Defining the criteria for creation of a document of the *Overdue Charge* type for this code

## Calculation Methods {#calc_methods .section}

The system provides three calculation methods you can use to define the amount that is subject to overdue charges based on the number of days after the due date. The charges can be calculated either for open documents \(those that are not fully paid\) or for closed documents \(those that are fully paid\). The base all the methods use for calculation is the open balance of the overdue document.

For each overdue charge code, you select one of the following options in the **Calculation Method** box on the [Overdue Charges](AR_20_45_00.md) form:

-   *Interest on Balance*: To calculate the charges for the days past due with this calculation method, the system uses the document's open balance as of the date of the overdue charges calculation. If overdue charges have been recorded for the document, the system calculates the charges for the number of days since the date of the last overdue charges. The overdue document is subject to charges until it is closed.
-   *Interest on Prorated Balance*: To calculate the charges for the days past due with this calculation method, the system uses the document’s open balance for each of the days to which charges have not been applied. If overdue charges have been recorded for the document, the system calculates the charges for the number of days since the date of the last overdue charges. The overdue document is subject to charges if there is an open balance of the overdue document to which charges have not been applied. The overdue document to which charges have not been applied is subject to charges.
-   *Interest on Arrears*: To calculate the charges for the days past due with this calculation method, the system uses the document’s open balance for each of these days. The overdue document becomes subject to charges at the moment it is closed.

The calculation method is used along with the charging method, described in the next section of this topic, to determine how overdue documents are charged for a particular overdue charge code.

## Charging Methods {#charge_amount .section}

A charging method defines how the system charges an overdue document. An overdue charge can be defined either as a fixed amount or as a percentage \(annual rate\) on an open balance for the number of days late. If the overdue charge is a percentage, the following formula is used to calculate overdue charges, based on the number of days past due.

``` {#codeblock_bcf_hjv_vxb}
Charge Amount = (Percent Rate) * (Number of Days Past Due) * Open Balance / (365 * 100)
```

A percentage can be configured with a fixed minimum amount or a threshold amount. If you configure a percentage with a fixed minimum amount, the system charges an overdue document for at least the fixed minimum amount. If you configure a percentage with a threshold amount, the system charges a document only if the calculated charge amount is greater than or equal to the threshold amount. For details, see the following subsections of this topic.

**_Charging a Percentage with a Minimum Amount_**

If you define an overdue charge as a percentage on an open balance for the number of days late with a minimum amount specified, the system charges a document as follows:

-   If the charge amount is less than the specified minimum amount, the system charges the document for the minimum amount.
-   If the charge amount is greater than or equal to the specified minimum amount, the system charges the document for the calculated charge amount.

To charge a percentage with a minimum amount, in the **Charging Settings** section on the [Overdue Charges](AR_20_45_00.md) form, you do the following:

-   In the **Charging Method** box, you select the *Percent with Min. Amount* option.
-   In the **Min. Amount** box \(which appears once you have selected this charging method\), you specify the minimum amount an overdue document should be charged.
-   In the **Total Threshold** box, you specify the minimum amount of the overdue charge document; if the total amount of the lines of the overdue charge document is less than the total threshold amount, the document will not be created.
-   In the table \(which appears once you have selected this charging method\), you specify percent rate \(or rates\) with the date when the rate becomes effective.

**_Charging a Percentage with a Threshold Amount_**

If you define an overdue charge as a percentage on an open balance for the number of days late with a threshold amount specified, the system charges a document as follows:

-   If the charge amount is less than the specified threshold amount, the system does not charge the document.
-   If the charge amount is greater than or equal to the specified threshold amount, the system charges a document for the calculated charge amount.

To charge a percentage with a threshold amount, in the **Charging Settings** section on the [Overdue Charges](AR_20_45_00.md) form, you do the following:

-   In the **Charging Method** box, you select the *Percent with Threshold* option.
-   In the **Threshold** box \(which appears once you have selected this charging method\), you specify the amount of charges that should define whether to charge a document.
-   In the **Total Threshold** box, you specify the minimum amount of the overdue charge document; if the total amount of the lines of the overdue charge document is less than the total threshold amount, the document will not be created.
-   In the table \(which appears once you have selected this charging method\), you specify a percent rate \(or rates\) with the date when the rate becomes effective.

**_Charging a Fixed Amount_**

An overdue charge can be defined as a fixed amount. To define an overdue charge as a fixed amount, in the **Charging Settings** section on the [Overdue Charges](AR_20_45_00.md) form, you do the following:

-   In the **Charging Method** box, you select the *Fixed Amount* option.
-   In the **Amount** box \(which appears once you have selected this charging method\), you specify the fixed amount of the charge for overdue documents.
-   In the **Total Threshold** box, you specify the minimum amount of the overdue charge document; if the total amount of the lines of the overdue charge document is less than the total threshold amount, the document will not be created.

Thus, if an open balance of an overdue document is greater than zero, the system charges the specified fixed amount.

## Overdue Fees {#section_mcf_hjv_vxb .section}

Some companies charge a fixed amount \(a fee\) for processing documents of the *Overdue Charge* type. In these cases, a customer must pay the fee amount in addition to the amount of calculated overdue charges.

A fee is charged for each overdue charge document. An additional line with the fee amount is added to the document.

If your company charges a fee for processing late documents, on the [Overdue Charges](AR_20_45_00.md) \(AR204500\) form, for any overdue charge code, specify the following settings:

-   **Fee Amount**: The fixed amount to be charged for a document of the *Overdue Charge* type. A customer pays the amount in addition to the amount of the overdue charges.
-   **Fee Account** \(**Fee Subaccount**\): The account \(and subaccount, if applicable\) to which fee amounts are recorded.

You can leave these boxes empty if your company does not charge fees for overdue charge documents.

**Parent topic:**[Applying Overdue Charges](../UserGuide/CreditPolicy_Overdue_Charges_Mapref.md)

