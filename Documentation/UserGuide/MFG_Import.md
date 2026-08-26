# Importing Master Data into Manufacturing {#_bfe88c25-729f-418f-87b8-c63d03952afe .concept}

You can import master data related to manufacturing by using import scenarios on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form. In this topic, you will find information that will help you to import data. Also, you will find the Excel spreadsheets that you can use during import.

**Tip:** The format of all time values \(Setup, Run, Machine, and Move\) is specified in the **Operation Time Format** box on the [BOM Preferences](AM_10_10_00.md) form. Times are now entered or displayed as in days, hours, and minutes. Regardless of the format, you can enter the time as 0000 for HHMM or 000000 for DDHHMM. Time values are actually stored as minutes in the tables. For importing, enter the time as HHMM; e,g. 0010 for 10 minutes, 0130 for 1 hour 30 minutes, 011013 for 1 day, 10 hours, 13 minutes.

## General Information { .section}

Almost all of the master data is related to bills of material functionality consisting of the bills of material for each assembly and their supporting data such as work centers, tools, machines, and overhead. For details, see [Importing Bills of Material Master Data](MFG_Import_BOM_Data.md).

Data providers and import scenarios are provided for each of the following; the provider and scenario have the same name and all use Excel as the provider type. The sample Excel files are provided at the end of this topic. You should import your data in the same order as in the following table.

|Master Data Form|Provider / Import Scenario|
|----------------|--------------------------|
|[Machines](AM_20_45_00.md) \(AM204500\)|Import Machines|
|[Tools](AM_20_55_00.md) \(AM205500\)|Import Tools|
|[Work Centers](AM_20_70_00.md) \(AM207000\)|Import Work Centers|
|[Bill of Material](AM_20_80_00.md) \(AM208000\)|Import BOM|

Additionally, you must specify BOM preferences on the [BOM Preferences](AM_10_10_00.md) \(AM101000\) form and enter the following required data first in order to import work centers.

## Required Data { .section}

The following data is required even if you do not intend to include labor and indirect costs for your bills of material and to post them to production orders:

-   [Work Calendar](CS_20_90_00.md) \(CS209000\): Defines the hours available per day and is used to calculate both fixed and variable lead times in MRP and Production Management. You enter the calendar to use for shifts of a work center, for fixed lead times in Production Preferences, and for purchasing in MRP Preferences.
-   [Shifts](AM_20_50_00.md) \(AM205000\): Machines are used to factor labor rates.
-   [Labor Codes](AM_20_65_00.md) \(AM206500\): Define the GL accounts and subaccounts for direct and indirect labor expense.

Data providers and import scenarios are not supplied for *Shifts*, *Labor Codes*, or *Overhead* since most users will have only a few of each. If you need to create one, then enter one of each type on the appropriate form and export the data to Excel. You then can use that spreadsheet to create the data provider and import scenario since it will have all of the columns available and the correct values for drop-down lists and check boxes. In Acumatica ERP, you enter the drop-down list caption and not codes and either *True* \(selected\) or *False* \(cleared\) for check boxes. Your reseller can assist you in creating data providers and import scenarios.

## Optional Data { .section}

The following data are completely optional:

-   [Tools](AM_20_55_00.md) \(AM205500\): Can be entered as an additional cost element in a bill of material
-   [Machines](AM_20_45_00.md) \(AM204500\): Can be entered as an additional cost element for work centers
-   [Overhead](AM_20_25_00.md) \(AM202500\): Can be entered as an additional cost element for both work centers and bills of material.

Once you have entered the required and optional data the next step is to create or import your work centers. In bills of material, components, as wells as tools, are tied to operations and operations require a work center.

## Importing Machines, Tools, or Work Centers { .section}

The import scenarios for the following entities will default values for required form elements not supplied or left blank in the spreadsheet. To override the default value, specify a value in the spreadsheet.

|Form Element|Value|
|------------|-----|
|*Machines &gt; Active*|True|
|*Machines &gt; Down*|False|
|*Machines &gt; Efficiency*|1.00 \(100%\)|
|*Tools &gt; Active*|True|
|*Tools &gt; Unit Cost*|0 \(zero\)|
|*Tools &gt; Total Cost*|0 \(zero\)|
|*Work Center &gt; Active*|True|
|*Work Center &gt; Outside Processing*|False|
|*Work Center &gt; Backflush Matls*|False|
|*Work Center &gt; Backflush Labor*|False|

## Sample Excel Files { .section}

[Machines](Files/MFG_Import_Machines.xlsx)

[Tools](Files/MFG_Import_Tools.xlsx)

[Work Centers](Files/MFG_Import_Work_Centers.xlsx)

[Bills of Material - Operations and Materials](Files/MFG_BOM_Import_Operation_and_Material.xlsx)

-   **[Importing Bills of Material Master Data](../UserGuide/MFG_Import_BOM_Data.md)**  


**Parent topic:**[Other Manufacturing Functionality](../UserGuide/MFG_Other_Functionality.md)

