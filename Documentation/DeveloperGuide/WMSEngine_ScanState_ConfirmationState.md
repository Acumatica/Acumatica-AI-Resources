# Barcode Scan States: Confirmation State {#_6016b899-705e-4c1d-bf04-42f8f1404f7d .concept}

The confirmation state is a special scan state that validates and confirms all the data accumulated by input states and completes the barcode processing cycle by applying changes based on this data to a certain document. There are two types of confirmation strategies: explicit and implicit. An explicit confirmation strategy shows the prompt to confirm an action. An implicit confirmation strategy automatically executes the confirmation process.

## Required Properties { .section}

For a confirmation state, you must implement the Prompt required property. You use the property to specify the prompt that is shown to a user to confirm an action. In the Prompt property, you can use the Basis.Localize\(\) method if you need to insert message parameters. If you do not need to use parameters in the message, you return the message itself. The system localizes it automatically.

## Implementation of the Confirmation Process { .section}

The PerformConfirmation\(\) method is an entry point for the confirmation process. The FlowStatus object is the result of the `PerformConfirmation()` method. This object indicates how the system should complete the confirmation. The FlowStatus class has multiple factory methods that facilitate proper object creation. For details about these methods, see [ConfirmationState&lt;TScanBasis&gt; Class](https://help.acumatica.com/(W(9))/Help?ScreenId=ShowWiki&pageid=4dabb989-35ed-64a9-2895-5e049625a7f1).

A confirmation process can contain complex logic, which should be split into multiple methods that can be overridden separately. While scan components should not introduce and use virtual methods, this does not mean that all the confirmation logic should be implemented in a single method. To implement this complex logic, you can use the ScanExtension components. The ScanExtension component is a PXGraphExtension that can be created and used in the scope of the barcode scan class and of all types of its components. Any scan component can delegate its responsibility to a particular ScanExtension component. Because the ScanExtension component is a PXGraphExtension, it can be customized as other graph extensions are customized; that is, it can be split into multiple virtual methods that can be overridden.

The component that delegates a part of its logic to a ScanExtension is called a complex component. You can learn how to customize complex scan components in [Extension of Scan Components: General Information](WMSEngine_ExtendedComponent_GeneralInfo.md).

## Change of the Confirmation Strategy { .section}

By default, the system uses the implicit confirmation strategy. However, you can change the preferred strategy by overriding the ExplicitConfirmation property of the barcode scan class. The following code shows an example of the approach that is used in the `INScanCount` class.

```
public class INScanCount : WMSBase
{
    ...
  
    public
        PXSetupOptional<INScanSetup,
        Where<INScanSetup.branchID.IsEqual<AccessInfo.branchID.FromCurrent>>>
        Setup;
 
    public override bool ExplicitConfirmation => 
        Setup.Current.ExplicitLineConfirmation == true;
  
    ...
}
```

**Parent topic:**[Implementing Barcode Scan States](../DeveloperGuide/WMSEngine_ScanState_Mapref.md)

