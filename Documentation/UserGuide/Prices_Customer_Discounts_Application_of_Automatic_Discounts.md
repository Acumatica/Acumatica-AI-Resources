# Automatic Customer Discounts: Application of Automatic Discounts {#_cce98dfa-0a13-4052-99b7-41aeae9d3b58 .concept}

In this topic, you will read about the application of automatic discounts in Acumatica ERP.

## Order of Automatic Discount Application Order { .section}

In Acumatica ERP, the system always applies automatic discounts in the following order when a user saves a document:

1.  Line discounts \(which are applied to each line of the document\): For each document line, the system checks the applicable line discounts and applies the one with the largest discount amount.
2.  Group discounts \(which are applied to multiple lines of the document\): The system finds the applicable group discounts and applies all of them.
3.  Document discounts: The system finds and applies the applicable document discount with the largest discount amount to the document. The system can apply only one document discount \(the best\) to a document.

    **Tip:** You can use group discounts as document discounts. For example, if you create a group discount that is applicable to a specific customer price class, it will work as a document discount affecting each line of a document.


## Additional Settings for Discount Application { .section}

On the [Discount Codes](AR_20_90_00.md) \(AR209000\) form, you can specify the following settings for the line and group discounts, which affect the rules of discount application and calculation:

-   For a line discount, select the **Exclude from Discountable Amount** check box to exclude the discountable amount of the line discount from the discountable amount for higher-level \(group or document\) discounts.

    For example, suppose that you have a line discount of 75% and a document discount of 5% for documents with total of more than $2000. You select this check box if you do not want to apply an additional document discount of 5% to the already-discounted line amounts.

    **Attention:** This check box is available on the [Discount Codes](AR_20_90_00.md) form only for line-level discounts.

-   For a group discount, select the **Skip Document Discounts** check box to apply only the group discount to the document's lines, excluding document discounts.

    For example, suppose that the following discounts have been defined in the system: a group discount that is applicable to multiple lines and significantly reduces the document total, and a document discount. For the group discount, you select this check box if you do not want to apply the document discount to the documents to which this group discount has been applied.

    **Attention:** This check box is available on the [Discount Codes](AR_20_90_00.md) form only for lines that contain group-level discounts.


For more information, see [Customer Discounts: Discount Codes](Discount_Codes_Prices_and_Discounts.md).

**Parent topic:**[Configuring and Applying Customer Discounts](../UserGuide/Prices_Customer_Discounts_Mapref.md)

