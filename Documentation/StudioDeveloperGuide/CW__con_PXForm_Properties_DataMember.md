# Use of the DataMember Property of Containers {#_f4e4f1df-64bd-40b9-b487-bdc099ee952c .concept}

If you need to find out which data view provides data for a control container on a form, perform a search to find the *DataMember* string in the appropriate ASPX code. The DataMember property is used to bind a control container of a form to a data view defined in the business logic controller \(BLC, also referred as *graph*\) of the form. The property value is the name of the data view.

## Container Types That Have the DataMember Property { .section}

In Acumatica Framework, DataMember is used to specify a data view for the following container types:

-   PXFormView
-   PXGrid
-   PXTab
-   PXTreeView

    **Note:** The PXTreeView container is not supported by the tools of the Acumatica Customization Platform.


By default, a nested container inherits the DataMember property from the parent container. If a nested container is PXFormView, PXGrid, or PXTab, it can be bound to another data view.

If the DataMember property is available for other ASPX objects, it has a special purpose. For example, you can specify the DataMember property for a PXSelector lookup control to define the appropriate data view for the grid of the lookup window.

## Property Value { .section}

Each DataMember property value can correspond to any data view name of the BLC. Any data view except for the main data view can be used by an unlimited number of containers. The main data view must be bound to a single container.

For a container to contain a box for a data field, the container must be bound to a data view declared within a BLC for the following reasons:

-   A data field is declared in a data access class \(DAC\). An instance of the DAC record can exist in the cache of a BLC that contains the declaration of a data view with the DAC reference in the BQL statement.
-   Each time a data record is selected in the container, the container creates a callback to the PXDataSource control that is specified in the DataSourceID property of the container. The data source control creates a remote procedure call to the application server to execute the *Display* operation on the data view that is specified as the DataMember for the container. The data view checks the existence of the record in the cache; if the check fails, the data view executes the BQL request and stores the obtained record in the cache.
-   The data view provides all data exchange operations with the database, cache, and PXDataSource control.

**Parent topic:**[Configuring Containers](../StudioDeveloperGuide/CW__mng_Configuring_Containers.md)

