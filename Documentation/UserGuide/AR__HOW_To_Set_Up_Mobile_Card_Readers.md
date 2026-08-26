# To Set Up the EMV Card Reader Functionality {#_0de24855-e125-4165-8c78-7af95f40c30b .task}

This topic describes the configuration steps that you need to perform in the system to set up the support of EMV card readers.

## Before You Proceed { .section}

Confirm that the *Acumatica Payments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

Make sure that OAuth is set up for a location user account that has:

-   Access to the same location specified on the **Plug-In Parameters** tab of the [Processing Centers](CA_20_50_00.md) \(CA205000\) form
-   A role in the processing center that allows creating credit card sales

## To Create a Processing Center { .section}

1.  On the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Proc. Center ID**: The unique ID of the processing center
    -   **Name**: The name of the processing center
    -   **Active**: Selected
    -   **Cash Account**: The cash account to be used for the processing center
    -   **Payment Plug-In**: *Acumatica Payments Plug-In*
3.  On the **Plug-In Parameters** tab, specify the values for the following parameters:

    -   *APIKEY*: The API secret key from the merchant account
    -   *HASHKEY*: The API user hash key from the merchant account
    -   *LOCATIONID*: The location ID from the merchant account
    -   *RFNDUNSTTL*: A check box that you select to allow refunds for unsettled transactions for the processing center
    -   *TESTMODE*: The connection mode: *Test Mode* to connect to your sandbox merchant account, or *Live Mode* to connect to the production account
    -   *USERID*: The ID of the API user from the merchant account
    The system inserts the rest of the plug-in settings either now or when you save the processing center.

4.  On the form toolbar, click **Test Credentials** to make sure that the credentials are accepted by the processing center. In the **Result** dialog box, which is displayed, click **OK**.
5.  On the **Preferences** tab, specify the following settings:
    -   **Allow Saving Payment Profiles**: Selected.

        Selecting this check box allow users to save any payment profile. The system saves the profile by extracting the payment profile ID from the processing center and creating a customer payment method associated with the credit card.

    -   **Synchronize Deletion**: Selected.

        Selecting this check box causes payment method information to be automatically deleted from the processing center when a user deletes a customer payment method in Acumatica ERP.

    -   **Accept Payments from New Cards**: Selected.

        Selecting this check box allows this processing center to accept payments from customers' credit cards that aren’t stored in the system.

    -   **Use EMV Card Reader with Mobile App**: Selected.

        This setting indicates that EMV card readers in the Acumatica mobile app will be used with this processing center. When you select this check box, the **Authenticate EMV Card Reader** command appears on the form toolbar. This command establishes an open authorization \(OAuth\) connection between Acumatica ERP and the processing center.

6.  On the form toolbar, click **Authenticate EMV Card Reader**. A hosted form is displayed.
7.  Enter your domain, username, and password to complete authentication.

    If the authentication is successful and the access token works for the specified location, the system displays a confirmation message.

    **Attention:** If the provided access token is invalid for the selected location, the system displays an error message. You'll then be prompted to repeat the authorization process.

8.  On the form toolbar, click **Save** to save your changes.

## To Create a Payment Method and Assign It to the Processing Center { .section}

1.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, create a new record.
2.  Specify the following settings in the Summary area:
    -   **Payment Method ID**: The ID of the payment method
    -   **Active**: Selected
    -   **Means of Payment**: *EMV Mobile Card Reader*
    -   **Description**: The description of the payment method
    -   **Use in AR**: Selected
3.  On the **Allowed Cash Accounts** tab, click **Add Row** and in the **Cash Account** column, select a cash account.
4.  For the cash account, select the **Use in AR** check box.
5.  On the **Settings for Use in AR** tab, make sure that the **Integrated Processing** check box is selected.
6.  On the **Processing Centers** tab, click **Add Row** in the **Processing Centers** table.
7.  For the new row, in the **Proc. Center ID** column, select the processing center that supports EMV card readers.
8.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Configuring and Using Acumatica Payments](../UserGuide/AR__MNG_Acumatica_Payments.md)

