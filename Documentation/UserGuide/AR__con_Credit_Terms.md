# Setup of Credit Terms {#_bb0d243d-508c-4bf5-85b4-7b4fcc3d5fac .concept}

You need to plan the credit terms your company offers to customers, as well as outline the details of the credit terms offered to your company by vendors, which are already defined, in preparation for entering them into the system. We recommend that you decide on the following points when you plan each set of credit terms:

-   The length of the credit period and the ways its due date is calculated. For details, see [Setting Up Due Date Calculation](#section_xwk_vkj_gv).
-   The number of installments and the installment payment schedule \(if the company offers installment buying\). For details, see [Configuring Installment Payments](#section_yjc_dlj_gv).

    **Attention:** You can configure a cash discount for only a single-installment payment.

-   The cash discount conditions and the way they are affected by the length of the credit period. For details, see [Setup and Calculation of Cash Discounts](AR__con_Cash_Discounts.md).

If your company has been operating for some time, you already have established credit terms. We recommend that you compare the credit terms your company offers to customers and the credit terms offered to your company by vendors, because in Acumatica ERP, you can use the same credit terms for both customer payments and payments to vendors, if needed.

## Setting Up Credit Terms {#section_pzc_hjv_vxb .section}

These are the general steps you need to perform to create a set of credit terms by using the [Credit Terms](CS_20_65_00.md) \(CS206500\) form:

1.  You specify a descriptive identifier for the credit terms you want to configure. The length of an identifier can be up to 10 Unicode symbols.

    **Important:** We do not recommend using any special symbols in the identifiers of entities.

2.  You define the scope of the credit terms: whether they apply to only customer documents, only vendor documents, or both types of documents.
3.  You configure how a due date is calculated for a document.
4.  Optional: You configure the cash discount conditions.
5.  Optional: If needed, you change the default installment type of credit terms, which is *Single*, to *Multiple* and define the number of installments and their payment schedule.

## Configuring the Assignment of Credit Terms {#section_szc_hjv_vxb .section}

By using the credit terms that have been manually or automatically assigned to a document, the system calculates the due date of the document. If a cash discount is applied, the system also calculates the end date of the cash discount period and the cash discount amount for the document.

In Acumatica ERP, you can assign credit terms to the following types of documents:

-   Accounts Receivable: Invoices, debit memos, credit memos, and overdue charges
-   Accounts Payable: Bills, debit adjustments, and credit adjustments

To make the system automatically assign credit terms to customer documents, you assign the credit terms to customer classes, and by default, a customer is assigned the credit terms specified for the customer class it belongs to. You can manually specify the credit terms for each customer \(or override the class setting\) by using the [Customers](AR_30_30_00.md) \(AR303000\) form. When you create a document and select a customer, the system automatically associates with the document the credit terms specified for the customer. \(The credit terms for the document can also be overridden.\)

Automatic assignment of credit terms to vendor documents is configured similarly to automatic assignment of credit terms to customer documents, with terms being assigned to vendor classes. You also can manually specify or change the credit terms for each vendor by using the [Vendors](AP_30_30_00.md) \(AP303000\) form.

## Setting Up Due Date Calculation {#section_xwk_vkj_gv .section}

Certain settings specified for the credit terms on the [Credit Terms](CS_20_65_00.md) \(CS206500\) form determine the credit period: the time interval that starts when a customer purchases a product or a service \(on the document date\) and ends when the customer's payment is due. In Acumatica ERP, you do not specify the length of the credit period; you instead specify the way the document due date will be calculated based on the date of the document's creation.

By specifying the appropriate **Due Date Type** setting on the [Credit Terms](CS_20_65_00.md) form, you set up the system to calculate the due date based on one of the following factors:

-   **A day in a month** \(the *Day of Next Month*, *End of Month*, *End of Next Month*, and *Day of the Month* options\): You can specify a day of the month \(in the **Due Day 1** box\) to be the due date for all documents issued before this day, or the end of the current or next month can be the due date.

    The *10th, 20th, or Last Day of Next Month* option determines the due date of a document according to the ten-day range of the month of the document creation \(the first ten-day range, the second ten-day range, or the third ten-day range of the month\) as follows:

    -   If the document creation date is in the range of the 1st to 10th day of the month, then the due date is the 10th day of the next month.
    -   If the document creation date is in the range of the 11th to 20th day of the month, then the due date is the 20th day of the next month.
    -   If the document creation date is in the range of the 21st day of the month to the end of the month, then the due date is the last day of the next month.
-   **A fixed number of days** \(the *Fixed Number of Days* and *Fixed Number of Days Starting Next Month* options\): You can specify the period of time \(in the **Due Day 1** box\) that is used to calculate the due date, based on the document date or the first day of the next month. \(To determine the due date of the document, the system adds the specified number of days to either the document date or the first day of the next month.\)
-   **Multiple custom dates** \(the *Custom* option\): With this option selected, you can set two time intervals for the document dates and specify a due date for each interval. The settings for configuring the first interval are **Due Day 1**, **Day From 1** \(automatically filled in by the system and read-only\), and **Day To 1**. The settings for configuring the second interval are **Due Day 2**, **Day From 2** \(automatically filled in by the system and read-only\), and **Day To 2** \(automatically set to *31* by the system and read-only\).

    The following rules are applied to each set of days:

    -   The end day should be later than or the same as the start day.
    -   If the day of the **Due Day N** setting is later than or the same as the day of the **Day To N** setting, the due date will be in the current month.
    -   If the day of the **Due Day N** setting is earlier than the day of the **Day To N** setting, the due date will be in the next month.

**Attention:** Newly created credit terms cannot be created with gaps between intervals. For existing credit terms, after the system upgrade, if a document date doesn't match either interval, the due date won't be calculated. For example, if an existing document is dated 1/31/2014 and the intervals are 1–15 and 16–30, the due date won't be calculated for the document.

For more examples of the ways a credit period is calculated, see [Examples of Credit and Cash Discount Periods](AR__CON_CreditTerms_Examples.md).

## Configuring Installment Payments {#section_yjc_dlj_gv .section}

Outstanding balances can be paid in a single installment or multiple installments. To configure installment payments, select the *Multiple* option in the **Installment Type** list. By default, the installment type for new credit terms is *Single*. You then specify the number of installments, the frequency or schedule, and the installment method.

You can configure either an installment frequency or an installment schedule. To configure a frequency, in the **Installment Frequency** box, you can select the interval between installments. The following payment frequency options are available:

-   *Weekly*: Installments will be one week apart.
-   *Monthly*: Installments will be one month apart.
-   *Semi-monthly*: Installments will be a half a month apart.

To determine how the amounts of installments are calculated for the selected frequency, select one of these options in the **Installment Method** list:

-   *Equal Parts*: The document total amount \(with all the applicable taxes added\) is divided into equal parts.
-   *Tax in First Installment*: The amount of the document \(the total before taxes\) is divided into equal parts, and the tax amount is added to the first installment.

To configure an installment schedule, you leave the **Installment Frequency** box blank and select the *Split by Percent in Table* installment method. The installment amounts are calculated according to the percentages that you specify for each installment in the **Installments Schedule** table. For each installment, you can specify the number of days from the due date and the percent of the total document amount. The first installment \(which is due on the due date\) should have *0* in the **Day** column, and other installments' dates are specified with the respect to the due date.

**Parent topic:**[Credit Terms](../UserGuide/AP__con_Credit_Terms.md)

