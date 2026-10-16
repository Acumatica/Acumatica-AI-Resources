# Using Manufacturing Data with AI Assistant

**Attention:** The functionality described in this topic is available only if the *AI Assistant* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If you use AI Assistant, you can ask questions in plain language about production orders, materials, schedules, costs, and production performance. AI Assistant uses predefined manufacturing generic inquiries as data sources to find the information needed to answer your questions.

## Configuring Manufacturing Generic Inquiries for AI Assistant

A generic inquiry becomes available to AI Assistant as a data source when the **Expose to AI Assistant** check box is selected on the **Advanced** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.

Each inquiry may also have an AI description that provides business context about the information in the inquiry. You can review and edit this description on the **AI Description** tab of the [Generic Inquiry](SM_20_80_00.md) form. For a generic inquiry that contains fields or parameters that need additional explanation, you can also specify field descriptions in the **Description for AI** column on the **Results Grid** tab and instructions for parameters on the **Parameters** tab.

After you expose a generic inquiry and add or modify its AI-related descriptions, process the inquiry on the [AI Assistant Data Processing](ML_50_30_10.md) \(ML503010\) form so that AI Assistant can use the updated information.

## Manufacturing Generic Inquiries Available to AI Assistant

The following table lists the manufacturing generic inquiries available to AI Assistant, the information they provide, and examples of questions you can ask.

|Generic Inquiry|Information Provided|Example Questions|
|---------------|--------------------|-----------------|
|*Production Summary \(AM000006\)*|Production orders, including their status, schedule dates, quantities, customer and project information, and relationships to other production orders|Which production orders are late? How many production orders are scheduled to complete this week? Which production orders are subassemblies of another production order?|
|*Work Center Dispatch \(AM000007\)*|Production order operations scheduled at work centers, including their scheduled start and end dates, production quantities, dispatch priority, and related customer information|What are the next production orders scheduled at a particular work center? How many operations are currently scheduled at a particular work center? Which operations are late?|
|*Material Transaction Details \(AM000015\)*|Production material transactions, including the material, transaction date, quantity, warehouse and location, lot or serial number, production order, and operation|How much of a particular material was used during a specified period? When was a particular material last used? Which production orders used a particular material?|
|*AM-DB-Production Variance \(AM0018DB\)*|Summary production variances, including WIP, planned and actual hours, labor, machine, subcontract, and overhead variances|What was the WIP variance for a production order? Which production orders have the highest total variance?|
|*AM-DB-Labor Variance \(AM0024DB\)*|Actual and planned labor hours and the resulting labor variance for production orders|What was the labor variance for a production order? Which production orders for a particular item have the highest labor variance?|
|*AM-DB-Material Variance \(AM0025DB\)*|Actual and planned material costs and the resulting material cost variance for production orders|What was the material variance for a production order? Which production orders for a particular item have the highest material cost variance?|
|*Bill of Material \(AM2080PL\)*|Summary information about bills of material \(BOMs\) and revisions, including the produced item, warehouse, status, effective dates, and warehouse default BOM|What revisions exist for the BOM of a particular item? Which inventory items have multiple BOMs? What is the default BOM for an item at a particular warehouse?|
|*Engineering Change Orders \(AM2150PL\)*|Summary information about engineering change orders, including their status, affected inventory item and BOM, original and new BOM revisions, effective date, and requestor|Which engineering change orders involve a particular BOM? How many engineering change orders are pending approval? Which engineering change orders are on hold?|
|*Production Order Maintenance \(AM2015PL\)*|Summary production order information, including status, schedule dates, quantities, customer and sales order information, BOM and revision, WIP, related production orders, source, and project|Which production orders use a particular BOM and revision? What is the status of those production orders? Which production orders are associated with a particular customer?|
|*AM-Material Staging by Work Center \(AM401010\)*|Materials that need to be staged for production order operations at each work center and when they are needed|What are the materials needed to fulfill today's production for each work center? What material is needed at what work center, and when? What needs to be staged at a particular work center today?|
|*AM-Production Order Material Readiness \(AM401050\)*|Material availability and build capability for open production orders. Readiness is classified as *Ready*, *Partially Ready*, *Ready to Start*, or *Not Ready*|Which production orders have all materials available and can start immediately? Which production orders can produce some quantity but not the full order quantity? Which production orders can begin their first operation today?|
|*AM-Production Schedule Status \(AM401020\)*|Schedule information for open production orders, including whether an order is *Late*, *On Time*, or *Early*|How many production orders are currently running late? Give me a summary of my schedule adherence today. Which production orders will finish ahead of schedule?|
|*AM-Production Order Risk Indicator \(AM401030\)*|Schedule and cost risk for open production orders, with the risk level classified as *High*, *Medium*, or *Low* based on historical production performance and current order information|Which currently open production orders are at highest risk of being late? Which open production orders are at risk of exceeding planned cost? Show me all high-risk production orders.|
|*AM-Production Order Performance History \(AM401040\)*|Historical schedule and cost performance for completed and closed production orders, including schedule and cost variances|Which items historically take longer than planned to produce? What is the on-time delivery rate for production orders? Which work centers have the highest cost overruns?|

The five generic inquiries focused on material staging, material readiness, schedule status, production order risk, and performance history include predefined field-level AI descriptions that provide additional business context about their data. These descriptions help AI Assistant interpret your questions and identify the information needed for its responses.

## Learn More

For information about configuring and processing generic inquiries for AI Assistant, see [Exposing Generic Inquiries to AI Assistant](GI_Exposing_Inquiry_to_AI_Assistant_Mapref.md).

For general information about asking questions and working with AI Assistant responses, see [Working with AI Assistant](RPT_Working_with_AI_Assistant_Mapref.md).

**Parent topic:**[Other Manufacturing Functionality](../UserGuide/MFG_Other_Functionality.md)

