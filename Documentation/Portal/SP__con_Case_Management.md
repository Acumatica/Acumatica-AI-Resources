# Case Management {#_9452fc0b-6525-4360-a393-39f1431e1680 .concept}

In the Acumatica Self-Service Portal, you can use cases \(also referred to as *support cases* or *tickets*\) to communicate with your vendor. Through cases, you can submit requests, complaints, and questions about items that you have bought or are considering buying. By using the Self-Service Portal, you can easily submit, view, and track cases, as well as attach files and notes related to a case.

**Attention:** This functionality appears in the Self-Service Portal, if the *Case Management* and *Case Management on Portal* features are enabled on the Enable/Disable \(CS100000\) form in Acumatica ERP.

## Forms for Working with Cases { .section}

As you work with cases in the Self-Service Portal, you can use the following forms:

-   [New Case](SP_20_30_00.md) \(SP203000\): By using this form, you can create a case.
-   [Case Details](SP_20_30_10.md) \(SP203010\): By using this form, you can view the information provided in a case, check the case progress, enter additional information, and close the case.

    **Tip:** You can open the [Case Details](SP_20_30_10.md) form from the All Cases \(GIP00000\) form by clicking the identifier of the case in the **Case ID** column.

-   [Open Cases](SP_20_40_00.md) \(SP204000\): This is an inquiry form with a table in which you can view open cases. You can narrow the range of open cases listed by the creator and the contract \(if applicable\).
-   [Closed Cases](SP_20_40_10.md) \(SP204010\): This is an inquiry form with a table in which you can view closed cases. You can narrow the range of closed cases listed by the creator and the contract \(if applicable\).

## Case Creation { .section}

In the Self-Service Portal, when you create a case by using the [New Case](SP_20_30_00.md) \(SP203000\) form, you enter the following information:

-   In the **Contract** box, the ID of the contract within which the case is created \(if applicable\). This box is displayed if the *Contract Management* feature is enabled on the Enable/Disable \(CS100000\) form in Acumatica ERP. For more information about contracts, see [Viewing of Contracts](SP__con_Contracts.md).
-   In the **Priority** box, the case priority, which determines the order of case processing by the support team.
-   In the **Class ID** box, the case class to which this case belongs.

    The settings of a case class are specified on the Case Classes \(CR206000\) form of Acumatica ERP. When you select a case class, on the **Attributes** tab of the current form, the system fills in *attributes*, which are an additional elements that hold information about the case. You need to specify the value of each attribute in the **Value** column of the **Attributes** tab.

-   In the **Subject** box, a short description of the case.
-   On the **Details** tab, a complete description of the case. We recommend that you provide as much information as possible so that the support team can diagnose and address the issue as quickly and effectively as possible.
-   Any additional notes you provide.
-   Any files that you attach to the case.

For detailed instructions on how to create a case, see [To Create a Case](SP__How_Entering_Cases.md).

## Case Processing { .section}

In the Self-Service Portal, a case may be assigned one of the following statuses, which are shown on the forms you use to work with cases:

-   *New*: You have submitted a case to the support team.
-   *Open*: The support team has started working on the case, and its owner has assigned the case this status.
-   *Pending Customer*: The support team is waiting for information or a response from you.
-   *Closed*: The support team has resolved and closed the case.
-   *Released*: The support team has resolved the case and released it, which causes a case-related invoice to be created.

Support teams usually process cases based on their priorities. A case may be assigned to a case owner \(that is, a representative of the vendor’s support team who is responsible for resolving the case\). The system specifies the status of a case based on actions by the customer or the support team members.

When a case is updated or a support engineer requests additional information, you will get an email notification if notifications are configured in Acumatica ERP.

When a case has the *Open* status, on the [Case Details](SP_20_30_10.md) \(SP302010\) form, you can add comments to the case at any time. You click **Add Comment** on the form toolbar to open the **New Comment** dialog box, in which you can add comments and attach files \(if needed\).

**Tip:** In the Self-Service Portal, you can open the [Case Details](SP_20_30_10.md) form by clicking a case identifier in the **Case ID** column of the All Cases \(GIP00000\) list of record.

When you save a new comment, the system lists it on the **Activities** tab of the [Case Details](SP_20_30_10.md) form. The **Case Description** tab is unavailable for editing. On this tab, you can see the case details that the case owner of the support team has entered on the **Details** tab of the Cases \(CR306000\) form in Acumatica ERP.

If a case owner has changed the status of a case to *Pending Customer*, this means that your input is required. For example, the support team may need you to verify that the desired result has been achieved, or additional information may be needed. If a case has this status, you need to check the case for details and find out what the case owner needs from you.

## Closing of a Case { .section}

When a support team finishes working on a case, they set the case status to *Closed*. The case can be closed with one of the following reasons, which you can view on any of the case management forms:

-   *Resolved*: You have approved the decision or reply \(depending on the initial request\) of the support team.
-   *Rejected*: The support team cannot process the case for some reason \(for example, because a third-party product is involved\).
-   *Canceled*: The case has been canceled by the case owner.
-   *Abandoned*: The support team could not resolve the issue because you have not responded or provided the information requested by the case owner.
-   *Duplicate*: A similar case exists in the system.
-   *Closed on Portal*: You have closed the case in the Self-Service Portal.

You can also close the case in the Self-Service Portal yourself, as described in [To Close a Case](SP__How_Close_case.md).

If an issue that you have reported in a case recurs or you are not satisfied with the answer from the support team, you can reopen the closed case. To do this, click **Reopen** or **Add Comment** on the form toolbar of the [Case Details](SP_20_30_10.md) \(SP302010\) form of the closed case.

**Parent topic:**[Managing Cases](../Portal/SP__mng_Cases.md)

