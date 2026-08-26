# Initial Configuration: To Capture Store Connection Information {#_f4601133-62b9-4559-a464-52d2095f479d .task}

Before you can start setting up a connection to the BigCommerce store in Acumatica ERP, you need to obtain the following BigCommerce connection information:

-   The store admin URL, which is the URL of the BigCommerce store followed by */manage*
-   The API credentials \(API path, client ID, and access token\)

In this activity, you will learn where to find the listed information.

## Process Overview { .section}

In this activity, you will obtain the API credentials of the BigCommerce store.

## System Preparation { .section}

1.  Before you start this activity, make sure that you have completed the instructions in [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).
2.  Sign in to the control panel of the BigCommerce store as the store administrator.

## Step: Obtaining the BigCommerce Store API Credentials { .section}

Before you can establish a connection between your instance of Acumatica ERP and the online store, you need to generate an API account. Do the following:

1.  In the left pane of the control panel, click **Settings**.
2.  On the **Settings** page, in the **API** section, click **Store-level API accounts**.
3.  On the **Store-level API accounts** page, click **Create API account**.
4.  On the **Create account** page, specify the following settings:
    -   **Token type**: *V2/V3 API token*
    -   **Name**: `Acumatica ERP Integration`
5.  Make a note the store's API path, which is displayed in the **API path** box.
6.  For each scope under **OAuth scopes**, set the permission to the highest \(rightmost\) level.
7.  In the lower right, click **Save** to save your changes.
8.  In the **BigCommerce API credentials** dialog box, which appears, the following details of the created API account are displayed:

    -   Client ID
    -   Client secret
    -   Access token
    If you are using Chrome, Firefox, or Edge, a text file with this information, as well as the API Path, will be automatically downloaded to your computer.

9.  Save the API account information to a file.

    **Important:** Make sure to securely store these API credentials. If you lose this information, you will have to delete the account and create a new one.

10. Click **Done** to close the dialog box.

    On the **Store-level API accounts** page, to which you return, the information about the *Acumatica ERP Integration* account is now displayed.


Now you can move on to establish a connection between Acumatica ERP and the BigCommerce store and perform the minimum configuration of the connection. To do so, follow the steps described in [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).

**Parent topic:**[Initial Configuration of a BigCommerce Store](../UserGuide/Commerce_BC_Initial_Configuration_Mapref.md)

