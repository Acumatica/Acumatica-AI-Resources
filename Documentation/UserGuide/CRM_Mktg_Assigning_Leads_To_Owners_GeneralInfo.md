# Lead Assignment to Owners and Workgroups: General Information {#_d0362710-497d-43b1-889e-ced853fac328 .concept}

Acumatica ERP provides you with flexible tools for distributing the customer management workload among responsible individuals in the company. You can use assignment maps to indicate to the system how to assign leads to individuals or groups of people \(that is, to owners or workgroups\). This topic provides information about assigning leads to owners and workgroups one by one or through mass processing.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Assign a lead manually to a particular owner
-   In the settings of a lead class, specify how the system determines the default owner it assigns to new leads of the class
-   Assign a selected group of leads to workgroups by using a lead assignment map

## Applicable Scenarios { .section}

You may want to learn how to assign leads to owners and workgroups in scenarios that include the following:

-   You have acquired a new lead and need to assign this lead to a particular individual or a group of people for nurturing.
-   You have been requested to work with a lead and need to specify yourself as an owner.
-   You have imported to the system a new batch of leads, such as a purchased list, and need to distribute these leads among the employees of the applicable department or group, such as a marketing department.

## Assignment of Leads to Owners and Workgroups in Acumatica ERP { .section}

In Acumatica ERP, you can easily base the rules for lead assignment on company policies because leads can be distributed among owners or workgroups in many different ways, based on the settings and attributes of the lead records being distributed. You can distribute leads manually or automatically.

You can manually assign an individual lead to an owner or workgroup. When you create or edit a lead on the [Leads](CR_30_10_00.md) \(CR301000\) form, you can select an owner in the **Owner** box of the Summary area. To assign a lead to a workgroup, you select a workgroup in the **Workgroup** box \(on the **Additional Info** tab\) and then select an owner in the **Owner** box. The list of owners available for selection is narrowed to only owners from the selected workgroup.

You can assign groups of leads that do not have owners specified by using the [Assign Leads](CR_50_30_10.md) \(CR503010\) mass processing form. On this form, you can assign selected leads or all leads that do not have owners, and the system uses the assignment map specified on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form to determine the owners of the leads.

