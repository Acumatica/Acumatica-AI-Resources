# To Set Up the Approval of Purchase Orders {#_4d9e371a-9b52-4b4e-8c8f-1f787791cb8e .task}

For many businesses, the approval of purchase orders is essential for effective procurement. For more information on these approvals, see [Specific Approvals: Purchase Orders](PO__con_Purchase_Order_Approvals.md). You can set up the approval of purchase orders by using the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form.

## Before You Proceed { .section}

Before you set up the approval of purchase orders, do the following in your system:

1.  Make sure the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  Review the organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form, and add new workgroups whose members are authorized to approve purchase orders, if needed.
3.  Optional: If these purchase orders will be assigned to a workgroup, in each workgroup, select the check box in the **Owner** column for the employee who will be the default owner of each workgroup—the member of the workgroup to whom the records will be assigned for approval by default. A group may include only one default owner.
4.  By using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, for each type of purchase order that will be reviewed, create the approval maps that will be used to determine the employee who should approve an order of this type with specific properties. For details on creating maps, see [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md).

    **Note:** For each type of purchase order for which approval is required, you should create at least one approval map. If multiple parallel approvals are required, create an approval map for each required parallel approval for orders of the type.

5.  Optional: For each order type, create the email templates for notifications about orders pending approval. These templates will be used to generate emails that will be sent to employees authorized to approve purchase orders. You can create email templates by using the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.

## To Specify the Approval Settings for Purchase Orders { .section}

1.  Open the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form.
2.  On the **Approvals** tab of this form, select the **Require Approval** check box.
3.  For each purchase order type for which you need to specify an approval map, add it as follows:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **PO Type** column, select the type of purchase orders that require approval.
    3.  In the **Approval Map** column, select the approval map to be used for orders of the selected type.

        CAUTION:

        If no map is selected for the specified order type, all new orders of this type will be automatically approved.

    4.  Optional: In the **Pending Approval Notification** column, select the email template that the system should use \(from scratch or by modifying predefined templates\) for generating emails about orders of this type that are pending approval.
4.  If multiple parallel approvals are required for orders of the specific type, repeat Instruction 3 to add each of the approval maps.
5.  Click **Save** on the form toolbar.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

