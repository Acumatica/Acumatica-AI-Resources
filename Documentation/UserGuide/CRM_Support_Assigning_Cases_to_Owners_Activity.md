# Case Assignment to Owners and Workgroups: Process Activity {#_f6c9aa73-8216-4946-9245-0dc7af0cbcda .task}

The following activity demonstrates how to assign cases to owners. You will practice assigning cases to the appropriate owners, both manually for an individual case and by using the mass processing form to assign multiple cases to the needed owners.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a new sales manager of the SweetLife Fruits &amp; Jams company. You have received a phone call from your customer, Delicious Energy Restaurant, about the repair of a juicer. You have created a case and need to assign the case to your colleague, Jeffrey Vega, who is a technician in SweetLife.

Further suppose that later that day you have checked the cases in your system and noticed that a few of them were not assigned to owners and workgroups. You need to assign these unassigned cases to the appropriate owners and workgroups.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality.
    -   *Case Management* in the *Customer Management* group of features: This feature gives customer support personnel the ability to create support cases, assign cases to owners, and process cases.
-   On the [Case Classes](CR_20_60_00.md) \(CR206000\) form, the *PRESALE*, *DELIVERY*, and *JREPAIR* case classes have been created.
-   On the [Assignment Maps](EP_20_50_10.md) \(EP205010\) form, the *Case Assignment Map* has been created. According to the rules \(and their conditions and actions\) specified in this assignment map, cases are assigned as follows:
    -   The cases of the *PRESALE* case class are assigned to David Chubb.
    -   The cases of the *DELIVERY* case class are assigned to the *Delivery* workgroup in the SweetLife *After-Sales* department.
    -   The cases of the *JREPAIR* case class are assigned to the *Technical Support* workgroup in the *After-Sales* department.
-   On the [Cases](CR_30_60_00.md) \(CR306000\) form, the case that has the *Repair of a juicer for Delicious Energy Restaurant* subject has been created.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Cases](CR_30_60_00.md) \(CR306000\) form, manually assign a particular case to an owner.
2.  On the [Assign Cases](CR_50_32_10.md) \(CR503210\) form, assign all the unassigned cases to owners.

## System Preparation { .section}

Before you start assigning cases to owners, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded
2.  Sign in to the system as sales manager David Chubb by using the following credentials:
    -   **Username**: *chubb*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.
4.  Make sure that on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form \(in the **Case Assignment Map** box of the **Assignment Settings** section of the **General** tab\), *Case Assignment Map* is specified. If it is not, select this assignment map, and save your changes. The system will use this assignment map during the process of mass-assigning cases.

## Step 1: Assigning a Case to an Owner { .section}

To manually assign a case to an owner, do the following:

1.  Open the *Repair of a juicer for Delicious Energy Restaurant* case on the [Cases](CR_30_60_00.md) \(CR306000\) form.

    **Tip:** To search for a record in a list of records, you can enter a keyword or phrase in the Search box of the table toolbar. The system will find all the records that match your search criteria and display these records in the table.

2.  In the **Owner** box of the Summary area, select *Jeffrey Vega*.
3.  On the form toolbar, click **Save**.

You have manually assigned a case to an owner.

## Step 2: Assigning the Unassigned Cases to Owners and Workgroups { .section}

Suppose that you need to assign all the currently unassigned cases to owners and workgroups.

To mass-assign cases to owners, do the following:

1.  Open the [Assign Cases](CR_50_32_10.md) \(CR503210\) form, which lists all the cases with the **Active** check box selected on the **Additional Info** tab of the [Cases](CR_30_60_00.md) \(CR306000\) form.
2.  In the table, click the header of the **Owner** column.

    **Tip:** If you need to change the order of columns in any table, you can drag a column by its header to the new place in the table.

3.  In the Quick Filter menu, which opens, do the following to filter unassigned cases:
    1.  Select the *Is Empty* filter condition.
    2.  Click **Apply**. The system closes the dialog box and applies the filter.
4.  On the form toolbar, click **Process All**. The **Processing** dialog box opens, showing the progress and, as soon as the processing has completed, the results of assigning cases.

    **Tip:** In situations when you want to assign only selected cases to owners, you would select unlabeled check boxes in the table for the needed cases and click the **Process** button on the form toolbar.

    **Attention:** Because the assignment map doesn't include the *SUPPORT* case class, the system will list the error in the **Processing** dialog box. You can view the error by clicking the More button on the **Errors** tile: In the **Message** column, the system displays the text of the error message.

5.  Click **Close** to close the dialog box and return to the form.
6.  In the Filtering area, select *All Records*. The system has cleared the filter that you applied to the **Owner** column and now lists all the cases.

You have assigned the unassigned cases to owners or workgroups, with the system using the rules specified in the case assignment map.

**Parent topic:**[Assigning Cases to Owners and Workgroups](../UserGuide/CRM_Support_Assigning_Cases_to_Owners_Mapref.md)

