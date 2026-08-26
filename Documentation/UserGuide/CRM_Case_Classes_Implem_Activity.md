# Case Classes: Implementation Activity {#_77e93966-02cb-49f4-823d-c7978005f34b .task}

The following implementation activity will show you how to create a case class.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are an implementation consultant for the SweetLife Fruits &amp; Jams company. You need to create a new case class, *JMAINT*, for cases that represent customer requests for maintenance of juicers. You also need to define the default class to be specified for each newly created case.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Customer Management*
    -   *Case Management* in the *Customer Management* group of features
    -   *Time Management*
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *TECHNICIAN* non-stock item of the *Labor* type, which represents the labor of SweetLife's specialists who repair and maintain juicers, has been created.
-   On the [Labor Rates](PM_20_99_00.md) \(PM209900\) form, the labor cost rate associated with the *TECHNICIAN* non-stock item of the *Labor* type has been created.
-   On the [Attributes](CS_20_50_00.md) \(CS205000\) form, the *MODEL* attribute, which holds the value of the model of a juicer, has been created.

## Process Overview { .section}

In this activity, you will do the following:

1.  Create a case class on the [Case Classes](CR_20_60_00.md) \(CR206000\) form
2.  Specify the created class as the default case class on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form
3.  Create a new case with the default case class on the [Cases](CR_30_60_00.md) \(CR306000\) form

## System Preparation { .section}

Before you start creating a case class, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as implementation consultant Kimberly Gibbs by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Creating a Case Class { .section}

To create the *JMAINT* case class, do the following:

1.  On the [Case Classes](CR_20_60_00.md) \(CR206000\) form, add a new record.
2.  In the Summary area, do the following:
    1.  In the **Case Class ID** box, enter the new class identifier: `JMAINT`.
    2.  In the **Description** box, type the following brief description of the class: `Maintenance of juicers`.
    3.  To hide all records of the class from the Self-Service Portal users, select the **Internal** check box.
3.  On the **Details** tab of the form, do the following:
    1.  Select the **Billable** check box. Notice that the system has selected the **Require Customer** check box and made it unavailable for changing, which means that each time a user creates a case of the class, the system requires the user to specify a business account of the *Customer* type for the case.
    2.  Select the **Enable Billable Option Override** check box to give users the ability to override the default selection of the **Billable** check box for cases of the class.
    3.  In the **Billing Mode** box, select *Per Case*.
    4.  In the **Labor Item** box, select *TECHNICIAN*.
    5.  In the **Overtime Labor Item** box, select *TECHNICIAN*.
    6.  In the **Round Time By** box, select: `00:30`.
    7.  In the **Min. Billable Time** box, select *1:00*.
    8.  In the **Default Email Account** box, select *SweetLife Support* \(the name of the *support@sweetlife.example.com* email account\).
4.  On the **Attributes** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Attribute ID** column, select *MODEL*.
5.  On the form toolbar, click **Save**.

You have created the new case class.

## Step 2: Specifying the Default Case Class { .section}

To select the *JMAINT* case class as the default class the system automatically inserts for newly created cases, do the following:

1.  Open the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form.
2.  On the **General** tab \(**Data Entry Settings** section\), in the **Default Case Class** box, select the *JMAINT* case class, which you have created in the previous step of this activity.
3.  On the form toolbar, click **Save**.

You have specified the default case class. For each newly created case, in the Summary area of the [Cases](CR_30_60_00.md) \(CR306000\) form, the system will insert *JMAINT* into the **Case Class** box.

## Step 3: Creating a New Case of the Default Case Class { .section}

To ensure that a new case is created with the default *JMAINT* case class inserted, do the following

1.  On the [Cases](CR_30_60_00.md) \(CR306000\) form, add a new record.
2.  Check the value in the **Case Class** box of the Summary area.

    The *JMAINT* case class is inserted by default. You can override the default case class, if needed.


**Parent topic:**[Defining Case Classes](../UserGuide/CRM_Case_Classes_Mapref.md)

