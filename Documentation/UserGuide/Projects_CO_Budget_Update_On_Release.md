# Single-Tier Change Management: Budget Update on Change Order Release {#_6f5e971d-68c7-4522-b92f-4e56dc977029 .concept}

When you release a change order, the system checks whether the associated project already has a revenue or cost budget line with the same project task, account group, and inventory item as a change order line. If not, it creates a new budget line for the project based on the change order line. The unit rate is copied from the change order line to the new project budget line.

When you release a change order, the system updates the project budget lines with the quantities and amounts as described below. The **Potential CO Quantity** and **Potential CO Amount** of the corresponding budget lines are decreased and the **Budgeted CO Quantity** and **Budgeted CO Amount** are increased on the [Projects](PM_30_10_00.md) \(PM301000\) form. The change order is assigned the *Closed* status.

The budgeted values of the corresponding project on the [Projects](PM_30_10_00.md) form are updated as follows:

-   If the project has a revenue budget line with the same project task, account group, and inventory item as a revenue budget line of the change order, the system updates the following columns of the revenue budget line of the project on the **Revenue Budget** tab, with the column values computed as noted:
    -   **Budgeted CO Quantity** = The total quantity of released change orders
    -   **Budgeted CO Amount** = The total amount of released change orders
    -   **Revised Budgeted Quantity** = **Original Budgeted Quantity** + **Budgeted CO Quantity**
    -   **Revised Budgeted Amount** = **Original Budgeted Amount** + **Budgeted CO Amount**
    -   **Pending Invoice Amount** = **Revised Budgeted Amount** \* **Completed \(%\)** / 100 – **Actual Amount** – **Draft Invoice Amount**

        **Tip:** As the result of the update of the **Pending Invoice Amount**, the amount can be a rational value, including a negative one.

-   If the project has a cost budget line with the same project task, account group, and inventory item as a cost budget line of the change order, the system updates the following columns of the cost budget line of the project on the **Cost Budget** tab, with the column values calculated as follows:
    -   **Budgeted CO Quantity** = The total quantity of released change orders
    -   **Budgeted CO Amount** = The total amount of released change orders
    -   **Revised Budgeted Quantity** = **Original Budgeted Quantity** + **Budgeted CO Quantity**
    -   **Revised Budgeted Amount** = **Original Budgeted Amount** + **Budgeted CO Amount**

**Parent topic:**[Tracking Changes to the Project Budget](../UserGuide/Projects_CO_Mapref.md)

