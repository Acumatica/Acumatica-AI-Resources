# To Add User-Defined Fields to a Form

This activity will walk you through the process of associating user-defined fields with a form and adding them to the form.

**Attention:** This activity is performed in the Modern UI based on the *U100* dataset. If you’re using the Classic UI, some features may not be available, which could affect processing. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story

Suppose that you are Kimberly Gibbs, a system administrator and customizer at the SweetLife Fruits &amp; Jams company. You were asked to add the **Interest** and **Model** user-defined fields to the [Opportunities](CR_30_40_00.md) \(CR304000\) form so that users can specify their values while working on opportunities. The **Interest** user-defined field must be hidden for the *SERVICE* class, while the **Model** user-defined field must be shown and required for this class.

You need to associate user-defined fields with the [Opportunities](CR_30_40_00.md) form and specify their settings. You then need to add them to the Summary area.

## Configuration Overview

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled.
-   On the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form, the *SERVICE* opportunity class has been created.
-   On the [Attributes](CS_20_50_00.md) \(CS205000\) form, the *INTEREST* and *MODEL* attributes have been created.

## Process Overview

By using UI Configuration mode on the [Opportunities](CR_30_40_00.md) \(CR304000\) form, you will associate the user-defined fields with the form. By using the **Section Configuration** dialog box, you will then add these field to the Summary area.

## System Preparation

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as Kimberly Gibbs by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*

## Step 1: Associating User-Defined Fields with the Form

To associate the *INTEREST* and *MODEL* attributes with the [Opportunities](CR_30_40_00.md) \(CR304000\) form and specify their properties, do the following:

1.  On the [Opportunities](CR_30_40_00.md) form, add a new record.

    UI Configuration mode is activated, and the **UI Configuration** pane appears at the top of the form.

3.  On the **UI Configuration** pane, click **Manage User-Defined Fields**.

    The **Manage User-Defined Fields** dialog box opens, as shown below.


4.  In the **Added User-Defined Fields** pane of the dialog box, add a new row.

    **Important:** You can add a user-defined field only if it has first been created on the [Attributes](CS_20_50_00.md) \(CS205000\) form.

5.  In the **Attribute ID** column for the added row , select the *INTEREST* user-defined field.
6.  In the **Properties** pane of the dialog box, in the row with the *SERVICE* opportunity class, select the check box in the **Hidden** column, as shown below.


7.  In the **Added User-Defined Fields** pane, add another row.
8.  In the **Attribute ID** column for the added row, select *MODEL*.
9.  In the **Properties** pane, in the row with the *SERVICE* opportunity class, select the check box in the **Required** column, as shown below.


10. Click **Apply**.

    The system applies the changes.


## Step 2: Adding the User-Defined Fields to the Form

To add the associated user-defined fields to the [Opportunities](CR_30_40_00.md) \(CR304000\) form, do the following:

1.  While you are still on the [Opportunities](CR_30_40_00.md) form with UI Configuration mode activated, click the Settings button.

    The **Section Configuration** dialog box opens.

2.  In the **Available Elements** pane of the dialog box, locate the **User-Defined Fields** group and click the arrow icon next to its name to expand it.
3.  Click **Interested In** in the expanded **User-Defined Fields** group, and then click the arrow that appears to the right of its name \(see below\).


    The system moves **Interested In** to the **Selected Elements** pane.

4.  In the **Available Elements** pane, select **Model of a Juicer** in the expanded **User-Defined Fields** group, and then click the arrow.

    The system moves **Model of a Juicer** to the **Selected Elements** pane after the **Interested In** user-defined field \(see below\).


5.  Click **Apply**.

    The system closes the dialog box and adds both user-defined fields to the second section of the Summary area.

6.  In the **UI Configuration** pane, click **Apply to All**.
7.  In the **Apply to All** dialog box, which opens, click **Preserve Personal Configuration**.

    The system closes the **UI Configuration** pane and applies the changes.


## Step 3: Verifying the User-Defined Fields

To verify the user-defined fields and their properties, do the following:

1.  While you are still on the [Opportunities](CR_30_40_00.md) form, select *PRODUCT* in the **Opportunity Class** box.
2.  In the Summary area, verify that the **Interested In** and **Model of a Juicer** fields are displayed \(see below\).


3.  In the **Opportunity Class** box, select *SERVICE*.
4.  Verify that the **Interested In** field is no longer displayed and the **Model of a Juicer** field is required.

**Parent topic:**[Managing Attributes and User-Defined Fields](../UserGuide/CS__con_Attributes_and_User_Defined_Fields.md)

