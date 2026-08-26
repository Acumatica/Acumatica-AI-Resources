# Staff Members: Management of Staff Members' Information {#_a12abc30-de4b-4644-a5c3-15ff44f9f6e6 .concept}

Acumatica ERP provides you with the ability to enter, store, and manage information about staff members. This information, which is described further in this topic, includes each staff member's skills, licenses and certifications, location, and work schedule. You can use these details to assign the most suitable staff member to perform a particular service.

## Types of Staff Members { .section}

On the [Staff](../UserGuide/FS_20_55_00.md) \(FS205500\) form, you can view a list of staff members along with their contact information and type—*Employee* or *Vendor*.

-   To add a new staff member of the *Employee* type, you click **Add Employee** on the [Staff](../UserGuide/FS_20_55_00.md) form. The system opens the [Employees](../UserGuide/EP_20_30_00.md) form in a new window, where you can enter the employee's details. To define the employee as a staff member, you select the **Staff Member in Service Management** check box on the **General** tab \(**Employee Settings** section\) of the form.

    If the employee has already been entered in the system, open the employee record on the [Employees](../UserGuide/EP_20_30_00.md) form, define the employee as a staff member, and save your changes.

    You can enter the employee data manually on the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form. If you have a larger number of employees, you may want to create an import scenario and upload the data from a file. For details on import scenarios, see [Simple Scenarios for Data Import](../UserGuide/IS__con_Simplified_Import_Scenarios.md).

-   To add a new staff member of the *Vendor* type, you click **Add Vendor** on the [Staff](../UserGuide/FS_20_55_00.md) form. The system opens the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form in a new window, where you can enter the vendor's settings. To define the vendor as a staff member, you select the **Staff Member in Service Management** check box on the **General** tab \(**Vendor Properties** section\) of the form.

    If the vendor has already been entered in the system, you open the vendor record on the [Vendors](../UserGuide/AP_30_30_00.md) form, define the vendor as a staff member, and save your changes.


## Work Schedules of Staff Members { .section}

In Acumatica ERP, you can define the times when each staff member is available to provide services. You first define a staff schedule rule on the [Staff Schedule Rules](../UserGuide/FS_20_20_01.md) \(FS202001\) form, and then generate a schedule for a specific period of time on the [Generate Staff Schedules](../UserGuide/FS_50_04_00.md) \(FS500400\) form.

After you generate staff schedules, you can use the calendar boards to assign staff members to appointments or service orders that take place in time periods when the staff member is available for work. For details, see [Staff Schedules](ServMgmt_Staff_Schedules_Mapref.md).

**Important:** Work schedules can be generated for staff members of the *Employee* type only.

## Staff Members' Skills { .section}

If the services your company offers require specific skills, you should define the relevant skills for each service and assign them to qualified staff members. Once completed, the system will suggest a list of staff members with the appropriate skills to perform the service.

You enter the skills on the [Skills](../UserGuide/FS_20_06_00.md) \(FS200600\) form. Then, you associate each skill with the relevant services. Finally, you assign these skills to staff members on the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form. For details, see [Skills: General Information](ServMgmt_Skills_GeneralInfo.md).

**Important:** Skills can be assigned to staff members of the *Employee* type only.

## Staff Members' Licenses {#section_qgy_yp1_2dc .section}

If the services your company offers must be performed by qualified staff members, only those with the relevant licenses can be assigned to perform the service.

You create all necessary license types on the [License Types](../UserGuide/FS_20_09_00.md) \(FS200900\) form. Then, you associate the license types with each relevant service. Next, you create licenses of the specified types in the system and assign them to staff members who hold the corresponding licenses.

Licenses can be assigned directly to a staff member when creating a new license on the [Licenses](../UserGuide/FS_20_10_00.md) form, or they can be assigned on the [Employees](../UserGuide/EP_20_30_00.md) form. For details, see [Licenses: General Information](ServMgmt_Licenses_GeneralInfo.md).

**Important:** Licenses can be assigned to staff members of the *Employee* type only.

## Service Areas of Staff Members { .section}

You can divide the region where your company offers services into multiple service areas, defined by postal codes. In this case, if a staff member can provide services only in specific service areas, you assign these service areas to this staff member on the [Service Areas](../UserGuide/FS_20_19_00.md) \(FS201900\) or [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form. For details, see [Service Areas](ServMgmt_ServiceArea_Mapref.md).

**Important:** Service areas can be assigned to the staff members of the *Employee* type only.

**Parent topic:**[Staff Members](../ImplementationGuide/ServMgmt_Staff_Member_Mapref.md)

