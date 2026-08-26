# Combined Subaccounts: To Define a Subaccount Mask for AP Documents {#_1538f8a0-0e2e-4b84-afc5-b5d5e97a2fd8 .task}

In this activity, you will learn how to configure automatically combined subaccounts in accounts payable documents. You do this by defining a subaccount mask in the accounts payable preference settings and by specifying subaccounts for the needed entities.

## Story { .section}

Suppose that accountants of the SweetLife Fruits &amp; Jams company need to have combined subaccounts configured in the system to be used as the expense subaccount in vendor documents, to speed up the processing of these documents.

Acting as an administrator, you have to specify the subaccount mask that will be used for these documents, and then specify the expense subaccount for some of the source records. The first segment of the subaccount should be copied from the non-stock item selected in the document line. The second segment should be copied from the employee who is the owner or creator of the document.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Employees](../UserGuide/EP_20_30_00.md#) \(EP203000\) form, the *EP00000015* employee \(*Bill Owen*\) has been created.
-   On the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, the *ADVERT* and *CONSULT* non-stock items have been defined.
-   On the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form, the *SUBACCOUNT* segmented key has been defined.

## Process Overview { .section}

In this activity, on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form, you will specify the AP subaccount mask. On the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, for two items, you will specify the expense subaccount that the system will use to form the combined subaccount when these items are selected in a document. Finally, on the [Employees](../UserGuide/EP_20_30_00.md#) \(EP203000\) form, for Bill Owen, you will specify the expense subaccount that the system will use to form the combined subaccount for a document created by this employee.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  Make sure that the *SUBACCOUNT* segmented key has been modified, as described in [Subaccounts: Implementation Activity](config_Subaccounts_Implem_Activity.md).

## Step 1: Defining the Mask for Combined Subaccounts in AP Documents { .section}

To define the subaccount mask in the accounts payable preference settings, do the following:

1.  Open the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form.
2.  On the **General** tab \(**Data Entry Settings** section\), click in the **Combine Expense Sub. From** box, point at the first segment, and press F3 \(or Fn+F3\).
3.  In the lookup table that opens, select *III* for the first segment.

    This directs the system to copy the first segment from the non-stock item specified in the document line.

4.  In the **Combine Expense Sub. From** box, point at the second segment, and again press F3 \(or Fn+F3\).
5.  In the lookup table that opens, select *EEE* for the second segment.

    This directs the system to copy the second segment of the combined subaccount from the employee account of the owner or creator of the document.

6.  On the form toolbar, click **Save**.

## Step 2: Specifying the Expense Subaccount for Non-Stock Items { .section}

For the *ADVERT* and *CONSULT* non-stock items, you will specify the expense subaccount that the system will use to form the combined subaccount when these items are selected in a document. \(In a production system, you would specify the appropriate expense subaccount for all stock and non-stock items.\)

To specify the expense subaccount for these non-stock items, do the following:

1.  On the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, open the *ADVERT* non-stock item.
2.  On the **GL Accounts** tab, in the **Expense Sub.** box, specify `NSS-000`.
3.  On the form toolbar, click **Save**.
4.  In the **Inventory ID** box, select *CONSULT*.
5.  On the **GL Accounts** tab, in the **Expense Sub.** box, specify `NSS-000`.
6.  On the form toolbar, click **Save**.

## Step 3: Specifying the Expense Subaccount for an Employee { .section}

For Bill Owen, you will specify the expense subaccount that the system will use to form the combined subaccount if the employee created a document.

To specify the expense subaccount for this employee, do the following:

1.  On the [Employees](../UserGuide/EP_20_30_00.md#) \(EP203000\) form, open the *EP00000015* employee.
2.  On the **Financial** tab, in the **Expense Sub.** box, specify `000-MKT`.
3.  On the form toolbar, click **Save**.

**Parent topic:**[Automatically Combined Subaccounts](../ImplementationGuide/config_Combined_Subaccounts_Mapref.md)

