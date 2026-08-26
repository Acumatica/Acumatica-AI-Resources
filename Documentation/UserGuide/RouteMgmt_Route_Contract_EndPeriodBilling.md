# Route Service Contracts with the End-Period Billing: Billing Documents {#_963c42f9-3414-4c42-bb2b-54cfdcd92557 .concept}

For the service contracts with the *End-Period Plus* billing, at the end of each billing period, you have to generate a billing document \(that is, an AR invoice or sales order\) for the customer. The document includes the services and non-stock items that are covered by the contract, as well as other items included in the appointments related to the contract that were performed during the billing period. For the items that are covered by the contract, the document includes the price specified in the contract. If quantity of the items has been exceeded during the period, the overage quantity of items is included in the billing document with the overage price specified for the contract.

In this topic, you will read about how to generate billing documents for the route service contracts with the *End-Period Plus* billing in the system.

## Generating Billing Documents and Creating Batches { .section}

You specify the billing document generation settings \(such as the type of the document to be generated\) on the [Route Management Preferences](FS_10_04_00.md) \(FS100400\) form as described in [Route Management: General Information](../ImplementationGuide/config_RouteMgmt_GeneralInfo.md).

You generate the billing documents on the [Run Service Contract Billing](FS_50_13_00.md) \(FS501300\) form. You specify the date of document creation, select all listed service contracts for which you want to bill a customer or multiple customers, and generate the documents.

When you generate these billing documents, the system creates a batch of generated billing documents on the [Service Contract Billing Batches](FS_30_61_00.md) \(FS306100\) form. The system assigns the batch a reference number in accordance with the numbering sequence assigned to batches in the **Batch Numbering Sequence** box on the [Service Management Preferences](FS_10_01_00.md) \(FS100100\) form. On the [Run Service Contract Billing](FS_50_13_00.md) form, you click the batch number in the **Batch Nbr.** column to view information on the batch. The system opens the [Service Contract Billing Batches](FS_30_61_00.md) \(FS306100\) form with the batch. On this form, you can find the contract reference number, the billing document date, the customer, the branch, and the next billing date for the contract.

## Processing Billing Documents { .section}

The appropriate employees process the generated billing documents. To open a generated billing document for the selected batch, you click the billing document number in the **Document Nbr.** column of the [Service Contract Billing Batches](FS_30_61_00.md) \(FS306100\) form, and then process it in the system.

**Parent topic:**[Managing Route Service Contracts](../UserGuide/RouteMgmt_Service_Contracts_Mapref.md)

