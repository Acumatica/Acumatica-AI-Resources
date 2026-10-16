# Non-Stock Items: Implementation Activity

In the following implementation activity, you will create non-stock items that represent services.

## Story

Suppose that the SweetLife Fruits &amp; Jams company sells a training course on home canning for the employees of its customer, Prime Cafe. The course is conducted online, and no shipping needs to occur.

SweetLife also needs to create a landing page that will promote its products and services on the internet. The website must be visible in the search results of all popular search engines so that the customers can find it easily. To achieve these goals, the company signs a contract with the SEO World agency.

You, as the implementation manager of SweetLife, need to create non-stock items for the services that you will sell to the Prime Cafe customer, as well as the services you will buy from the SEO World vendor.

## Process Overview

In this activity, you will create non-stock items on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, specify the needed settings and save the non-stock items.

## System Preparation

Before you start creating the non-stock items, sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the provided password.

## System Preparation

To create a non-stock item, make sure that you have completed the following prerequisite activities:

1.  [Order Management Basic Configuration: Implementation Activity](../ImplementationGuide/config_OrderMgmt_Basic_Implem_Activity.md)
2.  [Units of Measure: Implementation Activity](UOM_OrderMgmt_D300_Implem_Activity.md)

## Step 1: Creating the TRAINING Item

To create the non-stock item for training SEO World, do the following:

1.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Inventory ID**: `TRAINING`
    -   **Description**: `Canning Trainings`
3.  On the **General** tab, specify the following settings for the item:
    -   **Type**: *Service*
    -   **Tax Category**: *EXEMPT*
    -   **Close PO Line**: *By Amount*

        With this option selected, a purchase order line for this item is completed and closed based on the line amount when the bill is released. You select this option because you do not track the quantity of the items in receipts.

4.  In the **Unit of Measure** section of the **General** tab, specify the following settings:
    -   **Base Unit**: *HOUR*
    -   **Sales Unit**: *HOUR*
    -   **Purchase Unit**: *HOUR*
5.  On the **GL Accounts** tab, specify the following settings:
    1.  **Expense Account**: *60000 - Purchase Expense*
    2.  **Sales Account**: *40000 - Sales Revenue*
6.  On the form toolbar, click **Save**.
7.  On the **Price/Cost** tab, specify the following settings:
    -   **Default Price** \(**Price Management** section\): `36`
    -   **Pending Cost** \(**Standard Cost** section\): `30`
8.  On the More menu, click **Update Cost**.

    Notice that the system has copied the pending cost to the **Current Cost** box, cleared the **Pending Cost** box, and set the date in the **Effective Date** box to the current date.


## Step 2: Creating the WEBSITESEO Item

To create a non-stock item for the website creation and promotion for SEO World, do the following:

1.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Inventory ID**: `WEBSITESEO`
    -   **Description**: `Creation and promotion of a website`
3.  On the **General** tab, specify the following settings for the item:
    -   **Type**: *Service*
    -   **Tax Category**: *EXEMPT*
    -   **Close PO Line**: *By Amount*

        With this option selected, a purchase order line for this item is completed and closed based on the line amount when the bill is released. You select this option because you pay a certain amount on a regular basis.

4.  In the **Unit of Measure** section of the **General** tab, specify the following settings:
    -   **Base Unit**: *HOUR*
    -   **Sales Unit**: *HOUR*
    -   **Purchase Unit**: *HOUR*
5.  In the **Conversion Rules** section, click **Add Row**.
6.  Specify the following settings for the added row:
    -   **From Unit**: *DAY*
    -   **Multiply/Divide**: *Multiply*
    -   **Conversion Factor**: *8*
7.  On the **GL Accounts** tab, in the **Expense Account** box, select the *60000 - Purchase Expense* account.
8.  On the form toolbar, click **Save**.
9.  On the **Price/Cost** tab, specify the following settings:
    -   **Default Price** \(**Price Management** section\): `120`
    -   **Pending Cost** \(**Standard Cost** section\): `100`
10. On the More menu, click **Update Cost**.

    Notice that the system has copied the pending cost to the **Current Cost** box, cleared the **Pending Cost** box, and set the date in the **Effective Date** box to the current date.


