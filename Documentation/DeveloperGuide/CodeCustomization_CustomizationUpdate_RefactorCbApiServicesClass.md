# Customization Update to 2026 R2: Refactored CBAPIService Extension Methods

In Acumatica ERP 2026 R2, the extension methods previously defined in the `PX.Commerce.Core.CBAPIService` class have been moved to type-specific extension classes in the `PX.Commerce.Core.Utilities.Extensions` namespace. The original methods are now obsolete and are scheduled for removal in Acumatica ERP 2027 R2.

These changes do not affect functionality. They organize the methods according to the types they extend, reduce coupling, and give each extension class a clearer responsibility.

## Upgrade Notes

To determine whether your customization or integration is affected, review its code for the obsolete extension methods listed in this section—those with a replacement method and those without one.

**Methods with a Replacement**

The following table lists the obsolete methods and their direct replacements. The replacement extension classes are in the `PX.Commerce.Core.Utilities.Extensions` namespace.

For these methods, update the code before upgrading to Acumatica ERP 2027 R2.

<table id="_c0e9e141-c17c-4d27-8184-1cb79224cb2e"><thead><tr><th align="left" id="d1341342e79">

Obsolete Method

</th><th align="left" id="d1341342e82">

Replacement Method

</th></tr></thead><tbody><tr><td>

`TryCombineEntity(CBAPIEntity, CBAPIEntity, out CBAPIEntity)`

</td><td>

`CBAPIEntityExtensions.TryCombineEntity`

</td></tr><tr><td>

`PopulateResultEntity<ResultEntity>`

 `(GenericResult, …)`

</td><td>

`GenericResultExtensions`

 `.PopulateResultEntity`

</td></tr><tr><td>

`AddField(ActionImpl, EntityField)`

</td><td>

`ActionImplExtensions.AddField`

</td></tr><tr><td>

`AddSearchField(EntityImpl, string, string, GeneralCondition)`

</td><td>

`EntityImplExtensions.AddSearchField`

</td></tr><tr><td>

`AddSearchField(EntityImpl, string, string, string, GeneralCondition)`

</td><td>

`EntityImplExtensions.AddSearchField`

</td></tr><tr><td>

`AddReturnField(EntityImpl, string)`

</td><td>

`EntityImplExtensions.AddReturnField`

</td></tr><tr><td>

`TryGetValueField(object, Type, out string)`

</td><td>

`ObjectExtensions.TryGetValueField`

</td></tr><tr><td>

`GetValueFromEntityField(object, Type)`

</td><td>

`ObjectExtensions`

 `.GetValueFromEntityField`

</td></tr><tr><td>

`CreateCustomFieldCopy(CustomField)`

</td><td>

`CustomFieldExtension`

 `.CreateCustomFieldCopy`

</td></tr><tr><td>

`ValueField(string, bool)`

</td><td>

`StringExtensions.ValueField`

</td></tr><tr><td>

`ValueField(int)`

</td><td>

`IntExtensions.ValueField`

</td></tr><tr><td>

`ValueField(int?, bool)`

</td><td>

`IntExtensions.ValueField`

</td></tr><tr><td>

`ValueField(decimal)`

</td><td>

`DecimalExtensions.ValueField`

</td></tr><tr><td>

`ValueField(decimal?, bool)`

</td><td>

`DecimalExtensions.ValueField`

</td></tr><tr><td>

`ValueField(short)`

</td><td>

`ShortExtensions.ValueField`

</td></tr><tr><td>

`ValueField(short?, bool)`

</td><td>

`ShortExtensions.ValueField`

</td></tr><tr><td>

`ValueField(bool)`

</td><td>

`BooleanExtensions.ValueField`

</td></tr><tr><td>

`ValueField(bool?, bool)`

</td><td>

`BooleanExtensions.ValueField`

</td></tr><tr><td>

`ValueField(byte?, bool)`

</td><td>

`ByteExtensions.ValueField`

</td></tr><tr><td>

`ValueField(double?, bool)`

</td><td>

`DoubleExtensions.ValueField`

</td></tr><tr><td>

`ValueField(DateTime)`

</td><td>

`DateTimeExtensions.ValueField`

</td></tr><tr><td>

`ValueField(DateTime?, bool)`

</td><td>

`DateTimeExtensions.ValueField`

</td></tr><tr><td>

`ValueField(long?, bool)`

</td><td>

`LongExtensions.ValueField`

</td></tr><tr><td>

`ValueField(Guid)`

