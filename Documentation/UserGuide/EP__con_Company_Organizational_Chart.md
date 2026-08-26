# Company Tree and Workgroups {#_32ee0de4-1261-415f-8803-bb9dbcdf7d14 .concept}

In Acumatica ERP, you can build a company tree, which is a model of your organization's hierarchy that includes temporary and permanent workgroups. The company tree may reflect the administrative hierarchy and include subhierarchies of workgroups created within specific branches or departments. The company tree is used for creating assignment rules in approval and assignment maps and for determining the scope of the users who want to view items assigned to them.

## Company Tree { .section}

You create a company tree by using the [Company Tree](EP_20_40_61.md) \(EP204061\) form. The company tree serves various purposes in addition to reflecting the administrative structure of your company. The tree doesn't directly include branches, departments, and administrative units within departments, but the tree should include all workgroups that participate in company workflows—for instance, the processing of leads and cases, the resolution of overdue cases, and the approval of various documents, such as time cards, expense claims, and purchase orders.

If your company includes multiple branches, consider whether the workflows are completely contained within branches. If they are, for each company branch, create a separate tree branch that arranges the workgroups involved in this organization branch's workflows. If a workgroup of one of the branches participates in workflows of multiple branches, make sure this workgroup is located one level higher on the company tree than other workgroups. Also, make sure the members of this group have access to all the branches involved.

## Workgroups and Owners { .section}

A workgroup includes members who are employees of the company. Acumatica ERP places no restrictions on the number of group members or the number of groups an employee may belong to. A group may include employees with different positions and from different departments.

An employee may be a member of more than one workgroup if he or she participates in multiple workflows. For example, an employee might approve purchase orders greater than $1000 and all expense claims. On the other hand, a workgroup may include members from different departments if they participate in the same stage of a specific workflow, such as processing cases. Workgroups participating in the same workflow should be organized in a separate branch on the tree. Your company's tree should have a separate branch for assigning each type of document that can be automatically assigned.

One member of the group should be specified as the *owner*—the user to whom, by default, a new record or document will be assigned once the record or document is assigned to this workgroup. For example, if processing a case involves multiple employees and requires performing research, fixing the product or situation, filling out documents, and performing other activities, the owner can be a team lead who is responsible for the group. If processing a case involves only one person, the workgroup may include only one employee, who will also be its default owner.

Also, workgroups can be used for grouping employees by *crew*. If the *Time Reporting on Activity* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, activity time can be reported, approved, and released for an entire crew at a time on the [Weekly Crew Time Entry](EP_30_71_00.md) \(EP307100\), [Approve Time Activities](EP_50_70_10.md) \(EP507010\), and [Release Time Activities](EP_50_70_20.md) \(EP507020\) forms, respectively. For more information about group entry of time activities, see [Employee Time Entry: Crew Time](Crew_Time_Reporting_GeneralInfo.md).

## Workgroups in Assignment and Approval Maps { .section}

In Acumatica ERP, you can set up automatic assignment of the following entities to workgroups and to particular employees:

-   Records for processing: leads, contacts, opportunities, business accounts, and cases
-   Documents for approval: expense claims, time cards, purchase orders, sales orders, and other documents

This functionality uses assignment maps; it may also use the company tree that contains all workgroups involved in the assignment processes. You don't necessarily have to create a company tree or, if a company tree has been set up, you don't have to always use workgroups in assignment maps because you can specify particular employees as assignees; however, you can create more efficient assignment rules when using a company tree. For each type of document or record that should be automatically assigned, you create any number of assignment maps that define the rules for such assignment, and then, on the related module's preferences form, you specify which assignment map is to be used during the assignment process; for details, see [Managing Assignment Maps](EP__con_Assignment_Automation.md).

**Parent topic:**[Managing Employees](../UserGuide/OS__MNG_Employees.md)

