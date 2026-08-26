# Configuration of Project Material Management: Posting Classes for Purchase Documents {#_bbd7cd4d-491c-4b61-867e-8e4817f41c45 .concept}

You can control how the system determines the cost of goods sold \(COGS\) and expense accounts and subaccounts for purchase documents that include lines with items of a posting class.

In the **Use COGS/Expense Account From** box on the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form, you can select *Project* or *Project Task*. The system will use the project or project task, respectively, as the source of the COGS or expense account in the purchase documents that include lines with items of this posting class.

If a non-project code is specified in a line of one of these documents, or if no default cost account has been specified in the project or project task, the system will instead use the account associated with the posting class. This account is specified in the **COGS/Expense Account** box on the **GL Accounts** tab of the [Posting Classes](../UserGuide/IN_20_60_00.md) form.

In the **Combine COGS/Expense Sub. From** box on the **General** tab of the [Posting Classes](../UserGuide/IN_20_60_00.md) form, you specify the following sources of subaccount segments:

-   *J*: The system copies the subaccount segment from the project—that is, from the **Default Cost Subaccount** box on the **Defaults** tab of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form.
-   *T*: The system copies the subaccount segment from the project task—that is, from the **Default Cost Subaccount** box on the **Summary** tab of the [Project Tasks](../UserGuide/PM_30_20_00.md) \(PM302000\) form.

If a non-project code is specified in a line of a document, or if no default cost subaccount has been specified in the project task or project, the system will instead use the subaccount associated with the posting class. This subaccount is specified in the **COGS/Expense Sub.** box on the **GL Accounts** tab of the [Posting Classes](../UserGuide/IN_20_60_00.md) form.

**Parent topic:**[Implementing Project Material Management](../ImplementationGuide/config_Mapref_Project_Material_Mgmt.md)

