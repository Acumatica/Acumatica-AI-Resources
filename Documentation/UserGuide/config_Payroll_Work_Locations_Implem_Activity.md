# Work Locations: Implementation Activity {#_68593b1c-0bd2-4f51-9613-54e34f363766 .task}

In the following implementation activity, you will learn how to create a work location.

## Story { .section}

Suppose that the SweetLife company needs to keep track of the work associated with its head office. Acting as an administrator, you need to create a work location that corresponds to the Head Office branch of SweetLife Fruits &amp; Jams.

## Process Overview { .section}

You create a work location on the [Work Locations](PR_10_10_40.md) \(PR101040\) form.

## System Preparation { .section}

Before you start creating a work location, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Shift Codes: Implementation Activity](Shift_Codes_Implem_Activity.md).

## Step: Creating a Work Location { .section}

To create a work location, do the following:

1.  On the toolbar of the [Work Locations](PR_10_10_40.md) \(PR101040\) form, click **Add New Record**.
2.  Specify the following settings:
    -   **Location ID**: `HEADOFFICE`
    -   **Location Name**: `Head office`
    -   **Active**: Selected
    -   **Use Address from Branch ID**: *HEADOFFICE*
3.  Notice that the system has inserted the following information in the address lines that are read-only:
    -   **Address Line 1**: `69 Main St, Flushing`
    -   **City**: `New York`
    -   **Country**: *US*
    -   **State**: *NY*
    -   **Postal Code**: `11367`
4.  On the form toolbar, click **Save**.

**Parent topic:**[Creating Work Locations](../UserGuide/config_Payroll_Work_Locations_Mapref.md)

