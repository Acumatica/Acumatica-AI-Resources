# To Configure Default Credit Verification Rules {#_085d1618-6cdf-4358-8145-6ab55bcfb4c6 .task}

You define the default credit verification rules for customer classes by using the [Customer Classes](AR_20_10_00.md) \(AR201000\) form. When you create a customer on the [Customers](AR_30_30_00.md) \(AR303000\) form and specify the class, the customer initially is assigned the credit verification settings of that class. However, you can override the default credit verification settings for the customer.

## To Configure Default Credit Verification Rules for Customers of a Customer Class {#section_gqc_hjv_vxb .section}

1.  Open the [Customer Classes](AR_20_10_00.md) \(AR201000\) form.
2.  In the **Class ID** box, select the customer class for which you want to configure credit verification rules.
3.  On the **General** tab \(in the **Default Credit Verification Settings** section\), in the **Credit Verification** box, select the default rule to be used for credit verification for customers of the class \(which might be the rule to disable credit verification\). The following options are available:
    -   *Credit Limit*: If the customer's total outstanding balance is less than the amount specified in the **Credit Limit**box, the system generates a warning. If the value in the **Over-Limit Amount** box is also exceeded, the system puts new invoices of the customer on hold.
    -   *Days Past Due*: Credit terms are defined and documents' due dates are calculated based on the customer's terms. If the customer has a document that is past due longer than the number of days specified in the **Credit Days Past Due** box, the system puts new invoices of the customer on hold.
    -   *Limit and Days Past Due*: Both types of rules are applied: The customer's debt should not exceed the credit limit, and the payment date should not exceed the due date of an invoice by more days than the specified number of days past due. If either rule is violated \(or both rules are\), the system puts new invoices on hold.
    -   *Disabled*: No credit rules are to be applied.
4.  If you have not disabled verification for the class, specify the appropriate conditions for the selected credit verification rule. Do one of the following:
    -   If you have selected the *Credit Limit* option:
        -   In the **Credit Limit** box, type the amount to compare the customer's outstanding balance with.
        -   In the **Over-Limit Amount** box, type the amount to compare to the difference between the customer's outstanding balance and the allowed credit limit.
    -   If you have selected the *Limit and Days Past Due* option:
        -   In the **Credit Limit** box, type the amount to compare the customer's outstanding balance with.
        -   In the **Over-Limit Amount** box, type the amount to compare to the difference between the customer's outstanding balance and the allowed credit limit.
        -   In the **Credit Days Past Due** box, type the number of days a document may be past due.
    -   If you have selected the *Days Past Due* option, in the **Credit Days Past Due** box, type the number of days a document may be past due.
5.  On the form toolbar, click **Save**.

**Parent topic:**[Configuring Credit Verification Rules](../UserGuide/CreditPolicy_Credit_Verification_Rules_Mapref.md)

