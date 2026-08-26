# Multiple Branch Support {#_633b757d-4d8a-4dde-b7be-4fdb8f2968da .concept}

Sooner or later, small and medium-sized businesses may face the challenges presented by growth. The organization can grow by adding new locations that become branches with some degree of autonomy.

Because most Acumatica ERP customers are small and mid-sized businesses, the multibranch functionality has been developed for organizations that meet certain requirements:

-   All branches use the same base currency.
-   The chart of accounts is shared among branches, or similar charts of accounts used by different branches can be merged into one chart of accounts used by all branches.
-   The branches have the same financial year and periods.

Larger organizations with base currencies different in different branches, fiscal years, and periods can configure their subsidiaries as separate organizations with individual company IDs and use the consolidation functionality to be able to report as a single company. For details, see [Configuring GL Consolidation](Finance_GL_Consolidation_Configuration_Mapref.md) and [Performing GL Consolidation](Finance_GL_Consolidation_Mapref.md).

## Organization as a Structure of Branches { .section}

Acumatica ERP supports multibranch functionality and provides several basic models for implementing most typical organization structures. For details, see [Basic Models for Multibranch Organization](CS__con_Basic_Models_for_Multi-Branch_Organization.md).

In Acumatica ERP, an organization has a company account with a company ID. Within a company account, at least one branch is needed to represent the organization itself. If the organization includes more than one branch, organization branches are created within the same company ID. The identifiers for branches \(Branch IDs\) are based on the *BIZACCT* segmented key—that is, they have the same segments as identifiers for organization's customers and vendors.

## User Access to Branch Data { .section}

Since the branches are created within the same organization, they have some shared data and some branch-specific data.

Each employee \(user\) is assigned to a specific branch. To restrict user access to branch-specific data, you can configure a branch access role for each branch. Then the branch employees will be able to access the shared data \(as their roles allow\) and the data specific to their branch. To employees who should have access to other branches too, you must assign the access roles for the branches in the user's scope. For details, see [Security of Organization Branches](CS__con_Branch_Security_Administration.md). If a user has access to several branches, the user will be able to choose the branch he or she needs by selecting it from the form toolbar on each data entry form.

## Data Shared Between Branches { .section}

Some of the data is unconditionally shared and available in all branches for all users who have access to this data by their roles.

In addition to the financial year and periods, the organization's branches share the following information:

-   The chart of accounts.
-   Subaccounts.
-   Budget tree, for details, see [Budget Tree](../ImplementationGuide/config_Budget_Tree_Mapref.md).
-   Taxes, tax categories, and tax zones.
-   Credit terms and overdue charges.
-   Statement cycles.
-   Customer and vendor classes.
-   Customers and vendors. You can specify for some customer and vendor locations a default branch with which they have operations, and this location will be unavailable for selection from other branches.
-   Stock and non-stock items. If you need to view inventory by branch, configure the *INVENTORY* segmented key appropriately, with a segment designating a branch to which the item belongs, but all items will be visible in the list of available items.
-   Lot and serial classes.
-   Units of measure and conversion rules.
-   Posting classes for inventory.

Company tree and assignment maps should include workgroups that belong to all branches. Approval routes may pass across the entire organization.

**Note:** You can use the functionality of restriction groups to assign specific accounts and subaccounts to a particular branch. For details, see [Security of Organization Branches](CS__con_Branch_Security_Administration.md).

## Branch-Specific Data { .section}

The following entities are assigned to only one of the branches:

-   Cash accounts \(each of which is denominated in a specific currency\)
-   Warehouses
-   Employees
-   Buildings \(a sort of fixed asset\)

Do not create a subaccount segment for branches; transactions are marked by the originating branch in other ways. Bills and invoices as well as other documents are associated with the particular branch in which they were created. To make them easily identifiable by branch, you can create branch-specific subsequences for all numbering sequences involved by using the [Numbering Sequences](CS_20_10_10.md) \(CS201020\) form, so that a document originating in a specific branch will have a reference number clearly associated with the branch of origin.

If a user has a branch access role that provides access to only one of the branches, the user will be able to view only the documents related to the respective branch.

## Data Consolidation { .section}

The multibranch functionality, as it is implemented in Acumatica ERP, enables complex organizations to view the consolidated data from multiple branches without having to perform any additional operations and in real time. It is easy to configure consolidated replenishment or centralized payment of bill or view consolidated data on reports running them from the headquarters branch.

When a user opens a report or inquiry, the system checks the user's access rights to branches. If a user has access to all branches, this user can view the data of any selected branch or the consolidated data by leaving the **Branch** box blank. If a user has access to only one branch, this user will be able to view only the data related to the particular branch even if he or she runs the report that should show the consolidated data.

Replenishment is performed on a branch basis, although you can implement the following scenario: The headquarters has a large warehouse for which you configure automatic replenishment. Warehouses assigned to other branches are replenished through transfers from the headquarters' warehouse. Thus, your organization will be able to save on volume discounts.

In your system, bills can be paid by a headquarters branch on behalf of other branches. To do this, assign to authorized personnel the roles that provide access to branches. Then the employees who pay the bills will be able to view the bills from all branches on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) and [Prepare Payments](AP_50_30_00.md) \(AP503000\) forms. The cash accounts from which payments are made should be assigned to the headquarters branch.

**Parent topic:**[Managing Companies and Branches](../UserGuide/OS__MNG_Companies_and_Branches.md)

