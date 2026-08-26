# Preparing an Instance: Activation and Licensing {#_b02c0745-5052-4cce-927f-2b1ac61c0be6 .concept}

To start implementation, you need to activate the instance by enabling the default set of features. Then you apply the license and enable any purchased features that are not in the default set.

In this topic, you will read about the first sign-in to a new blank instance, feature enabling, and the limitations of trial and license modes.

## Obtaining of a License { .section}

In Acumatica ERP, you can request the purchased license by creating a support case through the [Partner Portal](https://portal.acumatica.com/). You should specify the following settings in the case:

-   **Installation ID**: The installation ID is available in the **About** dialog box of the Acumatica ERP application instance. To open this dialog box, on any Acumatica ERP form, select **Tools** &gt; **About**.
-   **Contract ID**: You can find this ID on your Acumatica ERP sales invoice.

After your license request is processed, you will receive a license key. Acumatica uses a licensing server to validate licenses. If the server where you installed the Acumatica ERP instance has no access to the internet, because of the Acumatica security policy, you may request a license file instead of the key.

You apply the key to your instance by clicking **Enter License Key** on the form toolbar of the [Activate License](../Shared/../UserGuide/SM_20_15_10.md) \(SM201510\) form, enter the license key in the **Activate New License** dialog box, and click **OK**. The system contacts the licensing server and validates the license online. Each license can be used to activate a predetermined number of instances. If you reach the limit for your license, you generally will not be able to use this license. Alternatively, depending on your license settings, the system may bring up a prompt asking if you want to deactivate the license from the oldest instance.

**Attention:** To validate your license, the licensing server requires that port 443 be open on the computer that is running the Acumatica ERP instance where you enter the key. You may have to open port 443 if the computer has a firewall enabled.

To apply the license file, you should click **Upload License File** on the form toolbar of the [Activate License](../Shared/../UserGuide/SM_20_15_10.md) form, and then select and upload the license file by using the **Upload New License File** dialog box. If you use a license file, the system validates the license without contacting the licensing server.

## First Sign-In to Acumatica ERP { .section}

Preparing an instance is performed under the only active user account \(*admin*\) that comes with every Acumatica ERP instance. This user has sufficient access rights to perform the instance preparation.

The initial credentials for the default user account are *admin* for the username and *setup* for the password. When you try to sign in for the first time, the system requires you to change the password.

When you sign in to a new Acumatica ERP instance for the first time and attempt to navigate to any form, the system brings up the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form \(the only form you can access\), which you use to enable the default set of features. After you do this, you can access the [Activate License](../Shared/../UserGuide/SM_20_15_10.md#) \(SM201510\) form, where you can activate your license key if you want to remove the trial mode restrictions. If you want to proceed with the trial mode, you can enable any other features that are available.

## Product Features { .section}

Acumatica ERP provides scalable core system functionality and offers a range of add-on features. On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, you can view and modify the list of enabled features according to your license limitations.

You must enable a feature to cause all feature-related forms and individual elements to appear in Acumatica ERP. Some features may add only additional elements to the available forms, and others may enable a workspace or a set of workspaces with multiple forms. For example, the **Projects** menu item appears on the main menu only if the *Project Accounting* feature is enabled. If you enable the *Tax Entry From GL Module* feature, it only adds additional elements to the [Journal Transactions](../Shared/../UserGuide/GL_30_10_00.md) \(GL301000\) form, which is available with the default set of features.

The [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) form also displays \(at the top of the form\) the state of the currently selected feature set—that is, the set of functionality available in your instance of Acumatica ERP. The following states are possible:

-   *Pending Activation*: The system displays this status when you access the form for the first time to enable the standard set of features. Also, the system displays the status after you click **Modify** on the form toolbar to change the selection of features. This status indicates that the current settings on the form do not reflect the actual set of functionality available in Acumatica ERP.
-   *Validated*: The system displays this status when you have enabled the features selected on the form by clicking **Enable** on the form toolbar. With this status, the enabled features on the form reflect the actual functionality available in your instance of Acumatica ERP.

Before you start implementing Acumatica ERP, you may find it helpful to become familiar with the functionality to be implemented and the add-on features your organization has included in the license. For details, see [Preparing an Instance: Acumatica ERP Features](../Shared/../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Features_Overview.md).

**Attention:** You can also use the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) form to disable individual features in Acumatica ERP. We recommend that you *not* disable any feature after it has been enabled and used in the live system; this may cause unexpected results, including data loss.

## Trial and License Modes { .section}

By default, Acumatica ERP is installed in trial mode. Although all features are available in this mode, the mode has the following restrictions:

-   You can create no more than 10 tenants per instance.
-   All tenants that you create are assigned the *Test Tenant* status. For details, see [Tenants: General Information](../Shared/../UserGuide/SA_Managing_Tenants_Using_Web_GeneralInfo.md).
-   A watermark is added to all printed forms and reports.
-   Only two conventional users can concurrently use the system.

    **Tip:** *Conventional users* are users who can sign in by using their usernames and passwords on the Acumatica ERP Sign-In page, through the mobile application, or via the single sign-on page if SSO with Google or Microsoft Account has been set up.

    Each time a third conventional user signs in to Acumatica ERP, one of the current users is forcibly signed out. The following message is displayed at the bottom of each form: *Your product is in trial mode. Only two concurrent users are allowed.* The message is followed by the *Activate* link, which you can click to activate a license.

-   Only two API users can concurrently use the system. A third API user cannot sign in to Acumatica ERP and receives an error during the sign-in attempt.

    **Tip:** API users are users with client applications that can sign in using the contract-based REST API method, the screen-based SOAP API, or the OAuth 2.0 authorization mechanism for applications.


In trial mode, you can enable and use any feature. For a production site, you should activate the full-product license, thus running the system in license mode. After the license activation, the system hides the features that are not included in your license on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, and you will not be able to enable these features.

When you obtain the license for using Acumatica ERP and apply this license to an instance, the trial mode restrictions are removed. The license defines the license tier \(that is, the level of resources that you can use by using the license\) and the set of features you can enable for the instance. For details on license tiers, see [Typical Hardware and Virtual Machine Configurations for PCS and PCP Licenses for the Acumatica ERP Installation](../Shared/../UserGuide/INST_Preparing_Installation_System_Requirements_PCP_PCS_Licenses.md).

**Attention:** During licensing and activation, the application instance is restarted. When you apply a license to a non-testing environment, make sure that all users of your website are warned about the restart of the site so that they can save all work in progress.

If you use the Acumatica Self-Service Portal, you have to obtain a license for the Self-Service Portal instance, activate the license, and then activate the required Self-Service Portal features. For details, see [Configuring the Self-Service Portal](../Shared/../UserGuide/config_SSP_Admin_Mapref.md).

**Parent topic:**[Preparing an Instance for Implementation](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Mapref.md)

