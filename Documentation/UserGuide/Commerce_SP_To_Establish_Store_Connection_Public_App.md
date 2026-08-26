# Initial Configuration: To Establish the Store Connection with a Public App {#_85560111-5bd0-4161-9692-d4662ae7ed2d .task}

The following activity will walk you through the process of connecting your Shopify store to your Acumatica ERP instance.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company wants to sell jam in its online store deployed on the Shopify platform. SweetLife is already using Acumatica ERP and now needs to integrate its instance with a new Shopify store. As SweetLife's implementation consultant, you need to install the Acumatica Cloud ERP app from the Shopify App Store and establish the connection between Acumatica ERP and the Shopify store.

## Process Overview { .section}

In this activity, you will install the Acumatica Cloud ERP app from the Shopify App Store and then use it to connect Acumatica ERP to your Shopify store.

## System Preparation { .section}

Before you start this activity, make sure of the following:

1.  You have deployed an Acumatica ERP instance and made it publicly accessible through the internet.
2.  You have set up a Shopify store, as described in [Initial Configuration: To Set Up a Shopify Store](Commerce_SP_Initial_Configuration_To_Set_Up_a_Shopify_Store.md).

## Step 1: Installing the Acumatica Cloud ERP App { .section}

To install the Acumatica Cloud ERP app, while you are signed in to your Shopify store, do the following:

1.  In the left menu, click **Apps**.
2.  In the upper right of the **Apps** page, which opens, click **Customize your store**.
3.  If prompted, sign in with your Shopify credentials.

    The main page of the Shopify App Store opens.

4.  In the search bar, type `acumatica`.
5.  In the search results, click **Acumatica Cloud ERP**.
6.  On the page of the Acumatica Cloud ERP app, which opens, click **Add app**.
7.  On the app installation page of your Shopify store, which opens, review the permissions the Acumatica Cloud ERP app will be granted in your store, and click **Install app**.

    The system installs the Acumatica Cloud ERP app and opens the first page of a wizard that walks you through connecting Acumatica ERP to the Shopify store.

    **Tip:** You can open the Acumatica Cloud ERP app by clicking the app name in the **Installed apps** section of the **Apps** page. You navigate to this page by clicking **Apps** in the left menu.


## Step 2: Connecting the Acumatica ERP Instance { .section}

To connect Acumatica ERP to your Shopify store, while you are viewing the first step of the connection wizard, do the following:

1.  In the **Connect to Acumatica** step, right of *Do you have an instance of Acumatica ERP ready for connection?*, click **Yes**.
2.  In the **Connect your Acumatica ERP Account** step, specify the following settings:
    -   **Acumatica ERP URL with full path**: The full public URL of your Acumatica ERP instance deployed for training
    -   **Tenant**: The name of the tenant with the *U100* dataset
3.  Click **Authorize**.
4.  On the Acumatica ERP sign-in page, which opens in a pop-up window, make sure the correct tenant is selected, enter the *gibbs* username and *123* password, and click **Sign In**.

    The app establishes the connection to the Acumatica ERP instance and creates a new Shopify store on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

    **Attention:** If the app shows a warning that your version of Acumatica ERP is not supported, ignore it and continue with the configuration.

5.  In the **Connect your Acumatica ERP Account** step, which now shows the question *Is this a sandbox?*, click **Yes**.

    You have now connected your Acumatica ERP instance with the Shopify store.

    In a production environment, you would need to answer **No** to the last question and provide additional details about yourself and your business so that representatives of Acumatica Inc. could contact you and help you get started.


**Parent topic:**[Initial Configuration of a Shopify Store](../UserGuide/Commerce_SP_Initial_Configuration_Mapref.md)