You can cause leads to be automatically assigned to owners by specifying a setting for any lead class that determines how the default owner is assigned to new leads of the class. You specify this option in the **Default Owner** box on the **Details** tab of the [Lead Classes](CR_20_70_00.md) \(CR207000\) form for the lead class, as described further in [Distribution of Leads by Using Lead Classes](#_36460c05-81be-41be-bb60-11167a2c49a5).

If you want the system to distribute leads between owners and workgroups automatically by using an assignment map, you must perform the following preliminary tasks:

1.  Create a company tree on the [Company Tree](EP_20_40_61.md) \(EP204061\) form to be able to assign leads to workgroups or to owners.
2.  Create the needed maps for the automatic assignment of leads by using the [Assignment Maps](EP_20_50_10.md) \(EP205010\) form. You will use an organizational chart from the company tree in the assignment map. For detailed instructions on configuring assignment maps, see [Configuring Assignment Maps](CRM_Assignment_Maps_Mapref.md).

On the [Leads](CR_30_10_00.md) form, you can manually change the owner of a lead that has been manually or automatically assigned in one of the following ways:

-   If the lead is not assigned to any workgroup, you can select a new owner in the **Owner** box from the list of all employees.
-   If the lead is assigned to a workgroup, you can select a new owner in the **Owner** box from the list of employees included in the workgroup; alternatively, you can change the workgroup and select an owner from the newly selected workgroup.

## Distribution of Leads by Using Lead Classes { .section}

As noted previously, when you create or modify a lead class on the [Lead Classes](CR_20_70_00.md) \(CR207000\) form, you can specify how the system automatically assigns the owner to newly created leads of the class. You do this by selecting the appropriate option in the **Default Owner** box on the **Details** tab \(**Data Entry Settings** section\). Based on the option selected for the lead class, when a lead class is selected for a lead in the Summary area of the [Leads](CR_30_10_00.md) \(CR301000\) form, the system determines the default owner of this lead and inserts the appropriate employee name in the **Owner** box.

In the **Default Owner** box of the [Lead Classes](CR_20_70_00.md) form, you select one of the following options for leads of the class:

-   *Do Not Change*: If the owner has been specified in the **Owner** box of the [Leads](CR_30_10_00.md) form for the lead, and you change the lead class in the **Lead Class** box, the system does not clear or change the owner for this lead. If no owner has been specified for the lead, the system leaves the **Owner** box empty.
-   *Creator*: When a lead of the class is created, the user who created the lead record is assigned as its owner by default.
-   *Assignment Map*: When a lead of the class is created, based on the assignment map \(which you must also select in the **Assignment Map** box of the [Lead Classes](CR_20_70_00.md) form for the class\), the system determines the default owner or workgroup \(or both\) and inserts them on the [Leads](CR_30_10_00.md) form. The system inserts the workgroup of the lead on the **Additional Info** tab, if the workgroup has been defined in the assignment map for this lead class. If you are distributing leads based on assignment maps, you can use a different assignment map for each lead class, if needed.
-   *From Source Entity*: When a lead of the class is created from another entity, such as a contact or business account, the lead inherits the owner and workgroup \(if specified\) from this contact \(on the [Contacts](CR_30_20_00.md) \(CR302000\) form\) or business account \(on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form\).

We recommend distributing leads by using lead classes because the system can assign a lead to an owner or a workgroup, if applicable, each time a new lead record is created.

## The Usage of a Company Tree for Assignment {#section_clk_kjp_stb .section}

In Acumatica ERP, a company tree is an organizational chart that represents a hierarchical structure of a company with groups that contains a list of people and roles of people within each of the groups. The company tree is used to assign leads, cases, opportunities, business accounts, contacts, or email activities to owners when you want the system to distribute these entities between owners \(individuals\) and workgroups \(groups of people\) by using an assignment map on the [Assignment Maps](../Shared/../UserGuide/EP_20_50_10.md) \(EP205010\) form.

On the [Company Tree](../Shared/../UserGuide/EP_20_40_61.md) \(EP204061\) form, you create a hierarchy of workgroups for using them in the assigning process, and you include people or groups of people in the workgroups. You can include the same people in different workgroups. When you create a new entity, such as a new lead, and select a workgroup for it, you can select as an owner only one of the people that you have included in this workgroup in the company tree. We recommend the use of a company tree to speed and streamline your assignments.

## Distribution of Leads by Using Assignment Maps { .section}

You can use the assignment map functionality to distribute leads between owners automatically through the use of lead classes or manually when you mass-assign leads.

An assignment map is a set of rules, actions related to rules, and conditions that the system can use for assigning a record or a number of records for processing to a particular individual or a group of people. An assignment map may include any number of rules, which are executed sequentially. Each rule in an assignment map includes conditions and actions to be performed if the conditions are met. You create assignment maps on the [Assignment Maps](../Shared/../UserGuide/EP_20_50_10.md) \(EP205010\) form as follows \(for detailed instructions on configuring assignment maps, see [Configuring Assignment Maps](../Shared/../UserGuide/CRM_Assignment_Maps_Mapref.md)\):

1.  On the **Rules** tree, you add new rules.
2.  On the **Conditions** tab, you add rule conditions that assignment criteria should meet.
3.  On the **Rule Actions** tab, you select an owner or a workgroup \(or both\).

Once a lead assignment map has been created, you can do either of the following:

-   Specify the assignment map on the [Lead Classes](CR_20_70_00.md) \(CR207000\) form for the lead class if you have selected *Assignment Map* in the **Default Owner** box on the **Details** tab: Each new lead of the class will be assigned to a default owner according to this map. A user can change the owner as needed on the [Leads](CR_30_10_00.md) \(CR301000\) form.
-   Specify the assignment map on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form, in the **Lead Assignment Map** box of the **General** tab: Existing leads that do not have owners will be assigned to owners according to this map if you assign the leads by using the [Assign Leads](CR_50_30_10.md) \(CR503010\) mass processing form.

    **Attention:** The assignment map specified for the applicable lead class on the [Lead Classes](CR_20_70_00.md) \(CR207000\) form overrides the assignment map specified on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form if you create a new lead or change the lead class of the lead. Leads of the class will be assigned to owners according to the assignment map from the lead class.


## Execution Issues Related to a Lead Assignment Map { .section}

If an assignment map contains errors \(for example, a workgroup contains an employee who has quit the company and cannot be assigned to any records\), and you have processed any leads that should be assigned according to this assignment map by using the [Assign Leads](CR_50_30_10.md) \(CR503010\) form, the system will list these errors in the **Processing** dialog box. You can view the error by clicking the More button on the **Errors** tile in this dialog box. In the **Message** column, the system displays the text of the error message.

## Notifications About Assigning a Lead to an Owner { .section}

In Acumatica ERP, an administrator can set up email notifications on the [Business Events](SM_30_20_50.md) \(SM302050\) form so that if you are assigned to a new lead, you receive a notification by email, by SMS, or in Acumatica mobile app. For details, see [Business Events](../CustomizationPlatform/CG_GL_Items_BusinessEvents.md).

**Parent topic:**[Assigning Leads to Owners and Workgroups](../UserGuide/CRM_Mktg_Assigning_Leads_To_Owners_Mapref.md)

