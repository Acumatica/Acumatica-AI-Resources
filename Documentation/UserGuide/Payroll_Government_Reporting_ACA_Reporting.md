# Government Reporting: Affordable Care Act \(ACA\) Reporting {#_012217f7-c0bb-4c9b-8781-f1154b7fbfce .concept}

To ensure successful Affordable Care Act \(ACA\) reporting, you need to first properly set up the deduction and benefit codes that contain ACA-related information. By using the [ACA Reporting](PR_20_70_00.md) \(PR207000\) form, you can gather the reporting data and update it before feeding it to Aatrix.

## Setting Up Deduction and Benefit Codes { .section}

You set up the deduction and benefit codes that contain ACA-related information on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form by performing the following steps:

1.  In the Summary area of the form, you select the **ACA Applicable** check box.
2.  On the **ACA Information** tab, which appears on the form, you specify the following information:
    -   The coverage plan—that is, the person to be covered by the health insurance plan, which can be *Employee*, *Spouse*, or *Children*.
    -   The type of a health plan for the specified person. You can choose among the following options:
        -   *Meets Minimum Essential Coverage and Provides Minimum Value*: A health plan that covers the employee and all its dependents. It’s designed to pay at least 60% of the total cost of medical services for a standard population. Also, its benefits include substantial coverage of physician and inpatient hospital services.
        -   *Meets Minimum Essential Coverage but Does Not Provide Minimum Value*: A health plan that covers the employee and all its dependents, but it’s not designed to pay at least 60% of the total cost of medical services for a standard population and its benefits may not include substantial coverage of physician and inpatient hospital services.
        -   *Self-Insured*: The company is providing health insurance without using a third-party vendor.
        -   *None of the Above*: The health insurance plan does not fit any of the above types.
    -   The minimal amount an employee is required to pay to have access to the health insurance plan. If you select the *Meets Minimum Essential Coverage and Provides Minimum Value* health plan type, you can enter a zero minimal amount.

## Gathering the Reporting Data { .section}

You use the [ACA Reporting](PR_20_70_00.md) \(PR207000\) form to gather all relevant information, either for individual employees or at the company level, and update it before filing the applicable forms.

By using the elements in the Selection area of the form, you can filter data by company or branch and by reporting year. On the **Employee** and **Company** tabs of the form, you can edit information for an individual entry or mass update entries by using the **Update** or **Update All** button on the table toolbar.

After you have saved the changes \(if any\) on this form, you can use the [Government Reporting](PR_50_40_00.md) \(PR504000\) form to prepare the necessary report.

## Correcting the Number of Hours Worked { .section}

Even though the value in the **Number of Hours Worked** column on the **Employee** tab of the [ACA Reporting](PR_20_70_00.md) \(PR207000\) form is non-editable, you still can adjust it for an individual employee if needed. You can do this by using the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form as follows:

1.  Create a new document of the *Adjustment* type.
2.  In the Summary area of the form, select the proper employee and pay period.
3.  On the **Earning** tab, add an earning line with the needed number of hours specified \(positive if you want to increase the number of hours worked or negative if you want to decrease it\), and then specify a zero rate and select the **Manual Rate** check box for this line.
4.  Release the adjustment.

**Parent topic:**[Configuring Government Reporting](../UserGuide/config_Payroll_Government_Reporting_Mapref.md)

