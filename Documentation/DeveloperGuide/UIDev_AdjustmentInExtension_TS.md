# UI Adjustments in HTML and TypeScript: TypeScript Examples {#_c0732f1a-acde-4844-a2d1-2cc9192f736c .concept}

You may need to adjust the TypeScript code of the form, such as to add or replace a decorator. In this topic, you can find examples of TypeScript adjustment.

Suppose that the following view class is defined for an Acumatica ERP form. It can be defined directly in the code of the form or in a reusable UI definition. The following sections describe how to adjust this definition in an extension.

```language-xml
@featureInstalled("PX.Objects.CS.FeaturesSet+CommerceIntegration")
export class Address extends PXView {
    OverrideAddress: PXFieldState<PXFieldOptions.CommitChanges>;
    AddressLine1: PXFieldState<PXFieldOptions.CommitChanges>;
    AddressLine2: PXFieldState<PXFieldOptions.CommitChanges>;
    City: PXFieldState<PXFieldOptions.CommitChanges>;
    State: PXFieldState<PXFieldOptions.CommitChanges>;
    PostalCode: PXFieldState<PXFieldOptions.CommitChanges>;
    CountryID: PXFieldState<PXFieldOptions.CommitChanges>;
    Latitude: PXFieldState;
    Longitude: PXFieldState;
}
```

## Adding Fields { .section}

Suppose that for a particular form you need to add a field to a view class in an extension. You create an extension of the view class and add the needed field.

The following code extends the `Address` view class, whose definition is shown in the previous section, and adds the `AddressLine3` field to it.

```language-javascript
export interface RS203040_AddressWithLine3 extends Address { }
export class RS203040_AddressWithLine3 {
  AddressLine3: PXFieldState<PXFieldOptions.CommitChanges>;
}
```

## Adding Field Options { .section}

Suppose that for a particular form, you need to specify PXFieldOptions.CommitChanges for a field that is already defined in a view class of the form. You create an extension of the view class and add this field with the PXFieldOptions.CommitChanges option.

The following code extends the `Address` view class, whose definition is available in the beginning of this topic, and specifies the PXFieldOptions.CommitChanges option for the `Latitude` field.

```language-javascript
export interface RS203040_AddressWithLatitudeCommitChanges extends Address { }
export class RS203040_AddressWithLatitudeCommitChanges {
  Latitude: PXFieldState<PXFieldOptions.CommitChanges>;
}
```

## Replacing Field Options { .section}

Suppose that for a particular form, you need to remove PXFieldOptions.CommitChanges for a field that is already defined in a view class of the form. You create an extension of the view class and add this field with the fieldOptions decorator assigned.

The following code extends the `Address` view class, whose definition is available in the beginning of this topic, and removes the PXFieldOptions.CommitChanges option for the `AddressLine2` field.

```language-javascript
export interface RS203040_AddressWithoutCommit extends Address { }
export class RS203040_AddressWithoutCommit {
    @fieldOptions({ commitChanges: false })
    AddressLine2: PXFieldState<PXFieldOptions.CommitChanges>;
}
```

## Adding a Decorator for a Field or Class { .section}

Suppose that for a particular form, you need to add a decorator for a field of a view class or for the view class itself. To add a decorator for a view class, you create an extension for the view class and add the needed decorator for it. To add a decorator for a field of the class, you extend the view class and add this field with the needed decorator.

If a decorator is specified for the field or class and the added decorator is the same as the original one, the options specified in the added decorator completely override the options specified in the original decorator.

The following code extends the `Address` view class and specifies the controlConfig decorator for the `State` field.

```language-javascript
export interface RS203040_AddressWithEditableState extends Address { }
export class RS203040_AddressWithEditableState {
  @controlConfig({allowEdit: true, })
  State: PXFieldState<PXFieldOptions.CommitChanges>;
}
```

## Removing a Decorator from a Field or Class { .section}

Suppose that for a particular form, you need to remove the decorator from a field of a view class or from the view class itself. To remove the decorator from a view class, you extend the view class and add the removeDecorator decorator for it. To remove the decorator from a field of the class, you extend the view class and add this field with the removeDecorator decorator.

The following code extends the `Address` view class and removes the featureInstalled decorator from the class.

```language-javascript
export interface RS203040_AddressNoFeature extends Address { }
@removeDecorator("featureInstalled")
export class RS203040_AddressNoFeature {
}
```

## Modifying a Decorator for a Field or Class { .section}

Suppose that for a particular form, you need to modify the options specified in the decorator for a field of a view class or for the view class itself. To modify a decorator for a view class, you extend the view class and add the updateDecorator decorator for it. To modify a decorator for a field of the class, you extend the view class and add this field with the updateDecorator decorator.

The options specified in the updateDecorator decorator are merged with the original options of the decorator. The following rules are used during the merge:

-   If the original decorator specifies an option and this option is overridden in the updateDecorator decorator, the new value is used.
-   If the original decorator specifies an option and this option is not defined in the updateDecorator decorator, the value from the original decorator is used.

The following code extends the `WorkbenchTreeNode` view class and updates the options specified in the treeConfig decorator of the class.

```language-javascript
export interface RS203040_WorkbenchTreeNodeExt extends WorkbenchTreeNode { }
@updateDecorator("treeConfig", "topBarItems", {
  Rename: { 
    config: { 
      commandName: "rename", 
      id: "rename", 
      text: "Rename", 
      images: { normal: "control@EditN" }
    } 
  },
})
export class RS203040_WorkbenchTreeNodeExt {
}
```

**Parent topic:**[Adjusting HTML and TypeScript Code](../DeveloperGuide/UIDev_AdjustmentInExtension_Mapref.md)

