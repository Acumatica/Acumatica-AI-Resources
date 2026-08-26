# Record Title: Configuration {#_7b851eb0-7014-498b-9ffb-b2d18d782eec .concept}

For data entry and maintenance forms, the record title includes the values of key fields by default. If you need to adjust the automatically defined record title, you can use one of the following approaches:

-   Use the [headerDescription](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=42eca698-eaf6-0c59-3fe2-cca1ea8432e3) decorator \(recommended\)
-   Implement the [ICaptionable](https://help.acumatica.com/(W(1))/Help?ScreenId=ShowWiki&pageid=f40963dd-b558-65cd-5135-21f1b2e7ae7a) interface in the graph of the form

## Using the headerDescription Decorator { .section}

To define a record title, in the view class that corresponds to the primary view of the graph, you need to add the [headerDescription](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=42eca698-eaf6-0c59-3fe2-cca1ea8432e3) decorator to every field whose value should be specified in the record title. For details on defining view classes, see [View Classes in TypeScript](UIDev_UIDefinition_GeneralInfo.md#_e6e70710-e57a-4ae9-9a46-81d676ddd869).

The decorator is applicable to any field in the primary view.

For example, the record title for the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form is composed of the following values: **Shipment Nbr.** \(the `ShipmentNbr` field, which is the key field of the form\) and **Customer** \(the `CustomerID` field\). To define the record title, the headerDescription decorator is added to the `CustomerID` field in the definition of the view class, as shown in the following code.

```language-javascript
export class SOShipmentHeader extends PXView {
  ShipmentNbr: PXFieldState;

  @headerDescription
  CustomerID: PXFieldState<PXFieldOptions.CommitChanges>;

  ...
}
```

**Tip:** You do not need to add the headerDescription decorator to the key field \(`ShipmentNbr` in the example above\) because the key fields are added to the record title by default.

Depending on which fields are marked with the headerDescription decorator, the record title is composed according to the following rules:

-   If no field is marked with the `headerDescription` decorator, the record title is received from the server. If the server does not send the record title or sends information that it should be empty, the record title is composed of the set of key fields of the view and the description of the last key field if this description exists.
-   If only the non-key fields are marked with the `headerDescription` decorator, the record title is composed of the key fields of the view and the description of the fields marked with the `headerDescription` decorator.
-   If only the key fields are marked with the `headerDescription` decorator, the record title is composed of these key fields and the description of the last key field, regardless of whether it is marked with the `headerDescription` decorator.
-   If both the key fields and the non-key fields are marked with the `headerDescription` decorator, the record title is composed based on these fields.

You can specify how a field is shown in the record title by specifying the parameter of the `headerDescription` decorator on this field. For details, see [Enumeration HeaderDescription](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=174c3931-2148-bc0c-ee45-705f27e1aec6).

**Parent topic:**[Record Title](../DeveloperGuide/UIDevRef_RecordTitle_Mapref.md)

