# Expense Receipts: To Create an Expense Receipt by Using AI Automation

In this activity, you will use AI Automation in the Acumatica mobile app to recognize a receipt image and create an expense receipt.

If your organization uses the *Image Recognition for Expense Receipts* feature instead of AI Automation, see [Expense Receipts: Receipt Recognition in the Mobile App](TimeExpenses_Process_Expense_Receipts_Scanning_Expense_Receipts.md).

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story

Suppose that David Chubb, an employee of the sales department at the SweetLife Fruits &amp; Jams company, purchased a meal at Joe's Diner on September 15, 2023, and paid $51.03. Acting as Kimberly Gibbs, you will select an agent LLM connection for the predefined *Expense Receipt Recognition* agent and test the agent. Acting as David Chubb, you will then use a mobile device to select the receipt image, review the values recognized by AI Automation, and save the expense receipt.

## Configuration Overview

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Agents](ML_20_20_00.md) \(ML202000\) form, the predefined *Expense Receipt Recognition* agent has been configured.
-   On the [Non-Stock Items](IN_20_20_00.md#) \(IN202000\) form, the *MEAL* non-stock item with the *Expense* type has been created.
-   On the [Employees](EP_20_30_00.md#) \(EP203000\) form, the account for David Chubb has been created and associated with the *chubb* user account.

## Process Overview

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you will enable the needed features.

On the [Agents](ML_20_20_00.md) \(ML202000\) form, you will select the agent LLM connection for the predefined *Expense Receipt Recognition* agent and test the agent with the provided receipt image.

On the *Expense Receipts* screen of the Acumatica mobile app, you will then select the provided receipt image, review the recognized values, and save the expense receipt.

## System Preparation

Before you begin creating an expense receipt, do the following:

1.  Make sure that the Acumatica ERP instance has been hosted over HTTPS or ask a system administrator to perform this task for you. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).
2.  Download the [CorpCard.jpg](Files/TimeExpenses_Process_Expense_Receipts_CorpCard.jpg) file to the computer with the Acumatica ERP instance and to your mobile device.
3.  Download and install the Acumatica mobile app on the mobile device. The mobile app is available for iOS in the Apple Store and for Android in Google Play.

    **Attention:** The instructions in the activity steps below may slightly differ in the Acumatica mobile app depending on whether the device is running iOS or Android.

4.  Make sure that your system administrator has created and tested an agent LLM connection \(for details, see [Integration with LLM Providers: Creation of Agent LLM Connections](LLM_Providers_LLM_Connection_Creation_Concept.md)\). Also, make sure that the LLM that you use supports image and file processing.
5.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, disable the *Image Recognition for Expense Receipts* feature.
6.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the following features:
    -   *AI Automation*
    -   *Expense Management*
    -   *Receipt Agent*

## Step 1: Testing the Agent

To select a connection for the predefined agent, test the agent, and activate it, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in by using the *gibbs* username and the *123* password.
2.  On the [Agents](ML_20_20_00.md) \(ML202000\) form, open the *Expense Receipt Recognition* agent.
3.  In the **Agent LLM Connection** box, select the connection that your system administrator has configured.
4.  In the upload area of the **Agent Testing** section, upload the [CorpCard.jpg](Files/TimeExpenses_Process_Expense_Receipts_CorpCard.jpg) file and click **Test Agent**.
5.  On the **Result** tab, review the field names and values extracted from the receipt.

    The test does not create or update an expense receipt.

6.  In the **General Settings** section, select the **Active** check box and save your changes.

    The agent becomes available to users in the Acumatica mobile app.

7.  Sign out of the system.

## Step 2: Creating an Expense Receipt by Using AI Automation

To create an expense receipt from a receipt image, do the following:

1.  Sign in to the Acumatica mobile app as follows:
    1.  On the mobile device, tap the application icon to launch the app.
    2.  Optional: If you are signing in for the first time, in the **Server URL** box, enter the URL of your Acumatica ERP instance \(for example, *https://my.site.acumatica.com*\).
    3.  Optional: In the **Account Name** box, specify *chubb*.
    4.  Tap **Next**.
    5.  Sign in to the system by using the *chubb* username and the *123* password.
2.  On the main menu of the app, make sure that the *U100* tenant is selected.
3.  In the **Time and Expenses** workspace, tap the More menu next to the **Expense Receipts** tile.
4.  Tap **Select Image** and upload the [CorpCard.jpg](Files/TimeExpenses_Process_Expense_Receipts_CorpCard.jpg) file.

    **Tip:** Alternatively, you can tap **Capture Expense Receipt** to take a receipt photo or **Select PDF** to recognize a PDF file.

    You can upload one file at a time. The maximum file size is 5 MB; no file preview is available.

5.  Choose the area of the image that should be processed, and tap the check mark button.

    The recognition process starts automatically. The system creates an expense receipt and attaches the receipt image to it.

6.  Review all recognized values in the expense receipt. Correct any inaccurate values and enter any missing information.

    **Important:** An LLM can return incomplete or incorrect information without displaying an error. The mobile app does not verify that every required field has been recognized.

    Make sure the receipt image shows the date as *09/15/2023* and the total as *$51.03*.

7.  Tap **Save**.

    The expense receipt has the *Open* status, which means that you can claim it.


**Tip:** If recognition cannot be completed, dismiss the error message. The mobile app opens the expense receipt with empty fields and keeps the receipt image as an attachment. Enter the receipt details manually and save the record.

**Parent topic:**[Processing Expense Receipts](../UserGuide/TimeExpenses_Process_Expense_Receipts_Mapref.md)

