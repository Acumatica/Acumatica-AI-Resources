# Recurring Transactions: Mass-Processing {#_19dfe0b0-7499-4a98-89f3-03d1df940658 .concept}

This topic explains how to release and post multiple batches.

## Mass-Running Schedules {#section_csh_mjv_vxb .section}

You can run multiple schedules on the [Generate Recurring Transactions](GL_50_40_00.md) \(GL504000\) form. In the **Execution Date** box, you select the date that the system will use to select the schedules to be loaded to the table. Those schedules whose **Next Execution** date is earlier than or the same as the date specified in this box will be loaded.

You then specify the condition that the system will use to stop schedule executions by selecting one of the following option buttons, and run the process:

-   **Stop on Execution Date**: The system stops running schedules on the date that you specify in the **Execution Date** box.
-   **Stop After Number of Executions**: The system stops running schedules when the specified number of schedule executions have been performed. If you select this option button, specify the number of executions in the adjacent box.

**Parent topic:**[Processing Recurring Transactions](../UserGuide/Finance_Recurring_Transactions_Mapref.md)

