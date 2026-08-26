# Resource Equipment {#_0b977422-264b-440c-b381-7ecaae3e0212 .concept}

In Acumatica ERP, you can enter and keep information about *resource equipment*. Resource equipment is a physical resource of your company that staff members use to perform services. You specify the appropriate equipment type for each resource equipment to ensure that the right equipment will later be selected to perform these services.

In this topic, you will read about how resource equipment is added to the system, and how this equipment is assigned to appointments.

## Adding Resource Equipment { .section}

You add each specific entity of resource equipment \(for example, a specific screwdriver or drill\) that will be used to perform services on the [Equipment](../Shared/../UserGuide/FS_20_50_00.md) \(FS205000\) form. In the Summary area of the form, you define this item as a resource equipment by selecting the **Resource Equipment** check box, select the equipment type, and specify that your company owns the equipment by selecting the **Company** option button \(under **Owner**\).

To maintain the relevant details of each equipment entity you add to the system, you can record additional information, such as general, manufacturing, and purchase information. For details on manufacturing information, see [Manufacturers: General Information](../Shared/../UserGuide/EquipMgmt_Manufacturers_GeneralInfo.md).

Also Acumatica ERP includes the [Equipment](../Shared/../UserGuide/EP_20_80_00.md) \(EP208000\) form, which is generally used to specify equipment. For any equipment that has been added to your system by using this form, you can make it available for use with the field services functionality by clicking **Extend to SM Equipment** on the form toolbar and then specifying the necessary information on the [Equipment](../Shared/../UserGuide/FS_20_50_00.md) \(FS205000\) form in the Equipment Management functional area, which the system brings up.

You can view information about equipment in the system on multiple forms. For details, see [Target Equipment: Related Report and Inquiry Forms](../Shared/../UserGuide/EquipMgmt_Target_Equipment_Reports_Inquiries.md).

## Managing Equipment Attributes { .section}

To let users record additional details for a piece of equipment and help your company track that information, you can define attributes for the related equipment type on the [Equipment Types](../Shared/../UserGuide/FS_20_08_00.md) \(FS200800\) form.

When you create a piece of equipment on the [Equipment](../Shared/../UserGuide/FS_20_50_00.md) \(FS205000\) form and select its equipment type, the system populates the **Attributes** tab with the attributes \(and any default values\) defined for that equipment type. You can then enter or update attribute values in the **Value** column. If the **Required** check box is selected for an attribute, you must specify a value before saving the new equipment record.

The **Attributes** tab of the [Equipment](../Shared/../UserGuide/FS_20_50_00.md) form also includes the **Image** area, which you can use to attach an image of the equipment.

## Assigning Resource Equipment to Appointments { .section}

You can assign the necessary resource equipment to the appointments of a service order on the [Service Orders](../Shared/../UserGuide/FS_30_01_00.md) \(FS300100\) form or to a particular appointment on the [Appointments](../Shared/../UserGuide/FS_30_02_00.md) \(FS300200\) form. You use the **Resource Equipment** tab of either form to assign the resource equipment. On this tab, for each equipment entity you want to add, you add a row and select the necessary equipment entity from the list in the **Equipment ID**column.

**Parent topic:**[Managing Equipment](../UserGuide/FS__MNG_Equipment_chapter.md)

