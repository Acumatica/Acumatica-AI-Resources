# Opportunity Assignment to Owners and Workgroups: General Information {#_841e307c-a26a-4602-90a6-3ba153979b8f .concept}

Acumatica ERP provides you with flexible tools for distributing the customer management workload within the company. You can use assignment maps to indicate to the system how to assign opportunities to individuals or groups of people \(that is, to owners or workgroups\). This topic provides information about assigning opportunities to owners and workgroups one by one or through mass processing.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   For an opportunity class, become familiar how the system determines the default owner it assigns to new opportunities of the class
-   Learn how to assign an opportunity manually to a particular owner
-   Learn how to assign a selected group of opportunities to owners or workgroups by using an opportunity assignment map

## Applicable Scenarios { .section}

You may want to learn how to assign opportunities to owners and workgroups in scenarios that include the following:

-   You need to have the system automatically assign opportunities to salespeople when leads are converted to opportunities.
-   You need to manually assign or reassign an opportunity to another owner or workgroup.
-   You do not work with leads in your system and need to assign opportunities to the appropriate owners, workgroups, or both without lead conversion.

## Assignment of Opportunities to Owners and Workgroups in Acumatica ERP { .section}

In Acumatica ERP, you can easily base the rules for opportunity assignment on company policies because opportunities can be assigned to owners or workgroups in many different ways, based on the settings and attributes of the opportunity records being assigned. You can assign opportunities manually or automatically, through conversion of a lead to an opportunity.

You can automatically assign an opportunity to an owner by converting a lead to an opportunity if a default owner has been selected in the associated opportunity class.

You can manually assign an individual opportunity to an owner or workgroup. When you create or edit an opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form, you can select an owner in the **Owner** box of the Summary area. To assign an opportunity to a workgroup, you select a workgroup in the **Workgroup** box \(on the **Additional Info** tab of the [Opportunities](CR_30_40_00.md) form\) and then select the owner in the **Owner** box. The list of owners available for selection is narrowed to only members from the selected workgroup.

You can assign groups of opportunities that do not have owners specified by using the [Assign Opportunities](CR_50_31_10.md) \(CR503110\) mass-processing form. On this form, you can assign selected opportunities or all opportunities that do not have owners, and the system uses the opportunity assignment map specified on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form to determine the owners of the opportunities.

You can cause the system to automatically assign opportunities to owners by specifying a setting for each opportunity class that determines how the default owner is assigned to new opportunities of the class. On the **Details** tab of the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form for the opportunity class, you select one of the predefined options in the **Default Owner** box, and the system specifies the default owner of a new opportunity of the class in the **Owner** box of the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

If you want the system to distribute opportunities between owners and workgroups automatically by using an assignment map, you must perform two preliminary tasks.

1.  Create a company tree on the [Company Tree](EP_20_40_61.md) \(EP204061\) form to be able to assign opportunity to workgroups or to owners in these workgroups.
2.  Create the needed maps for the automatic assignment of opportunities by using the [Assignment Maps](EP_20_50_10.md) \(EP205010\) form. You will use an organizational chart from the company tree in the assignment map. For detailed instructions on configuring assignment maps, see [Configuring Assignment Maps](CRM_Assignment_Maps_Mapref.md)

You can manually change the owner of an opportunity that has been manually or automatically assigned.

## Assignment of Opportunities by Using Opportunity Classes { .section}

As noted previously, when you create or modify an opportunity class on the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form, you can specify how the system automatically assigns the owner to newly created opportunities of the class by selecting the appropriate option in the **Default Owner** box. Based on the selected option for the opportunity class, when this opportunity class has been selected for an opportunity in the **Opportunity Class** box of the [Opportunities](CR_30_40_00.md) \(CR304000\) form, the system determines the default owner of this opportunity and inserts the appropriate employee name in the **Owner** box in the Summary area of the form.

In the **Default Owner** box of the [Opportunity Classes](CR_20_90_00.md) form, you select one of the following options for the opportunity class:

-   *Do Not Change*: If the owner has been specified in the **Owner** box of the [Opportunities](CR_30_40_00.md) form for the opportunity, and you change the opportunity class in the **Opportunity Class** box of the Summary area, the system does not clear or change the owner for this opportunity. If no owner has been specified for the opportunity, the system leaves the **Owner** box blank.
-   *Creator*: When an opportunity of the class is created, the user who created the opportunity record is assigned as its owner by default.
-   *Assignment Map*: When an opportunity of the class is created, based on the assignment map \(which you must also select in the **Assignment Map** box for the class\), the system determines the default owner or workgroup \(or both\) and inserts them on the [Opportunities](CR_30_40_00.md) form for the new opportunity. The system inserts the workgroup of the opportunity, if applicable, on the **Additional Info** tab. If you are assigning opportunities based on assignment maps, you can use a different assignment map for each opportunity class, if needed.
-   *From Source Entity*: When an opportunity of the class is created, if it is created from another entity—such as a lead, contact, or business account—the opportunity inherits the owner and workgroup \(if specified\) from this lead, contact or business account. This default owner is assigned if you create an opportunity from a contact on the [Contacts](CR_30_20_00.md) \(CR302000\) form or from a business account on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form.

