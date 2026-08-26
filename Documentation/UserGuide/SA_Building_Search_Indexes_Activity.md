# Search Indexes: To Rebuild Search Indexes {#_42befe22-4108-41ac-b485-f63aa771da2b .task}

The following activity will walk you through the process of rebuilding search indexes.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the users of the system have started complaining that the system does not return any search results when users search for a customer profile. Acting as the system administrator, you need to investigate the issue, and the first step you plan to take is rebuilding the search index for customer profiles.

## Process Overview { .section}

You will use the [Rebuild Full-Text Entity Index](SM_20_95_00.md) \(SM209500\) form to rebuild the search index for customer profiles.

## System Preparation { .section}

Launch the Acumatica ERP website and sign in to a company with the *U100* dataset preloaded as the system administrator by using the *gibbs* username and the *123* password.

## Step: Rebuilding a Search Index { .section}

To rebuild a search index, do the following:

1.  Open the [Rebuild Full-Text Entity Index](SM_20_95_00.md) \(SM209500\) form.
2.  In the **Name** column, search for the *Customer* record, and select the unlabeled check box in the row with this record.
3.  On the form toolbar, click **Process**. The **Processing** dialog box opens, showing the progress and then the results of rebuilding search indexes.
4.  Click **Close** to close the dialog box.

In this activity, you have rebuilt the search index for the customer profiles.

**Parent topic:**[Building Search Indexes](../UserGuide/SA_Building_Search_Indexes_Mapref.md)

