# Item Classes for Stock Items: Implementation Activity {#_afd0a9ab-a2f0-48de-bc33-9fcecec26bcf .task}

In this implementation activity, you will learn how to create an item class with basic settings for stock items.

**Attention:**

The following activity is based on the *U100 Basic Company* dataset. If you are using another dataset, or if any system settings have been changed in *U100 Basic Company*, these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the *U100 Basic Company* dataset to its initial state.

If you want to perform this activity in an out-of-the-box company instead of creating a tenant with the dataset, you need to prepare a company with the basic settings, as described in [Company Without Branches: General Information](../Shared/../ImplementationGuide/config_Basic_Company_GeneralInfo.md).

## Story { .section}

Suppose that you are an implementation manager. You are configuring inventory for the SweetLife Fruits &amp; Jams company, which produces and sells bottled juice. All juice items will have similar settings, so you will create an item class to provide these settings to these stock items.

## Process Overview { .section}

In this activity, you will create an item class for stock items on the [Item Classes](IN_20_10_00.md) \(IN201000\) form.

## System Preparation { .section}

Before you start creating an item class for stock items, you should do the following:

1.  Launch the Acumatica ERP website with the *U100 Basic Company* dataset preloaded, and sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  Make sure that the *EXEMPT* tax category has been created on the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, or create this tax category, as described in [Tax Zones and Categories: To Define a Tax-Exempt Category](../ImplementationGuide/config_Taxes_Implem_Activity_Category.md).
3.  Specify the appropriate inventory settings, as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).
4.  Create the *JUICE* posting class, as described in [Posting Classes: Implementation Activity](Posting_Classes_Implem_Activity.md).
5.  Create units of measure and conversion rules, as described in [Units of Measure: Implementation Activity](UOMs_Implem_Activity.md).
6.  Create the *JUICE* availability calculation rule, as described in [Availability Calculation Rules: Implementation Activity](Availability_Calculation_Rules_Implem_Activity.md).

**Tip:** If you have not configured a company with basic settings and you want to practice creating an item class, you can perform the activity in this topic by using the *U100* dataset. If you do this, you should use the *FDI* posting class and the *FOOD* availability calculation rule instead of the *JUICE* posting class and the *JUICE* availability calculation rule.

## Step: Creating an Item Class { .section}

To create an item class for juices, do the following:

1.  On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Class ID**: `BOTJUICE`
    -   **Description**: `Bottled Juice`
3.  On the **General** tab, in the **General Settings** section, specify the following settings:
    -   **Stock Item**: Selected
    -   **Item Type**: *Finished Good*
    -   **Valuation Method**: *Average*
    -   **Tax Category**: *EXEMPT*
    -   **Posting Class**: *JUICE*
    -   **Availability Calculation Rule**: *JUICE*
4.  In the **Units of Measure** section of the tab, in the **Base Unit** box, select *LITER*.
5.  Make sure that the **Divisible Unit** check box \(right of the **Base Unit** box\) is selected.
6.  On the form toolbar, click **Save**.

Now that you have created the item class for juice, you can create stock items to which the item class will be assigned, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md). For the full list of inventory entities that need to be created in a system before users can start processing documents related to inventory, see [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).

## Activity Recap { .section}

In this activity, we have illustrated how the implementation manager has done the following:

1.  Created an item class for the juice items
2.  Configured the posting class and availability calculation rule, and has specified other settings that will be automatically applied to the items with this item class

**Parent topic:**[Creating Item Classes for Stock Items](../UserGuide/Item_Classes_Mapref.md)