We recommend assigning opportunities by converting leads to opportunities or, if you manually create opportunities, by using opportunity classes because the system assigns an opportunity to an owner each time a new opportunity record is created.

## The Usage of a Company Tree for Assignment {#section_clk_kjp_stb .section}

In Acumatica ERP, a company tree is an organizational chart that represents a hierarchical structure of a company with groups that contains a list of people and roles of people within each of the groups. The company tree is used to assign leads, cases, opportunities, business accounts, contacts, or email activities to owners when you want the system to distribute these entities between owners \(individuals\) and workgroups \(groups of people\) by using an assignment map on the [Assignment Maps](../Shared/../UserGuide/EP_20_50_10.md) \(EP205010\) form.

On the [Company Tree](../Shared/../UserGuide/EP_20_40_61.md) \(EP204061\) form, you create a hierarchy of workgroups for using them in the assigning process, and you include people or groups of people in the workgroups. You can include the same people in different workgroups. When you create a new entity, such as a new lead, and select a workgroup for it, you can select as an owner only one of the people that you have included in this workgroup in the company tree. We recommend the use of a company tree to speed and streamline your assignments.

## Assignment of Opportunities by Using Assignment Maps { .section}

You can use the assignment map functionality to assign opportunities between owners automatically through the use of opportunity classes or manually when you mass-assign opportunities.

An assignment map is a set of rules, actions related to rules, and conditions that the system can use for assigning a record or a number of records for processing to a particular individual or a group of people. An assignment map may include any number of rules, which are executed sequentially. Each rule in an assignment map includes conditions and actions to be performed if the conditions are met. You create assignment maps on the [Assignment Maps](../Shared/../UserGuide/EP_20_50_10.md) \(EP205010\) form as follows \(for detailed instructions on configuring assignment maps, see [Configuring Assignment Maps](../Shared/../UserGuide/CRM_Assignment_Maps_Mapref.md)\):

1.  On the **Rules** tree, you add new rules.
2.  On the **Conditions** tab, you add rule conditions that assignment criteria should meet.
3.  On the **Rule Actions** tab, you select an owner or a workgroup \(or both\).

Once an assignment map for opportunities is created, you can do either or both of the following:

-   Specify the assignment map on the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form for the opportunity class if you have selected *Assignment Map* in the **Default Owner** box on the **Details** tab: Each new opportunity of the class will be assigned to a default owner on the [Opportunities](CR_30_40_00.md) \(CR304000\) form according to this map. A user can change the default owner as needed.
-   Specify the assignment map on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form in the **Opportunity Assignment Map** box of the **General** tab \(**Assignment Settings**section\): Existing opportunities that do not have owners will be assigned to owners based on this map as soon as you have assigned the opportunities by using the [Assign Opportunities](CR_50_31_10.md) \(CR503110\) mass processing form.

**Attention:** If an assignment map is specified for the applicable opportunity class on the [Opportunity Classes](CR_20_90_00.md) form, it overrides the assignment map specified on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form. Opportunities of the class will be assigned to owners based on the assignment map from the opportunity class.

## Execution Errors Related to Mass-Assignment of Opportunities { .section}

If an assignment map contains errors \(for example, a workgroup contains an employee who has quit the company and cannot be assigned to any records\), and you have processed any opportunities that should be assigned according to this assignment map by using the [Assign Opportunities](CR_50_31_10.md) \(CR503110\) form, the system will list these errors in the **Processing** dialog box. You can view the error by clicking the More button on the **Errors** tile. In the **Message** column, the system displays the text of the error message.

## Notifications About Assigning an Opportunity to an Owner { .section}

In Acumatica ERP, an administrator can set up email notifications on the [Business Events](SM_30_20_50.md) \(SM302050\) form so that if a user is assigned to a new opportunity, this user receives a notification by email, by SMS, or in the Acumatica mobile app. For details, see [Business Events](../CustomizationPlatform/CG_GL_Items_BusinessEvents.md).

**Parent topic:**[Assigning Opportunities to Owners and Workgroups](../UserGuide/CRM_Sales_Assigning_Opportunities_to_Owners_Mapref.md)

