# Configuration of Project Material Management: Posting Classes for Stock Items {#_0798ce36-5a46-43ba-aac7-81e9a98bfffb .concept}

If you want to post GL transactions related to stock items being purchased or sold for projects to separate accounts and subaccounts, you need to configure a separate posting class for these items. You create posting classes on the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form and specify the following settings:

-   **Class ID**: You type the unique identifier of the posting class.
-   GL accounts: You specify the general ledger accounts and subaccounts assigned to the posting class. The exact set of accounts and subaccounts you need to select depends on the items for which you’re creating a posting class.
-   Posting settings for transactions: You specify which GL account the system must use for which type of transaction.

When you create posting classes, you can configure the following project-related scenarios to post transactions to expense and revenue accounts based on your organization’s business processes:

-   Posting transactions to GL accounts specific for a particular project: Suppose that you want to use a separate account and subaccount for each project task. You do the following:
    1.  Assign a specific account and subaccount to each project task.
    2.  Create a posting class. In the class, select *Project* as the account source and specify the subaccount mask that corresponds to the project \(*J*\).
    3.  Optional: Assign item classes to the created posting class.
    4.  Assign particular items to the created posting class.
-   Posting transactions to GL accounts specific for a particular project task: Suppose that you want to use a separate account and subaccount for each project task. You do the following:
    1.  Assign a specific account and subaccount to each project task.
    2.  Create a posting class. In the class, you select *Project Task* as the account source and specify the subaccount mask that corresponds to the project task \(*T*\).
    3.  Optional: Assign item classes to the created posting class.
    4.  Assign particular items to the created posting class.

For more details, see [Posting Classes: General Information](../UserGuide/Posting_Classes_GeneralInfo.md).

**Parent topic:**[Implementing Project Material Management](../ImplementationGuide/config_Mapref_Project_Material_Mgmt.md)

