# Case Submittal to Internal Teams: Process Activity {#_216bc721-47ff-4d34-9611-8439b8f650c1 .task}

The following activity demonstrates how to manually create a case and submit the case to a member of your company's internal IT team.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company. You want to track information in opportunities about the customer's company size and its number of employees. You need to submit an internal case to system administrator Kimberly Gibbs. In the case, you will ask Kimberly to add two custom UI elements on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality.
    -   *Case Management* in the *Customer Management* group of features: This feature gives users the ability to create support cases, assign cases to owners, and process cases.
-   On the [Case Classes](CR_20_60_00.md) \(CR206000\) form, the *ITHELP* case class has been created for the internal cases that employees submit to the SweetLife's IT team. On the **Details** tab, the **Allow Selecting Employee as Case Contact** check box is selected.

## Process Overview { .section}

In this activity, you will do the following on the [Cases](CR_30_60_00.md) \(CR306000\) form:

1.  Create an internal case.
2.  Submit the case to a SweetLife employee on the IT team.

## System Preparation { .section}

Before you start creating an internal case and submitting it, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as sales manager David Chubb by using the following credentials:
    -   **Username**: *chubb*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step: Submitting an Internal Case to IT { .section}

To create an internal case and submit the case to Kimberly Gibbs, the needed IT employee, do the following:

1.  On the [Cases](CR_30_60_00.md) \(CR306000\) form, add a new record.
2.  In the Summary area, do the following:
    1.  In the **Case Class** box, select *ITHELP*.
    2.  In the **Contact** box, select *Kimberly Gibbs*.

        Notice that in the **Business Account** box, *HEADOFFICE* has been inserted. It is the identifier of the *SweetLife Head Office and Wholesale Center* branch, to which the *Kimberly Gibbs* employee belongs.

    3.  In the **Subject** box, type `Ability to specify a customer's company size and the number of employees on the Opportunities form`.
    4.  In the **Priority** box, select **Medium**.
3.  On the **Details** tab of the form, in the text area, type `Kimberly, please add two boxes to the Opportunities form: Company Size and Number of Employees`.
4.  On the form toolbar, click **Save**.

You have created the internal case and submitted it to the IT employee.

**Parent topic:**[Submitting Cases to Internal Teams](../UserGuide/CRM_Support_Submitting_Cases_to_IT_Mapref.md)

