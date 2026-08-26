# Units of Measure: Implementation Activity {#_04182e66-05a9-4e86-a091-4d88fb30e39a .task}

In this implementation activity, you will learn how to create system-wide units of measure and conversion rules.

**Attention:**

The following activity is based on the *U100 Basic Company* dataset. If you are using another dataset, or if any system settings have been changed in *U100 Basic Company*, these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the *U100 Basic Company* dataset to its initial state.

If you want to perform this activity in an out-of-the-box company instead of creating a tenant with the dataset, you need to prepare a company with the basic settings, as described in [Company Without Branches: General Information](../Shared/../ImplementationGuide/config_Basic_Company_GeneralInfo.md).

## Story { .section}

Suppose that you are an implementation manager. You are configuring inventory for the SweetLife Fruits &amp; Jams company, which produces and sells bottled juice. The company sells juice in 0.5-liter and 1-liter bottles. For wholesale customers, the company sells juice in boxes: a box that contains twelve 0.5-liter bottles, and a box that contains eight 1-liter bottles.

Before you can start creating stock items for juice in the system, you need to create the units of measure and conversion rules that will provide default settings for juice items.

## Process Overview { .section}

In this activity, you will create system-wide units of measure and conversion rules for these units of measure on the [Units of Measure](CS_20_35_00.md) \(CS203500\) form.

## System Preparation { .section}

Before you start creating system-wide units of measure, launch the Acumatica ERP website with the *U100 Basic Company* dataset preloaded, and sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.

**Tip:** If you have not configured a company with basic settings and you want to practice creating units of measure and conversion rules, you can perform the activity in this topic by using the *U100* dataset.

## Step 1: Creating the BTL05 and BOX12 Units of Measure { .section}

To add units of measure for a single 0.5-liter bottle and a box of 12 0.5-liter bottles along with the rule for converting the quantity of the 0.5-liter bottle to the quantity of these boxes, do the following:

1.  On the [Units of Measure](CS_20_35_00.md) \(CS203500\) form, add a new record.
2.  In the **Unit ID** box, specify `BTL05`.
3.  In the **Description for Reports** box, specify `BTL05`.
4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Add New Record**.
6.  In the **Unit ID** box, specify `BOX12`.
7.  In the **Description for Reports** box, specify `BOX12`.
8.  On the table toolbar, click **Add Row**.
9.  In the **To Unit** column, type `BTL05`.
10. In the **Multiply/Divide** column, select *Multiply*.
11. In the **Conversion Factor** column, type `12`.
12. On the form toolbar, click **Save**.

## Step 2: Creating the BTL1L and BOX08 Units of Measure { .section}

To add units of measure for a single 1-liter bottle and a box of 8 1-liter bottles along with the rule for converting the quantity of the 1-liter bottle to the quantity of these boxes, do the following:

1.  While you are still on the [Units of Measure](CS_20_35_00.md) \(CS203500\) form, click **Add New Record**.
2.  In the **Unit ID** box, specify `BTL1L`.
3.  In the **Description for Reports** box, specify `BTL1L`.
4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Add New Record**.
6.  In the **Unit ID** box, specify `BOX08`.
7.  In the **Description for Reports** box, specify `BOX08`
8.  On the table toolbar, click **Add Row**.
9.  In the **To Unit** column, type `BTL1L`.
10. In the **Multiply/Divide** column, select *Multiply*.
11. In the **Conversion Factor** column, type `8`.
12. On the form toolbar, click **Save**.

You have created units of measure and conversion rules. Now you can create availability calculation rules, as described in [Availability Calculation Rules: Implementation Activity](Availability_Calculation_Rules_Implem_Activity.md). For the full list of inventory entities to be created, see [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).

## Activity Recap { .section}

In this activity, we have illustrated how the implementation manager has created units of measure and conversion rules for these units.

**Parent topic:**[Creating Units of Measure](../UserGuide/UOMs_Mapref.md)

