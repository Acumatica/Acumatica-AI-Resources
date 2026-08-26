# Labor Items: To Configure a Labor Item {#_76c290b8-4fa6-478f-9c89-e74acd3f2a68 .task}

This activity will walk you through the process of configuring a labor non-stock item that will then be used for billing employee labor within projects.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you, as an implementation manager, are updating the system configuration for the SweetLife Fruits &amp; Jams company. To be able to bill the customers for the provided labor within the projects, you need to create a labor item that will represent the repair service for juicers provided by a particular employee, Eric Killian, for SweetLife customers who have purchased juicers.

## Process Overview { .section}

You will create a non-stock item representing the repair labor on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form and specify the item’s settings, including the expense account that has been mapped to an appropriate account group. You will also specify the default price for the item. Then on the [Employees](EP_20_30_00.md) \(EP203000\) form, you will assign this labor item to the employee who will perform the repair work.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature has been enabled to support the project management functionality.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *54600 – Repair Expense* account has been defined and mapped to the *MAINTSERV* account group, which has been defined on the [Account Groups](PM_20_10_00.md) \(PM201000\) form.
-   On the [Posting Classes](IN_20_60_00.md) \(IN206000\) form, the *NONSTOCK* posting class has been defined.
-   On the [Employees](EP_20_30_00.md) \(EP203000\) form, the *EP00000006 – Eric Killian* employee record has been created.

## System Preparation { .section}

To prepare to perform the instructions of the activity, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as system administrator by using the *gibbs* username and the *123* password.

## Step 1: Creating the Labor Item { .section}

To create the labor item that will be used to represent repair services, perform the following instructions:

1.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Inventory ID**: `JUICERREPAIR`
    -   **Description**: `Juicer repair (at the customer's place)`
3.  On the **General** tab, specify the following settings:
    -   **Type**: *Labor*
    -   **Posting Class**: *NONSTOCK*

        Based on the settings of the *NONSTOCK* posting class, the system will use the GL accounts specified for the inventory item.

    -   **Tax Category**: *EXEMPT*
    -   **Base Unit**: *HOUR*
    -   **Sales Unit**: *HOUR*
    -   **Purchase Unit**: *HOUR*
4.  In the **Default Price** box on the **Price/Cost** tab, enter `80`.
5.  On the same tab, make sure *Purchases* is selected in the **Post Cost to Expenses On** box.
6.  On the **GL Accounts** tab, specify the following accounts:
    -   **Expense Accrual Account**: *11010 \(AR Accrual Account\)*
    -   **Expense Account**: *54600 \(Repair Expenses\)*
    -   **Sales Account**: *40000 \(Sales Revenue\)*
7.  On the form toolbar, click **Save**.

## Step 2: Assigning the Labor Item to an Employee { .section}

To assign the labor item you have created to the employee who will perform the labor, perform the following instructions:

1.  On the [Employees](EP_20_30_00.md) \(EP203000\) form, open the *EP00000006 – Eric Killian* employee record.
2.  In the **Labor Item** box on the **General** tab, select *JUICERREPAIR*.
3.  Save your changes to the employee record.

You have created the labor item to be used for repair service and specified an expense account that is mapped to a particular account group. You also have associated this labor item with the particular employee who will perform this work.

Now you can proceed with specifying labor cost rates for the employee, as described in [Labor Items: To Define Labor Cost Rates](Non_Stock_Item_Projects_Implem_Activity_LaborCostRates.md),

**Parent topic:**[Creating Labor Items](../UserGuide/Non_Stock_Item_Projects_Mapref.md)

