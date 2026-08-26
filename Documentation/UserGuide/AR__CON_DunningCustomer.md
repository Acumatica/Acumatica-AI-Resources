# Preparation of Dunning Letters: Dunning Process by Customer {#_754ebab3-60ae-42e4-8049-02dc81418d87 .concept}

You select the *By Customer* option in the **Dunning Process** box on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form to define that the system groups overdue documents by customer account when it prepares dunning letters.

In general, you prepare dunning letters as follows:

1.  You select the customer accounts for which you want to prepare dunning letters and initiate the preparation.
2.  You print or send by email the prepared dunning letters.

In this topic, you will read about the letter generation rules, the dunning process workflow, and the way the system changes the status of the dunning letter.

## Dunning Letter Generation Rules {#section_gc2_hjv_vxb .section}

When you group overdue documents by customer account, the generation of the letters is based on the following rules:

-   The letter of the *first* level is generated for a customer account if the customer has at least one invoice or memo whose number of days past the due date exceeds the number of days specified for the first level in the **Days Past Due** box on the **Dunning** tab of the [Customer Classes](AR_20_10_00.md) \(AR201000\) form. The document is marked with the first dunning level when you initiate letter preparation.
-   The letter of the *second* level is generated if the customer has at least one document with the first level that is still unpaid and the number of days this document is past due exceeds the number specified for the second level in the **Days Past Due** box. If there are other overdue documents \(with 0 level\), the system includes in the letter these documents as well, and increases their dunning level to 1. The system increases the dunning level to 2 for the document whose number of days past due exceeds the number specified for the second level.
-   The letters of the *next* levels in the sequence are generated similarly to the letters of the second level.
-   The letter of the *last* level for the customer is generated if at least one document listed in the previous letter is unpaid and the number of days this document is past due exceeds the number of days specified for this level. When this letter is prepared, the system selects the **Final Reminder** check box for this letter on the [Print/Release Dunning Letters](AR_52_20_00.md) \(AR522000\) form. In this case, after letter generation, the customer account is excluded from the dunning process and can be selected on the [Manage Credit Holds](AR_52_30_00.md) \(AR523000\) form, so you can put this account on credit hold.

    **Attention:** If for some reason the process of dunning letter preparation was delayed for a period of time, the system will shift the dates of dunning letter generation for the period of the delay.


In your company's dunning letters, you can notify customers receiving the letters about all open documents—unpaid \(the due date is still in the future\) and overdue \(the due date has passed\). To do this, you select the **Add Coming-Due Documents** check box on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. In the printed version of these letters, the unpaid due documents will be listed at the end, and the **Falling Due** column contains the word *Current* instead of the due date.

**Tip:** The system generates the printed version of a dunning letter with the help of the [Dunning Letter](AR_66_10_00.md) \(AR661000\) report. You can use the default look and feel of the report or customize the report by using the Acumatica Report Designer.

**Parent topic:**[Preparing Dunning Letters](../UserGuide/CreditPolicy_Preparing_Dunning_Letters_Mapref.md)

