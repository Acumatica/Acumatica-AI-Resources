# Configuring the Self-Service Portal: To License the Self-Service Portal Instance {#_877023df-e338-45e2-b55b-72999d217703 .task}

In the following activity, you will learn how to activate a license for the Acumatica Self-Service Portal, as well as how to delete the license.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company has decided to create a Self-Service Portal instance, which will be used by SweetLife's customers. Acting as system administrator, you need to configure the system before these users can use it.

In this activity, you will perform the first step of this configuration: activating the instance of the Self-Service Portal.

**Attention:** During production use of the Self-Service Portal, you activate your license and enable the needed features. During testing, however, you work in trial mode, where you can enable and use any feature. Thus, in the second step of this activity, you will delete the license so that you can continue working in trial mode while performing other activities that involve working with the Self-Service Portal.

## Configuration Overview { .section}

For the purposes of this activity, the following tasks have been performed:

-   The Acumatica ERP application instance with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded and the Self-Service Portal application instance have been deployed in the same database.

    **Tip:** This deployment is outside of the scope of this course.

-   In the *U100\_SSP\_Admin\_2026 R1* dataset, on the [User Roles](SM_20_10_05.md) \(SM201005\) form of Acumatica ERP, the *Portal Admin* role has been assigned to the *gibbs* user account. The user account is associated with Kimberly Gibbs, the system administrator in the SweetLife Fruits &amp; Jams company. The role provides full administrative privileges in the Self-Service Portal.

## Process Overview { .section}

In this activity, you will do the following:

1.  Obtain the product key for the license for the Self-Service Portal by creating a support case through the Acumatica Portal \([portal.acumatica.com](https://portal.acumatica.com/)\).
2.  Activate your license on the [Activate License](SM_20_15_10.md) \(SM201510\) form of the Self-Service Portal.
3.  Delete the Self-Service Portal license to return to trial mode for testing purposes.

## System Preparation { .section}

Before you apply a license key to the Self-Service Portal instance, you should do the following:

1.  Obtain a product key from Acumatica by creating a support case through the Acumatica Portal \([portal.acumatica.com](https://portal.acumatica.com/)\). Submit the following information:
    -   **Installation ID**: To find the installation ID, on any Acumatica ERP or Self-Service Portal form, select **Tools** &gt; **About...**. The **About Acumatica** dialog box, which contains this ID, opens.
    -   **Contract ID**: You can find this ID on your Acumatica ERP sales invoice.
2.  Make sure that the port 443 is opened on the computer running the Acumatica ERP instance. You may have to open port 443 if the computer has a firewall enabled.
3.  Launch the Self-Service Portal instance that uses the same database as Acumatica ERP.
4.  Sign in to a company with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded as system administrator by using the *gibbs* username and the *123* password.

## Step 1: Activating the Self-Service Portal License { .section}

To activate the Self-Service Portal license, do the following:

1.  In the Self-Service Portal, open the [Activate License](SM_20_15_10.md#) \(SM201510\) form.
2.  On the form toolbar, click **Enter License Key**.
3.  In the **Activate New License** dialog box, which opens, enter the license key, which you have obtained through the Acumatica Portal \([portal.acumatica.com](https://portal.acumatica.com/)\) and click **OK**.

    The system contacts the licensing server and validates the license online.

4.  In the **Agree to Proceed** dialog box, which opens, click the link to read the software license agreement. If you agree to the terms of the agreement, click **Agree** to proceed with activation. The dialog box is closed.
5.  In the Summary area, review the license’s status \(*Valid*\), its validity period, and the number of users and tenants.
6.  On the form toolbar, click **Apply License** to activate your license.

    The system restarts the instance. In the table, notice the list of the features activated by the license.


## Step 2: Deleting the Self-Service Portal License { .section}

In this step, to restore trial mode for testing purposes, you will delete the Self-Service Portal license. \(These actions would not be performed in production use of the portal.\) Do the following:

1.  While you are still viewing the [Activate License](SM_20_15_10.md#) \(SM201510\) form, on the form toolbar, click **Delete License**.
2.  In the **License** dialog box, which opens, click **OK**. Wait for the system to complete the operation.

    The system restarts the instance. Notice that now the instance is in trial mode again.


**Parent topic:**[Configuring the Self-Service Portal](../UserGuide/config_SSP_Admin_Mapref.md)

