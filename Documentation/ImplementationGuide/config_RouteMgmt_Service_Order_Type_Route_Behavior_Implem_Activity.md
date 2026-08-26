# Route Management: To Review a Service Order Type with Route Behavior {#_38395acd-b200-4dbb-a026-826e501437b4 .task}

In Acumatica ERP, you can maintain all the necessary information about the routes that your company executes and about each specific route execution. A *route* in the system contains common information for route executions performed by your company—that is, the starting and ending locations of the route, the schedule when it can be performed, and the employees \(drivers\) who can be assigned to execute the route. A *route execution* in the system is a predefined path with appointment stops where staff members perform services or deliver and pick up inventory items. Each stop in the route execution represents a *route appointment*, which is an appointment created based on a service order type with the *Route* behavior.

Also, you can create service orders that inherit the *Route* behavior from the service order type and that are fulfilled by route appointments to provide a route service to a customer. You can enter all the information about each execution of a route, such as its start and end locations, times, and appointments to be attended, and the staff member \(driver\) and vehicle used to execute the route. With this information in the system, users can quickly process customers’ orders that require route planning.

## Story {#section_wzm_1v1_ldc .section}

Suppose that SweetLife Equipment and Service Center plans to process route appointments. Acting as an administrative user of the company, you need to review that a service order type with the *Route* behavior has already been created by another administrative user. You will then specify the new service order type as the default service order type on the [Route Management Preferences](../UserGuide/FS_10_04_00.md) \(FS100400\) form.

## Process Overview { .section}

In this activity, you will review a service order type with the *Route* behavior on the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form; it has been preconfigured in the *U100* dataset. Then you will specify this service order type as the default one on the [Route Management Preferences](../UserGuide/FS_10_04_00.md) \(FS100400\) form.

## System Preparation {#section_xyr_cbv_3dc .section}

Before you start performing the steps of this activity, do the following:

1.  On the Acumatica ERP website, sign in to a company with the *U100* dataset preloaded as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SWEETEQUIP - Service and Equipment Sales Center* branch.

## Step 1: Reviewing the Settings of the Route Service Order Type {#section_lzb_bv1_ldc .section}

Perform the following instructions:

1.  Open the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form.
2.  In the **Service Order Type** box, select *ROUT*.
3.  On the **General** tab, review the following settings:
    -   **Numbering Sequence**: *FSROUTE*

        This is the numbering sequence that all route service documents of this type will use.

    -   **Behavior**: *Route*
    -   **Generated Billing Documents** \(**Billing Settings** section\): *SO Invoices*
    -   **Default Terms for AR and SO**: *30D - 30 days*

        These are the credit terms to be used for processing a sales invoice for a service order or an appointment of this type if no default credit terms are defined on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form for the particular customer.

    -   **Bill Only Closed Appointments**: Cleared

        When this check box is selected, the appointment status must be *Closed* before you can generate a billing document for this appointment.


## Step 2: Specifying the Default Service Order Type {#section_alq_bv1_ldc .section}

Perform the following instructions:

1.  Open the [Route Management Preferences](../UserGuide/FS_10_04_00.md) \(FS100400\) form.
2.  In the **Default Service Order Type** box, select *ROUT*.
3.  On the form toolbar, click **Save**.

**Parent topic:**[Configuring Route Management](../ImplementationGuide/config_RouteMgmt_Mapref.md)

