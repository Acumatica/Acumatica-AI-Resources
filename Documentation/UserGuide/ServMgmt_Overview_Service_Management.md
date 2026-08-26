# Overview of Service Management Processes {#_7148ee50-c687-466e-8970-f50033b6719e .concept}

The service management functionality in Acumatica ERP helps you control and optimize all service-related processes. It supports the entire lifecycle of service delivery—from planning and scheduling to execution, billing, and reporting. You can manage information about the services you provide, service orders, appointments, staff members, and their schedules, skills, and licenses.

At the core of service management are two documents: **service orders** and **appointments**. Service orders represent the customer’s request or agreement for services, while appointments represent the actual execution of the work. Around these documents, the system provides tools for scheduling, billing, and resource management.

## Core Documents {#section_q3p_4wh_lgc .section}

**Service Orders**

A **service order**, created on the [Service Orders](FS_30_01_00.md) \(FS300100\) form, represents the customer’s request or agreement for services. It includes key details such as the services to be provided, the customer, the planned duration, and the location where the work will be performed.

**Appointments**

An **appointment**, created on the [Appointments](FS_30_02_00.md) \(FS300200\) form, represents the execution of all or part of the work defined in a service order. It records the actual services performed, scheduled and actual dates and times, and the staff members assigned. Appointments can take place at the customer’s location, a customer contact’s location, or a company branch location.

## Relationship Between Service Orders and Appointments { .section}

Appointments and service orders relate to each other in the following ways:

-   A service order can include one or multiple appointments.

-   Each appointment is always linked to one service order. If no service order is specified when creating an appointment, the system automatically creates one.

-   You can also define service orders without associated appointments.


## Service Order Types { .section}

A **service order type** is a group of general settings that is created on the [Service Order Types](https://help.acumatica.com/(W(4))/Wiki/ShowWiki.aspx?wikiname=HelpRoot_FormReference&PageID=06fd8a36-dd81-4df9-b609-92c3d552c542) \(FS202300\) form. When a service order type is specified for a service order or appointment, the system adds or removes specific UI elements on the [Service Orders](https://help.acumatica.com/(W(4))/Wiki/ShowWiki.aspx?wikiname=HelpRoot_FormReference&PageID=6e5277d3-274e-45f5-b77d-4410ed736d21) \(FS300100\) form or the [Appointments](https://help.acumatica.com/(W(4))/Wiki/ShowWiki.aspx?wikiname=HelpRoot_FormReference&PageID=ac486e9c-f5df-4829-94f0-2df8821361a0) \(FS300200\) form, depending on the settings of the selected service order type.

When you create a service order type, you assign it a **behavior** type, which defines how service orders and appointments of that type are processed. The available behavior types are:

-   *Regular*: Service orders are fulfilled by appointments in which services are provided to a customer.
-   *Internal*: Service orders are fulfilled by appointments within your company that do not involve a customer.
-   *Quote*: Service orders represent agreements to provide any number of services at specified prices to a customer in the future.

In a production environment, we recommend that you:

-   Create a service order type with the *Internal* behavior for managing internal services and appointments.
-   Create a service order type with the *Quote* behavior if you want to track quotes sent to customers.
-   Define at least one service order type with the *Regular* behavior for services delivered to customers.

A service order type includes posting and billing settings that define the type of billing document generated for a service order or appointment. It also includes mailing settings, which specify how customers receive email notifications about actions that occur during service delivery.

## Service Management Process { .section}

The service management process generally follows these stages \(shown in the diagram below\):

1.  **Service Order Creation \(optional\):** A service order is created manually or automatically when an appointment is created.
2.  **Appointment Creation and Scheduling:** Appointments are created and scheduled to deliver the requested services. Staff are assigned as needed.
3.  **Appointment Start:** Staff members indicate the start of work; actual start times may be recorded automatically.
4.  **Performing Services:** Staff perform the requested services and update actual dates and times.
5.  **Appointment Completion:** Staff record completion; actual end times may be captured for time-based billing.
6.  **Appointment Closing \(optional\):** A manager reviews and closes appointments after delivery.
7.  **Service Order Completion \(optional\):** Once all related appointments are completed, the service order can also be closed.
8.  **Billing:** Billing documents are generated according to the customer’s billing cycle, either by appointment or by service order.

![](Images/diag_ServMgmt_Basic_Process_Overview.png "Service management process (with billing documents generated by appointments)")

## Calendar Board { .section}

Appointments can be created, scheduled, and managed through calendar boards—visual dashboards that show staff workloads. Calendar boards are available on the [Calendar Board](FS_30_03_00.md) \(FS300300\), [Staff Calendar Board](FS_30_04_00.md) \(FS300400\), and [Room Calendar Board](FS_30_07_00.md) \(FS300700\) forms. From the calendar board, you can:

-   Create, schedule, or delete appointments.
-   Assign or reassign appointments based on staff availability, skills, and licenses.
-   Adjust estimated start and end times.
-   Confirm, validate, or clone appointments.

## Skills, Licenses, and Service Areas { .section}

1.  **Skills** represent abilities that staff members can perform; they are defined on the [Skills](FS_20_06_00.md) \(FS200600\) form and can be associated with staff and services.
2.  **Licenses** prove that staff members are certified to perform certain work; they are created on the [Licenses](FS_20_10_00.md) \(FS201000\) form.
3.  **Service Areas**, defined on the [Service Areas](FS_20_19_00.md) \(FS201900\) form, represent the regions covered by staff. These can be used as filters when assigning staff in appointments or on calendar boards.

## Billing Cycles { .section}

Billing cycles determine how billing documents are generated for delivered services. They are created on the [Billing Cycles](FS_20_60_00.md) \(FS206000\) form and assigned to customers on the [Customers](AR_30_30_00.md) \(AR303000\) form. A billing cycle specifies whether billing is run by appointment or by service order. You can also configure whether multiple appointments or service orders are grouped into a single billing document, as well as the frequency of invoice generation.

## Staff Members { .section}

In Acumatica ERP, you can record and manage professional information about each staff member, including:

-   Skills and licenses.

-   Work schedules.

-   Service areas they cover.


The system uses this information to help you assign the right staff to the right services, ensuring efficiency and compliance with requirements.

## Conclusion {#section_fd1_nxh_lgc .section}

Together, service orders, appointments, scheduling tools, and billing settings provide a complete framework for managing the delivery of services in Acumatica ERP.

**Parent topic:**[Service Management](../UserGuide/FS_00_00_01.md)

