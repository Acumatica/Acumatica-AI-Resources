# Configuration of Container Controls {#_ec57712c-8e1e-48aa-9d8f-4e24b026d702 .concept}

Acumatica Framework provides the following container controls:

-   PXFormView \(form\)
-   PXGrid \(grid\)
-   PXTab, which consists of PXTabItem \(tab\) elements
-   PXTreeView
-   PXPanel

To configure a container control, you have to specify the data binding properties for it and add input controls to the container. The following properties are required for every container control:

-   DataSourceID: Binds the container to a datasource control
-   DataMember: Specifies the data view that provides data for the container

In the DataSourceID property, you have to specify the ID of the datasource control on the page. When you create a page from a template, this property is already specified for the default containers added from the template. When you add a nested container, you have to specify the DataSourceID property. By default, in all page templates, the datasourse control has the *ds* ID. After you have specified a DataSourceID for the container, you can specify the DataMember property for it. The DataMember property links the container to the data view defined in the graph. In the container, you can define input controls for data fields available through that data view.

**Parent topic:**[Configuring Containers](../StudioDeveloperGuide/CW__mng_Configuring_Containers.md)

