# To Configure Single-Installment Credit Terms {#_cfc4d12a-32e3-41aa-aa06-658d9d1123c7 .task}

You use the [Credit Terms](CS_20_65_00.md) \(CS206500\) form to define each set of credit terms, including due dates and conditions for cash discounts when an outstanding balance is paid early. For a set of credit terms, you can specify the payment as a single installment \(described in this topic\) or as multiple installments \(described in [To Configure Multiple-Installment Credit Terms](AR__HOW_Create_Credit_Terms_Multiply_Inst.md)\).

## To Configure Credit Terms for a Single Installment {#section_fgd_hjv_vxb .section}

1.  Open the [Credit Terms](CS_20_65_00.md) \(CS206500\) form.
2.  In the **General Settings** section, in the **Terms ID** box, type the identifier of the credit terms. The ID may contain up to ten characters.

    CAUTION:

    We do not recommend using any special symbols in the identifiers of entities.

3.  In the **Description** box, type the description of the terms.
4.  In the **Visible To** box, select the visibility of these credit terms \(that is, under what circumstances they are listed and available for selection\). The following options are available:
    -   *All*: The terms can be assigned to both vendors and customers.
    -   *Vendors*: The terms can be assigned to vendors only.
    -   *Customers*: The terms can be assigned to customers only.
    -   *Disabled*: The terms are removed from the selection lists for both vendors and customers.
5.  In the **Installment Type** box of the **Installments Settings** section, select *Single*.
6.  In the **Due Date Type** box of the **Due Day Settings** section, select the due date type. For detailed descriptions of the options, see [Setup of Credit Terms](AR__con_Credit_Terms.md).
7.  Depending on the due date type, specify the values of the other available elements \(if any\) in the **Due Day Settings** section.
8.  Optional: In the **Cash Discount Settings** section, enter the settings that affect the discount for an early payment:
    1.  In the **Discount Type** box, select the discount date type. The availability of options depends on the option selected as the **Due Date Type**.
    2.  In the **Discount Day** box, specify the number of days or the particular day of the month, depending on the option selected in the **Discount Type** box. \(This box is unavailable for some **Discount Type** options.\)
    3.  In the **Discount %** box, specify the percent to be applied to the document total amount to calculate the discount percentage.
9.  On the form toolbar, click **Save**.

**Parent topic:**[Credit Terms](../UserGuide/AP__con_Credit_Terms.md)

