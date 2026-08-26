# Generating Financial Calendars {#_2e1aae96-ae59-46a9-b1f7-951fa43df2fe .concept}

A *financial calendar* is a set of financial periods within which an organization records its revenues and expenses and plans future operations. A calendar consists of financial years, each year including a number of financial periods. In Acumatica ERP, the *master calendar* and *company calendars* are used. The *master calendar* is a set of financial periods generated for multiple years based on the financial year configuration specified for the tenant. A *company calendar* is a financial calendar that is used by a particular company within Acumatica ERP; it is based on the master calendar but can have the same number of financial periods as the master calendar does \(or fewer periods\).

Depending on the state of the *Centralized Period Management* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can manage financial period statuses on the tenant level or on the company level as follows:

-   The *Centralized Period Management* feature is enabled \(default\): You set up the master calendar on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form, and all the companies within the tenant will use this calendar. A particular financial period will have the same status in all companies. You can open, close, lock, deactivate, reopen, and unlock financial periods for all companies at the same time.
-   The *Centralized Period Management* feature is disabled: You set up the master calendar on the [Master Financial Calendar](GL_20_10_00.md) form, and the system generates company calendars automatically when the master calendar is generated \(for the companies that already exist\) or when a new company is created. You use the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form to change period statuses separately for each particular company. On the [Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form, you can review financial periods and their statuses for a particular company.

    With this feature disabled, you can enable the *Multiple Calendar Support* feature if you need to configure companies with different fiscal year-end dates within one tenant.


-   **[Master Calendar Generation](../UserGuide/GL__CON_Financial_Period_Activation.md)**  

-   **[Companies' Financial Calendars](../UserGuide/GL__CON_Company_Financial_Calendar.md)**  

-   **[Multiple Calendar Support](../UserGuide/GL__MNG_Multiple_Calendar_Support.md)**  

-   **[Modification of Periods for a Year](../UserGuide/GL__CON_Period_Modification.md)**  

-   **[To Generate Periods for New Financial Years in Master Calendar](../UserGuide/GL__Generating_Periods_for_a_New_Financial_Year.md)**  

-   **[To Create the First Year of the Company Calendar](../UserGuide/GL__how_Configure_Company_Calendar.md)**  

-   **[To Generate Periods for New Financial Years in a Company Calendar](../UserGuide/GL__how_Generate_Periods_for_New_Fin_Year_Company_Calendar.md)**  

-   **[To Add an Adjustment Period](../UserGuide/GL__Adding_an_Adjustment_Period.md)**  


