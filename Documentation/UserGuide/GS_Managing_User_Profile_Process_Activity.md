# Your Working Environment: Process Activity {#_11db7f63-426d-446f-ae74-ed0bbff80e4d .task}

In the following activity, you’ll change some of the basic settings of your Acumatica ERP working environment that are available in your user profile, so that you understand how to make these changes in your own user profile.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a new sales manager of the SweetLife Fruits &amp; Jams company. So far, you’ve worked in New York for the SweetLife Head Office and Wholesale Center branch. Your time zone is Eastern Time, which is Greenwich Mean Time minus five hours.

You’ve just been transferred to the Service and Equipment Sales Center branch, and you’re temporarily working from your home, which is located in Denver, Colorado. Your current time zone is Mountain Time, which is Greenwich Mean Time minus seven hours. For performing your job responsibilities, you need to frequently view sales prices for stock items on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form. You need to select your current time zone and to have sales prices for stock items displayed on your home page.

## Prerequisites { .section}

You have explored the commonly used elements of the Acumatica ERP UI. For details, see [The Acumatica ERP UI: General Information](GS_Learning_UI_GeneralInfo.md).

## Process Overview { .section}

In this activity, you’ll do the following:

1.  Select your time zone for Acumatica ERP
2.  Select your default branch
3.  Define your home page

## System Preparation { .section}

Before you start changing the basic settings of your Acumatica ERP working environment, make sure that the following tasks have been performed:

-   You’ve installed an Acumatica ERP instance with the *U100* dataset, or a system administrator has performed this task for you.
-   You’ve signed in to Acumatica ERP with the following credentials:

    -   **Username**: *chubb*
    -   **Password**: *123*
    For details, see [Acumatica ERP Access: Process Activity](GS_Accessing_Acumatica_ERP_Process_Activity.md).


## Step 1: Selecting Your Time Zone { .section}

To select your time zone in Acumatica ERP, do the following:

1.  Click the User menu button, and in the User menu, click **My Profile**. The [User Profile](SM_20_30_10.md) \(SM203010\) form opens.
2.  On the **General Info** tab \(**Personal Settings** section\), in the **Time Zone** box, select *\(GMT-07:00\) Mountain Time \(US &amp; Canada\)*.

    **Tip:** If you know the exact name of the time zone, you can type a part of the name in the **Time Zone** box. The search results will be limited to the values that match your search request.

3.  On the form toolbar, click **Save**.

    **Tip:** The times and dates shown in the system and in records are displayed in the selected time zone. For instance, suppose that another user located in the Eastern Time zone has created a record at 1:00 AM on January 16, 2026. David Chubb, who sees times and dates in Mountain Time, will see a date of 1/15/2026 \(because 1:00 AM Eastern Time is 11:00 PM Mountain Time on the previous day\).


## Step 2: Selecting Your Default Branch { .section}

To select your default branch, do the following:

1.  While you are still viewing the [User Profile](SM_20_30_10.md) \(SM203010\) form, in the **Default Branch** box \(which is in the **Personal Settings** section of the**General Info** tab\), click the magnifier button.
2.  In the lookup table that opens, double-click *SWEETEQUIP* to select the Service and Equipment Sales Center branch as your default branch.
3.  On the form toolbar, click **Save**.

    **Attention:** This change won’t be applied during the current session. The next time you sign in, the system will set the default branch as your current branch, as you can see in the next several instructions.

4.  Sign out of Acumatica ERP.
5.  Sign in to Acumatica ERP again.
6.  Open the Company and Branch Selection menu. On the menu, you can see a check mark next to the *Service and Equipment Sales Center* branch, which means that this is your current branch. Thus, the system has set your current branch to the default branch you have specified.

## Step 3: Defining Your Home Page { .section}

As David Chubb, you want your home page to be set to the [Sales Prices](AR_20_20_00.md) \(AR202000\) form so that you can immediately see the sales prices when you sign in \(and any other time you click the Home button\).

To define your homepage, do the following:

1.  In the top pane, click the User menu button, and in the User menu, click **My Profile** to open the [User Profile](SM_20_30_10.md) \(SM203010\) form.
2.  In the **Home Page** box \(in the **Personal Settings** section of the**General Info** tab\), click the magnifier button. The lookup table opens.
3.  In the search box of the lookup table, type `sales prices` \(the name of the form that will be David Chubb's home page\) to limit the search results to the values that match your search request. Among the results will be the form you want, with *Sales Prices* in the **Title** column. Double-click it to select the [Sales Prices](AR_20_20_00.md) form as your home page. The system closes the lookup table and fills in the **Home Page** box.
4.  On the form toolbar, click **Save**.
5.  In the upper-left corner of the Acumatica ERP screen, click the Home button to make sure that the [Sales Prices](AR_20_20_00.md) form, which you defined as your home page, opens.

**Parent topic:**[Managing Your Basic Working Environment](../UserGuide/GS_Managing_User_Profile_Mapref.md)

