# Extension of Scan Components: General Information {#_923b721f-4aa3-4e36-80d2-748362b6ce01 .concept}

The WarehouseManagementSystem&lt;TSelf, TGraph&gt; class has multiple predefined components that can be used by its descendants. However, sometimes you need to alter the logic of predefined components before you add them to the components used in the mode you are developing. You can also customize the scan components that are used on existing barcode-driven forms of Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Customize a scan component that is used on an existing barcode-driven Acumatica ERP form
-   Add a new component that alters a predefined scan component, and use it on a custom barcode-driven form

## Applicable Scenarios { .section}

You extend a scan component in the following cases:

-   You need to modify the logic of a scan component of an existing barcode-driven Acumatica ERP form for your business scenario. For example, you may want to change the order of value input, implement additional entity validation, or add an alternate way to search for entities.
-   You have created a scan mode and have inherited a scan component of this mode from the base barcode scan class. You need to modify this component to use it in your scan mode. For example, you may want to add additional validation that is specific to this scan mode.

## Extension of Scan Components { .section}

Scan components use a method-intercepting approach, which predefines the extendable parts of the components. You can learn about method interceptors in [Extension of Scan Components: Method Interceptors](WMSEngine_ExtendedComponent_MethodInterceptors.md).

A scan component is called simple if it implements all its logic by itself. A component is called complex if it does not implement all its logic by itself and delegates logic implementation to at least one ScanExtension class. For details about scan extensions, see [Extension of Scan Components: Scan Extensions](WMSEngine_ExtendedComponent_ScanExtension.md).

## Extension of Predefined Components for a Custom Form { .section}

To create a component that alters a predefined scan component and use it on a custom form, you do one of the following:

-   Introduce a descendant of a predefined scan component.

    You can introduce a descendant of a component that contains all changes and is nested in this scan mode. You can use the same name for the descendant.

    By introducing a descendant, you merge the logic of the base class and the logic of its descendant. Therefore, there is no way to override the logic of the base class and keep the logic added by its descendant, even through the use of the ByBaseSubstitute interception strategy. \(For details about method interceptors, see [Extension of Scan Components: Method Interceptors](WMSEngine_ExtendedComponent_MethodInterceptors.md).\) Also, the descendant-based approach uses the classic overriding technique and thus cannot use simplified overriding strategies that are available in the following approaches.

-   Inject the logic when the component is created.

    You can inject the needed changes right inside the component instance when the component is created.

    The method interception approach provides multiple overriding strategies that could facilitate logic altering. When you override the `Create` method that corresponds to the component \(such as the CreateStates\(\) method for the scan state component\), all logic patches made by this approach can be suppressed. Moreover, with the ByBaseSubstitute interception strategy, you can change the base logic of a component without affecting already applied logic patches.

-   Inject the logic when the component is decorated.

    You can inject desired changes right inside the component instance when the component is decorated.

    When a component's logic gets intercepted during component decoration, it does not matter which code creates this component. This means that patches made this way would stay effective even if the component creation method of a scan mode was completely replaced with another one providing the same components. However, patches made with this approach can still be suppressed or extended if they were extracted to a `virtual` method of the barcode scan class itself or of one of its extensions.

    **Note:** We recommend that you always override the methods of the Decorate family in full form \(that is, by accepting the base method as the last parameter\), call the base implementation, and use its result. Otherwise, you will lose all potential changes that could be made by other customization projects.


For examples of altering predefined scan state components, see [Extension of Scan Components: To Extend Predefined Scan States for a Custom Form](WMSEngine_ExtendedComponent_Activity_NewScanStates.md).

## Extension of Scan Components of an Existing Form { .section}

To customize the logic of a component, you override the needed `Create` or Decorate method by using the PXOverride attribute. You also intercept one of the component members that can be intercepted. For details on the customization of particular components, see [Extension of Scan Components: Customization of Components](WMSEngine_ExtendedComponent_CustomizedComponents.md).

For examples of customizing components, see the following topics:

-   [Extension of Scan Components: To Add an Alternate Way to Search for Entities](WMSEngine_ExtendedComponent_Activity_AlterSearch.md)
-   [Extension of Scan Components: To Implement Additional Entity Validation](WMSEngine_ExtendedComponent_Activity_AddValidation.md)
-   [Extension of Scan Components: To Add a New Scan Command for an Existing Form](WMSEngine_ExtendedComponent_Activity_AddCommand.md)
-   [Extension of Scan Components: To Change the Order of Value Input](WMSEngine_ExtendedComponent_Activity_ChangeOrderOfValueInput.md)

**Parent topic:**[Extending Scan Components](../DeveloperGuide/WMSEngine_ExtendedComponent_Mapref.md)

