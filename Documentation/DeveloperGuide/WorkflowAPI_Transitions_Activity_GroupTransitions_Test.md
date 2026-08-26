# Step 5: Testing Transitions With Conditions {#_b04d2909-9859-4414-be62-189eda31df2e .task}

In this step, you will test transitions that depend on a condition. Do the following:

1.  Rebuild the `PhoneRepairShop_Code` project.
2.  In Acumatica ERP, create a new record on the Repair Work Orders \(RS301000\) form.
3.  On the form, specify the following values:
    -   **Customer ID**: *C000000001*
    -   **Service**: *Liquid Damage*
    -   **Device**: *Nokia 3310*
    -   **Description**: `Liquid Damage, Nokia 3310`
4.  On the form toolbar, click **Remove Hold**.
5.  Notice that the repair work order status has been changed to *Pending Payment* \(in contrast to what has been tested in [Transitions: To Implement a Transition Triggered by an Action](WorkflowAPI_Transitions_Activity_RemoveHold.md)\), because the service specified for the order requires prepayment. You can see that the service requires prepayment on the Repair Services \(RS201000\) form.

**Parent topic:**[Transitions: To Implement a Group of Transitions](../DeveloperGuide/WorkflowAPI_Transitions_Activity_GroupTransitions.md)

