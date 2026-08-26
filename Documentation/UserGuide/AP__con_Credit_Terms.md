# Credit Terms {#_bb0d593d-524c-4bf5-85b4-7b4fcc3d5fac .concept}

Credit terms define the specific details of the seller's payment requirements that the buyer should meet in order to purchase goods on credit. These details include the date when a payment should be made, the conditions for cash discounts when any outstanding balance is paid early, and the setting that determines whether an outstanding balance is to be paid as a single installment or in multiple installments. You configure credit terms by using the [Credit Terms](CS_20_65_00.md) \(CS206500\) form.

## Single Installment {#section_pyc_hjv_vxb .section}

For a single-installment payment, you should specify a due date and conditions for a cash discount.

You can set one *due date* or two due dates. In case of two due dates \(implemented by selecting the *Custom* option in the **Due Date Type** list\), you should set two time intervals for the document dates. Consider the example shown in the following table.

|N|Due Day|Start Day|End Day|
|---|-------|---------|-------|
|\(1\)|10|1|15|
|\(2\)|25|16|30|

The first due date is the 10th of the next month for documents issued between day 1 and day 15 of the current month. The second due date is the 25th of the next month for documents issued between day 16 and day 30 of the current month. The following rules are applied to each set of days:

-   The end day should be greater than the start day.
-   If the due day is greater than \(or equal to\) the end day, the due date will be in the current month.
-   If the due day is less than the end day, the due date will be in the next month.

A *cash discount* is available for only a single-installment payment. If two due dates are set, you should specify a fixed number of days during which the discount is available for each group of documents. As a rule, the discount is available for a time interval starting on the document day and ending on the day of the month specified on the [Credit Terms](CS_20_65_00.md) form. The discount is set as a percentage. Whether it is applied to the document amount or it affects the taxable amount, too, is specified for each tax.

## Multiple Installments {#section_wyc_hjv_vxb .section}

Outstanding balances can be paid in multiple installments if you select *Multiple* in the **Installment Type** box. You should specify the number of installments, the frequency or schedule, and the installment method.

You can divide the payment into the specified number of installments by selecting any of these options in the **Installment Method** box on the [Credit Terms](CS_20_65_00.md) \(CS206500\) form:

-   *Equal Parts*: The document total amount \(with all the applicable taxes added\) is divided into equal parts.
-   *Tax in First Installment*: The amount of the document \(the total before taxes\) is divided into equal parts, and the tax amount is added to the first installment.
-   *Split by Percent in Table*: The installment amounts are calculated according to percentages you specify for each installment.

**Installment Frequency** defines the interval between installments and cannot be used with the **Split by Percent in Table** installment method. The following payment frequency options are available:

-   **Weekly**: Installments will be one week apart.
-   **Monthly**: Installments will be one month apart.
-   **Bimonthly**: Installments will be two months apart.

The **Installments Schedule** table is available only if the *Split by Percent in Table* option is selected as the installment method. By using this table, you can set for each installment the number of days from the due date and the percentage of the total document amount. The first installment \(which is due on the due date\) should have *0* in the **Day** column, and other installments' dates are specified with the respect to the due date.

## Overdue Charges {#section_dzc_hjv_vxb .section}

Terms are also used with overdue charges. For this type of terms, specify a due date or two due dates. It is assumed that no cash discount will be used with overdue charges.

-   **[Setup of Credit Terms](../UserGuide/AR__con_Credit_Terms.md)**  

-   **[Setup and Calculation of Cash Discounts](../UserGuide/AR__con_Cash_Discounts.md)**  

-   **[Examples of Credit and Cash Discount Periods](../UserGuide/AR__CON_CreditTerms_Examples.md)**  

-   **[To Configure Multiple-Installment Credit Terms](../UserGuide/AR__HOW_Create_Credit_Terms_Multiply_Inst.md)**  

-   **[To Configure Single-Installment Credit Terms](../UserGuide/AR__How_Creating_Credit_Terms.md)**  

-   **[To Disable Credit Terms](../UserGuide/AR__HOW_Disable_CrTerms.md)**  


