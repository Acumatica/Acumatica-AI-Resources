# To Configure Multiple-Installment Credit Terms {#_21b6e04b-80b2-412e-a173-2e929af54bd0 .task}

You use the [Credit Terms](CS_20_65_00.md) \(CS206500\) form to define each set of credit terms. For a set of credit terms, you can specify payment as a single installment \(described in [To Configure Single-Installment Credit Terms](AR__How_Creating_Credit_Terms.md)\) or as multiple installments \(described in this topic\).

## To Configure Credit Terms for Multiple Installments {#section_bgd_hjv_vxb .section}

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
5.  In the **Installment Type** box of the **Installments Settings** section, select *Multiple*.
6.  In the **Installment Method** box, select the installment method, which determines how the system calculates the installment amounts.
7.  If you selected the *Equal Parts* or *Tax in First Installment* installment method, do the following:
    -   1.  In the **Number of Installments** box, type the number of installments.
2.  In the **Installment Frequency** box, select the installment frequency.
8.  If you selected the *Split by Percent in Table* method, do the following for each installment:
    1.  On the **Installments Schedule** table toolbar, click **Add Row**.
    2.  In the **Days** column, type the number of days from the due date on which this particular installment is due.
    3.  In the **Percent** column, type the percent of the installment.
9.  In the **Due Date Type** box of the **Due Day Settings** section, select the due date type. For detailed descriptions of the options, see [Setup of Credit Terms](AR__con_Credit_Terms.md).
10. Depending on the due date type, specify the values of the other available elements \(if any\) in the **Due Day Settings** section.
11. On the form toolbar, click **Save**.

**Parent topic:**[Credit Terms](../UserGuide/AP__con_Credit_Terms.md)

