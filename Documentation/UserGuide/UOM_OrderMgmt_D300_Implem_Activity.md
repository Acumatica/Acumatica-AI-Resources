# Units of Measure: Implementation Activity

In the following implementation activity, you will create global units of measure and conversion rules.

## Story

Suppose that the SEO World agency provides website promotion services to SweetLife Fruits &amp; Jams. According to the terms of the contract with the SEO World agency, the financial documents must have the *DAY* unit of measure. The predefined units of measure in Acumatica ERP include only *MINUTE* and *HOUR*.

Acting as an implementation manager, you need to define a new unit of measure.

## Process Overview

In this activity, you will do the following:

1.  Enable the *Multiple Units of Measure* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form
2.  Create a new global unit of measure and conversion rule for this unit of measure on the [Units of Measure](CS_20_35_00.md) \(CS203500\) form

## System Preparation

Before you start configuring units of measure, sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the provided password.

## System Preparation

To create a global unit of measure, make sure that you have completed the following prerequisite activity: [Order Management Basic Configuration: Implementation Activity](../ImplementationGuide/config_OrderMgmt_Basic_Implem_Activity.md).

## Step 1: Enabling the Needed Feature

To give users the ability to define multiple units of measure and the rules for conversion between them, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  Select the **Multiple Units of Measure** check box.
4.  On the form toolbar, click **Enable**.

## Step 2: Creating a Global Unit of Measure

To create a global unit of measure and a rule for converting it to an existing unit of measure, do the following:

1.  On the [Units of Measure](CS_20_35_00.md) \(CS203500\) form, add a new record.
2.  In the **Unit ID** box, specify `DAY`.
3.  In the **Description for Reports** box, specify `DAY`.
4.  On the form toolbar, click **Save**.
5.  On the table toolbar, click **Add Row**.
6.  In the **To Unit** column, specify *HOUR*.
7.  In the **Multiply/Divide** column, select *Multiply*.
8.  In the **Conversion Factor** column, type `8`.
9.  On the form toolbar, click **Save**.

You have created a unit of measure and a rule for converting it to another unit of measure.

