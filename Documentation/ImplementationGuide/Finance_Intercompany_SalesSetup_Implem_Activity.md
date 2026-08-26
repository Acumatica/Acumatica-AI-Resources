# Intercompany Sales Setup: Implementation Activity {#_4f8bfd07-a771-4b94-8b51-92fa2d1da3b0 .task}

The following activity will walk you through the process of setting up intercompany sales between branches of two companies within the same tenant.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the Head Office of the Muffins &amp; Cakes company has to purchase juicer installation services from the Service and Equipment Sales Center of SweetLife Fruits &amp; Jams. An accountant of SweetLife Fruits &amp; Jams issues an invoice to the Muffins &amp; Cakes company for the services. The corresponding AP bill needs to be processed in Muffins &amp; Cakes. Two documents have to be created in the system for a single transaction \(AR invoice in the selling company and AP bill in the purchasing company\), but the accountant does not want to enter both of them manually. To cause the system to create the AP bill automatically based on an AR invoice, the chief accountant of SweetLife has decided to use the intercompany sales functionality.

Acting as a system administrator, you need to extend the *SWEEPEQUIP* branch of SweetLife to be a vendor and the *MHEAD* branch of Muffins &amp; Cakes to be a customer.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*
    -   *Multibranch Support*
    -   *Multicompany Support*
    -   *Advanced Financials*
    -   *Inter-Branch Transactions*
-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *MUFFINS* and *SWEETLIFE* companies have been defined.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, the *SWEETEQUIP* \(Service and Equipment Sales Center\) and *MHEAD* \(Muffins Head Office &amp; Wholesale Center\) branches of SweetLife and Muffins &amp; Cakes, respectively, have been defined.
-   On the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form, the *INTERCO* vendor class for vendors extended from companies and branches has been configured.
-   On the [Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\) form, the *INTERCO* customer class for customers extended from companies and branches has been configured.

## Process Overview { .section}

In this activity, you will review the AP and AR preferences on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) and [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) forms. On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, you will extend the *SWEETEQUIP* branch to be a vendor and the *MHEAD* branch to be a customer. On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you will update the settings of the new vendor and on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, you will update the settings of the new customer.

## System Preparation { .section}

Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.

## Step 1: Reviewing the AP and AR Preferences { .section}

Before you start configuring the intercompany sales functionality, you need to review the related AP and AR preferences. Do the following:

1.  Open the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form.
2.  In the **Data Entry Settings** section on the **General** tab, review the value in the **Use Intercompany Expense Account From** box.

    In the box, *Vendor Location* is specified, meaning that the system will use the expense account specified on the [Vendor Locations](../UserGuide/AP_30_30_10.md) \(AP303010\) form for the vendor location selected in an AP document.

3.  Open the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form.
4.  In the **Data Entry Settings** section on the **General** tab, review the value in the **Use Intercompany Sales Account From** box.

    In the box, *Customer Location* is specified, meaning that the system will use the sales account specified on the [Customer Locations](../UserGuide/AR_30_30_20.md) \(AR303020\) form for the customer location selected for the AR document.


## Step 2: Extending a Branch as a Vendor { .section}

To extend the *SWEETEQUIP* branch as a vendor, do the following:

1.  Open the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form.
2.  In the **Branch ID** box, select *SWEETEQUIP*.
3.  On the More menu \(under **Company Management**\), click **Extend as Vendor**. The system opens the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form with the appropriate settings copied from the branch to the vendor.
4.  In the **Vendor Class** box in the Summary area, select *INTERCO*.
5.  In the warning message that displays, click **Yes**.
6.  On the **GL Accounts** tab, review the settings of the *MAIN* location automatically created by the system.

    The account specified in the **Expense Account** box is *53100 - Intercompany Expenses*, which has been copied from the settings of the selected vendor class. This account will be used by default in generated AP documents.

7.  On the form toolbar, click **Save**.

    **Tip:** For a branch that has been extended as a vendor, on the [Branches](../UserGuide/CS_10_20_00.md) form, the **View Vendor** command becomes available under **Company Management** on the More menu. You can click it to review the settings of the vendor created based on this branch on the [Vendors](../UserGuide/AP_30_30_00.md) form. Similarly, for a company that has been extended as a vendor, the **View Vendor** command becomes available on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form.


## Step 3: Extending a Branch as a Customer { .section}

To extend the *MHEAD* branch as a customer, do the following:

1.  Open the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form.
2.  In the **Branch ID** box, select *MHEAD*.
3.  On the More menu \(under **Company Management**\), click **Extend as Customer**. The system opens the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form with the appropriate settings copied from the branch to the customer.
4.  In the **Customer Class** box in the Summary area, select *INTERCO*.
5.  In the warning message that displays, click **Yes**.
6.  On the **GL Accounts** tab, review the settings of the *MAIN* location automatically created by the system.

    The account specified in the **Sales Account** box is *43000 - Related Company Sales*, which has been copied from the settings of the selected customer class. The account specified in the **AR Account** column is *19010 - Accounts Receivable - Related Company*, which has also been copied from the settings of the selected customer class. These accounts will be used by default in generated AR documents.

7.  On the form toolbar, click **Save**.

    **Tip:** For a branch that has been extended as a customer, on the [Branches](../UserGuide/CS_10_20_00.md) form, the **View Customer** command becomes available under **Company Management** on the More menu. You can click it to review the settings of the customer created based on this branch on the [Customers](../UserGuide/AR_30_30_00.md) form. Similarly, for a company that has been extended as a customer, the **View Customer** command becomes available on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form.


**Parent topic:**[Intercompany Sales](../ImplementationGuide/Finance_Intercompany_Sales_Setup_Mapref.md)

