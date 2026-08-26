# Validation of Customization Projects: Compatibility Validation Errors {#_4eb6d966-ce64-4131-85a2-bfcdb8266b0c .concept}

This topic explains the error messages that may occur during the validation of the customization code’s compatibility with the code of Acumatica ERP.

## Failed to resolve method reference { .section}

This error occurs if a custom DLL has a reference to a method that either no longer exists in Acumatica ERP or has a different signature.

**Example:**The following error message indicates that the `AM.Objects.dll` file contains a reference to the `System.Void PX.Data.PXLineNbrAttribute::.ctor(System.Type)` method, which hasn’t been declared or has another signature in the `PX.Data` assembly.

```
AM.Objects.dll
Failed to resolve method reference:
System.Void PX.Data.PXLineNbrAttribute::.ctor(System.Type)
declared in
PX.Data, Version=1.0.0.0, Culture=neutral, PublicKeyToken=3b136cac2f602b8e
```

Because the customization code was written for a previous version of Acumatica ERP, this error occurs because the method overridden in the customization code has since been removed or its signature has been changed. To confirm that this change is implemented in the new version of Acumatica ERP, check the developer release notes for this version. You can find the release notes, along with the needed Acumatica ERP build, on the [Acumatica Community](https://community.acumatica.com/) website.

**To fix the error:** In the code of the specified extension library, refer to an appropriate method declared in the current assembly.

## Failed to resolve type reference { .section}

This error occurs if a custom DLL refers to a type whose declaration no longer exists in Acumatica ERP.

**Example:**The following error message means that the `FETempFix.dll` file contains a reference to the `PX.Data.PXGraphWithActionsBase`2` type, which is not declared in the `PX.Data` assembly.

```
FETempFix.dll
Failed to resolve type reference:
PX.Data.PXGraphWithActionsBase`2
declared in
PX.Data, Version=1.0.0.0, Culture=neutral, PublicKeyToken=3b136cac2f602b8e
```

**To fix the error:** In the extension library, refer to an appropriate type declared in the current assembly.

## Could not resolve { .section}

This error occurs if the validation process finds a reference to a custom DLL that it can’t locate.

**Example:**The following error message tells you that the `FullRegen.dll` file contains the `ADODB` reference, which cannot be resolved.

```
FullRegen.dll
Could not resolve:
ADODB, Version=7.0.3300.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
```

**To fix the error:** In the extension library, refer to a DLL file located in the `Bin` folder of the website.

## Declaring Type missing { .section}

This error occurs if the customization code in the `App_RuntimeCode` folder contains a reference to a type whose declaration doesn’t exist in Acumatica ERP.

**Example:**The following error message indicates that the `PX.Objects.EP.CRBaseActivityMaint`1<PX.Objects.CR.CRTaskMaint>` class refers to the undeclared `BaseBAccount` type.

```
Declaring Type missing:
BaseBAccount
from
PX.Objects.EP.CRBaseActivityMaint`1<PX.Objects.CR.CRTaskMaint>
```

**To fix the error:** In the corresponding *Code* or *DAC* item of the customization project, refer to an appropriate type.

## Referenced Field missing { .section}

This error occurs if the customization code in the `App_RuntimeCode` folder contains a field that’s undeclared in the data access class \(DAC\).

**Example:**The following error message tells you that the `PX.Objects.CS.CSAnswers` DAC doesn’t contain the `_EntityID` field.

```
Referenced Field missing:
_EntityID
from
PX.Objects.CS.CSAnswers
```

**To fix the error:** In the corresponding *Code* or *DAC* item of the customization project, refer to an existing field.

**Parent topic:**[Validating Customization Projects](../DeveloperGuide/CodeCustomization_Validation_Mapref.md)

