# Advanced Filters: To Remove an Advanced Filter {#_c4827cff-b65e-4800-91a9-814009ac9c94 .task}

In this activity, you will learn how to remove an advanced filter.

## Story { .section}

Suppose that you are a technical specialist in your company who is working on simple customizations. One year ago, you configured a set of shared filters for the Invoices and Memos \(AR3010PL\) generic inquiry form. Further suppose that the accounting department has worked with the set of shared filters for some time and realized that the **Previous Quarter** tab is not needed, so you have been asked to remove the corresponding filter.

**Tip:** Alternatively, you could stop sharing the filter by clearing the **Shared** check box in the **Filter Settings** dialog box. In this case, the filter would still exist, so if it was requested again, you wouldn’t need to reconfigure it. You’ve decided against this approach; the filter conditions are simple and you can configure the filter quickly, so you don’t want to clutter the list of available filters.

## Process Overview { .section}

For the Invoices and Memos \(AR3010PL\) generic inquiry form, you will remove the *Previous Quarter* filter by using the table's filtering area.

## System Preparation { .section}

1.  Launch the Acumatica ERP website, and sign in to a tenant with the *U100* dataset preloaded as system administrator Kimberly Gibbs. You should sign in by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to manage the system configuration and to modify generic inquiries, advanced filters, pivot tables, and dashboards.

2.  Complete the [Advanced Filters: To Create Advanced Shared Filters](GI_Reusable_Filters_Creating_Shared_Reusable_Filter_Activity.md) activity.

## Step: Removing an Advanced Filter { .section}

To remove an advanced filter, do the following:

1.  Open the Invoices and Memos \(AR3010PL\) generic inquiry form.
2.  On the table toolbar, click **Filter Settings** to expand the filtering area.
3.  In the **Filter List** drop-down menu in the upper-left corner, select **Previous Quarter**.
4.  In the filtering area, click **...** and then **Delete Filter**.
5.  In the dialog box that opens, confirm your action by clicking **OK**.

    The system deletes the filter.

6.  On the form, notice that the *Previous Quarter* is no longer available in the Filter List drop-down menu.

**Parent topic:**[Managing Advanced Filters](../UserGuide/GI_Reusable_Filters_Mapref.md)

