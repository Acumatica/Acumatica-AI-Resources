# Configuration of Project Material Management: Reason Codes for Issuing Project Stock {#_61317371-4ba7-4831-9ceb-2a24e50984ac .concept}

You may need to directly issue items stored in a company warehouse for a project. You do this by creating and releasing an inventory issue transaction on the [Issues](../UserGuide/IN_30_20_00.md) \(IN302000\) form or an inventory adjustment transaction on the [Adjustments](../UserGuide/IN_30_30_00.md) \(IN303000\) form. In inventory transaction lines on either form, you specify the following:

-   The inventory item
-   The project and project task for which the item is being used
-   The reason code that serves as the source of the offset accounts and subaccounts \(if subaccounts are in use in the system\).

To make the system use the subaccount from the project or project task, you define a reason code with the *Issue* or *Adjustment* type on the [Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\) form. In the **Combine Sub. From** box, you specify the following sources of subaccount segments:

-   *J*: The system copies the subaccount segment from the project—that is, from the **Default Cost Subaccount** box on the **Defaults** tab of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form.
-   *T*: The system copies the subaccount segment from the project task—that is, from the **Default Cost Subaccount** box on the **Summary** tab of the [Project Tasks](../UserGuide/PM_30_20_00.md) \(PM302000\) form.

If a non-project code is specified in a line of an inventory issue or inventory adjustment, or if no default cost subaccount has been specified in the project task or project, the system will instead use the subaccount associated with the reason code—that is, specified in the **Subaccount** box on the [Reason Codes](../UserGuide/CS_21_10_00.md) form.

For more information about automatically combined subaccounts, see [Combined Subaccounts: General Information](config_Combined_Subaccounts_GeneralInfo.md).

**Parent topic:**[Implementing Project Material Management](../ImplementationGuide/config_Mapref_Project_Material_Mgmt.md)

