# Deferred Revenue Recognition Overview {#_9a09afb3-6745-4aa2-b375-c49ab6306e4e .concept}

According to the basic principles of accounting, income should not be recognized until it has been earned, and expenses should not be recognized until they have been spent. For these purposes, the term *deferral* is used in accounting. It refers to the act of delaying the recognition of certain revenues or expenses on the income statement over some specified period range and recording them to balance sheet accounts \(liability or asset, respectively\) until they are earned or used up. In future periods, they will be moved in portions from the balance sheet accounts to revenues or expenses on the income statement.

In Acumatica ERP, you can manage the processes of recognizing the revenues until you deliver goods and services, and deferring expenses over the defined number of periods until they are used up.

## Deferral Codes {#section_fnb_3jv_vxb .section}

By using deferral codes, you can set up various scenarios of revenue and expense recognition. The system generates appropriate recognition transactions for each document line \(such as AR invoice detail lines\) that require deferrals according to the settings of the specified deferral codes. When the recognition process is run, the system releases and posts recognition transactions that come due, so a portion of the revenue or expenses is recognized. For details, see [Setting Up the Recognition Process](DR__con_Setting_Up_Deferral_Process.md).

## Recognition of Deferred Revenue in Previous Periods {#section_hnb_3jv_vxb .section}

In the Deferred Revenue area of Acumatica ERP, you can manage the deferred revenue and expense recognition process. You can set up the recognition of deferrals in future financial periods as well as in previous financial periods \(those that are earlier than the period of the date of the related document\) by configuring deferral codes with the appropriate settings. For details, see [Recognition of Deferrals in Previous Periods](DR__con_Recognition_in_Previous_Periods.md).

## Revenue Recognition for Packages {#section_jnb_3jv_vxb .section}

If a line item in a document is a package \(that is, a stock item or non-stock item that includes multiple components\), different deferral codes can be assigned to its components as separate units of accounting to set up more accurate revenue recognition procedures. For more details, see [Managing Recognition for Packages](DR__con_Revenue_Recognition_for_Packages.md).

## Custom Deferral Schedules {#section_lnb_3jv_vxb .section}

If a document was released before the decision about deferral had been made, you can manually create custom deferral schedules for its lines and link them to the document. For details on such schedules, see [Custom Deferral Schedules](DR__con_Custom_Deferral_Schedules.md).

## Other Features and Options {#section_nnb_3jv_vxb .section}

Other primary features of the Deferred Revenue area include the following:

-   The ability to process schedules in bulk by assigning them to automation schedules
-   The ability to process credit memos associated with deferred invoices
-   Reports that help you to correctly forecasting revenues and expenses
-   The ability to generate reports and inquiries for particular companies and branches, if the *Multibranch Support* feature is enabled.

