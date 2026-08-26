# Distributing Debit Adjustments Among Bills {#_fc94b8b8-ca33-4736-830f-657adc966f17 .concept}

When a payment includes multiple bills and debit adjustments, the system distributes debit adjustments across bills so the resulting payment request fits BILL constraints. Bills that are fully offset—with a net applied amount of 0—are excluded from the request. Additionally, **zero-amount payments are not sent to BILL** and receive the *Balanced* status instead of *Pending Processing*.

## Example { .section}

Suppose that on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form, you schedule a payment that has these documents applied:

-   Bill 1 in the amount of $100
-   Bill 2 in the amount of $90
-   A debit adjustment in the amount of $110

The system first applies the $110 debit adjustment to bill 1, up to the full amount of $100. The remaining balance of the debit adjustment \($10\) is then applied to bill 2.

As a result, bill 1 is fully offset \(with a net applied amount of $0\) and excluded from the BILL payment request. Bill 2 is partially offset \(with a net applied amount of $80\) and is sent in an API request to BILL.

**Parent topic:**[Creating Documents for External Payment Processing](../UserGuide/AP__con_Create_Doc_External_Processing.md)

