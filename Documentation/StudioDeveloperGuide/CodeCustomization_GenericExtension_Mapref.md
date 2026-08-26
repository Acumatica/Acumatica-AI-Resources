# Reusing Business Logic with Generic Graph Extensions {#_76b8c160-89bd-4501-9f9f-1dabc648d417 .concept}

In an Acumatica Framework-based application, you may need to use the same business logic in multiple places. For example, Acumatica ERP supports the calculation of amounts in multiple currencies. Therefore, the business logic containers \(also called *graphs*\) that implement the multicurrency logic are included in different parts of the application.

With the ability to reuse business logic in Acumatica Framework, you can include the main business logic of particular functionality \(such as multicurrency processing\) in reusable generic graph extensions; you can then use this logic whenever you need to.

If you need to adjust this logic for the specifics of a particular part, you can override this business logic in the implementation of this part. For example, you can assign different names for the UI elements that are linked to the same fields of a data access class in different parts.

-   **[Generic Graph Extensions: General Information](../StudioDeveloperGuide/CodeCustomization_GenericExtension_GeneralInfo.md)**  

-   **[Generic Graph Extensions: How Generic Graph Extensions Work](../StudioDeveloperGuide/CodeCustomization_GenericExtension_HowItWorks.md)**  

-   **[Generic Graph Extensions: Classes Declared in Acumatica ERP](../StudioDeveloperGuide/CodeCustomization_GenericExtension_PredefinedExtensions.md)**  

-   **[To Insert Reusable Business Logic That Has Already Been Declared](../StudioDeveloperGuide/BL__how_Insert_Reusable_Business_Logic.md)**  

-   **[To Sort Multiple Generic Graph Extensions](../StudioDeveloperGuide/BL__how_Sort_Generic_Graph_Extensions.md)**  

-   **[To Implement Reusable Business Logic](../StudioDeveloperGuide/BL__how_Create_Reusable_Logic.md)**  


**Parent topic:**[Implementing Business Logic](../StudioDeveloperGuide/BL__mng.md)

