# Use of Numbering Sequences {#_71c26175-c78f-4e70-8518-2115f5bfaf2f .concept}

Acumatica ERP uses numbering sequences to automatically generate identifiers \(IDs\) for new objects of a certain type when they are created, whether manually by users or automatically by the system. Numbering sequences are used, for example, for customer invoices, vendor bills, inventory receipts and issues, accounts payable and accounts receivable payments, batches, schedules, and allocations.

You can use the predefined numbering sequences without changes, or you can modify them to suit your organization's needs. Also, you can create new sequences. If your organization has branches, numbering sequences for documents associated with branches can be split into subsequences that have different prefixes or specify different ranges of numbers.

## Numbering Sequence Settings { .section}

Each numbering sequence is defined by settings specified on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form. The system uses the following settings to determine the numbers it assigns to new objects:

-   **Start Number**: The number to be used first in this numbering sequence.
-   **Last Number**: The number most recently assigned to an object in this numbering sequence. Each time the system assigns a number to a new object, it updates this value.
-   **Numbering Step**: The increment used in the numbering sequence to generate the next number; to determine each new number, this increment is added to the rightmost numerical portion of the last number used.
-   **End Number**: The number to be used last in this numbering sequence.

You can specify other settings on the form, too, such as the following:

-   **Start Date**: The date when this sequence will take effect. For sequences that include subsequences, you can specify the date when each subsequence first becomes effective.
-   **New Number Symbol**: An alphanumeric string \(of up to 15 characters\) used to indicate that a new number for an object will be assigned.
-   **Warning Number**: The minimum number that generates a warning that available numbers will be used up soon. When this number \(and each number that exceeds it\) is assigned, the system displays a warning. If the end number is near or has been reached for a numbering sequence, you should create a new sequence, specify it on the appropriate preferences form, and assign it to this object type.

## Format of Identifiers { .section}

Acumatica ERP generates numbers or object IDs for a numbering sequence as alphanumeric strings. The precise format of the numbers is defined by the numbering sequence settings, such as the start number and the end number, specified on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form. The same number of characters must be used for all number settings \(**Start Number**, **End Number**, **Last Number**, and **Warning Number**\) in a numbering sequence; the system issues a warning if the format of any of these settings differs.

A numbering sequence may have numbers that start with a *prefix*, an alphanumeric string that ends in an alphabetic character. The system automatically detects a prefix in the start number when alphabetic characters are used. If a prefix is used, auto-numbering is applied to only the rightmost numeric positions. The same prefix must be used for the start, warning, and end numbers.

Suppose, for example, that you want to create sequences to automatically assign meaningful IDs to sales orders of different types. For different order types, different two-letter abbreviations are used. For general sales orders \(the *SO* type\), you might set the start number as *S0000001*, the warning number as *S0995000*, and the end number as *S0999999*. For cash sales orders, you might set the start number, warning number, and end number as *CS000001*, *CS997000*, and *CS999999*, respectively. Note that all these numbers use the same prefix followed by six digits.

## Subsequences { .section}

A numbering sequence may consist of just one subsequence or multiple subsequences. Each subsequence can be intended for a different branch or starting on a specific date. Subsequences can be helpful when, for example, an organization uses different invoice numbers in each season of the year. If the organization has branches, it is convenient when document reference numbers indicate a specific branch of origin by a branch-specific prefix or range of numbers.

Each subsequence is defined by a branch, start date, start number, end number, numbering step, and start date. Numbers are assigned as follows:

1.  The first new object is assigned the start number depending on the branch and the start date. \(The start number is also assigned to the last used number.\)
2.  The rightmost numerical portion of the second number and subsequent numbers for the same branch is equal to that of the last number plus the numbering step. The last number value is updated.
3.  When the start date specified for any subsequence occurs, the system switches to using that subsequence.

**Important:** The numbers available in one subsequence cannot be used in another subsequence of the same sequence.

## Usage Tips { .section}

Follow these tips when you define numbering sequences:

-   Objects get numbers in the order in which they are created. Thus, if you use the same numbering sequence to identify objects of different types, successive numbers can be assigned to objects of different types. The disadvantage of this approach is that objects' identifiers won't help you distinguish between their types.
-   If you use similar numbering sequences for different document or objects that might be listed on the same form, duplicate numbers may occur, which could confuse users. It is better to define a numbering sequence so that the start number of one sequence exceeds the end number of the previous one, or to use different prefixes for each numbering sequence. These approaches ensure that duplicate numbers will not occur.

**Parent topic:**[Managing Segmented Keys](../UserGuide/SM__con_Managing_Segmented_Keys.md)

