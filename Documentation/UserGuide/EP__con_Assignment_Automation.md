# Managing Assignment Maps {#_81a4c534-9bc8-4e11-9296-70ab5ae76240 .concept}

Acumatica ERP gives you the capability to automatically assign records \(such as leads and cases\) to employees for processing, to appropriately distribute work. When assigning a record to an employee, the system follows the rules and conditions specified in a previously created assignment map.

## Supported Types of Maps { .section}

Acumatica ERP supports various types of maps that may include any number of steps, rules, and conditions for assigning a record to a qualified employee for processing or for assigning a document to an authorized employee for approval. Each map has a type, which can be one of the following:

-   *Assignment Map*: Used for assigning business accounts, cases, contacts, email activities, leads, opportunities, purchase receipts, requests, or requisitions to owners for further processing.
-   *Assignment and Approval Map*: Used for either assigning entities to owners or assigning approvers to documents. Maps of this type were created in earlier versions of Acumatica ERP. This type remains supported by the system to avoid data loss.

By using the **Add Assignment Map** button on the form toolbar of the [Assignment and Approval Maps](EP_20_55_00.md) \(EP205500\) form, you can start creating an assignment map, which opens on a separate entry form.

## Assignment Maps { .section}

Assignment maps are created and modified on the [Assignment Maps](EP_20_50_10.md) \(EP205010\) form.

An assignment map may include any number of rules, which are executed sequentially. Similarly to a rule in an approval map, a rule in an assignment map includes conditions and actions to be performed if the conditions are met.

If you use assignment maps to distribute a particular type of record or document—for instance, to assign cases to different owners who will handle them—be sure to create a complete set of conditions so that no record or document of the specific type is left unassigned.

If a condition or rule is no longer required in an assignment map, you can temporarily deactivate it by clearing the **Active** check box in the settings of that condition or rule on the [Assignment Maps](EP_20_50_10.md) form. A deactivated rule is marked with the **\(Inactive\)** prefix in the **Rules** pane.

**Note:** If conditions allow the same documents to be assigned to two or more groups, all assignments will be performed in the group that is positioned higher than the other groups in the assignment map, and the documents would never reach the other groups.

## Map Application { .section}

In Acumatica ERP, you can specify an assignment map for a particular type of record or document by using one of the following forms:

-   [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) for leads, contacts, business accounts, opportunities, and cases
-   [Assign Request for Information](PJ_50_10_00.md) \(PJ501000\) form to assign owners to requests for information

Users can assign such records as leads, contacts, business accounts, opportunities, and cases in bulk by using the appropriate mass-processing form, such as [Assign Leads](CR_50_30_10.md) \(CR503010\) or [Assign Cases](CR_50_32_10.md) \(CR503210\).

## Map Execution Issues { .section}

Any issues that occur during the execution of an assignment map are recorded in the Acumatica ERP trace log. You can open the trace log by clicking **Help** &gt; **Trace** on the form title bar.

**Parent topic:**[Organization Structure](../UserGuide/OS_00_00_00.md)

