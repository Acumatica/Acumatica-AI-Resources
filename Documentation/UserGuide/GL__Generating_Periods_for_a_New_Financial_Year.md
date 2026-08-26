# To Generate Periods for New Financial Years in Master Calendar {#_324ee873-c28d-41f9-88d2-d6a4359962fe .task}

In Acumatica ERP, you can generate financial periods for each new year in the master calendar on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.

When the *Multiple Calendar Support* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you use this form to generate new financial years in the master calendar and the system generates company calendars automatically.

When the *Multiple Calendar Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you generate financial years separately for each company and the system generates the corresponding years in the master calendar automatically.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed {#section_mwf_mjv_vxb .section}

You need to have an appropriate year in the master calendar to configure the first year in the company calendar. Make sure that the financial year and its periods have been configured on the [Financial Year](GL_10_10_00.md) \(GL101000\) form. For details, see [To Configure a Financial Year with Month-Based Periods](GL__Configuring_a_Fiscal_Year.md), [To Configure a Financial Year with Week-Based Periods](GL__Configuring_Week_Periods.md), or [To Configure a Financial Year with a Custom Number of Periods](GL__HOW_To_Configure_Fin_Year_with_Custom_Number_of_Periods.md).

## To Generate Financial Periods for the Master Calendar {#section_owf_mjv_vxb .section}

1.  Open the [Master Financial Calendar](../Shared/../UserGuide/GL_20_10_00.md) \(GL201000\) form.
2.  On the form toolbar, click **Generate Calendar**.
3.  In the **Generate GL Calendar** dialog box, which opens, in the **From Year** and **To Year** boxes, make sure that the required financial years are selected.

    You can specify a range of financial years in these boxes.

4.  Click **OK** to close the dialog box.

    Periods have been generated with the *Inactive* status.


**Parent topic:**[Generating Financial Calendars](../UserGuide/GL__MNG_Financial_Calendars.md)

