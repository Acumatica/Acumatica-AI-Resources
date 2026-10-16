# DAC-Based OData: Retrieving Archived and Removed Records

In this topic, you can find details about how to retrieve archived and removed records and how to track removed records for synchronization by using the DAC-based OData interface.

## Retrieving Archived Records

You can retrieve archived records along with non-archived ones. To make archived records visible for requests, you use the `PX-ApiArchive` HTTP header with the *SHOW* value.

The following sample request retrieves the shipments \(including archived ones\) that were created before December 31, 2022.

```
GET /AcumaticaERP/t/U100/api/odata/dac/PX_Objects_SO_SOShipment?
$filter=ShipDate gt 2022-12-31T00:00:00%2b03:00
&$select=ShipmentNbr,ShipDate HTTP/1.1
Host: localhost
PX-ApiArchive: SHOW
```

## Retrieving Removed Records

The removed records are stored in the database if the corresponding database table has the DeletedDatabaseRecord column. For details about this mechanism, see [Preservation of Deleted Records \(DeletedDatabaseRecord\)](../StudioDeveloperGuide/DA__con_Preservation_of_Deleted_Records.md). By default, the removed records are not returned if you request data through the DAC-based OData interface.

To retrieve the removed records, you need to specify the `PX-ApiDeleted` HTTP header with the *SHOW* value in the request.

For example, the following request retrieves both removed customer records and customer records that have not been removed.

```
GET /AcumaticaERP/t/U100/api/OData/DAC/Customer?
$select=BAccountID,DeletedDatabaseRecord HTTP/1.1
Host: localhost
PX-ApiDeleted: SHOW
```

## Tracking Removed Records for Synchronization

The optimal way to synchronize data between Acumatica ERP and an external system is to synchronize only the data that has been modified since the previous synchronization. To track the modification date, you can use the values in the LastModifiedDateTime field of a record. However, this type of synchronization does not take into account the records that have been removed since the last synchronization. To synchronize the removed records, you can use the system mechanism that tracks the removal of records of particular data access classes \(DACs\).

You can use this mechanism as follows:

1.  On the [Tables to Track Deleted Records](SM_20_70_10.md) \(SM207010\) form, you add the DACs for which the system should track the removed records. If you do not list a DAC, the system does not track its removed records.

    **Tip:** If a record of a DAC listed on the form is removed, the system saves the NoteID of the record and the date and time of its removal. The system does not keep the record itself.

2.  To obtain the list of removed records of a particular DAC, you use the px.GetDeletedRecords\(\) function in the request URL.

    You can also filter the records by the date of removal by using the DeleteDate field in the *$filter* parameter.

    **Attention:** A user can obtain the list of removed records of a DAC by using an OData request if the user has access to this DAC through DAC-based OData.

3.  Optional: To include this list of DACs in a customization project, you use the [Tables to Track Deleted Records](AU_20_60_05.md) page of the Customization Project Editor. You need to list the DACs on the [Tables to Track Deleted Records](SM_20_70_10.md) \(SM207010\) form first in order they are available for selection on the page.

For example, suppose that you need to retrieve the list of sales orders that have been removed since November 1, 2024, from the *U100* tenant of the local Acumatica ERP instance. Further suppose that the SOOrder DAC has been added to the list on the [Tables to Track Deleted Records](SM_20_70_10.md) \(SM207010\) form. You can execute the following request to obtain the list of removed records.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/SOOrder/px.GetDeletedRecords()?$filter=DeleteDate ge 2024-11-01T00:00:00Z
```

**Parent topic:**[Accessing DACs Through OData](../UserGuide/RPT_DAC_OData_Mapref.md)

