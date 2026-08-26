# Single-Tier Change Management: Revenue Change Order Number {#_63a25b5a-d87a-9573-bbd1-03a8937d40cd .concept}

Each project has its own numbering sequence for revenue change numbers: the numbers assigned to the change orders that can affect the revenue of the project. This topic explains how you can change the revenue change numbers for a particular project.

By default, the **Revenue Change Order Nbr.** of a change order on the [Change Orders](PM_30_80_00.md) \(PM308000\) form is an integer that the system assigns sequentially: *0001* for the first change order for the project, *0002* for the second, *0003* for the third, and so on. The last assigned number for the project is shown in the **Last Revenue Change Order Nbr.** box on the **Summary** tab \(**Project Properties** section\) of the [Projects](PM_30_10_00.md)\(PM301000\) form.

You should adhere to the following recommendations if you manually assign revenue change numbers:

-   Use a four-digit number as a revenue change number, such as *0001*.
-   If you need to use mixed characters for a revenue change number—that is, letters, symbols, and numerals—add a four-digit number to the character string, resulting in a revenue change number such as *CO\#0001*.
-   If a project has revenue change orders and the numeric part of the last assigned revenue change number for the project consists of a one- or two-digit number, add enough zeros before the numeric part of the last change number so that the numeric part of the number is at least four digits. For example, if the **Last Revenue Change Order Nbr.** in the **Project Properties** area of the **Summary** tab of the [Projects](PM_30_10_00.md) form is *CO\#9*, change it to *CO\#0009*.

For change orders that cannot affect the project revenue and the reversing change orders \(those that reverse the impact of the original change orders\), the **Revenue Change Order Nbr.** box is read-only and contains *N/A* to indicate that there is no related revenue change order document.

You can manually change the **Revenue Change Order Nbr.** of a particular change order. If you change this number for a change order, you should make a similar change to the **Last Revenue Change Order Nbr.** of the corresponding project so that the system continues to assign these numbers correctly. Duplicate numbers within a project are not allowed.

**Tip:** If you’ve reversed the most recent change order for the project, you can reuse its revenue change number—that is, assign this number to the next created change order. To be able to do this, you need to change the value in the **Revenue Change Order Nbr.** box to the revenue change number of the change order that precedes the reversed one. This will not lead to an error of duplicated numbers because the reversed change order does not affect the project revenue anymore.

**Parent topic:**[Tracking Changes to the Project Budget](../UserGuide/Projects_CO_Mapref.md)

