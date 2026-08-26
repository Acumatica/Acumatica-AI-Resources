# Configuring the Self-Service Portal: To Specify the General Settings of the Self-Service Portal {#_a0e62afb-2306-464d-a97a-1e0f3aacb983 .task}

In the following implementation activity, you will specify the general settings of the Acumatica Self-Service Portal instance.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams has decided to create a Self-Service Portal instance, which will be used by SweetLife customers. Acting as system administrator, you need to configure the system before these users can use it. You also need to specify the general settings for the Self-Service Portal.

## Configuration Overview { .section}

For the purposes of this activity, the following tasks have been performed:

-   The Acumatica ERP application instance with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded and the Self-Service Portal application instance have been deployed in the same database.

    **Tip:** This deployment is outside of the scope of this course.

-   In the *U100\_SSP\_Admin\_2026 R1* dataset, on the [User Roles](SM_20_10_05.md) \(SM201005\) form of Acumatica ERP, the *Portal Admin* role has been assigned to the *gibbs* user account. The user account is associated with Kimberly Gibbs, the system administrator in the SweetLife Fruits &amp; Jams company. The role provides full administrative privileges in the Self-Service Portal.

## Process Overview { .section}

In this activity, you will specify the general settings of the Self-Service Portal instance on the Portal Preferences \(SP800000\) form.

## System Preparation { .section}

Before you start specifying the general settings of the Self-Service Portal, do the following:

1.  Launch the Acumatica ERP instance that uses the same database and tenant as the Self-Service Portal instance to be configured.
2.  Sign in to a company with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded as system administrator by using the *gibbs* username and the *123* password.
3.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the *Customer Portal* feature.

## Step: Specifying the General Settings of the Self-Service Portal { .section}

To specify the general settings of the Self-Service Portal, perform the following instructions:

1.  Sign in to a Self-Service Portal as system administrator by using the *gibbs* username and the *123* password.
2.  Open the Portal Preferences \(SP800000\) form.
3.  On the **General Settings** tab \(**Portal Settings** section\), do the following:
    1.  In the **Portal Name** box, type the portal name, such as `SweetLife Online Shop`.
    2.  To restrict the visibility of financial documents, in the **Display Financial Documents** box, select *From Company*. With this option selected, the Self-Service Portal users will see the financial documents associated with a particular company \(tenant\) and its branches.

        **Tip:** The **Display Financial Documents** box may be unavailable for editing, which depends on your Acumatica ERP license. If the box is unavailable for editing, make sure that you have deleted the license that you activated in the Self-Service Portal \(see [Configuring the Self-Service Portal: To License the Self-Service Portal Instance](config_SSP_Admin_To_License_SSP_Instance.md)\).

    3.  In the **Portal Site Company** box, which appears, select *SWEETLIFE*.
4.  On the form toolbar, click **Save**.

You have specified the general settings of the Self-Service Portal instance.

**Parent topic:**[Configuring the Self-Service Portal](../UserGuide/config_SSP_Admin_Mapref.md)

