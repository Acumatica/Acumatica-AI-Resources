# Data View {#_a0e0c90e-daf2-44c1-a4bc-b6dd4cda0580 .concept}

In a business logic controller \(BLC, also referred to as *graph*\), a *data view* is a PXView object that is used to access and manipulate data. In an ASPX page, to obtain data for controls, each container has to be bound to a data view of the BLC that is bound to the PXDataSource control of the page.

A data view object contains two main parts:

-   The BQL command, which is defined by the type of the data view
-   The optional delegate, which constructs the data set that is returned instead of the result of the execution of the BQL command

In a graph extension, you can include the following member types:

-   Declaration of a custom data view
-   Redefinition for an existing data view
-   Declaration of the delegate for an existing data view
-   An override method for an existing data view delegate

To declare a custom data view in a graph extension, you can follow the instructions described in [To Add a New Member](CG_GL_BL_Graph_NewMember.md).

For detailed information on customizing a data view, see the following topics:

-   [Data View Delegates: General Information](../StudioDeveloperGuide/CodeCustomization_DataViewDelegates_GeneralInfo.md)
-   [To Override a Data View](CG_GL_BL_Graph_OverrideDataView.md)
-   [To Override a Data View Delegate](CG_GL_BL_Graph_OverrideDataViewDelegate.md)

-   **[To Override a Data View](../CustomizationPlatform/CG_GL_BL_Graph_OverrideDataView.md)**  

-   **[To Override a Data View Delegate](../CustomizationPlatform/CG_GL_BL_Graph_OverrideDataViewDelegate.md)**  


**Parent topic:**[Customizing Business Logic](../CustomizationPlatform/CG_GL_BL.md)

