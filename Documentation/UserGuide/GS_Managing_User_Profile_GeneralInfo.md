# Your Working Environment: General Information {#_8db7263c-69d2-464f-8dbc-8735a2db649f .concept}

In the following sections, you’ll find information about the basic settings of your user profile, which you can use to tailor your working environment to meet your needs.

## Learning Objectives { .section}

In this chapter, you’ll learn how to do the following:

-   Change your personal settings
-   Select your time zone
-   Select your default branch
-   Define your home page
-   Explain what system locale settings are

## Applicable Scenarios { .section}

You manage your basic user profile settings in either of the following cases:

-   You are initially using Acumatica ERP and need to change the basic settings of your working environment that are available in your user profile.
-   You have worked with Acumatica ERP for some time and need to make particular adjustments to your basic working environment.

## Overview of Your User Profile Settings { .section}

On the [User Profile](SM_20_30_10.md) \(SM203010\) form, you can customize your basic working environment settings. By using this form, you can change your user settings \(first name, last name, and phone number\) and personal settings \(time zone, default branch, default warehouse, and home page\). The changes you make on this form affect your user account only.

You open the [User Profile](SM_20_30_10.md) form by clicking **My Profile** on the User menu.

## Time Zones { .section}

In Acumatica ERP, time zones are specified with respect to Greenwich Mean Time \(GMT\). A system administrator specifies the default time zone for all system users on the [Site Preferences](SM_20_05_05.md) \(SM200505\) form.

You can select your time zone on the [User Profile](SM_20_30_10.md) \(SM203010\) form if it differs from the default time zone.

After you’ve selected your time zone, the date of creation for all the records in the system will be displayed in your time zone. Also, if you create a schedule to run a particular process at a specified time, the system will start the schedule based on your time zone.

## Default Branch { .section}

In some cases, multiple branches of a company are defined in the Acumatica ERP instance. You can select the current branch \(and company, if needed\) from those to which you have access. Your current branch is inserted into the applicable boxes on forms and reports; this branch can be overridden, if needed.

If you work primarily in one of the branches to which you have access, you can specify a default branch. The default branch is then selected by the system as your current branch each time you sign in to Acumatica ERP. The system then inserts the name of this branch into the boxes on forms as you are creating records and using mass-processing forms, inquiry forms, and reports. If you change your default branch, you must sign out and sign in again for the default branch to be set as your current branch.

## Home Page { .section}

The home page is the first page that you see when you sign in to Acumatica ERP. On the [Site Preferences](SM_20_05_05.md) \(SM200505\) form, a system administrator specifies the default home page to be used by all users of the site who have not specified a personal default home page. This page displays links to Acumatica resources, announcements, and news.

If you want to specify a different default home page for your user account than the one specified for the system as a whole, you can select your home page on the **General Info** tab \(**Personal Settings** section\) of the [User Profile](SM_20_30_10.md) \(SM203010\) form. Your home page can be a form or a dashboard.

## Locale Settings { .section}

The default locale for Acumatica ERP is specified by a system administrator on the [System Locales](SM_20_05_50.md) \(SM200550\) form.

On the [User Profile](SM_20_30_10.md) \(SM203010\) form, you can select the date, time, and number formats to be used for your user account when you sign in to Acumatica ERP. These elements will be displayed in records according to the locale preferences set for your user account. If no personal preferences are specified, the system will use the default locale settings.

**Parent topic:**[Managing Your Basic Working Environment](../UserGuide/GS_Managing_User_Profile_Mapref.md)

