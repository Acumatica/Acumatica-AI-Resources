# Relations: General Information {#_5b1b0780-1090-46ff-a8ce-a0d553f1b63f .concept}

In Acumatica ERP, as you work with a record related to customer relationship management \(CRM\)—such as a lead, contact, business account, opportunity, sales quote, or case—you can track the associated records on the **Relations** tab of the form used to create the record.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with a predefined set of roles that can be used for associated records
-   Differentiate between a one-way role and a bidirectional role
-   View roles added by the system on the **Relations** tab
-   Manage relations on the **Relations** tab

## Applicable Scenarios { .section}

You may want to learn how to view or manage relations in Acumatica ERP in scenarios that include the following:

-   You have converted a lead to an opportunity, and you need to view this lead's summary information or open the lead on the [Leads](CR_30_10_00.md) \(CR301000\) form by using the opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form as a starting point.
-   You have created a new opportunity and need to add a customer contact that represents a decision maker for this opportunity.
-   You have created an opportunity-based sales order, and you need to quickly open this sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form by using the opportunity as a starting point.

## Relations in Acumatica ERP { .section}

You can use the relations on the **Relations** tab of the form where a CRM record is created to quickly find, view, and modify the associated records. You can use relations to associate business accounts and contacts with leads, cases, and opportunities. You can also associate opportunities with leads, contacts, business accounts, cases, and the related documents—such as sales quotes, sales orders, and invoices. For example, while you are working with an opportunity, with one click, you can access the related leads, sales orders, and invoices. And while you are viewing a lead, you might want to make edits to the related opportunities. You can see the associated records on the **Relations** tab of the following forms while you are viewing a record created on the form:

-   [Business Accounts](CR_30_30_00.md) \(CR303000\)
-   [Contacts](CR_30_20_00.md) \(CR302000\)
-   [Leads](CR_30_10_00.md) \(CR301000\)
-   [Opportunities](CR_30_40_00.md) \(CR304000\)
-   [Sales Quotes](CR_30_45_00.md) \(CR304500\)
-   [Cases](CR_30_60_00.md) \(CR306000\)
-   [Sales Orders](SO_30_10_00.md) \(SO301000\)

For each relation listed for a record selected on any of these forms, one of the predefined relational roles is selected. The selected role conveys how the listed record is related to the record selected on the form.

For details about the relations between a sales order and the records associated with it, see [Relations: Sales Orders, Opportunities, and Other Entities](CRM_Managing_Relations_SO_and_Associated_Entities.md).

Relations between associated records on the **Relations** tab can be added automatically by the system based on actions executed by users or manually by users. For example, if you convert a lead to an opportunity by clicking **Convert to Opportunity** on the More menu of the [Leads](CR_30_10_00.md) form, the system adds the relation between these records to the **Relations** tab of the [Leads](CR_30_10_00.md) and [Opportunities](CR_30_40_00.md) forms. The system also adds the relation between the lead and the business account and contact to the **Relation** tab of the [Leads](CR_30_10_00.md), [Business Accounts](CR_30_30_00.md), and [Contacts](CR_30_20_00.md) forms if the business account and contact were created during converting the lead to the opportunity.

To manually create a relation with an associated record, you add a row on the **Relations** tab of the form of the record you are working with. In this row, you select the needed role in the **Role** column. Depending on the role, the **Type**, **Document**, **Account**, and **Contact** columns may become available. You select the record type in the **Type** column from the record types available for the selected role. When you have selected the associated record by its identifier in the **Document** column, the system inserts the links to the business account and contact associated with this record in the **Account** and **Contact** columns, respectively.

If you copy a record by using the **Copy** command, the rows from the **Relations** tab are not copied to the new record.

## Types of Relational Roles { .section}

Acumatica ERP supports *one-way* and *bidirectional* relations between the associated records. In many cases, the relation between a pair of records is bidirectional. The type of relation is defined by the role in the **Role** column, which can be one-way or bidirectional.

The following roles are one-way: *Business User*, *Decision-Maker*, *Evaluator*, *Related Entity*, *Referrer*, *Support Engineer*, *Source*, *Supervisor*, and *Technical Expert*. For these roles, the relation is shown on the **Relations** tab of the form for only one record; no corresponding record is added to the **Relations** tab of the associated record. For most of the one-way roles, you can select a record of only the *Contact* record type. For the *Related Entity* role, you can select any record type of the associated record.

The *Source*, *Derivative*, *Parent*, and *Child* roles are bidirectional, which means that the relation is shown on the **Relations** tab of both the record selected on the form and the associated record. That is, if you add a relation with one of these roles, a corresponding relation will be added to the creation form of the record selected for the relation. If you select a bidirectional role, you can create a relation with any of the following record types: *Customer*, *Business Account*, *Lead*, *Contact*, *Employee*, *Vendor*, *Opportunity*, *Case*, *Sales Order*, *Purchase Order*, *AP Invoice*, *AR Invoice*, *Expense Receipt*, *Campaign*, and *Sales Quote*.

With bidirectional roles, a pair of roles are associated with each other in both directions: the original role \(which is shown on the **Relations** tab of the record where the relation was originally specified\) and the reverse role \(which is specified on the **Relations** tab of the associated record\). The relations between the roles are established in the system, a fixed set of relations between the roles is supported, and no pairs can be used beyond those listed below. The pairs of bidirectional roles are shown in the following table.

|Original Role|Reverse Role|
|-------------|------------|
|*Source*|*Derivative*|
|*Derivative*|*Source*|
|*Parent*|*Child*|
|*Child*|*Parent*|

**Parent topic:**[Managing Relations](../UserGuide/CRM_Managing_Relations_Mapref.md)

