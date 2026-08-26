# Companies and Branches {#_3b262f5c-aaaf-48cd-9f8b-cb3f678afc31 .concept}

In Acumatica ERP, a user can create new companies or maintain existing companies by using the [Companies](CS_10_15_00.md) \(CS101500\) form.

Multiple companies can be configured in one tenant of Acumatica ERP if the *Multicompany Support* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Company Type { .section}

Each company has one of the following types, which is specified in the **Company Type** box on the [Companies](CS_10_15_00.md) \(CS101500\) form:

-   *Without Branches*: A company with this type cannot have any branches. If the *Multibranch Support* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, this option is selected by default and cannot be changed. If the *Multibranch Support* feature is disabled and the *Multicompany Support* feature is enabled, you can create multiple companies without branches in one tenant.
-   *With Branches Not Requiring Balancing*: A company with this type must have at least one branch. If multiple branches of the company are involved in a transaction, balancing entries are not required. This option is available if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.
-   *With Branches Requiring Balancing*: A company with this type must have at least one branch. If multiple branches of the company are involved in a transaction, balancing entries are required. This option is available if the *Multibranch Support* and *Inter-Branch Transactions* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

For details about how Acumatica ERP supports multiple branches for a company, see [Multiple Branch Support](CS__con_Multiple_Branch_Support.md).

After a company has been configured, the company type still can be changed as follows.

|From|To|Condition|
|----|---|---------|
|*Without Branches*|*With Branches Not Requiring Balancing*

 or

 *With Branches Requiring Balancing*

|The company has not been extended as a customer, vendor, or both a customer and vendor.|
|*With Branches Not Requiring Balancing*

 or

 *With Branches Requiring Balancing*

|*Without Branches*|The company has only one branch or no branches at all.|
|*With Branches Not Requiring Balancing*|*With Branches Requiring Balancing*|No transactions have been posted by company branches or the company has only one branch.|
|*With Branches Requiring Balancing*|*With Branches Not Requiring Balancing*|No transactions have been posted by company branches or the company has only one branch.|

## Company Statuses { .section}

When you create a new company on the [Companies](CS_10_15_00.md) \(CS101500\) form, the company is assigned the default status of *Active*. Active companies and their branches can be selected on data entry forms and in reports. However, at some point, you may need to remove a company from the system, so that users will not be able to select the company and its branches on data entry forms and reports. In this case, you deactivate the company by clicking **Deactivate** on the More menu of the [Companies](CS_10_15_00.md) form.

You can later activate the company again by clicking **Activate** on the More menu of the [Companies](CS_10_15_00.md) form.

If the *Multiple Calendar Support* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and you activate a company, the system performs the following actions:

1.  Compares the set of financial periods in the master calendar with the set of financial periods of the current company. \(Only the IDs of the periods are compared—not their starting and ending dates.\) If these sets are different, the system generates the missing periods for the company. You can view these periods on the [Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form.
2.  On the [Company Financial Calendar](GL_20_11_00.md) form, assigns the period's status and the states of the **Closed in AP**, **Closed in AR**, **Closed in IN**, **Closed in CA**, and **Closed in FA** check boxes for each new period in the company calendar according to the following rules:
    -   If the *Centralized Period Management* feature is enabled, the period's status and the states of the **Closed in &lt;Subledger&gt;** check boxes are copied from the corresponding settings of the master calendar.
    -   If the *Centralized Period Management* feature is disabled and the missing period is the first added period in the company calendar, the period's status and the states of the **Closed in &lt;Subledger&gt;** check boxes are copied from earliest period of the company calendar.

        If the missing period is added in the middle of the company calendar—that is, if there are periods before and after the added period—the period's status and the states of the **Closed in &lt;Subledger&gt;** check boxes are copied from the period just before the added period.

        If the missing period is added to the end of the company calendar—that is, if there are no periods after the added period—the added period is assigned the *Inactive* status, and the **Closed in &lt;Subledger&gt;** check boxes are cleared.


If the *Fixed Asset Management* feature is enabled and the *Multiple Calendar Support* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) form, and you activate a company on the [Companies](CS_10_15_00.md) form, the system performs the following actions:

