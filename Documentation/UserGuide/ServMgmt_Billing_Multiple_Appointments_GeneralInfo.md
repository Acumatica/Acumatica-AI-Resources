# Billing of Multiple Appointments: General Information {#_de1231c5-727c-416c-b110-df6125c92c44 .concept}

In Acumatica ERP, you can generate billing documents for multiple appointments simultaneously. You can filter the list of appointments to be processed by customer, billing cycle, or time frame.

For details on and examples of the different types of billing cycles, see [Billing Cycles: Examples](../ImplementationGuide/ServMgmt_BillingCycles_Overview.md).

## Learning Objectives { .section}

In this chapter, you will learn how to generate billing documents for multiple appointments.

## Applicable Scenarios { .section}

You perform mass-billing of appointments when you need to generate billing documents for multiple appointments at the same time.

## Documents Generated During Appointment Billing {#section_t2j_fx1_bhc .section}

When billing is performed on the [Run Appointment Billing](FS_50_01_00.md) \(FS500100\) form, the system can create sales orders, sales invoices, AR invoices, or project transactions depending on the settings of the related service order type. The billing process can be performed if all of the following conditions are met:

-   The customer has at list one billing cycle assigned.
-   For the service order type, the appropriate option is selected in the **Generated Billing Documents** box on the **General** tab of the [Service Order Types](FS_20_23_00.md) \(FS202300\) form.

## Documents Generated for Negative-Balance Service Documents { .section}

When billing is performed on the [Run Appointment Billing](FS_50_01_00.md) \(FS500100\) form, the system can create sales orders or sales invoices with the *Credit Memo* type, or AP bills, depending on the settings of the related service order type.

These documents are generated if all of the following conditions are met:

-   The billing cycle specified for the customer on the [Customers](AR_30_30_00.md) form.
-   For the service document's order type, one of the following options is selected in the **Generated Billing Documents** box on the **General** tab of the [Service Order Types](FS_20_23_00.md) \(FS202300\) form:
    -   *Sales Orders*: If this option is selected and the amount of the service document is negative, a sales order with the *Credit Memo* type is created. If the amount is positive, the system creates a sales order of the type specified in the **Order Type for Billing** box.
    -   *SO Invoices*: If this option is selected and the amount of the service document is negative, the system creates a sales invoice with the *Credit Memo* type. If the amount is positive, the system creates a sales invoice with the *Invoice* type.
    -   *AR Documents*: If this option is selected and the amount of the service document is negative:
        -   If the **Create AP Bills for Negative Balances** check box is cleared, the system creates an AR invoice.
        -   If the **Create AP Bills for Negative Balances** check box is selected, the system creates an AP bill.

In the document created during the appointment billing, the system fills in the credit terms depending on whether the **Use Credit Terms in Credit Memos** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:

-   If the check box is selected, the system copies the credit terms from the customer's settings.
-   If the check box is cleared, the **Terms** box on the generated AR document remains empty.

## Multiple Billing Cycles per Customer {#section_k5f_fr1_bhc .section}

In Acumatica ERP, a customer can have one or multiple billing cycles, depending on the setting specified on the [Service Management Preferences](FS_10_01_00.md) \(FS100100\) form.

If the **Manage Multiple Billing Options per Customer** check box is selected on the **General** tab of the [Service Management Preferences](FS_10_01_00.md) form, one or more billing cycles can be specified for a customer on the **Service Billing** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.

If the **Manage Multiple Billing Options per Customer** check box is cleared, the **Service Billing** tab is not displayed on the [Customers](AR_30_30_00.md) form. In this case, the billing cycle must be specified in the **Service Management** section on the **Billing** tab of the same form.

**Parent topic:**[Billing Multiple Appointments](../UserGuide/ServMgmt_Billing_Multiple_Appointments_Mapref.md)

