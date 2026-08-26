# Access Rights to Generic Inquiries: To Define Access Rights to a Generic Inquiry {#_ad31dad5-a1c1-4cc8-aa5d-cc7f6fb3eb0d .task}

In this activity, you will learn how to specify access rights to a generic inquiry that has been created on the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a system administrator who manages user access to Acumatica ERP in your company. A financial supervisor of your company has requested that you allow users who are working with the *SweetLife Store* branch to view information on the Expected Receipts \(GI000081\) inquiry form, which is the predefined generic inquiry form with the *DB-ARexpectedReceipts* inquiry title and the *Expected Receipts* site map title specified on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.

For the *DB-ARexpectedReceipts* generic inquiry, you have reviewed the inquiry settings on the **Entry Point** tab of the [Generic Inquiry](SM_20_80_00.md) form and made sure that the inquiry is not configured as a substitute form for an entry form. This means that you need to specify the level of access rights directly for the form because the inquiry form does not inherit access rights from an entry form.

You have reviewed the roles that are assigned to the employees of the branch and determined that to give these employees the ability to view information on the form, you need to assign the *View Only* level of access rights to the *Branch Retail* role.

## Process Overview { .section}

You will use the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form to select the *DB-ARexpectedReceipts* inquiry form and then assign the *View Only* level of access rights to for the *Branch Retail* role. Then you will sign in to Acumatica ERP with credentials of a user with the *Branch Retail* role \(the username is *rains*\), open the Expected Receipts \(GI000081\) inquiry form, and make sure that you can view information on the form, to verify the level of access rights.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a tenant with the *U100* dataset preloaded as system administrator Kimberly Gibbs. You should sign in by using the *gibbs* username and the *123* password.

**Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to manage the system configuration and to modify generic inquiries, advanced filters, pivot tables, and dashboards.

## Step 1: Defining Access Rights { .section}

To set up the *View Only* level of access rights to the *Expected Receipts* inquiry form, do the following:

1.  Open the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form.
2.  In the left pane, open the **Data Views** node, and click *Expected Receipts* to specify access rights to this form.
3.  In the right pane, in the row with the *Branch Retail* role, select *View Only* in the **Access Rights** column.
4.  Save your changes.

## Step 2: Verifying Access to the Form for a User Assigned to the Role { .section}

To verify that a user with the *Branch Retail* role has the *View Only* level of access rights to the Expected Receipts \(GI000081\) inquiry form, do the following:

1.  In the right corner of the top pane on the Acumatica ERP screen, click the User menu button, and in the menu that opens, select **Sign Out**.
2.  Sign in to Acumatica ERP with the following credentials:
    -   **Username**: *rains*
    -   **Password**: *123*
3.  On the main menu, click the **Data Views** menu item. In the corresponding workspace, which opens, click *Expected Receipts* in the **Inquiries** category. Make sure the form is displayed.
4.  Make sure that the **Edit Generic Inquiry** menu item is not displayed in the **Settings** menu in the top right of the form title bar, which means that the user cannot modify the inquiry.
5.  In the right corner of the top pane on the Acumatica ERP screen, click the User menu button, and in the menu that opens, select **Sign Out**.

**Parent topic:**[Managing Access Rights To Generic Inquiries](../UserGuide/GI_Access_Rights_Mapref.md)

