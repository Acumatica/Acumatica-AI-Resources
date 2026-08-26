# Configuration of Project Material Management: Default Accounts in Projects and Project Tasks {#_0a2c5be3-ea47-4f27-ad10-286d3178eb95 .concept}

You can use projects and project tasks as a source of accounts and subaccounts in sales documents, purchase documents, and inventory transactions.

On the **Defaults** tab of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form and the **Summary** tab of the [Project Tasks](../UserGuide/PM_30_20_00.md) \(PM302000\) form, you specify the following accounting settings:

-   The **Default Sales Account** and **Default Sales Subaccount** to be used in billing documents and allocations for the project.

    If the *Subaccounts* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you must specify the default sales subaccount for a project and each project task if the default sales account is specified.

-   The **Default Cost Account** and **Default Cost Subaccount** to be used in purchase documents and allocations for the project.

    If the *Subaccounts* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, you must specify the default cost subaccount for a project and each project task if the default cost account is specified.


To post GL transactions for stock items purchased or sold for projects to separate accounts and subaccounts, you need to set up a separate posting class for these items. For details, see [Configuration of Project Material Management: Posting Classes for Stock Items](config_Project_Material_Mgmt_Posting_Classes_for_Stock_Items.md). When the posting class has been set up, you adjust the posting settings for the sales and purchase documents, as described in [Configuration of Project Material Management: Posting Classes for Purchase Documents](config_Project_Material_Mgmt_Posting_Classes_for_Purchase_Documents.md) and [Configuration of Project Material Management: Posting Classes for Sales Documents](config_Project_Material_Mgmt_Posting_Classes_for_Sales_Documents.md).

**Parent topic:**[Implementing Project Material Management](../ImplementationGuide/config_Mapref_Project_Material_Mgmt.md)

