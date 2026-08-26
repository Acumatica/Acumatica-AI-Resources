# Service Order Types: Attributes {#_f71697b9-c638-44cb-af2b-788ea8de313a .concept}

An attribute is a site-defined property \(for instance, industry or problem type\) that gives users the ability to specify information for objects in the system beyond the preconfigured settings on the data entry forms. In the settings of a service order type, you can specify attributes that can help your company classify service orders, appointments, and service schedules.

## Specification of Attributes for the Service Order Type {#section_fvx_hxj_wtb .section}

You specify the applicable set of attributes for a particular service order type on the **Attributes** tab of the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form. On this tab, you can select attributes for the type only if they have already been defined in the system. If you need to define a new attribute, you can use the [Attributes](../UserGuide/CS_20_50_00.md) \(CS205000\) form. Then you will be able to select the new attribute for any service order type.

## Use of Attributes in Service Orders, Appointments, and Service Schedules {#section_rn2_kxj_wtb .section}

The attributes that you specify on the **Attributes** tab of the [Service Order Types](../UserGuide/FS_20_23_00.md) form will be listed for service orders and appointments of this service order type on the **Attributes** tab of the [Service Orders](../UserGuide/FS_30_01_00.md) \(FS300100\) and [Appointments](../UserGuide/FS_30_02_00.md) \(FS300200\) forms, respectively. When a user creates a service order or appointment, the user specifies its values for the applicable attributes.

Similarly, the system copies the active attributes from the **Attributes** tab of the [Service Order Types](../UserGuide/FS_20_23_00.md) form to the service schedules of this service order type on the **Attributes** tab of the [Service Contract Schedules](../UserGuide/FS_30_51_00.md) \(FS305100\) and [Route Service Contract Schedules](../UserGuide/FS_30_56_00.md) \(FS305600\) forms. When a user creates a service schedule, the user specifies the values for the applicable attributes. The listed attributes and their values will be copied to the **Attributes** tab of the [Appointments](../UserGuide/FS_30_02_00.md) form for the appointments generated according to the schedule.

## Control of Attributes of a Service Order Type {#section_yh1_mzj_wtb .section}

When you add or edit the list of attributes on the **Attributes** tab of the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form, you can specify settings that control the use of the attributes on the [Service Orders](../UserGuide/FS_30_01_00.md) \(FS300100\), [Appointments](../UserGuide/FS_30_02_00.md) \(FS300200\), [Service Contract Schedules](../UserGuide/FS_30_51_00.md) \(FS305100\), and [Route Service Contract Schedules](../UserGuide/FS_30_56_00.md) \(FS305600\) forms. You can specify the following for each listed attribute on the **Attributes** tab of the [Service Order Types](../UserGuide/FS_20_23_00.md) form:

-   Whether the attribute is required—that is, whether a user must specify a value for the attribute when creating a service order, appointment, or service schedule of the service order type. If the **Required** check box is selected, a user must specify a values for the attribute.
-   Whether the system inserts a default value for the attribute of the type and which default value is used. You can specify the value in the **Default Value** column or leave the column blank. A user can overwrite the value of a particular service order, appointment, or service schedule of the type.
-   Where the attribute is placed in the list of attributes for the service order, appointment, or service schedule of the service order type. In the **Sort Order** column, you enter the number representing the order of the value in the resulting list of attribute values.

You can also control whether each attribute is active. You can deactivate an obsolete attribute for service orders, appointments, and service schedules of a particular type by clearing the **Active** check boxfor it.. \(By default, the Active check box is selected for an attribute added to the **Attributes** tab.\) A deactivated attribute will no longer be displayed for the service orders, appointments, and service schedules of the type, but all attribute values that have already been specified for existing service orders, appointments, and service schedules will still be stored in the database. If you reactivate the attribute, its values \(where specified\) will become visible in the system again.

However, if it is not necessary to preserve the data related to an obsolete attribute, you can deactivate the attribute and then delete it by clicking the row with the attribute and then clicking the **Delete Row** on the table toolbar of the **Attributes** tab. In this case, the attribute will be permanently deleted for the service order type, and all attribute values of existing service orders, appointments, and service schedules of the type will be deleted from the database.

**Parent topic:**[Service Order Types](../ImplementationGuide/config_Service_Order_Types_Mapref.md)

