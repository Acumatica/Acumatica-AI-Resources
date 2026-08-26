# Archiving Documents: To Set Up a Schedule for the Archival Process {#_c664c4c7-3c42-4475-ba90-2bcd88a70b7a .task}

The following activity will walk you through the process of setting up an archival automation schedule.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company processes multiple sales orders and shipments every day, and users have started to claim that they are experiencing performance issues while performing their everyday activities such as opening mass-processing screens and lookup tables. As a result, the company has decided to archive the documents that are older than one year to optimize the system performance.

Acting as the company's system administrator, you will set up a schedule for automatic archiving of documents \(sales orders and shipments\) that are older than one year. As you do not want to affect the users' work, you schedule the archiving process to start at 12:00 AM each night and to continue for no more than six hours.

## Configuration Overview { .section}

For the purposes of this activity, in the *U100* dataset, the following tasks have been performed:

-   The *Scheduled Processing* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and [Shipments](SO_30_20_00.md) \(SO302000\) forms, multiple sales orders and shipments have been created and processed through the *Completed* status.

## Process Overview { .section}

On the [Archive Documents](SM_50_04_00.md) \(SM500400\) form, you will review the list of documents that are ready to be archived on a specific date. On this form, you will click the **Schedules** button to open the **Automation Schedules** dialog box. in which you will specify the settings of the schedule.

## System Preparation { .section}

Before you begin configuring the archiving schedule, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date in your system to 1/30/2027. For simplicity, in this activity, you will process all documents in the system on this business date.
3.  As a prerequisite activity, in the company to which you are signed in, be sure that you have configured the archival preferences, as described in [Archiving Documents: To Set Up Archival Policy Settings](SA_Archiving_Old_Documents_Setup_Activity.md).

## Step: Setting Up the Archival Schedule { .section}

To set up the schedule, do the following:

1.  Open the [Archive Documents](SM_50_04_00.md) \(SM500400\) form. On this form, you can see that the documents that are ready to be archived are grouped by date.
2.  On the form toolbar, click the **Schedules** button and in the drop-down menu, click **Add**.
3.  In the **Automation Schedules** dialog box, specify the following settings in the Summary area, and leave the default settings in the other elements:
    -   **Description**: `Regular Archiving`
    -   **Action Name**: *Process All*
4.  On the **Details** tab, in the **Starts On** box, specify *1/30/2023*, which means that the schedule becomes active starting on this date.
5.  On the **Schedule** tab, specify the following settings, and leave the default settings in the other elements:
    -   In the **Schedule Type** section, select *Daily*.
    -   In the **Execution Time** section, in the **Starts On** box, select *12:00 AM*, which means that the process will be started at midnight.
6.  On the **Filter Values** tab, notice that the archival process duration is set to six hours. Leave this value.
7.  On the toolbar of the dialog box, click **Save**.

    The **Automation Schedules** dialog box closes.


**Parent topic:**[Archiving Old Documents](../UserGuide/SA_Archiving_Old_Documents_Mapref.md)

