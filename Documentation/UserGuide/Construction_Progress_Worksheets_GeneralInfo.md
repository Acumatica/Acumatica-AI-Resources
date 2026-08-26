# Unit Tracking in Projects: General Information {#_72d17d5c-4a91-422e-8bfb-095851e76729 .concept}

In Acumatica ERP Construction Edition, foremen and site supervisors can capture the units that were installed or used during the execution of a construction project task by using progress worksheets. Also, project managers can estimate the project progress and quickly track unit usage in projects based on these progress worksheets.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure a project for tracking unit usage
-   Create a template of a progress worksheet for a particular project
-   Create a progress worksheet
-   Process a progress worksheet
-   Create a progress worksheet linked to a daily field report

## Applicable Scenarios { .section}

An employee working on a project site can enter and release a progress worksheet to capture project activities on the unit level directly from the project site.

A project manager can review progress worksheets to track unit usage in projects and track project progress.

## Creation of a Progress Worksheet {#section_isf_kqw_g5b .section}

You create a new progress worksheet on the [Progress Worksheets](PM_30_30_00.md) \(PM303000\) form. You select the project for which progress should be captured, specify the date on which the progress is being reported, and provide a brief description for the document. When you have specified all the needed settings, you save the progress worksheet with the *On Hold* status.

On the **Details** tab, you add cost budget lines and specify the quantities of units that have been used for the project. You can add the progress worksheet lines in any of the following ways:

-   To preload the progress worksheet template, click **Load Template** on the table toolbar. The system automatically adds all cost budget lines of the selected project for which **Productivity Tracking** is set to *Template* on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) form.
-   To manually add particular cost budget lines, click **Add Budget Lines** on the table toolbar. The table in the **Add Budget Lines** dialog box, which opens, shows the lines for which **Productivity Tracking** is set to *Template* and *On Demand* on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) form. You select the unlabeled check boxes for the lines that you want to add to the progress worksheet, and then you click **Add &amp; Close**.

For each of the cost budget lines that have been added in the **Completed Quantity** column of the **Details** tab, you specify the quantity of the units that have been used or installed on the project site.

When you have finished modifying the progress worksheet, you prepare it to be released by clicking **Remove Hold** on the form toolbar. The progress worksheet is assigned the *Open* status and cannot be edited. Then you release the progress worksheet by clicking **Release** on the form toolbar to indicate that the daily progress has been reported in full for the selected cost budget lines. The document is assigned the *Closed* status.

After the progress worksheet is released, the system updates the **Previously Updated Quantity**, **Total Completed Quantity**, and **Completed \(%\), Total** columns for the lines of progress worksheets that have been created for the same project.

## Linking of a Progress Worksheet to a Daily Field Report {#section_qwf_sbf_m5b .section}

If the *Construction Project Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can initiate the creation of a progress worksheet while you are entering a daily field report on the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form. On the **Progress Worksheets** tab, you add cost budget lines and enter the **Completed Quantity** values to capture the units used on-site during the working day.

On release of the daily field report, the progress worksheet linked to the daily field report is created on the [Progress Worksheets](PM_30_30_00.md) \(PM303000\) form. The system assigns it the *On Hold* status and inserts the identifier of the daily field report in the **Daily Field Report** box in the Summary area of the form.

For the daily field report, on the **Progress Worksheets** tab of the [Daily Field Report](PJ_30_40_00.md) form, the system inserts the reference number of the created progress worksheet in the **Worksheet Nbr.** column for each line.

## Correction of a Progress Worksheet { .section}

If a progress worksheet has the *Closed* status and corrections to it are needed, it cannot be edited. Instead, you can make changes to it in any of the following ways:

-   To completely reverse the impact of the progress worksheet \(and thus negate its effects\), you open it on the [Progress Worksheets](PM_30_30_00.md) \(PM303000\) form and click **Reverse** on the More menu. The system creates and opens a new progress worksheet with details similar to those of the progress worksheet and opposite values in the **Completed Quantity** column on the **Details** tab. Then you release this progress worksheet.
-   To correct the details directly in the progress worksheet, you open it on the [Progress Worksheets](PM_30_30_00.md) form and click **Correct** on the More menu. The system assigns the progress worksheet the *On Hold* status, so that you can correct the completed quantities in any lines. You then release the progress worksheet again.
-   To be able to make corrections in a progress worksheet that is linked to a daily field report, you need to assign the *On Hold* status to both documents. Then you can correct the progress worksheet lines either on the **Details** tab of the [Progress Worksheets](PM_30_30_00.md) form or on the **Progress Worksheets** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form. After you have made needed corrections \(which are reflected on both forms\), you complete the daily field report and release the progress worksheet.

**Parent topic:**[Tracking Project Progress by Unit](../UserGuide/Construction_Progress_Worksheets_Mapref.md)

