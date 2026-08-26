# Upgrading of Acumatica ERP: To Schedule the System Lockout {#_20186ba0-1542-41fb-b8b6-4589e1469295 .task}

The following activity will walk you through the process of scheduling a system lockout before the upcoming Acumatica ERP upgrade or update.

## Story { .section}

Suppose that you are the system administrator of your company, and you need to lock out the system before upgrading or updating the existing Acumatica ERP application instance to the next version.

## Process Overview { .section}

In this activity, you will schedule the lockout of the Acumatica ERP instance before its upgrade or update.

## System Preparation { .section}

Before you begin performing this activity, make sure that you have completed the [Instance Deployment: To Deploy an Instance with Demo Data](INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md) or [Instance Deployment: To Deploy an Out-of-the-Box Instance](INST_Deploying_Instances_Deploy_Tenant_Without_Demodata_Activity.md) prerequisite activity.

## Step: Scheduling the System Lockout { .section}

To schedule the Acumatica ERP lockout, do the following:

1.  If you are not already signed in to Acumatica ERP, sign in.
2.  Open the [Apply Updates](SM_20_35_10.md) \(SM203510\) form.
3.  On the form toolbar, click **Schedule Maintenance**.
4.  In the **Schedule Lockout** dialog box, specify the date and time when the system will be locked out and the reason for the lockout.

    **Tip:** If you want to upgrade or update the system immediately, specify the current date and time.

5.  If you want to lock out only the current site \(but not all sites that use the same database\) clear the **Lock Out All Sites** check box.
6.  Click **OK** to lock out the system at the specified time.

**Parent topic:**[Upgrading Acumatica ERP](../UserGuide/INST_Upgrading_Mapref.md)

