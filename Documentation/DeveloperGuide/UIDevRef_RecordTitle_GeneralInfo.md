# Record Title: General Information

In Acumatica ERP, data entry and maintenance forms can have a record title, which is a short description of the current record that is displayed under the form name on the form title bar. The record title usually includes the record’s ID along with the its name, its description, or additional information about the record.

**Tip:** The record title is also called the *header description*. In this topic, for simplicity, it will be further referred to as the *record title*.

The following screenshot shows an example of the record title for the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form. Notice that the record title shows both the shipment number and the customer name.


## Learning Objectives

In this chapter, you will learn the following:

-   The design guidelines for a record title, including the naming conventions and layout recommendations
-   The proper configuration of a record title

## Applicable Scenarios

You configure a record title if you want to display a short description of the current record on a data entry or maintenance form.

## UI Naming Conventions

The following table shows the UI naming conventions for record titles.

<table id="_089af7a6-2da4-42eb-9eba-f0d962e85451"><thead><tr><th>

Naming Convention

</th><th>

Example

</th></tr></thead><tbody><tr><td>

For a data entry form that is used to enter documents, include the following information:

 -   The document identifier.

For documents that have multiple key fields \(such as sales orders or invoices\), you need to include all key fields.

-   The account name of the customer or vendor account related to the document.

</td><td>


</td></tr><tr><td>

For a maintenance or data entry form that is used to enter maintenance records or profiles \(such as inventory items, customers, and contacts\) that are used in data entry records, include the following information:

 -   The record identifier
-   The record name

</td><td>


</td></tr><tr><td>

For other data entry or maintenance forms, include the following information:

 -   The record’s identifier.

For records that have compound identifiers, you need to include all parts of the identifier.

-   The record’s description.

If the record does not have a description, you can use any other field that can help a user to identify the record.


</td><td>


</td></tr></tbody>
</table>

**Parent topic:**[Record Title](../DeveloperGuide/UIDevRef_RecordTitle_Mapref.md)

