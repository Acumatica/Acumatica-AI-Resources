# Fixed Assets: Books and Book Calendars {#_e1888694-3ffe-4208-943c-68eded1b296e .concept}

In Acumatica ERP, books are used to record fixed asset transactions. Every asset must be assigned to at least one book that will hold the transaction history of the asset.

In accordance with your company policy, you may need to depreciate an asset by using different depreciation methods at the same time, such as for reporting and statistical purposes. To achieve this goal, you can define multiple books in the fixed asset subledger, and then assign one book or multiple books to an asset. Thus, the same asset may have different depreciation expenses for the same period according to the books being used.

## Creation of Books { .section}

You create the fixed asset books on the [Books](../UserGuide/FA_20_50_00.md) \(FA205000\) form. For each book, you specify the book title and the rules for determining the middle of the period to be used for averaging conventions. \(The averaging convention determines how fixed assets will be depreciated for the periods within which assets were acquired or disposed; for details, see [Averaging Conventions](../UserGuide/FA__con_Averaging_Conventions.md).\)

On the [Books](../UserGuide/FA_20_50_00.md) form, you also define the book that will be used as the *posting book*—that is, the book whose transactions will update the general ledger accounts. For this book, you select the **Posting Book** check box.

**Attention:** Only one book can be specified as the posting one.

The posting book uses the financial year structure configured in the general ledger settings of Acumatica ERP. Thus, once you have created the posting book on the [Books](../UserGuide/FA_20_50_00.md) form, you generate the calendar for this book on the [Generate Book Calendars](../UserGuide/FA_50_10_00.md) \(FA501000\) form.

**Important:** You should not change the posting book after you have created fixed assets associated with this book.

On the [Books](../UserGuide/FA_20_50_00.md) form, you can also create any number of non-posting books \(those that do not update general ledger accounts\). For these books, you leave the **Posting Book** check box cleared. Once you have created a non-posting book, you need to set up the structure of the calendar to be used for this book. Once the structure is defined, you can generate a book calendar on the [Generate Book Calendars](../UserGuide/FA_50_10_00.md) form.

## Support of Different Calendars in Fixed Assets { .section}

If the *Multiple Calendar Support* feature has been enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the companies within one tenant can use different financial calendars. Thus, you can configure an open posting book and multiple non-posting books that are shared across these companies. For details, see [Multiple Calendar Support](../UserGuide/GL__MNG_Multiple_Calendar_Support.md).

In the posting book, the asset balance and history are stored by the periods of the company to which the asset belongs, and in the non-posting books, the asset balance and history are stored by the book periods.

If the *Multiple Calendar Support* feature is enabled, note the following about working with fixed assets:

-   To transfer assets between branches of different companies, these assets should be disposed of in one company and acquired in the other company.
-   If fixed asset reports are run with the **Company** and **Branch** boxes left empty, the data in the reports will be consolidated by period number.
-   When posting fixed asset transactions, the system checks whether the start date and the end date of the transaction period in the posting book are the same as the start date and the end date of the period in the general ledger. If these periods do not match for at least one transaction, the document cannot be released.

If you disable the *Multiple Calendar Support* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, the system checks whether each period of an active company in the company's posting book has a matching period in the general ledger calendar. \(Only the IDs of the periods are compared.\) If this condition is not met, the system displays an error message on this form. For details on company statuses, see [Companies and Branches](../UserGuide/OS__con_Companies.md).

## Creation of a Book Calendar { .section}

For each book, you need to generate a book calendar on the [Generate Book Calendars](../UserGuide/FA_50_10_00.md) \(FA501000\) form. Before generating a calendar for a non-posting book, you should define the structure of the calendar on the [Book Calendar Setup](../UserGuide/FA_20_60_00.md) \(FA206000\) form by specifying the start calendar date and the type of the periods to be used in this calendar. Then on the [Generate Book Calendars](../UserGuide/FA_50_10_00.md) form, you generate a calendar for a selected book. The calendar will be based on the calendar structure that you have defined.

Because the posting book uses the structure of the general ledger calendar, you do not need to configure a calendar structure for a posting book on the [Book Calendar Setup](../UserGuide/FA_20_60_00.md) form. You just process the generation of the calendar on the [Generate Book Calendars](../UserGuide/FA_50_10_00.md) form.

