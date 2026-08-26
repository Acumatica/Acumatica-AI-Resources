# Payroll Payments: General Information {#_fc60dce8-6893-4dd7-a9f4-0709ca91738f .concept}

When paychecks have been calculated, you need to create a payment batch to be able to print checks or generate an ACH file and send money to the bank, depending on the payment method used.

## Learning Objectives { .section}

In this chapter, you will learn how to create and process payment batches in payroll.

## Applicable Scenarios { .section}

You create and process payment batches when you need to print checks or create direct deposit payments for your employees.

## Creation of Payment Batches { .section}

You use the [Create Payroll Payment](PR_50_50_00.md) \(PR505000\) form for mass processing of the paychecks with the *Pending Payment* status. First, you select a payment method and a corresponding cash account, and then the system displays the list of relevant documents. A payment batch is created after you have processed the listed documents. You can review or process a payment batch by using the [Payment Batches](PR_30_50_00.md) \(PR305000\) form.

If you process multiple checks or direct deposit paychecks at once, the system generates a single batch and redirects you to the [Payment Batches](PR_30_50_00.md) form for further processing. On the [Payment Batches](PR_30_50_00.md) form, depending on the used payment method, you can print the paychecks by using the **Print Checks** command or generate ACH files by using the **Export** command.

## Processing of Payment Batches { .section}

A payment batch may have one of the following statuses:

-   *Ready for Export* \(default\): All the associated paychecks have the *Added to Payment Batch* status.
-   *Waiting Paycheck Calculation*: At least one of the associated paychecks has a status that differs from *Added to Payment Batch*. Paychecks can still be added to a batch with this status.
-   *Paid*: The associated paycheck has the *Paid* status. The **Cancel Payment** command is available for a batch with this status.
-   *Closed*: One of the associated paychecks has been released and has the *Released*, *Liability Partially Paid*, or *Closed* status.

You can delete a payment batch that has the *Waiting Paycheck Calculation* or *Ready for Export* status.

On the [Payment Batches](PR_30_50_00.md) form, depending on the used payment method, you can print the paychecks by using the **Print Checks** command or generate ACH files by using the **Export** command.

The **Print Checks** command is available only for payment batches that contain paychecks. This command is not available for a batch with the *Direct Deposit* payment method specified.

The **Export** command is available for a batch with the *Ready for Export*, *Paid*, or *Closed* status. This command is not available for a batch with the *Check* payment method specified.

## Paychecks in a Payment Batch { .section}

In the **Payment Batch** box on the [Create Payroll Payment](PR_50_50_00.md) \(PR505000\) form, you can select a payment batch with the *Ready for Export* or *Waiting Paycheck Calculation* status. Only payment batches with the specified payment method and cash account are available for selection. If you select a payment batch and then process the paychecks selected in the table on this form, the system will include these paychecks in the payment batch and update the statistical values in the Summary area. If you do not select a payment batch but process the selected paychecks, the system will create a new payment batch for the processed paychecks.

You can make changes to a paycheck with the *Added to Payment Batch* status. After these changes are saved, the status of the paycheck changes to *Pending Calculation*. After the calculation, the information is correspondingly updated in the associated payment batch and the status of the paycheck changes again to *Added to Payment Batch*.

In a paycheck with the *Added to Payment Batch* status, you cannot change the specified payment method and cash account.

## Prenotes { .section}

On the [Payment Batches](PR_30_50_00.md) \(PR305000\) form, you can export the batch of payments as a prenote, which is an ACH file with a zero net pay amount specified for each transaction in the batch details. A prenote can be used for the validation of the payment information by the bank before the release of the payment. You can create a prenote by using the **Export as Prenote** command. This command is available for a batch with the *Ready for Export*, *Paid*, or *Closed* status. This command is not available for a batch with the *Check* payment method specified.

On the **Export History** tab, the system maintains the history of all export and printing attempts and logs the name of the user who ran the export, as well as the export date, time, reason, and batch total. Each time a prenote is created, the system inserts a log record with *Prenote Export* specified in the **Reason** column and *0* specified in the **Batch Total** column.

If you select an entry on the **Export History** tab and click **Export Details** on the table toolbar, the **Export Details** dialog box opens showing the username, log time, and reason, along with a list of the paychecks included in the export.

## Release of Paychecks in a Batch { .section}

You can release the paychecks included in a payment batch by using the **Release** command on the [Payment Batches](PR_30_50_00.md) \(PR305000\) form. To release paychecks in multiple payment batches at a time, you can use the [Process Payroll Documents](PR_50_10_00.md) \(PR501000\) form with the *Release* option selected in the **Action** box.

If the **Automatically Release on Payment** check box is selected on the [Payroll Preferences](PR_10_10_00.md) \(PR101000\) form, all paychecks associated with a payment batch will be released automatically when you select that payment batch and click the **Confirm Payment and Release** command on the [Payment Batches](PR_30_50_00.md) form.

**Tip:** After you have selected the **Automatically Release on Payment** check box, all previously created paychecks with the *Paid* status will have to be released manually.

**Parent topic:**[Processing Payments](../UserGuide/process_Payroll_Payments_mapref.md)

