# Project Quotes: Creation of a Project from a Project Quote {#_9270d45a-8a6b-5252-8a73-5031ccc3b8a6 .concept}

This topic describes the rules that the system uses during the creation of a project based on a project quote, as well as some specific settings that the system inserts.

## Summary Information { .section}

To create a project based on a project quote, the user clicks the **Convert to Project** command on the [Project Quotes](PM_30_45_00.md) \(PM304500\) form and specifies the needed settings in the **Convert to Project** dialog box.

When the system creates a project based on a project quote, the settings of the created project in the Summary area of the [Projects](PM_30_10_00.md) \(PM301000\) form are populated as follows:

-   **Project ID**: If auto-numbering has been configured for projects, the project identifier is assigned automatically. If auto-numbering has not been configured, the system fills this box with the **New Project ID** value that was specified for the project quote on the [Project Quotes](PM_30_45_00.md) form.
-   **Template**: The project template selected in the project quote.

    If the project template has attached files or notes, these files and notes will be copied to the created project. If a project template task has attached files or notes, these files and notes will be copied to the project tasks.

    **Attention:** The project tasks and budget may be structured differently for a project created based on a project quote than for a project created based on a project template.

-   **Status**: The system sets the status of the new project to *Active* if the **Activate Project** check box was selected in the **Convert to Project** dialog box during the conversion process. If the check box was cleared, the status of the project is *In Planning*.
-   **Customer** and **Description**: The system copies the values from the project quote settings \(in the **Business Account** and **Description** boxes, respectively, of the [Project Quotes](PM_30_45_00.md) form\) to these boxes.
-   **Summary** tab: The system copies the settings of the project template that have been specified in the project quote to this tab.

## Project Tasks { .section}

When the system creates a project based on the project quote on the [Project Quotes](PM_30_45_00.md) \(PM304500\) form, it populates the project tasks on the **Tasks** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form using the following rules:

-   If the project quote has two or more tasks, these tasks are copied to the project. In this case, if the project quote does not have a default task, the created project does not have a default task either.
-   If the project quote has only one task, this task is copied to the project. It is also marked as the default task of the project, even if the task has not been marked as the default task of the project quote.
-   If the project quote has no tasks, the system creates a default project task for the project—that is, a task with an identifier of *0* and a description of *Default*.
-   The system sets the status of all project tasks to *Active* if the **Activate Tasks** check box was selected in the **Convert to Project** dialog box during the conversion process. If the check box was cleared, the system sets the status of the project tasks to *In Planning*.
-   The location of the created tasks is the location of the project quote, as specified on the **Financial** tab of the [Project Quotes](PM_30_45_00.md) form.
-   If the project quote has only one task or does not have any tasks and if any of the estimation lines of the project quote have no project task assigned, the system assigns the default task of the project to the cost budget and revenue budget lines of the project that it creates based on these estimation lines.

The system specifies the default sales, cost, and accrual accounts and subaccounts as follows:

-   In the created project, the system inserts the default accounts and subaccounts specified for the template on the [Project Templates](PM_20_80_00.md) \(PM208000\) form.
-   If a project quote is converted to a project through a project template, the system copies the default values from the **Default Task for GL Account** table on the [Project Templates](PM_20_80_00.md) \(PM208000\) form to the same table on the [Projects](PM_30_10_00.md) \(PM301000\) form.
-   If a project task is created based on a project template task, the system populates the default accounts and subaccounts with those specified for the project template task on the [Project Template Tasks](PM_20_80_10.md) \(PM208010\) form. If the accounts and subaccounts are not specified in the project template task, the system inserts the default values specified for the project template.
-   If a project task is created based on the common task, the system populates the default accounts and subaccounts with those specified for the common task on the [Common Tasks](PM_20_80_30.md) \(PM208030\) form. If the accounts and subaccounts are not specified for the common task, the system inserts the default values specified for the project template.
-   If a project task has been added to the project quote manually, the system inserts the default accounts and subaccounts specified for the project template.

## Revenue Budget { .section}

When the system creates a project based on the project quote, to populate the revenue budget, the system groups the estimation lines of the project quote depending on the revenue budget level \(*Task*, *Task and Item*, or *Task and Cost Code*\) of the project template specified for the project quote; the revenue budget level of the project template is specified on the **Summary** tab \(**Project Properties** section\) of the [Project Templates](PM_20_80_00.md) \(PM208000\) form. For each group of estimation lines, on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, the system creates a revenue budget line with the following settings:

-   **Project Task**: The system uses the project task of the aggregated estimation lines.
-   **Inventory ID**: The system uses the inventory ID of the aggregated estimation lines. Estimation lines without an inventory item specified are aggregated into a revenue budget line with this column populated with the empty item code, which is *N/A* by default. You can change the default empty item code in the **Empty Item Code** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.
-   **Account Group**: The system uses the revenue account group of the aggregated estimation lines.
-   **Description**: Depending on the number of aggregated estimation lines in the group, the system assigns the description to the revenue budget line as follows:
    -   If the group consists of one line, the description of this line is copied to the revenue budget line.
    -   If the group consists of two or more lines, the description of the revenue budget line is *Aggregated: \[Account Group Description\]*, where *Account Group Description* is the description of the account group by which the group of estimation lines has been aggregated.
