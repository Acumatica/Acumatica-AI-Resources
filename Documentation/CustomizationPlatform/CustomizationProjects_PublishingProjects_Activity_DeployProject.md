# Project Publication: To Deploy a Customization Project {#_74c45e45-87fa-474a-8aa2-1b8210b0602b .task}

The following activity will walk you through the process of deploying a customization project to a staging environment.

## Story { .section}

Suppose that your colleague has created and tested the *Yogifon* customization project in their development environment. This project contains the modifications of various elements on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\), [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\), [Leads](../UserGuide/CR_30_10_00.md) \(CR301000\), [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\), and [Customer Locations](../UserGuide/AR_30_30_20.md) \(AR303020\) forms. Further suppose that you want to make the same changes to the staging environment. You need import the project to your instance and test it.

## Process Overview { .section}

By using the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form of your Acumatica ERP instance, you will import the deployment package with the *Yogifon* customization project and then publish this customization project. You will then test the results of the changes on the appropriate forms.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance called *Yogifon\_Staging* by using the process described in [Customization Projects: To Deploy an Instance](CustomizationProjects_GettingStarted_Activity_CreateInstance.md).
2.  In the *Yogifon\_Staging* instance, enable the following features on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form:
    -   **Business Account Locations**
    -   **Multicurrency Accounting**
    -   **Payment Application by Line**
3.  Download the [`Yogifon.zip`](https://training.acumatica.com/University/W140/Yogifon.zip) file of the deployment package.

## Step 1: Applying the Customization Project to the Staging Environment { .section}

To apply the customization project to the staging environment, you will import the deployment package to the staging environment and publish the customization project as follows:

1.  In the *Yogifon\_Staging* instance, open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
2.  On the More menu \(under **Import**\), click **Import**.
3.  In the **Open Package** dialog box, which opens, select the `Yogifon.zip` file, which you have downloaded.
4.  Click **Upload**.

    The system uploads the project and adds it to the list on the [Customization Projects](../UserGuide/SM_20_45_05.md) form.

5.  In the table, select the unlabeled check box in the row with the *Yogifon* customization project.
6.  On the More menu \(under **Publish**\), click **Publish**.
7.  Wait until the **Publish** button appears in the **Compilation** pane, and click it.
8.  Wait until the *Website updated* row appears in the **Compilation** pane, and click **Close Compilation Pane**.

    The changes of the customization project are applied to the instance.


## Step 2: Testing the Changes { .section}

To test the changes in the published customization project, perform the following steps:

1.  Open the [Generic Inquiry](../UserGuide/SM_20_80_00.md) \(SM208000\) form. In the **Inquiry Title** box, select *SO-OpenByCustomer*.
2.  On the form toolbar, click **View Inquiry**.

    Make sure that the inquiry opens in a new browser tab, and that it contains the **Order Type** column.

3.  On the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, do the following:
    1.  Open the customer with the *C000000003* ID.
    2.  On the More menu \(under **Inquiries**\), click **Open SO by Customer**, and make sure that the Open Sales Orders by Customer generic inquiry opens in a new browser tab.
4.  On the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form, do the following:
    1.  Open the *000002* case.
    2.  Verify that the form contains the **Problem Summary** tab with the **Problem Type** and **Comments** boxes.
    3.  Click the magnifier button of the **Case ID** box in the Summary area, and make sure that the lookup table contains the **Reported On** column.
5.  On the [Leads](../UserGuide/CR_30_10_00.md) \(CR301000\) form, clear the **Email** for the record with the *Smith, Jenny* lead ID, and make sure that the **Accept** command on the More menu is visible but unavailable.
6.  On the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, do the following:
    1.  On the Company and Branch Selection menu in the top pane of the screen, select the *MyStore* branch.
    2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *10/31/2025*. If a different date is displayed, click the Business Date menu button, and select *10/31/2025* from the calendar.
    3.  Open the sales order with the *000002* ID.
    4.  Verify that the form toolbar contains the **Sales Orders by Customer** button, and that the More menu contains the **Sales Orders by Customer** command.
    5.  Click this button or menu command, and make sure that the report opens in a new browser tab.
7.  On the [Customer Locations](../UserGuide/AR_30_30_20.md) \(AR303020\) form, make sure that the **Network Type** user-defined field is associated with the form as follows:
    1.  On the form title bar, click **Settings** &gt; **UI Configuration**.
    2.  On the UI Configuration pane, which opens at the top of the form, click **Manage User-Defined Fields**.

        The **Manage User-Defined Fields** dialog box opens.

    3.  In the **Added User-Defined Fields** section of the dialog box, make sure that the **Network Type** field is displayed.

**Parent topic:**[Publishing Customization Projects](../CustomizationPlatform/CustomizationProjects_PublishingProjects_Mapref.md)

