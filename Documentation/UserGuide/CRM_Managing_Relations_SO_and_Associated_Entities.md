# Relations: Sales Orders, Opportunities, and Other Entities {#_4c3e8e9e-762f-4b34-b528-8417a65319b5 .concept}

In Acumatica ERP, you can track and manage bidirectional relations between a sales order, an opportunity, and a sales quote. Also, you can track one-way relations between a sales order and a variety of records that are associated with it. While viewing a sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you can manually associate any of these records with the sales order and view the list of associated records on the **Relations** tab.

## Relations Between Sales Orders, Opportunities, and Sales Quotes { .section}

On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the **Relations** tab is shown only if the *Customer Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. The tab shows the following relations:

-   Each system-added relation between the sales order and an opportunity.
-   Each system-added relation between the sales order and a sales quote.
-   Each relation between the sales order and another record that has been manually added for the sales order. These records include CRM entities and other system entities.

## Relational Roles Supported for Sales Orders { .section}

Acumatica ERP supports *one-way* and *bidirectional* relations between a sales order and the associated records.

On the **Relations** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you can add relations with the one-way *Related Entity* relational role for each relations between the selected sales order and a business account, a case, another sales order, or some other record defined in the system. \(The types of entities are listed in the following section.\) Because of the one-way nature of this role, if you add a relation with the *Related Entity* role for the sales order, this relation is shown only for the sales order. That is, the system does not automatically add this relation to the record on the form of the associated entity.

With bidirectional roles, the following roles are associated with each other in both directions:

-   The original role, which is shown on the **Relations** tab of the form used to create the record where the relation was originally specified
-   A reverse role, which is shown on the **Relations** tab of the form where the associated record was defined

The system supports only the fixed pairs of bidirectional roles listed in the following table.

|Original Role|Reverse Role|
|-------------|------------|
|*Source*|*Derivative*|
|*Derivative*|*Source*|
|*Parent*|*Child*|
|*Child*|*Parent*|

For example, if a sales order \(original record\) is created from an opportunity \(associated record\), then the opportunity becomes the source of the sales order, and the sales order becomes the derivative document for the opportunity.

Suppose that a user working on the [Opportunities](CR_30_40_00.md) \(CR304000\) form clicks **Create Sales Order** to create a sales order on the [Sales Orders](SO_30_10_00.md) form. To reflect this relation, on the **Relations** tab of the [Opportunities](CR_30_40_00.md) form, the system adds a row for the sales order with the *Derivative* role \(that is, the sales order becomes the derivative document for the opportunity\). Also, on the **Relations** tab of the [Sales Orders](SO_30_10_00.md) form, the system adds a row for the opportunity and specifies the *Source* role for this relation \(that is, the opportunity becomes the source of the sales order\) and the *Opportunity* type. On this tab, you can select various types of entities that can be associated with a sales order. The **Add to CC** check box—which indicates, if selected, that the contact in this row should receive a copy of notification emails—for the reverse role is always cleared, but you can manually select the check box.

## Management of Relational Roles Supported for Sales Orders { .section}

For a sales order, you can manually add rows for bidirectional roles to the table on the **Relations** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form if the sales order was created directly on the form or if the sales order was imported to the system. By using the one-way *Related Entity* role, you can manually add relations between a sales order and various system entities.

For manually added bidirectional and one-way relations, in the **Type** column, you can select the following types of the records that can be associated with a sales order:

-   *AP Invoice*: An AP invoice created on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form
-   *AR Invoice*: An AR invoice created on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form
-   *Business Account*: A business account created on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form
-   *Campaign*: A marketing campaign created on the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form
-   *Case*: A case created on the [Cases](CR_30_60_00.md) \(CR306000\) form
-   *Contact*: A contact created on the [Contacts](CR_30_20_00.md) \(CR302000\) form
-   *Customer*: A customer created on the [Customers](AR_30_30_00.md) \(AR303000\) form
-   *Employee*: An employee created on the [Employees](EP_20_30_00.md) \(EP203000\) form
-   *Expense Receipt*: An expense receipt created on the [Expense Receipts](EP_30_10_10.md) \(EP301010\) form
-   *Lead*: A lead created on the [Leads](CR_30_10_00.md) \(CR301000\) form
-   *Opportunity*: An opportunity created on the [Opportunities](CR_30_40_00.md) \(CR304000\) form
-   *Purchase Order*: A purchase order created on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form
-   *Sales Order*: Another sales order created on the [Sales Orders](SO_30_10_00.md) form
-   *Sales Quote*: A sales quote created on the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form
-   *Vendor*: A vendor created on the [Vendors](AP_30_30_00.md) \(AP303000\) form

You can manually add rows to or delete rows from the table on the **Relations** tab of the [Sales Orders](SO_30_10_00.md) form unless the selected sales order has the *Completed* or *Canceled* status. If it has one of these statuses, the set of rows in the table is unavailable for editing.

If you copy a sales order by using the **Copy** command on the **Clipboard** menu or the **Copy Order** command on the More menu, the rows from the **Relations** tab are not copied to a new sales order.

**Parent topic:**[Managing Relations](../UserGuide/CRM_Managing_Relations_Mapref.md)