-   Checks whether each period in the general ledger calendar has a matching period in the calendar of the company's posting book. \(Only the IDs of the periods are compared.\)
-   Generates the missing periods in the company's posting book.

For more details about financial periods, see [Generating Financial Calendars](GL__MNG_Financial_Calendars.md), [Financial Calendar Generation: General Information](Finance_Fin_Clanedar_for_New_FinYear_GeneralInfo.md), and [Managing Financial Periods](Finance_ManagingPeriods_Mapref.md).

## Company Maintenance { .section}

For a company that has the *With Branches Not Requiring Balancing* or *With Branches Requiring Balancing* type, the **Branches** tab becomes available on the [Companies](CS_10_15_00.md) \(CS101500\) form. On this tab, a system administrator can add new branches to the company or delete branches from the list of company branches; when the company has no branches, it can be also deleted.

A company with the *Without Branches* type can be deleted if it has no GL history \(that is, if no GL transactions are associated with the company\) and if no cash accounts, employees, warehouses, and fixed assets are linked to the company.

If a user clicks **Deactivate** on the More menu of the [Companies](CS_10_15_00.md) form for a company that has branches, all the company branches will be deactivated. However, a branch cannot be deactivated if it is linked to an active warehouse, to an employee with a status other than *Inactive*, or to a fixed asset with a status other than *Disposed* or *Reversed*, and a company with such a branch also cannot be deactivated.

## Configuration of Access to Company Data { .section}

Access to the data related to a specific branch or to all branches of a company is regulated by an access role.

When an access role is specified for a company in the **Access Role** box on the [Companies](CS_10_15_00.md) \(CS101500\) form, the system prompts whether the access role should be copied to the settings of all branches of the company. When the **Access Role** box is cleared for the company, the system prompts whether the access role should be removed from the settings of all branches of the company. If no access role is specified for the company, an individual access role can be specified for each branch of the company on the [Branches](CS_10_20_00.md) \(CS102000\) from.

A user that has access to at least one of the company branches can select the company in corresponding boxes on data entry forms.

For more information about ways to manage the security of a branch, see [Security of Organization Branches](CS__con_Branch_Security_Administration.md).

## Ledgers { .section}

A company can post transactions to various ledgers, but it can be associated with only one actual ledger.

A user can manage ledgers associated with a company in any of the following ways:

-   Create for a new company a ledger of the *Actual* type by clicking **Create Ledger** on the More menu \(under **Other**\) of the [Companies](CS_10_15_00.md) \(CS101500\) form
-   Review the list of the ledgers associated with the company, add an existing ledger to the list, or remove a ledger from the list by using the **Ledgers** tab of the [Companies](CS_10_15_00.md) form
-   Review the list of all ledgers associated with the company of the selected branch by using the **Ledgers** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form
-   Maintain the list of the companies that are allowed to post to non-actual ledgers by using the [Ledgers](GL_20_15_00.md) \(GL201500\) form

An actual ledger can be detached from a company if the ledger contains no transactions associated with any branch of the company.

For more information about ledgers, see the [Managing Ledgers](GL__MNG_Managing_Ledgers.md) chapter.

## Tax Reports { .section}

For a company with the *With Branches Requiring Balancing* type, the **File Taxes by Branches** check box is available on the [Companies](CS_10_15_00.md) \(CS101500\) form. If the check box is cleared, each tax report includes data related to all branches of the company. If the check box is selected, each branch of the company requires an individual report.

For a company with any other type, tax reports always include company-wide data.

## Visual Appearance { .section}

On the **Visual Appearance** tab of the [Companies](CS_10_15_00.md) \(CS101500\) or [Branches](CS_10_20_00.md) \(CS102000\) form, a user can specify separate images for the logo displayed in the top left corner of Acumatica ERP and for the logo displayed on reports for the selected company or branch.

**Parent topic:**[Managing Companies and Branches](../UserGuide/OS__MNG_Companies_and_Branches.md)

