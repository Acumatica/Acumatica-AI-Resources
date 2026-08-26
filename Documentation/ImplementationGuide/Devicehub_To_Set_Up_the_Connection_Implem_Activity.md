# DeviceHub: To Set Up the Connection Between DeviceHub and the Acumatica Instance {#_6e59cf1a-59f6-4291-a75a-d08f10d43036 .task}

In the following implementation activity, you will learn how to set up the connection between the Acumatica ERP instance and the DeviceHub application.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a technical specialist in your company and you have installed DeviceHub. Now you need to perform the initial configuration of the application to connect DeviceHub to the Acumatica ERP instance that your company uses.

## Process Overview { .section}

On the **Connection** tab of the configuration window of DeviceHub, you will configure connection settings.

## System Preparation { .section}

Before you start setting up the connection of DeviceHub and the Acumatica ERP instance, you should do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as the system administrator with the *admin* username and the *123* password.
2.  Make sure that DeviceHub has been installed on your computer, as described in [DeviceHub: To Install DeviceHub](Devicehub_To_Install_DeviceHub_Implem_Activity.md).

## Step 1: Enabling the Needed Feature { .section}

To enable the *DeviceHub* feature, do the following.

1.  Sign in to the Acumatica ERP instance for which you are going to configure DeviceHub.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, click **Modify** on the form toolbar.
3.  Under the **Monitoring &amp; Automation** group, select the **DeviceHub** check box.
4.  On the form toolbar, click **Enable**.

## Step 2: Connecting DeviceHub with Acumatica ERP { .section}

To set up the connection of the DeviceHub application and the Acumatica ERP instance, do the following:

1.  Navigate to **Start** &gt; **Programs** &gt; **Acumatica** &gt; **Acumatica DeviceHub** to view the DeviceHub main window.

    **Note:** DeviceHub must be run with administrator privileges; otherwise, some of its functions may be unavailable.

2.  In the application’s main menu, click **File** &gt; **Configure** to open the **Configuration** window. \(If you are running DeviceHub for the first time, the **Configuration** window opens automatically.\)
3.  In the **DeviceHub ID** box, enter *MyDH*.

    The DeviceHub ID is a unique identifier to be used for the DeviceHub instance.

4.  On the **Connection** tab, specify the following settings:
    -   **URL**: The URL of the configured Acumatica ERP instance for which DeviceHub is configured.
    -   **Login**: *admin*.

        DeviceHub will use this username to connect to the Acumatica ERP instance.

        **Tip:** We recommend that you create a separate Acumatica ERP user account with the *Administrator* user role, so that DeviceHub can connect to Acumatica ERP by using this user account and perform the required actions.

    -   **Password**: *123*.

        DeviceHub will use this password to connect to the Acumatica ERP instance.

    -   **Tenant**: The login name of the tenant to which DeviceHub will connect.

        If you have only one tenant in your Acumatica ERP instance, leave the box empty.


You have configured the connection settings for DeviceHub. Now you need to configure the methods of retrieving print and scan jobs, as described in [DeviceHub: To Configure Methods of Retrieving Print and Scan Jobs](DeviceHub_To_Configure_Push_Notifications_Implem_Activity.md).

**Parent topic:**[Getting Started with DeviceHub](../ImplementationGuide/Config_Initial_DeviceHub_Mapref.md)