-   **Original Budgeted Quantity**: The system inserts the total quantity of the aggregated lines if each of the lines has the same UOM or a UOM that can be converted. Otherwise, the quantity is *0*.
-   **UOM**: The system uses the UOM of the aggregated estimation lines if each of the lines has the same UOM or a UOM that can be converted. Otherwise, the UOM is empty.
-   **Unit Rate**: The calculation of the unit rate of the revenue budget line depends on the number of aggregated estimation lines in the group as follows:
    -   If the group consists of one line, the system calculates the unit rate based on the values in the estimation line by using the following formula: `Unit Rate = Amount / Quantity`, where `Amount = Ext. Price – Discount Amount`.
    -   If the group consists of two or more lines and each of these lines has the same UOM or a UOM that can be converted, the system calculates the unit rate as the total amounts of the lines minus the total discount and divided by the total quantity of the lines.
    -   If the group of aggregated estimation lines consists of two or more lines and the lines have different UOMs, the unit rate of the revenue budget line is *0*.
-   **Original Budgeted Amount**: The system inserts the total amount of the aggregated lines.
-   **Tax Category**: The tax category of the revenue budget line depends on the tax category of the aggregated estimation lines in the group as follows:
    -   If the group consists of one line, the tax category of this line is copied to the revenue budget line.
    -   If the group consists of two or more lines and all the lines have the same tax category, this tax category is copied to the revenue budget line.
    -   If the group consists of two or more lines and the lines have either the same tax category or no tax category specified, the specified tax category is copied to the revenue budget line.
    -   If the group consists of two or more lines and the lines have at least two different tax categories, the tax category of the revenue budget line is empty.

## Cost Budget { .section}

When the system creates a project based on the project quote, to populate the cost budget, the system groups the estimation lines of the project quote depending on the cost budget level of the project template specified for the project quote; the cost budget level of the project template is specified on the **Summary** tab \(**Project Properties** section\) of the [Project Templates](PM_20_80_00.md) \(PM208000\) form. For each group of estimation lines, on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, the system creates a cost budget line with the following settings:

-   **Project Task**: The system inserts the project task of the aggregated estimation lines.
-   **Inventory ID**: The system uses the inventory ID of the aggregated estimation lines. Estimation lines without an inventory item specified are aggregated into a cost budget line with this column populated with the empty item code, which is *N/A* by default. You can change the default empty item code in the **Empty Item Code** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.
-   **Account Group**: The system inserts the cost account group of the aggregated estimation lines.
-   **Description**: Depending on the number of aggregated estimation lines in the group, the system assigns the description to the cost budget line, as follows:
    -   If the group consists of one line, the description of this line is copied to the cost budget line.
    -   If the group consists of two or more lines, the description of the cost budget line is *Aggregated: \[Account Group Description\]*, where *Account Group Description* is the description of the account group by which the group of estimation lines has been aggregated.
-   **Original Budgeted Quantity**: The system inserts the total quantity of the aggregated lines if each of the lines has the same UOM or a UOM that can be converted. Otherwise, the quantity is 0.
-   **UOM**: The system uses the UOM of the aggregated estimation lines if each of the lines has the same UOM or a UOM that can be converted. Otherwise, the UOM is empty.
-   **Unit Rate**: The calculation of the unit rate of the cost budget line depends on the number of aggregated estimation lines in the group as follows:
    -   If the group consists of one line, the unit cost of this estimation line is copied to the cost budget line.
    -   If the group consists of two or more lines, the system calculates the unit rate as the sum of the **Ext. Cost** values of lines that have a nonzero quantity divided by the total quantity of these lines. The lines of the group with a quantity or **Ext. Cost** of *0* are ignored in the calculation.
-   **Original Budgeted Amount**: The system calculates this amount as the total extended cost of the aggregated lines.
-   **Unit Price**: The calculation of the unit price of the cost budget line depends on the number of aggregated estimation lines in the group as follows:
    -   If the group of aggregated estimation lines consists of one line, the system calculates the unit price based on the values in the estimation line of project quote by using the following formula: `Unit Price = Amount / Quantity`, where `Amount = Ext. Price – Discount Amount`.
    -   If the group of aggregated estimation lines consists of two or more lines and each of these lines has the same UOM or a UOM that can be converted, the system calculates the unit price as the total amount of the lines minus the total discount and divided by the total quantity of the lines.
    -   If the group of aggregated estimation lines consists of two or more lines and the lines have different UOM values, the unit price of the cost budget line is *0*.
-   **Revenue Task**: The system inserts the revenue task based on the type of the project task in the line as follows:
    -   If the project task has the *Cost and Revenue Task* type, the system inserts this project task in this column automatically. You can override this value, if needed.
    -   If the project task has the *Cost Task* type, the system leaves the column empty. You should select the corresponding revenue task manually.

## Project Addresses {#section_s5j_ny3_nsb .section}

When the system creates a project based on the project quote on the [Project Quotes](PM_30_45_00.md) \(PM304500\) form, the system copies the settings from the project quote to the project by using the following rules:

-   The address information in the **Project Address** section on the **Addresses** tab of the [Project Quotes](PM_30_45_00.md) form is copied to the same section and tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.
-   The contact information in the **Bill-To Contact** section on the **Addresses** tab of the [Project Quotes](PM_30_45_00.md) form is copied to the **Bill-To** section of the same tab of the [Projects](PM_30_10_00.md) form.
-   The address information in the **Bill-To Address** section on the **Addresses** tab of the [Project Quotes](PM_30_45_00.md) form is copied to the same section and tab of the [Projects](PM_30_10_00.md) form.

## Other Project Settings { .section}

The project settings on the following tabs of the [Projects](PM_30_10_00.md) \(PM301000\) form are copied from the listed sources:

-   **Activities**: The project quote if the **Link Activities to Project** check box was selected in the **Convert to Project** dialog box during conversion
-   **Equipment**, **Defaults**, and **Mailing &amp; Printing**: The project template specified for the project quote
-   **Attributes**: The project quote

**Parent topic:**[Processing Project Quotes](../UserGuide/Projects_Project_Quotes_Mapref.md)

