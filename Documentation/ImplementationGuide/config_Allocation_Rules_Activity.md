# Allocation Rules: To Create an Allocation Rule That Uses a Fixed Ratio \(Weight\) {#_7632e5e5-c505-45db-b86e-f0238cefa575 .task}

In this activity, you will learn how to create an allocation rule in which a user-defined coefficient is used to distribute amounts among accounts and subaccounts.

## Story { .section}

Suppose that the *HEADOFFICE* branch pays all advertising bills that the SweetLife Fruits &amp; Jams company receives. At the end of each month, the accountant of the *HEADOFFICE* branch needs to distribute the advertising expenses between the *HEADOFFICE*, *RETAIL*, and *SWEETEQUIP* branches by using the fixed ratio 5:1:1.

Acting as an administrator, you need to define an allocation rule that will distribute the bill amount.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE*, *RETAIL*, and *SWEETEQUIP* branches of the *SWEETLIFE* company have been created.
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the *61000 - Advertising Expense* account has been created.
-   On the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form, the *ACTUAL* ledger has been defined.
-   On the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form, the *SUBACCOUNT* segmented key has been created.

## Process Overview { .section}

In this activity, on the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form \(**Allocation** tab\), you will specify the general settings for an allocation rule. Then on the **Source Accounts** and **Destination Accounts** tabs of this form, you will specify the accounts and subaccounts for the rule.

## System Preparation { .section}

Before you start configuring the allocation rule, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
3.  Make sure that you have completed the following prerequisite activity to perform the needed configuration of subaccounts: [Subaccounts: Implementation Activity](config_Subaccounts_Implem_Activity.md).

## Step 1: Specifying General Settings for an Allocation Rule That Distributes by Weight { .section}

To begin creating an allocation rule that distributes amounts by weight, do the following:

1.  Open the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Description** box of the Summary area, type `Advertising expenses`.
4.  In the **Branch** box, ensure that *HEADOFFICE* is selected.
5.  On the **Allocation** tab, in the **Start Period** box, select *01-2026*.
6.  Leave the **End Period** box empty.
7.  Make sure that the **Recurring** check box is cleared.
8.  In the **Allocation Method** box, make sure that the *By Account PTD* option is selected.

    The period-to-date amount will be distributed during the allocation process.

9.  In the **Distribution Method** box, select *By Weight*.

    With this option selected, you have to specify the ratio that is distributed to each account–subaccount pair.

10. In the **Allocation Ledger** and **Source Ledger** boxes, ensure *ACTUAL* is selected.
11. In the **Last Revision Date** box, leave the date that the system has inserted.

You have specified the general settings for the allocation rule. You will now proceed to specifying source and destination accounts and subaccounts for the rule.

## Step 2: Specifying Accounts and Subaccounts for the Allocation Rule { .section}

To specify the accounts and subaccounts for the rule, while remaining on the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form, do the following:

1.  To specify the source account from which the allocated amount will be deducted \(which in this case is the *61000 - Advertising Expense* account of the head office\), on the **Source Accounts** tab, click **Add Row**, and specify the following settings in the row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *61000*
    -   **Subaccount**: *000-000*
    -   **Percentage Limit**: *100.00*

        This indicates that the full amount will be distributed during the allocation process.

2.  To specify the first destination account–subaccount pair to which the amount will be allocated \(for the head office branch\), on the **Destination Accounts** tab, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *61000*
    -   **Subaccount**: *000-000*
    -   **Weight/Percent**: *5*
3.  To specify the second destination account–subaccount pair to which the amount will be allocated \(for the retail store branch\), click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *RETAIL*
    -   **Account**: *61000*
    -   **Subaccount**: *000-000*
    -   **Weight/Percent**: *1*
4.  To specify the third destination account–subaccount pair to which the amount will be allocated \(for the equipment sales center branch\), click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *SWEETEQUIP*
    -   **Account**: *61000*
    -   **Subaccount**: *000-000*
    -   **Weight/Percent**: *1*
5.  Click **Save** on the form toolbar.

You have defined a rule that will distribute the amount posted to the *61000 - Advertising Expense* account of the head office branch among all three branches in the system.

**Parent topic:**[Allocation Rules](../ImplementationGuide/config_Allocation_Rules_Mapref.md)

