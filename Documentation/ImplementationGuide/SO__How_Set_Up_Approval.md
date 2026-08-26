# To Set Up the Approval of Sales Orders {#_b151a5bd-8008-42e9-8800-fa39635933c7 .task}

For many businesses, the approval of sales orders is required for sales performed on credit. For more information on these approvals, see [Specific Approvals: Sales Orders](SO__con_Approvals.md). You can set up the approval of sales orders by using the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form.

## Before You Proceed { .section}

Before you set up the approval of sales orders, do the following in your system:

1.  Make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  Review the organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form, and add new groups whose members are authorized to approve sales orders, if needed.
3.  Optional: If these sales orders will be assigned to a workgroup, in each workgroup, select the check box in the **Owner** column for the employee who will be the default owner of each workgroup—the member of the workgroup to whom the records will be assigned for approval by default. A group may include only one default owner.
4.  By using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, for each type of sales orders that will be approved, create the approval maps that will be used to determine the employee or employees who should approve an order of a specific type with specific properties. For details on creating approval maps, see [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md).

    **Note:** For each type of sales orders for which approval is required, you should create at least one approval map. If multiple parallel approvals are required, create an approval map for each required approval.

5.  Optional: For each order type, create email templates for notifications about orders pending approval. These emails will be sent to employees authorized to approve sales orders of a specific type. You can create email templates by using the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.

## To Specify the Approval Settings for Sales Orders { .section}

1.  Open the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form.
2.  For each order type for which you need to specify an approval map, add it as follows:
    1.  On the table toolbar, click **Add Row**. Notice that the **Active** check box is selected, which indicates that this approval map will be used for documents of the specified type.
    2.  In the **SO Type** column, select the order type whose orders requires approval.
    3.  In the **Approval Map** column, select the approval map to be used for orders of the selected type.
    4.  Optional: In the **Pending Approval Notification** column, select the email template that the system should use for generating emails about orders of this type that are pending approval.
3.  If multiple parallel approvals are required for orders of the specific type, repeat Instruction 2 for each of the approval maps.
4.  Click **Save** on the form toolbar.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

