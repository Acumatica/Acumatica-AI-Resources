# Integration with Projects {#_cc311414-d291-4f75-bfb0-2998a8e4160a .concept}

The following features are only available when the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and **PROD** is selected in the **Visibility Settings** section on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.

-   Includes project/task fields on production orders and estimates.
-   Projects are updated by production transactions when the production order work in process or an inventory item has an account group used by the Project module and the Production Order has the *Update Project* box checked.
-   Production orders can be created from a project task on the [Projects](PM_30_10_00.md) \(PM301000\) form when the project is active and the task status is *In Planning* or *Active*.
-   Both the project and task must have a status of *Active* to process production transactions.
-   Option on production order to reference a project, but not update it.
-   Production orders created for a sales order copy the project references.
-   Projects may be updated from labor transactions if the production order references a project and update project is checked. The process or creating labor time activities performed on the [Create Labor Time Activities](AM_51_30_00.md) \(AM513000\) is used to create the employee time activities transactions.

For examples of integrating production management with projects, you can download the [Project Integration Examples](Files/MFG_PM_Project_Integration_Examples.pdf) file.

## Project Form Changes { .section}

The **PROD** check box has been added to the **Visibility Settings** section on the [Projects Preferences](PM_10_10_00.md) \(PM101000\). You have the flexibility to decide if specific projects and tasks are visible for production orders and estimates. The following project management forms have enhancements to support the production order integration.

-   [Projects Preferences](PM_10_10_00.md)
-   [Project Templates](PM_20_80_00.md) \(PM208000\)
-   [Project Template Tasks](PM_20_80_10.md) \(PM208010\)
-   [Projects](PM_30_10_00.md) \(PM301000\)
-   [Project Tasks](PM_30_20_00.md) \(PM302000\)

For more information, you can download the [Project Visibility Enhancements](Files/MFG_PM_Project_Visibility_Enhancements.pdf) file.

## Additional Changes { .section}

-   The production order selector used by multiple forms includes columns for project, task, and cost .
-   The following forms similarly have been enhanced to show project, task, and cost code:
    -   [Close Production Orders](AM_50_60_00.md) \(AM506000\)
    -   [Production Summary](AM_00_00_06.md) \(AM000006\)
    -   [Release Production Orders](AM_50_00_00.md) \(AM500000\)

## Hints { .section}

The work in process asset account associated with each production order collects all of the manufacturing expenses \(materials, labor, overhead, scrap, etc.\). The work in process and inventory asset accounts are the only accounts that are posted with project transactions. Expense transactions \(such as those for labor, overhead, and scrap\) do not post to projects. We strongly recommend that you create a work in process account to be used only for production orders in order to facilitate reconciliation with the GL:

-   You should not purchase items you intend to issue to production orders that reference a project and the **Update Project** check box on the production order is selected otherwise you would charge the project twice.
-   For the above reason, purchase orders created on the [Critical Materials](AM_40_10_00.md) \(AM401000\) form do not reference the project from the production order. Projects are updated when the materials are issued to the production order and the **Update Project** check box for the production order is selected.
-   Inventory items can be issued or received to any valid warehouse location; that is, transactions do not require project-specific warehouse locations.
-   Estimates do not create accounting transactions and therefore do not update projects.
-   Project references on estimates do not update the corresponding project references on opportunities or sales orders.
-   If you have both project and non-project production orders it may make sense to create separate order types on the [Production Order Types](AM_20_11_00.md) \(AM201100\) form to ensure the correct settings for account numbers and costing methods. If you do this, you could also clear the default order type on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form to force the users to choose the correct order type.

**Parent topic:**[Other Manufacturing Functionality](../UserGuide/MFG_Other_Functionality.md)

