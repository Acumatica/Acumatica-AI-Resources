# Configuration of Project Material Management: Posting Classes for Sales Documents {#_9cb3df4a-395d-4444-b8cf-7fb66248f383 .concept}

You can control how the system determines the sales accounts and subaccounts for sales documents that include lines with items of a posting class.

In the **Use Sales Account From** box on the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form, you can select *Project* or *Project Task*. The system will use the project or project task, respectively, as the source of the sales account in the sales documents that include lines with items of this posting class.

If a non-project code is specified in a line of a document, or if no default sales subaccount has been specified in the project task or project, the system will instead use the subaccount associated with the posting class and specified in the **Sales Account** box on the **GL Accounts** tab of the [Posting Classes](../UserGuide/IN_20_60_00.md) form.

In the **Combine Sales Sub. From** box on the **General** tab of the [Posting Classes](../UserGuide/IN_20_60_00.md) form, you specify the following sources of subaccount segments:

-   *J*: The system copies the subaccount segment from the project—that is, from the **Default Sales Subaccount** box on the **Defaults** tab of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form.
-   *T*: The system copies the subaccount segment from the project task—that is, from the **Default Sales Subaccount** box on the **Summary** tab of the [Project Tasks](../UserGuide/PM_30_20_00.md) \(PM302000\) form.

If a non-project code is specified in a line of a document, or if no default sales subaccount has been specified in the project task or project, the system will instead use the subaccount associated with the posting class and specified in the **Sales Sub.** box on the **GL Accounts** tab of the [Posting Classes](../UserGuide/IN_20_60_00.md) form.

**Parent topic:**[Implementing Project Material Management](../ImplementationGuide/config_Mapref_Project_Material_Mgmt.md)