A calendar is used to record depreciation expenses according to the calendar periods. If you want to depreciate assets over a particular number of years, you must create book calendars accordingly.

The financial year may be set as a calendar year starting January 1, or may be different. You select the **Belongs to Next Year** check box on the [Book Calendar Setup](../UserGuide/FA_20_60_00.md) form when the financial year starts later in the calendar year than January 1. The system calculates the ending date of the financial year automatically as the ending date of the last period.

## Setup of Book Calendar Periods { .section}

The book calendar year is divided into periods, which may have equal or different durations. The total length of all periods may or may not be equal to the year. You can set up the calendar periods for a non-posting book by using the [Book Calendar Setup](../UserGuide/FA_20_60_00.md) \(FA206000\) form.

When setting up periods, you can select an option based on months or weeks, or you can define custom-length periods. If you select one of the options based on months \(*Month*, *Two Months*, or *Quarter*\), the periods will start and end on the same dates each year, and each successive financial year will start and end on the same date.

However, if you define periods by using an option based on weeks \(*Week*, *Two Weeks*, *Four Weeks*, *4-4-5 Weeks*, *4-5-4 Weeks*, or *5-4-4 Weeks*\), the start and end dates of same-name periods will vary with the year, and the number of periods per year may vary. Periods based on weeks start on the same day of the week and end on the same day of the week. However, a calendar year has 365 or 366 days, which is 52 full weeks plus 1 or 2 extra days. For a book calendar year based on the *4-4-5*, *4-5-4*, or *5-4-4* option, the system automatically adds an additional week to the last period if the gap between the end of the book calendar year and the end of the last period exceeds three days. For a calendar with week-based period types, because the year does not have a fixed start date, you cannot generate a year template on the [Book Calendar Setup](../UserGuide/FA_20_60_00.md) form. You can review the beginning and ending dates of week-based financial periods on the [Book Calendars](../UserGuide/FA_30_40_00.md) \(FA304000\) form.

For a book calendar year with week-long periods, to process the difference between the length of a calendar year and the length of all week-long periods, the system uses the *Day nearest the end of the month* depreciation method. That is, the system adds an additional \(fifty-third\) week-length period if the last period ends four or more days earlier than the financial year ends. If the last period ends fewer than four days earlier, no additional period is added.

For details on adding a calendar, see [To Define a Book Calendar with Week-Based Periods](FA__How_Add_Calendar_Week_based.md). For details on generating periods for book calendars, see [Fixed Assets: To Configure the Fixed Asset Functionality](config_FixedAssets_Implem_Activity_FixedAssets_Subledger.md).

## Shifting of the First Book Calendar Year { .section}

Fixed assets may have a long useful life. For example, buildings can be used for decades. If your company owns an asset whose depreciation started before you started working with Acumatica ERP, you may want to configure a book calendar to start when the asset depreciation started. You can shift the first year of the book calendar one year earlier and then generate periods for the added year. For details, see [Fixed Asset Troubleshooting: To Shift the First Year One Year Earlier](../UserGuide/FA__how_Shift_One_Year_Earlier.md).

## Deletion of a Book { .section}

On the [Books](../UserGuide/FA_20_50_00.md) \(FA205000\) form, you can delete the selected book by clicking **Delete Row** on the table toolbar. The book can be deleted only if there are no transactions posted in the selected book. Once the book is deleted, the calendar generated for this book on the [Book Calendar Setup](../UserGuide/FA_20_60_00.md) form will be deleted as well.

## Closing of Financial Periods { .section}

On the [Close Financial Periods](../UserGuide/FA_50_90_00.md) \(FA509000\) form, you close financial periods in the fixed assets subledger to prevent users from posting transactions to these periods.

If a financial period has been closed by mistake, you can reopen it on the same form by selecting *Reopen* in the **Action** box. For details, see [Fixed Asset Period Closing: Process Activity](../UserGuide/FixedAssets_Closing_Periods_Process_Activity.md) and [To Reopen a Financial Period in Fixed Assets](../UserGuide/FA__HOW_To_Reopen_Financial_Period_in_FA.md).

**Parent topic:**[Fixed Asset Configuration](../ImplementationGuide/FixedAssets_Mapref.md)

