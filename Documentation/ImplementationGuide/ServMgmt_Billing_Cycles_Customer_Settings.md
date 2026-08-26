# Billing Cycles: Assignment of Multiple Billing Cycles {#_34cb68d6-7384-4521-8005-c59e16f34565 .concept}

In Acumatica ERP, you can specify either one billing cycle or multiple billing cycles for a customer. You specify one billing cycle for a customer if you want to generate billing documents in the same way and with the same details for all types of service orders. You specify multiple billing cycles for a customer account if you want to apply different invoicing or grouping settings depending on the type of the service order.

In this topic, you will read how to set up multiple billing cycles for a customer account.

## Setting Up the Ability to Use Multiple Billing Cycles { .section}

To set up multiple billing cycles for particular customers during the configuration of the field service functionality, you perform the following general steps:

1.  Select the **Manage Multiple Billing Options per Customer** check box on the **General** tab on the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form.
2.  Create all needed billing cycles on the [Billing Cycles](../UserGuide/FS_20_60_00.md) \(FS206000\) form. For examples of billing cycles, see [Billing Cycles: Examples](ServMgmt_BillingCycles_Overview.md).
3.  For each customer, add all needed service order types and associate a billing cycle with each service order type on the **Service Billing** tab on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.

    **Note:** You should add a row for each type for which you may define service orders for this customer and select a billing cycle for each type.

4.  Optional: On the [Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\) form, you can create a new customer class, add service order types and associate a billing cycle with each service order type on the **Service Billing** tab of the form.

    When you create a new customer in the system, you can select the customer class, so that the new customer will be assigned with the settings of the customer class including the billing cycles specified for the customer class.


## Specifying Multiple Billing Cycles for a Customer { .section}

If you have used one billing cycle for each of your customers, you might later decide to turn on the ability to use different billing cycles for different service order types for select customers. To do so, you first select the **Manage Multiple Billing Options per Customer** check box on the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form.

On the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, you need to change the billing settings for each customer for which you want to specify multiple billing cycles. you select a customer whose settings you want to change. Before the functionality for multiple billing cycles was turned on, in the **Service Management** section of the **Billing** tab, a single billing cycle was specified, along with the sources of the bill-to and ship-to addresses for field services.

With the functionality for multiple billing options turned on, the **Service Billing** tab is displayed on the form. Notice that the system has added a row for each service order type for which the customer has service orders. For each type, the system inserts the billing settings \(billing cycle, bill-to address, and ship-to address\) that were specified for this customer when the functionality for multiple billing cycles was turned off.

For each service order type, you can change the billing cycle and other settings. You can also add other service order types for the customer and specify their default billing settings.

**Parent topic:**[Billing Cycles](../ImplementationGuide/ServMgmt_Billing_Cycles_Mapref.md)

