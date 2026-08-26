# Daily Field Reports: Mass Processing {#_fe58e534-abf1-4427-9cd5-f0b426e8de95 .concept}

The following sections explain how to load weather conditions for multiple daily field reports and how to clear the history of requests to weather services.

## Mass-Loading Weather Conditions { .section}

If integration with a weather service has been configured on the **Daily Field Reports** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form, you can use the [Load Weather Conditions](PJ_50_40_00.md) \(PJ504000\) form to create weather records in multiple daily field reports. On this form, you select the check boxes in the unlabeled column for the daily field reports for which you want to load weather records and then click **Process** on the form toolbar. If you want to create weather records for all listed daily field reports, you click **Process All**. The system creates one weather record on the **Weather** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form for each daily field report.

## Mass-Clearing Requests to Weather Services { .section}

If integration with a weather service has been configured on the **Daily Field Reports** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form, the system keeps the history of requests to the weather API services. You can clear the history for the daily field reports within the number of days specified in the **Weather Processing Log Term \(Days\)** box of this tab of the [Project Management Preferences](PJ_10_10_00.md) form by using the [Clear Weather Log](PJ_50_40_10.md) \(PJ504010\) form. To clear the history, you select the check boxes in the unlabeled column for the requests that you want to delete from the history and then click **Process** on the form toolbar. If you want to delete all listed requests, you click **Process All**.

**Tip:** On the [Automation Schedules](SM_20_50_20.md#) \(SM205020\) form, an automatic schedule can be configured to clear the history.

**Parent topic:**[Reporting On-Site Work Progress](../UserGuide/Construction_Daily_Field_Reports_Mapref.md)

