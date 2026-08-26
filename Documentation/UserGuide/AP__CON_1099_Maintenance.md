# Maintaining and Filing the 1099 Forms {#_1c39e626-c574-4132-a9b0-98574a0a5823 .concept}

In this topic, you will read about how to track 1099 data during the reporting year, and how to close the reporting year.

## Maintenance of Information Related to 1099-MISC {#section_w4p_njv_vxb .section}

During the reporting year, you enter bills from 1099 vendors and pay them. When you enter a bill from a 1099 vendor, the number of the 1099 box associated with the specified expense account appears on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. If needed, you can select a different expense account that corresponds to another 1099 box.

A bill may include compensation of different types. You do not have to specify the 1099 box for every detail line of a bill that you process from a 1099 vendor. You have to specify the 1099 box in only the needed lines; you leave the **1099 Box** column empty for the lines that you don't want to include in Form 1099-MISC on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

When the payment for the bill is released, the bill amount will be posted to the appropriate expense accounts and recorded to the corresponding 1099 boxes.

## Maintenance of Information Related to 1099-NEC {#section_app_njv_vxb .section}

Prior to 2020, non-employee compensation was reported on Box 7 of the 1099-MISC form. Starting in 2020, the [1099-NEC Form](AP_65_31_00.md) \(AP653100\) report form is used to report non-employee compensation. When you enter a bill from a 1099 vendor, the **1099 Box** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form is filled in with the default 1099 box specified for the vendor. For the 1099-NEC form, the 1099 box is *NEC01 Nonemployee Compensation*.

When the payment for the bill is released, the bill amount is posted to the appropriate expense account specified for the non-employee compensation box on the **1099 Settings** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form and recorded to Box 1 of the 1099-NEC form.

## Tracking of 1099 Information {#section_dpp_njv_vxb .section}

You can track 1099 information in the following ways in Acumatica ERP:

-   Use the [1099 Vendor History](AP_40_50_00.md) \(AP405000\) form to view the 1099 information by vendor.
-   On the More menu of the [Close 1099 Year](AP_50_70_00.md) \(AP507000\) form, click **Open 1099 Payments** \(under **Reports**\) to view the list of open \(that is, not applied\) payments to 1099 vendors with a date that falls within the year you have specified in the **1099 Year** box on this form.
-   Use the [1099 Year Details](AP_65_45_00.md) \(AP654500\) and [1099 Year Summary](AP_65_40_00.md) \(AP654000\) reports to view various aspects of 1099 information.

**Parent topic:**[Filing Out the 1099 Forms](../UserGuide/AP__MNG_1099_Filing.md)

