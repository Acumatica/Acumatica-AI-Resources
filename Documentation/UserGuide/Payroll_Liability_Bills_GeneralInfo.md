# Liability Bills: General Information {#_c606f600-5e66-4994-833f-83f9007ee4b4 .concept}

The pay run process generates payroll liability records in accordance with the setup of each specific deduction, benefit, and tax in the system. On the [Create Liability Bills](PR_50_30_00.md) \(PR503000\) form, you can translate these liability records into accounts payable bills so that they can be paid through standard accounts payable processes.

## Learning Objectives { .section}

In this chapter, you will learn how to create accounts payable bills for payroll liabilities.

## Applicable Scenarios { .section}

You create payroll liability bills to be able to pay employer taxes and other contributions to corresponding legal entities \(that is, vendors\).

## Creation of Liability Bills { .section}

You use the [Create Liability Bills](PR_50_30_00.md) \(PR503000\) form to filter and select liability records, so you can determine which payroll liability activities need to be converted into AP bills. The boxes in the selection area of the form are used to determine which records to select for processing.

Only liability records and amounts that have not been previously processed are included in the table. Once a record is processed, it disappears from the list of available records.

If you void a paycheck with linked liabilities, the system does the following:

-   It deletes the liabilities linked to the voided paycheck if they have not been previously processed.
-   It creates liabilities with negative amounts linked to the voiding paycheck that correspond to the previously processed liabilities linked to the voided paycheck.

If you click the **Process** or **Process All** button on the form toolbar, the system creates AP bills for the selected liabilities or for all listed records, respectively. If the **Single Line Per Invoice** check box is selected, the system creates one bill for each record; if cleared, the system groups records by vendor and creates one bill per vendor. Also, liability bills are split by branch, if multiple branches are enabled in the system. You can select the **Create Zero Amount Lines on Bill** check box so that bills are also created for zero amount records.

If you process a liability with a negative amount, the system creates a debit adjustment with a positive balance.

**Parent topic:**[Creating Liability Bills](../UserGuide/process_Payroll_Liability_Bills_mapref.md)

