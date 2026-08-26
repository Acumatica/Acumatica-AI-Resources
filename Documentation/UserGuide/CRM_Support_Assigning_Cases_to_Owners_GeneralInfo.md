# Case Assignment to Owners and Workgroups: General Information {#_738969b6-1b52-4789-aecc-2abc5113bf1a .concept}

Acumatica ERP provides you with flexible tools for distributing the case workload within the company. You can use assignment maps to indicate to the system how to assign cases to individuals or groups of people \(that is, to owners or workgroups\). In the following sections, you will find information about assigning cases to owners and workgroups one by one or through mass processing.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Assign a case manually to a particular owner
-   Assign a selected group of cases to owners or workgroups by using a case assignment map

## Applicable Scenarios { .section}

You may want to learn how to assign cases to owners and workgroups in scenarios that include the following:

-   You need to manually assign or reassign a case to another owner or workgroup.
-   You need to assign a selected group of cases to owners by using a case assignment map.

## Assignment of Cases to Owners and Workgroups in Acumatica ERP { .section}

In Acumatica ERP, you can easily base the rules for case assignment on company policies. Cases can be assigned to owners or workgroups in many different ways, based on the settings and attributes of the case records being assigned. You can assign cases manually or automatically by using a case assignment map.

You can manually assign an individual case to an owner or workgroup. When you create or edit the case on the [Cases](CR_30_60_00.md) \(CR306000\) form, you can select an owner in the **Owner** box of the Summary area. Also you can assign a case to yourself by clicking **Take Case** on the form toolbar or on the More menu. To assign a case to a workgroup, you select a workgroup in the **Workgroup** box \(on the **Additional Info** tab of the [Cases](CR_30_60_00.md) form\) and then select an owner in the **Owner** box. The list of owners available for selection is narrowed to only owners from the selected workgroup.

You can assign groups of cases that do not have owners specified by using the [Assign Cases](CR_50_32_10.md) \(CR503210\) mass processing form. On this form, you can assign selected cases or all cases that do not have owners, and the system uses the case assignment map specified in the **Case Assignment Map** box \(in the **Assignment Settings** section of the **General** tab\) of the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form to determine the owners of the cases.

If you want the system to distribute cases between owners and workgroups automatically by using an assignment map, you must perform two preliminary tasks:

1.  Create a company tree on the [Company Tree](EP_20_40_61.md) \(EP204061\) form to be able to assign cases to workgroups or to owners in these workgroups \(see the following section\).
2.  Create the needed maps for the automatic assignment of cases by using the [Assignment Maps](EP_20_50_10.md) \(EP205010\) form. You will use an organizational chart from the company tree in the assignment map. For detailed instructions on configuring assignment maps, see [Configuring Assignment Maps](CRM_Assignment_Maps_Mapref.md).

You can manually change the owner of a case that has been manually or automatically assigned in one of the following ways:

-   If a case is not assigned to any workgroup, you can select a new owner in the **Owner** box from the list of all employees.
-   If a case is assigned to a workgroup, you can select a new owner in the **Owner** box from the list of employees included in the workgroup; alternatively, you can change the workgroup and select an owner from the newly selected workgroup.

## The Usage of a Company Tree for Assignment {#section_clk_kjp_stb .section}

In Acumatica ERP, a company tree is an organizational chart that represents a hierarchical structure of a company with groups that contains a list of people and roles of people within each of the groups. The company tree is used to assign leads, cases, opportunities, business accounts, contacts, or email activities to owners when you want the system to distribute these entities between owners \(individuals\) and workgroups \(groups of people\) by using an assignment map on the [Assignment Maps](../Shared/../UserGuide/EP_20_50_10.md) \(EP205010\) form.

On the [Company Tree](../Shared/../UserGuide/EP_20_40_61.md) \(EP204061\) form, you create a hierarchy of workgroups for using them in the assigning process, and you include people or groups of people in the workgroups. You can include the same people in different workgroups. When you create a new entity, such as a new lead, and select a workgroup for it, you can select as an owner only one of the people that you have included in this workgroup in the company tree. We recommend the use of a company tree to speed and streamline your assignments.

## Distribution of Cases by Using Assignment Maps { .section}

You can use the assignment map functionality to distribute cases between owners automatically or manually when you mass-assign cases.

An assignment map is a set of rules, actions related to rules, and conditions that the system can use for assigning a record or a number of records for processing to a particular individual or a group of people. An assignment map may include any number of rules, which are executed sequentially. Each rule in an assignment map includes conditions and actions to be performed if the conditions are met. You create assignment maps on the [Assignment Maps](../Shared/../UserGuide/EP_20_50_10.md) \(EP205010\) form as follows \(for detailed instructions on configuring assignment maps, see [Configuring Assignment Maps](../Shared/../UserGuide/CRM_Assignment_Maps_Mapref.md)\):

1.  On the **Rules** tree, you add new rules.
2.  On the **Conditions** tab, you add rule conditions that assignment criteria should meet.
3.  On the **Rule Actions** tab, you select an owner or a workgroup \(or both\).

## Execution Errors Related to the Mass-Assignment of Cases { .section}

If an assignment map contains errors \(for example, a workgroup contains an employee who has quit the company and cannot be assigned to any records\) and you have processed any cases that should be assigned according to this assignment map by using the [Assign Cases](CR_50_32_10.md) \(CR503210\) form, the system will list these errors in the **Processing** dialog box. You can view the error by clicking the More button on the **Errors** tile. In the **Message** column, the system displays the text of the error message.

## Notifications About Assigning a Case to an Owner { .section}

In Acumatica ERP, an administrator can set up email notifications on the [Business Events](SM_30_20_50.md) \(SM302050\) form so that if a user is assigned to a new case, this user receives a notification by email, by SMS, or in the Acumatica mobile app. For details, see [Business Events: Subscribers](SA_Using_Business_Events_Subscribers_Concept.md).

**Parent topic:**[Assigning Cases to Owners and Workgroups](../UserGuide/CRM_Support_Assigning_Cases_to_Owners_Mapref.md)

