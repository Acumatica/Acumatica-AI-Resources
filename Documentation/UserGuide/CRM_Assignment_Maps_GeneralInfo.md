# Assignment Maps: General Information {#_0527d488-035b-4bab-b30d-ffc76eec864b .concept}

Assignment maps in Acumatica ERP give marketing, sales, and support personnel the ability to appropriately distribute processed records—such as leads, opportunities, or cases—between owners \(individuals\) and workgroups \(groups of people\). When a user uses a processing form for mass assignment, the system uses rules and conditions specified in an assignment map.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Become familiar with the principles and workflow of configuring assignment maps
-   Create an assignment maps for different entities
-   Specify a default assignment maps for different entities in the system

## Applicable Scenarios { .section}

You may want to configure an assignment map in scenarios that include the following:

-   You are an implementation consultant, and you need to give users the ability to distribute leads that represent various industries or businesses between your company employees.
-   You are an implementation consultant, and you need to give users the ability to distribute opportunities for selling various kinds of products or services your company offers.
-   You are an implementation consultant, and you need to give users the ability to distribute various cases—such as cases for presales questions, cases for sale and delivery of company products, and cases for maintenance and repair.

## Assignment Maps { .section}

An assignment map is a set of rules, actions related to rules, and conditions that the system can use for assigning a record or a number of records for processing to a particular individual or a group of people. You can configure assignment maps for distributing leads, contacts, business accounts, opportunities, cases, and email activities. You can create multiple assignment maps for the same entity, such as a lead or opportunity. You create assignment maps on the [Assignment Maps](EP_20_50_10.md) \(EP205010\) form.

An assignment map may include any number of rules, which are executed sequentially. You create rules as follows:

1.  On the **Rules** tree, you add a rule. Each rule in an assignment map includes conditions and actions to be performed if the conditions are met. Rules should divide records of the same type into non-intersecting sets. If rules allow the same records to be assigned to two or more groups, all assignments will be performed in the workgroup or individual employee that is mentioned higher in the list of rules, and the records will never reach the second workgroup or employee.
2.  On the **Conditions** tab, you add rule conditions that assignment criteria should meet. Conditions, which are specified for each rule, are based on the values of settings in records. Settings are specified manually by a user or automatically by the system on the data entry form when a record is created. For classes that are used to group records, particular attributes can be specified; users can specify the attribute values in records \(such as leads\) on the data entry form used to create the record.
3.  On the **Rule Actions** tab, you select an owner or a workgroup \(or both\).

If a condition or rule is no longer required in an assignment map, but you want to keep it in the list of rules, you can temporarily deactivate it by clearing the **Active** check box in the settings of that condition or rule on the [Assignment Maps](EP_20_50_10.md) form. The name of an inactive rule is preceded with the *\(Inactive\)* prefix in the **Rules** pane.

After you have configured the assignment map for distributing leads, contacts, business accounts, opportunities, or cases, you should specify the map for the needed entity on the **General** tab \(**Assignment Settings** section\) [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form. The maps that you specify on this form are used for the mass assignment of records, as described in the next section.

You can also specify the assignment map for any entity class on the [Lead Classes](CR_20_70_00.md) \(CR207000\), [Contact Classes](CR_20_50_00.md) \(CR205000\), [Business Account Classes](CR_20_80_00.md) \(CR208000\), or [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form. In this case, the system uses this assignment map to assign the default owner of a new record of this class if *Assignment Map* is specified in the **Default Owner** box of the class creation form.

After you have configured the assignment map for distributing email activities, you need to specify this map in the **Email Assignment Map** box on the **Additional Settings** tab of the [Email Accounts](SM_20_40_02.md) \(SM204002\) form to cause the system to determine the owners for email activities according this assignment map for email activities.

## Mass Assignment of Records { .section}

You can perform mass assignment of records on the following mass-processing forms:

-   [Assign Leads](CR_50_30_10.md) \(CR503010\)
-   [Assign Contacts](CR_50_30_11.md) \(CR503011\)
-   [Assign Business Accounts](CR_50_33_10.md) \(CR503310\)
-   [Assign Opportunities](CR_50_31_10.md) \(CR503110\)
-   [Assign Cases](CR_50_32_10.md) \(CR503210\)

For mass assignment, the system uses the assignment maps specified on the **General** tab of the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form. If you start mass processing and no assignment map is specified for the particular type of records being processed, the system shows an error message in the **Processing** dialog box.

**Parent topic:**[Configuring Assignment Maps](../UserGuide/CRM_Assignment_Maps_Mapref.md)

