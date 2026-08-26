# Transactions for Companies with Different Calendars {#_0e43ff39-5ad3-4d81-acf5-0e22a81212d3 .concept}

When the *Multiple Calendar Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, if companies with different calendars are involved in the same transaction, the system determines the corresponding master period based on the period in the Summary area of the document. The system then uses the periods that match the master period to post entries to the destination branches. During the posting process, the system adds inter-branch balancing entries and determines the posting period based on the calendar of the branch associated with each entry.

