# Customizing Business Logic {#_4156b66b-6d81-4cdd-bb52-1bf76526b0fb .concept}

Business logic is implemented by overloading certain methods invoked by the system in the process of manipulating data. For such procedures as inserting a data record or updating a data record, the cache controllers generate series of events causing invocation of the methods called event handlers. The application is able to interfere in the series of events on different stages. For this purpose, the application implements methods that are executed as event handlers. Business logic can be divided into common logic relevant to different parts of the application and the logic specific to an application form. The common logic is implemented through event handler methods defined in attributes, while the screen-specific logic is implemented as methods in the associated graph.

You use [Customization Tools](CG_Platform_Tools.md) of the Acumatica Customization Platform to customize business logic for forms of Acumatica ERP.

The customization of existing business logic is based on the extension technology, which is described in greater detail in [DAC Extensions](CG_Platform_Framework_CS_DACExt.md) and [Graph Extensions](CG_Platform_TO_Code_CS_GraphExtensions.md).

This part contains detailed instructions on how to customize a data access class, data field, graph, and a data view of Acumatica ERP and how to include the changeset in a customization project.

-   **[Data Access Class](../CustomizationPlatform/CG_GL_BL_DAC.md)**  

-   **[Data Field](../CustomizationPlatform/CG_GL_BL_DataField.md)**  

-   **[Graph](../CustomizationPlatform/CG_GL_BL_Graph.md)**  

-   **[Data View](../CustomizationPlatform/CG_GL_BL_DataView.md)**  

-   **[Adding Actions to Forms](../CustomizationPlatform/CustomizationProjects_AddingActions_Mapref.md)**  

-   **[Workflow](../CustomizationPlatform/CG_GL_BL_Workflow.md)**  


