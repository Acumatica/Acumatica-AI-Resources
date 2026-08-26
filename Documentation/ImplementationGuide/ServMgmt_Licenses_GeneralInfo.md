# Licenses: General Information {#_428f0edc-3f7c-4508-b446-907cba23e261 .concept}

A license is an official permission or certification that authorizes a person to perform a specific type of work or confirms their expertise in a particular area. To track licenses in the system, you first create license types— categories used to group related licenses and associate them with services. You then enter individual licenses, assign them to the appropriate license types, and specify the staff members or company branches to which each license applies. This setup helps you quickly identify qualified staff members for services that require specific licenses.

In this topic, you will learn how license types and licenses are created in the system and assigned to staff members.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a license type
-   Assign a license type to a service
-   Add a license
-   Assign a license to an employee

## Applicable Scenarios { .section}

You create licenses in Acumatica ERP when your company provides services that require official authorization or certification. By tracking licenses in the system, you can ensure that only staff members with the necessary licenses are assigned to perform those services.

## License Application { .section}

Before creating license types, gather information about which types are required for the services your company provides. After defining the license types, specify a license type for each license you enter in the system. Each license is assigned to a single staff member, though one staff member can hold multiple licenses. You can then associate the required license types with services.

Once this setup is complete, when you select a staff member to perform a particular service in a service order or appointment by using the **Add Staff** dialog box on the [Service Orders](../UserGuide/FS_30_01_00.md) \(FS300100\) or [Appointments](../UserGuide/FS_30_02_00.md) \(FS300200\) form\), the system automatically suggests staff members who hold the licenses required for that service. When you schedule appointments on calendar boards, you can also filter the staff members by the license types of the licenses needed for selected services.

When you save a new license, the system assigns it a reference number based on the numbering sequence defined for licenses in the **License Numbering Sequence** box on the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form.

## License Validation { .section}

By assigning license types to services, you optimize the staff selection process. For an appointment, the system suggests only those staff members who own the required license. You can set up validation so that the system will determine whether the license type specified for a service matches the assigned employee's licenses.

For this validation, in the **Licenses** box of the **General** tab \(**Appointment Validation Settings** section\) of the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, you can select one of the following options:

-   *Do Not Validate* \(default\): The system does not perform license validation.
-   *Warn*: If the validation is not passed, the system displays a warning message notifying you that the staff member does not have the required active licenses.
-   *Prevent*: If the validation is not passed, the system prevents the assignment of the staff member who does not have the required active license or licenses.

**Parent topic:**[Licenses](../ImplementationGuide/ServMgmt_License_Mapref.md)

