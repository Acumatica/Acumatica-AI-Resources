# API Entities, Fields, and Actions {#_40efd1f2-7ebc-49a5-b854-1f04d18357ff .concept}

The contract of an endpoint defines the following elements of the contract-based REST API: entities, fields, and actions.

## Entities { .section}

An entity corresponds to a business logic object that you are going to work with. For example, the contract of a system endpoint includes the Warehouse entity, which represents a warehouse and holds the data related to the warehouse. This entity is associated with the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form.

For a custom endpoint, if you are going to use an entity to transfer data to or from Acumatica ERP, you should associate this entity with a particular Acumatica ERP form. For example, you can create a TrialBalance entity, which represents a trial balance. This entity is associated with the [Trial Balance](../UserGuide/GL_30_30_10.md) \(GL303010\) form.

## Fields { .section}

The fields of an entity correspond to the fields of a business logic object. For example, the Warehouse entity that is available through a system endpoint has the Description and WarehouseID fields, among others. In the contract, these fields are mapped to the **Description** and the **Warehouse ID** elements of the Summary area of the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form.

For a custom endpoint, if you need to connect the field with a particular element on an Acumatica ERP form, you should map the field to this element. For example, if you have created the TrialBalance entity, which designates a trial balance, you can add the `ImportNbr` field to the entity and connect this field with the **Import Number** element on the [Trial Balance](../UserGuide/GL_30_30_10.md) \(GL303010\) form.

## Actions { .section}

The actions of an entity correspond to the actions that can be applied to a business logic object. For example, the TransferOrder entity, which is available through a system endpoint, has the ReleaseTransferOrder action. This action corresponds to the **Release** button on the form toolbar of the [Transfers](../UserGuide/IN_30_40_00.md) \(IN304000\) form.

For a custom endpoint, if you need to use an Acumatica ERP action, you should add this action to the contract of the custom endpoint with the needed parameters. For example, suppose that you want to add an action that changes the customer ID of an existing customer. You can add the ChangeID action and map it to the **Change ID** command, which is available on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form. The new action should have one parameter, which specifies the new ID of a customer, because the **Change ID** command requires the new ID.

## Types of Entities { .section}

When you add a new entity to a contract, you should specify the type of the entity, which can be one of the following:

-   *Top-Level*: Entities of this type are the main entities of the contract. A top-level entity usually corresponds to an Acumatica ERP form. For example, the Warehouse entity of the contract of a system endpoint is a top-level entity that corresponds to the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form.
-   *Detail*: Detail entities correspond to the detail lines of a master-detail form. A detail entity exists only as a part of a top-level entity. For example, the SalesOrder top-level entity of the contract of a system endpoint contains the SalesOrderDetail detail entity. This detail entity corresponds to a detail line on the **Details** tab of the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.
-   *Linked*: Linked entities are supplementary entities of a contract. A linked entity usually corresponds to a part of an Acumatica ERP form and is related to one top-level entity of the contract or multiple top-level entities. For example, the Contact top-level entity of the contract of a system endpoint contains the Address linked entity . This linked entity corresponds to the **Address** section on the **General** tab of the [Contacts](../UserGuide/CR_30_20_00.md) \(CR302000\) form, as shown in the following screenshot.
-   *Report*: An entity of this type corresponds to an Acumatica ERP report. For example, in a custom endpoint, you can create the CashAccountSummary report entity, which corresponds to the [Cash Account Summary](../UserGuide/CA_63_30_00.md) \(CA633000\) report.

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

