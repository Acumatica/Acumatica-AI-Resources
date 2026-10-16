# Employee Time Billing: Branch Alignment in Time Tracking and Correction

You may work on projects that belong to a different branch than your own—and you may use equipment on those projects as well. In these cases, you should record the project costs under the project branch, while the related liabilities should remain under your employee branch or the branch of the user entering the equipment time.

You can keep project and GL transactions generated from employee time cards, time activities, and equipment time cards aligned with the appropriate branches. With these capabilities, the system can handle project branch mismatches in the following ways:

-   Recording project costs under the project branch for **employee time cards and activities** while keeping the related liabilities under the employee branch specified in the **Branch** box on the **General** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form
-   Using the branch to which the user is signed in for liabilities generated from **equipment time cards**
-   Warning the user about branch mismatches
-   Blocking the release of time cards or activities if the required project branch is unspecified or inaccessible to the user

**Attention:** These capabilities are available if the *Multibranch Support* or *Multicompany Support* feature is enabled \(or both are enabled\) on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Configuring Branch Defaulting in Time Cards and Time Activities

On the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, you choose how the system determines the branch in project-related employee time cards, employee time activities, and equipment time cards. To do this, you select an option in the **Branch in Project Documents** box:

-   *Ignore Project Branch*: The system determines the transaction line’s branch without considering the project branch.
-   *Use Project Branch* or *Use Project Branch in Lines Only*: The system inserts the project branch in project-related documents. These two options work the same way for time cards and time activities because the time-tracking forms don't require the document-level branch to be aligned with the project branch.

By selecting the **Block Doc. Processing on Branch Mismatch** check box, you block the release of a project-related employee time card, employee time activity, or equipment time card if it has a line with a missing project branch or the user has no access to it.

## How Branch Alignment Is Applied

Because the time-tracking forms don’t have a branch, the system doesn’t validate branch selection when you enter employee or equipment time. Instead, it validates the branches when you release a record on the following forms:

-   [Employee Time Cards](EP_30_50_00.md) \(EP305000\)
-   [Release Time Activities](EP_50_70_20.md) \(EP507020\)
-   [Release Time Cards](EP_50_50_10.md) \(EP505010\)
-   [Weekly Crew Time Entry](EP_30_71_00.md) \(EP307100\)
-   [Equipment Time Cards](EP_40_70_00.md) \(EP407000\)
-   [Release Equipment Time Cards](EP_50_50_20.md) \(EP505020\)

**Attention:** The transactions generated during the release depend on the following settings:

-   For non-payroll employees, if the *Post PM and GL Transactions* option is selected in the **Project Time for Non-Payroll Employees** box on the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form, the system generates project and GL transactions.
-   For payroll employees, the **Time Posting Option** box on the [Payroll Preferences](PR_10_10_00.md) \(PR101000\) form determines which transactions are generated:
    -   *Post PM Transactions from Time Activities and Override Them with Payroll Information*: The system generates project transactions only.
    -   *Post PM and GL Transactions from Time Activities and Override Them with Payroll Information*: The system generates project and GL transactions.

## Aligning Branches in Project-Related Employee Time Cards and Time Activities

With the branch alignment configured, when you release a project-related employee time card or time activity and the system generates project and GL transactions, the following branches are used:

-   For the project transaction on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form: The project branch
-   For the GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form:
    -   The project branch for the debit GL transaction line
    -   The employee branch for the credit GL transaction line and the Summary area

The system aligns branches for employee time so that project-related costs use the project branch and related liabilities use the employee branch. If the project branch and employee branch have different base currencies, the employee branch is used for the generated project and GL transactions.

**Attention:** If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and the project branch and employee branch have different base currencies, the employee branch is used instead.

## Correcting Time Activities and Time Cards

You may need to correct a time activity added to a time card on the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form. A released time activity has the employee branch used during the original release. When the activity is corrected, the system uses this branch for the credit GL transaction lines related to the original values instead of determining the branch from the employee’s current settings. The system processes corrections on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form as follows:

-   If you change only the time or billable time, it creates a project transaction for the difference between the original and corrected values.
-   If you change any setting that affects the transaction, it creates an opposite-sign transaction line for the original values and a new line for the corrected values. These transaction-affecting settings include the project, project task, cost code, union, labor item, shift code, work class compensation code, calculated labor cost rate, and the state of the **Billable** check box in the time-tracking record.

Time activities that you haven’t changed in a corrective time card don’t generate additional project or GL transactions.

**Parent topic:**[Billing Employee Time](../UserGuide/Projects_Tracking_Time_Mapref.md)

