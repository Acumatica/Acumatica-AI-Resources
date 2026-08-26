# Billing Cycles: General Information {#_304ae062-fe44-490f-b369-e3b38c8fc91a .concept}

In service management, billing cycles define how customers are billed for the work performed. Each billing cycle specifies which service documents—service orders or appointments—are included in billing and how the resulting billing documents are grouped. Properly configured billing cycles ensure accurate and timely billing throughout the service delivery process.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a billing cycle
-   Assign a billing cycle to a customer

## Applicable Scenarios { .section}

You create a billing cycle or multiple billing cycles when you plan to provide services to customers and need to generate billing documents based on both customer preferences and your company’s billing practices.

## Billing Cycle Settings { .section}

You create a billing cycle on the [Billing Cycles](../UserGuide/FS_20_60_00.md) \(FS206000\) form. On this form, you specify the **Run Billing For** setting as follows:

-   **Appointments** \(default\): Billing is based on appointments. Select this option when you bill customers for the actual work time performed during appointments.
-   **Service Orders**: Billing is based on service orders. Select this option when you bill customers for the estimated time and cost before any appointments take place.

Then, you specify the **Group Billing Documents By** setting. You select one of the following options to define how the generated billing documents are grouped in relation to appointments or service orders.

**Tip:** In Acumatica ERP service management functionality, a *billing document* refers to a document or transaction generated when the billing process is executed for a service document. Depending on the service order type settings, it can be a sales order, SO invoice, AR invoice or project transaction.

-   **Appointments**: A separate billing document is generated for each appointment.
-   **Service Orders**: Billing documents are grouped by service order. One billing document is created for all appointments linked to the same service order.
-   **Customer Order**: Billing documents are grouped by the customer’s order number, as specified in the **Customer Order** box in the Summary area of the [Service Orders](../UserGuide/FS_30_01_00.md) \(FS300100\) form.
-   **External Reference**: Billing documents are grouped by the customer’s purchase order, as specified in the **External Reference** box in the Summary area of the [Service Orders](../UserGuide/FS_30_01_00.md) \(FS300100\) form.
-   **Time Frame** \(default\): Billing documents are grouped by a specific day of the week or month, as defined in the **Time Frame Grouping Settings** section. If services are billed by appointments, a single billing document is generated for all appointment services performed up to the specified day.

On the **Billing** tab of the [Customers](../UserGuide/AR_30_30_00.md#) \(AR303000\) form, you assign at least one billing cycle to each customer account that may receive services.

## Multiple Billing Cycles {#section_hrl_zqj_fdc .section}

In Acumatica ERP, you can assign multiple billing cycles to a single customer by linking different cycles to specific service order types. The system automatically applies the appropriate billing cycle based on the service order type specified in the customer’s service document.

To use multiple billing cycles, you select the **Manage Multiple Billing Options per Customer** check box on the **General** tab of the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form. When this check box is selected, the **Service Billing** tab appears on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.

On the **Service Billing** tab, you add a row and select a service order type along with the billing cycle to associate with that service order type. You add a row for each required pair of service order type and billing cycle. When a service document with a particular service order type specified is created for the customer, the system will apply the billing cycle linked to that type to manage the billing process.

**Parent topic:**[Billing Cycles](../ImplementationGuide/ServMgmt_Billing_Cycles_Mapref.md)