</td><td>

`GuidExtensions.ValueField`

</td></tr><tr><td>

`ValueField(Guid?, bool)`

</td><td>

`GuidExtensions.ValueField`

</td></tr><tr><td>

`SearchField(string, StringCondition)`

</td><td>

`StringExtensions.SearchField`

</td></tr><tr><td>

`SearchField(int, IntCondition)`

</td><td>

`IntExtensions.SearchField`

</td></tr><tr><td>

`SearchField(int?, IntCondition)`

</td><td>

`IntExtensions.SearchField`

</td></tr><tr><td>

`SearchField(Guid?, GuidCondition)`

</td><td>

`GuidExtensions.SearchField`

</td></tr><tr><td>

`ToDate(string, PXTimeZoneInfo)`

</td><td>

`StringExtensions.ToDate`

</td></tr><tr><td>

`ToDate(object, bool, PXTimeZoneInfo)`

</td><td>

`ObjectExtensions.ToDate`

</td></tr><tr><td>

`TDToString(DateTime?, PXTimeZoneInfo, string)`

</td><td>

`DateTimeExtensions.TDToString`

</td></tr><tr><td>

`ToDecimal(string, NumberStyles)`

</td><td>

`StringExtensions.ToDecimal`

</td></tr><tr><td>

`ToInt(string)`

</td><td>

`StringExtensions.ToInt`

</td></tr><tr><td>

`ToInt(object)`

</td><td>

`ObjectExtensions.ToInt`

</td></tr><tr><td>

`ToLong(string)`

</td><td>

`StringExtensions.ToLong`

</td></tr><tr><td>

`ToGuid(object)`

</td><td>

`ObjectExtensions.ToGuid`

</td></tr><tr><td>

`KeyCombine(object[])`

</td><td>

`ObjectExtensions.KeyCombine`

</td></tr><tr><td>

`KeySplit(string, int, string)`

</td><td>

`StringExtensions.KeySplit`

</td></tr><tr><td>

`IsComplexKey(string, int)`

</td><td>

`StringExtensions.IsComplexKey`

</td></tr><tr><td>

`FieldsSplit(string, int, string, params string[])`

</td><td>

`StringExtensions.FieldsSplit`

</td></tr><tr><td>

`FirstNotEmpty(string[])`

</td><td>

`StringExtensions.FirstNotEmpty`

</td></tr><tr><td>

`HasParent(string)`

</td><td>

`StringExtensions.HasParent`

</td></tr></tbody>
</table>

**Obsolete Methods with No Replacement**

The following obsolete methods have no replacement method provided:

-   `AddField(EntityImpl, EntityField)`
-   `AddValueField(EntityImpl, string, object)`
-   `AddObjectField(EntityImpl, string, string, EntityImpl)`
-   `AddListField(EntityImpl, string, EntityImpl)`
-   `GetValueField(EntityImpl, string)`
-   `GetObjectField(EntityImpl, string)`
-   `GetListField(EntityImpl, string)`
-   `ValueField(byte)`
-   `ValueField(double)`
-   `ValueField(long)`
-   `SearchField(decimal, DecimalCondition)`
-   `SearchField(decimal?, DecimalCondition)`
-   `SearchField(short, ShortCondition)`
-   `SearchField(short?, ShortCondition)`
-   `SearchField(bool, BooleanCondition)`
-   `SearchField(bool?, BooleanCondition)`
-   `SearchField(byte, ByteCondition)`
-   `SearchField(byte?, ByteCondition)`
-   `SearchField(double, DoubleCondition)`
-   `SearchField(double?, DoubleCondition)`
-   `SearchField(DateTime, DateTimeCondition)`
-   `SearchField(DateTime?, DateTimeCondition)`
-   `SearchField(long, LongCondition)`
-   `SearchField(long?, LongCondition)`
-   `SearchField(Guid, GuidCondition)`
-   `ToLong(object)`
-   `ToBolean(string)`
-   `TrimExternID(string)`
-   `FieldCombine(string[])`

Acumatica ERP does not use these methods, and marking them as obsolete does not introduce a breaking change in Acumatica ERP 2026 R2. The methods are scheduled for removal in Acumatica ERP 2027 R2. If your customization uses one of them, you may need to implement and maintain equivalent logic in your own code.

**Parent topic:**[Updating Customization Projects to Acumatica ERP 2026 R2](../DeveloperGuide/CodeCustomization_CustomizationUpdate_Mapref.md)

