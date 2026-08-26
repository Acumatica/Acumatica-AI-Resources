# PXView Type and Views Collection {#_0af3b776-4c7b-4dd7-9f61-27c167abb261 .concept}

In addition to including the Cache property, a data view includes the View property, which references a controller object of the PXView type. A PXView object is created automatically for each data view. This object is responsible for retrieving data from the database and placing it into the cache object.

Each graph contains the following: a collection of cache objects, called Caches; and a collection of PXView objects, called Views. The framework handles these objects automatically; you do not have to initialize and control them.

A PXView object contains two main parts:

-   The BQL command, which is defined by the type of the data view.
-   The optional delegate, which customarily constructs the data set that is returned instead of the result of the BQL command's execution. For details, see [Data View Delegates: General Information](CodeCustomization_DataViewDelegates_GeneralInfo.md).

PXView objects, like graphs, are initialized and destroyed on each round trip.

On an ASPX page, you bind each container control with a data view that provides data for the container control. To bind a container control and a data view, you specify the name of the data view in the DataMember property of the container control. When a form requests data, the system invokes the ExecuteSelect\(\) method of the graph with data view name passed as an argument to execute every data view bound to the ASPX page's container controls. The positioning of container controls on the ASPX page determines the order of execution of the data views. Note that if a data view is not bound to any container control, it is not executed by request from the UI.

**Note:** The order in which data views are defined in a graph is important, because it defines the order in which data is saved to the database. \(This order does not, however, define the order in which data views are executed.\) The data view that you specify in the PrimaryView property should always be defined first in the graph.

When a data record is modified on the form, the framework invokes the ExecuteInsert\(\), ExecuteUpdate\(\), or ExecuteDelete\(\) method of the graph, passing the name of the data view as an argument. The graph obtains the data view by using its name and invokes the corresponding method of the data view.

**Note:** You should not use the ExecuteSelect\(\), ExecuteInsert\(\), ExecuteUpdate\(\), or ExecuteDelete\(\) method for purposes other than debugging.

**Parent topic:**[Querying Data in Acumatica Framework](../StudioDeveloperGuide/AD__mng_Querying_Data.md)

