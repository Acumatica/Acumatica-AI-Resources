# Working with Attributes {#_452232d6-60da-4e0e-9fe4-23318464a3b2 .concept}

In Acumatica Framework, you use attributes to add common business logic to the application components.

Attributes implement business logic by subscribing to events. Each attribute class directly or indirectly derives from the PXEventSubscriberAttribute class. In addition, an attribute class derives from the interfaces that correspond to the event handlers it implements. For example, the PXDefault attribute derives from the IPXFieldDefaultingSubscriber, IPXRowPersistingSubscriber, and IPXFieldSelectingSubscriber interfaces, which means that it implements its logic in the FieldDefaulting, RowPersisting, and FieldSelecting event handler methods.

Attributes can be added to a data access class \(DAC\) definition, a data view declaration in a business logic controller \(BLC\), and the BLC definition itself.

For more information on each attribute, see the [API Reference](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=8bf11f7b-4163-ba3c-3f7a-7b2da343530c).

-   **[Code Reuse Through Attributes](../StudioDeveloperGuide/BL__con_Attributes.md)**  

-   **[Mandatory Attributes](../StudioDeveloperGuide/BL__con_Mandatory_Attributes.md)**  

-   **[Use of Attributes](../StudioDeveloperGuide/BL__con_Use_of_Attributes.md)**  

-   **[Bound Field Data Types](../StudioDeveloperGuide/BL__con_Attr_DB_Types.md)**  

-   **[Unbound Field Data Types](../StudioDeveloperGuide/BL__con_Attr_Unbound_Data_Types.md)**  

-   **[UI Field Configuration](../StudioDeveloperGuide/BL__con_PXUIField_Attribute.md)**  

-   **[Default Values](../StudioDeveloperGuide/BL__con_Default_Values.md)**  

-   **[Complex Input Controls](../StudioDeveloperGuide/BL__con_Attr_Selectors.md)**  

-   **[Referential Integrity](../StudioDeveloperGuide/BL__con_Attr_Referential_Integrity.md)**  

-   **[Calculation of Field Values](../StudioDeveloperGuide/BL__con_Attr_Calculations.md)**  

-   **[Ad Hoc SQL for Fields](../StudioDeveloperGuide/BL__con_Attr_SQL_Adhoc.md)**  

-   **[Aggregation of Attributes](../StudioDeveloperGuide/BL_con_Attr_AggregateAttributes.md)**  

-   **[Audit Fields](../StudioDeveloperGuide/BL__con_Attr_Audit.md)**  

-   **[Data Projection](../StudioDeveloperGuide/BL__con_Attr_Projection.md)**  

-   **[Access Control](../StudioDeveloperGuide/BL__con_Attr_Access_Control.md)**  

-   **[Notes](../StudioDeveloperGuide/BL__con_Attr_Notes.md)**  

-   **[Report Optimization](../StudioDeveloperGuide/BL__con_Attr_Report_Opt.md)**  

-   **[Attributes on DACs](../StudioDeveloperGuide/BL__con_Attr_DAC.md)**  

-   **[Attributes on Data Views](../StudioDeveloperGuide/BL__con_Attr_Views.md)**  

-   **[Custom Attributes](../StudioDeveloperGuide/BL__con_CustomAttr.md)**  

-   **[Access to Protected Graph Members](../StudioDeveloperGuide/BL___con_Access_Protected.md)**  


**Parent topic:**[Implementing Business Logic](../StudioDeveloperGuide/BL__mng.md)

