# Availability Calculation Rules: Implementation Activity {#_bcf178e3-5577-4bc2-ae1c-5ac4380f566f .task}

In this implementation activity, you will learn how to create an availability calculation rule for inventory items.

**Attention:**

The following activity is based on the *U100 Basic Company* dataset. If you are using another dataset, or if any system settings have been changed in *U100 Basic Company*, these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the *U100 Basic Company* dataset to its initial state.

If you want to perform this activity in an out-of-the-box company instead of creating a tenant with the dataset, you need to prepare a company with the basic settings, as described in [Company Without Branches: General Information](../Shared/../ImplementationGuide/config_Basic_Company_GeneralInfo.md).

## Story { .section}

Suppose that you are an implementation manager. You are configuring inventory for the SweetLife Fruits &amp; Jams company, which produces and sells bottled juice. Before adding inventory items to the system, you need to create item classes for all items and specify availability calculation policies for each class of items.

Further suppose that for juice, your company does not use kit assemblies and back orders, so you do not need to deduct these quantities from an available quantity of juice. Also, the company treats quantities on prepared sales orders \(that is, sales orders that are not open yet\) as available quantities. Additionally, your company provides its customers with the ability to return unused bottles of juice and you regard these bottles as available quantities.

You will create an availability calculation rule that will reflect this availability calculation policy.

## Process Overview { .section}

In this activity, you will create an availability calculation rule on the [Availability Calculation Rules](IN_20_15_00.md) \(IN201500\) form.

## System Preparation { .section}

Before you start creating an availability calculation rule, you should do the following:

1.  Launch the Acumatica ERP website with the *U100 Basic Company* dataset preloaded, and sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, make sure that the *Inventory and Order Management* and *Inventory* features are enabled.

**Tip:** If you have not configured a company with basic settings and you want to practice creating an availability calculation rule, you can perform the activity in this topic by using the *U100* dataset.

## Step: Creating an Availability Calculation Rule { .section}

To create an availability calculation rule, do the following:

1.  On the [Availability Calculation Rules](IN_20_15_00.md) \(IN201500\) form, add a new record.
2.  Specify the following settings:
    -   **Availability Calculation Rule**: *JUICE*
    -   **Description**: `Juice Availability`
    -   **Deduct Qty. on Issues**: Selected
    -   **Deduct Qty. on Sales Prepared**: Selected
    -   **Deduct Qty. on Sales Orders**: Selected
    -   **Deduct Qty. Shipped**: Selected
    -   **Deduct Qty. Allocated**: Selected
    -   **Include Qty. on Sales Returns**: Selected
3.  Clear all other check boxes.
4.  On the form toolbar, click **Save**.

Now that you have created the availability calculation rule, you can create any number of item classes, as described in [Item Classes for Stock Items: Implementation Activity](Item_Classes_Implem_Activity.md). For the full list of inventory entities to be created, see [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).

## Activity Recap { .section}

In this activity, we have illustrated how the implementation manager has created an availability calculation rule.

**Parent topic:**[Creating Availability Calculation Rules](../UserGuide/Availability_Calculation_Rules_Mapref.md)

