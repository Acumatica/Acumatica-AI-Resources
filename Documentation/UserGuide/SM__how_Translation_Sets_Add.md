# To Add a New Translation Set {#_2cecda6a-5739-4762-92d7-e398de07a3dc .task}

To add a new translation set, you use the [Translation Sets](SM_21_15_00.md) \(SM211500\) form. For every translation set, you select the system resources \(that is, forms and form elements with which the strings are associated\) you want to include in the set. When you collect the strings of a translation set, the system collects the strings associated with the system resources included in the set. For more information, see [Translation Process](SM__con_Translation_Process.md).

## To Add a New Translation Set { .section}

1.  Open the [Translation Sets](SM_21_15_00.md) \(SM211500\) form.
2.  In the form toolbar, click **Add New Record**.
3.  In the **Name** box of the Selection area, type a name for the new set.
4.  If you want to include strings from unbound resources, in the **Unbound Resources to Collect** box, select the check boxes for the types of unbound resources for which you want to collect the associated strings.
5.  To add forms included in the site map to the set, in the tree pane, do the following:
    1.  To add all forms of a particular tree node, select the node, and then click **Add to Grid** on the pane toolbar.

        Repeat this step for each node whose forms you want to add.

    2.  To add a particular form, select the form in the tree, and then click **Add to Grid** on the pane toolbar.

        Repeat this step for each form you want to add.

6.  To add all standalone forms, on the tree pane toolbar, click **Add Standalone Pages**.

    **Note:** Standalone forms are those whose files are stored outside of the **Pages** folder in the site directory on the server that is used to host the application site—for example, the Sign-In page. In the table, notice that all standalone forms are represented as one form named **Standalone Screens** with a screen ID of *00.00.00.00*.

7.  In the table \(lower right pane\), for each form whose strings you want to collect, select the **Active** check box.
8.  On the form toolbar, click **Save** to save the settings of the translation set.

After you added a new translation set, you can collect strings for the set. For details, see [To Collect the Strings of a Translation Set](SM__how_Translation_Sets_Collect.md).

**Parent topic:**[Managing Locales and Languages](../UserGuide/SM__mng_Locales.md)

