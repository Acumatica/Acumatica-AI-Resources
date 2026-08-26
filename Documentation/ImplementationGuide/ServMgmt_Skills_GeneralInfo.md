# Skills: General Information {#_ddaf7656-fa88-45f8-b243-c90a6c64f1f9 .concept}

Acumatica ERP provides capabilities to help you ensure that each service is performed by the right staff member. If a service requires specific skills or expertise, the system automatically suggests staff members who possess the necessary skills.

A skill record can be assigned to an employee and used as a requirement for performing a service. Unlike licenses, skills do not have issue or expiration dates and are not issued by external agencies.

In this topic, you will learn how to create skills in the system and assign them to both staff members and services.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a skill
-   Assign a skill to a staff member
-   Assign a skill to a service

## Applicable Scenarios { .section}

You create skill records in the system when certain services require specific expertise, and you need to filter or assign staff members to appointments based on their skills.

## Assignment of Skills to a Staff Member { .section}

Before creating a list of skills to be used in your company’s services, gather information about the skills required for all services your company provides. Then, create the list of required skills on the [Skills](../UserGuide/FS_20_06_00.md) \(FS200600\) form.

Once the list of skills is defined, assign the necessary skills to the appropriate staff members and specific services. You can assign skills to a staff member on the **Skills** tab of the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form.

## Assignment of Skills to a Service { .section}

On the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, for a selected service, you specify one or more skills required to perform this service. To do this, you select the service \(a non-stock item of the *Service* type\), and on the **Service Skills** tab, add a row for each required skill.

Once you assign skills to a service, Acumatica ERP checks whether the staff member assigned to perform the service possesses the required skills.

To set up the system validation that checks whether a service’s required skills match the assigned employee’s skills, open the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form. In the **Skills** box on the **General** tab \(**Appointment Validation Settings** section\), select one of the following options:

-   *Do Not Validate* \(default\): The system does not perform validation \(that is, it does not check whether the service's skills match the assigned employee's skills\).
-   *Warn*: If the staff member does not have the skills specified for the service, the system displays a warning message about the staff member not having the necessary skill or skills.
-   *Prevent*: If the staff member does not have the skills specified for the service, the system prevents the assignment of this staff member.

**Parent topic:**[Skills](../ImplementationGuide/ServMgmt_Skills_Mapref.md)

