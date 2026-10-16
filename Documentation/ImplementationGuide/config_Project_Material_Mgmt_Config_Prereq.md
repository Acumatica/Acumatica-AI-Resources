# Configuration of Project Material Management: Configuration Prerequisites

Before you start implementing project material management, you should be sure that the needed features have been enabled, settings have been specified, and entities have been created, as described in the following sections.

## Enabling the Needed Feature

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Material Management* feature must be enabled. You can enable this feature only if the *Inventory* feature is enabled.

## Configuring the System

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to implement project material management:

-   The Modern UI must be in use for the functionality to become available.
-   The minimum company settings have been specified, as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
-   The project accounting functionality has been configured, as described in [Basic Project Configuration: General Information](config_Project_Basic_GeneralInfo.md).
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the general ledger accounts used for project accounting have been created.

    **Important:**

    -   We recommend that you not map the Inventory account \(which is an account of the *Asset* type\) to an account group of the *Expense* type. If you need to track stock items purchased for the project in the project cost budget, we recommend that you use the commitment tracking functionality, described in [Committed Costs: General Information](../UserGuide/Projects_Commitments_GeneralInfo.md).
    -   Do not map the inventory accrual account to an account group; according to the matching principle of generally accepted accounting principles \(GAAP\), the revenue-related expenses have to be recorded to the same financial period as the revenue is. You should track these long-term purchases as project commitments rather than as actual expenses. Project stock that has been purchased for a project is recorded as an asset until you issue it from inventory because this stock has to be used for projects.
-   If you need to track the quantities and costs of items in project inventory stock, enable the *Project-Specific Inventory* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. For details, see [Tracking Project Inventory](../UserGuide/Projects_Inventory_Tracking_Mapref.md).
-   Before you start using material transfers, review these check boxes on the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form:
    -   **Hold Shipments on Entry**: If the check box is selected, a newly created document—including material transfer—on the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form are assigned the *On Hold* status.
    -   **Automatically Release IN Documents**: If the check box is selected, the system automatically releases inventory documents generated on confirmation of dispatching and transferring documents. In this case, the related single-step inventory transfer is automatically released on a material transfer confirmation; if the check box is cleared, the inventory transfer won't be released and will have the *Balanced* status.

**Parent topic:**[Implementing Project Material Management](../ImplementationGuide/config_Mapref_Project_Material_Mgmt.md)

