# Configuration of Project Material Management: General Information {#_074ed8c6-9c26-4ec8-bceb-cd7d081f55ab .concept}

Some projects require materials—defined as stock and non-stock items in Acumatica ERP—that you need to plan, budget, and manage for smooth project execution. To ease this process, you can use the [Project Materials](../UserGuide/PM_30_65_00.md) \(PM306500\) form to manage any project’s material list.

## Learning Objectives { .section}

-   Configure the posting classes for project-related stock
-   Configure the reason codes to be used for project-related inventory transactions
-   Set up the availability calculation rules for projects
-   Set up cost accrual for non-stock items

## Applicable Scenarios { .section}

-   You are initially implementing Acumatica ERP and the *Material Management* feature is included in your license.
-   You have purchased a license that includes the *Material Management* feature, and you need to configure material management in the existing Acumatica ERP system.

## General Configuration Steps of Project Material Management { .section}

To configure project material management in Acumatica ERP, you perform the following general steps:

1.  **Creating the posting class for project-related inventory transactions**. On the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form, you create the needed posting class for stock items. For details, see [Configuration of Project Material Management: Posting Classes for Stock Items](config_Project_Material_Mgmt_Posting_Classes_for_Stock_Items.md).
2.  **Specifying a default reason code for projects**. On the [Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\) form, you define a reason code with the *Issue* type to make the system use the account from the project or project task when project materials are issued. Then you select this reason code in the **Default Issue Reason Code** box on the [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM100000\) form. The system will insert this reason code in each line of a new document of the *Material Issue* type on the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form. For details, see [Configuration of Project Material Management: Reason Codes for Issuing Project Stock](config_Project_Material_Mgmt_Reason_Codes_for_Project_Stock.md).
3.  **Setting up the expense account groups**. On the [Account Groups](../UserGuide/PM_20_10_00.md) \(PM201000\) form, you select the *Material* reporting group for the expense account groups that you’ll use in cost budget lines related to project materials. Selecting this option makes the system calculate the total budgeted amount for the materials related to cost budget lines with this account group on the [Project Materials](../UserGuide/PM_30_65_00.md) \(PM306500\) form.
4.  **Creating availability calculation rules for projects**. On the [Availability Calculation Rules](../UserGuide/IN_20_15_00.md) \(IN201500\) form, you create the needed availability calculation rules to be able to track available project materials. For details, see [Configuration of Project Material Management: Availability Calculation Rules](config_Project_Material_Mgmt_Availability_Calculation_Rules.md).

**Parent topic:**[Implementing Project Material Management](../ImplementationGuide/config_Mapref_Project_Material_Mgmt.md)

