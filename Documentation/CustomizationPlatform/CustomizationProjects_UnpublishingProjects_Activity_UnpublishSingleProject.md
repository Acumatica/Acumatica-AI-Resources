# Project Unpublishing: To Unpublish a Single Project {#_d9034d17-70af-48a0-adb0-f37c63a90c61 .task}

The following activity will walk you through the process of unpublishing a single customization project.

## Story { .section}

Suppose that you have published two customization projects \(*Yogifon* and *OpportunitiesForm*\) in your Acumatica ERP instance, and you want to revert the changes introduced by the *OpportunitiesForm* project. You need to unpublish this customization project.

## Process Overview { .section}

By using the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form of the *Yogifon\_Staging* instance, you will unpublish the *OpportunitiesForm* project.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance called *Yogifon\_Staging* by using the process described in [Customization Projects: To Deploy an Instance](CustomizationProjects_GettingStarted_Activity_CreateInstance.md).
2.  In the *Yogifon\_Staging* instance, enable the following features on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form:
    -   **Business Account Locations**
    -   **Multicurrency Accounting**
    -   **Payment Application by Line**
3.  Download the following files of the deployment packages.
    -   [`Yogifon.zip`](https://training.acumatica.com/University/W140/Yogifon.zip)
    -   [`OpportunitiesForm.zip`](https://training.acumatica.com/University/W140/Yogifon.zip)

## Step 1: Publishing the Customization Projects { .section}

Before unpublishing a customization project, you will import the deployment packages to the staging environment and publish the customization projects as follows:

1.  In the *Yogifon\_Staging* instance, open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
2.  On the More menu \(under **Import**\), click **Import**.
3.  In the **Open Package** dialog box, which opens, select the `Yogifon.zip` file, which you have downloaded.
4.  Click **Upload**.

    The system uploads the project and adds it to the list on the [Customization Projects](../UserGuide/SM_20_45_05.md) form.

5.  On the More menu \(under **Import**\), click **Import** again.
6.  In the **Open Package** dialog box, which opens, select the `OpportunitiesForm.zip` file, which you have downloaded.
7.  Click **Upload**.

    The system uploads the project and adds it to the list on the [Customization Projects](../UserGuide/SM_20_45_05.md) form.

8.  In the table on the form, select the check boxes \(in the unlabeled column\) for the *Yogifon* and *OpportunitiesForm* projects.
9.  On the More menu \(under **Publish**\), click **Publish**.

    The **Compilation** pane appears, and the validation of the projects is performed.

10. Wait until the **Publish** button appears in the **Compilation** pane, and click it.
11. Wait until the *Website updated* row appears in the **Compilation** pane, and click **Close Compilation Pane**.

    The changes of the customization project are applied to the instance.


## Step 2: Unpublishing a Customization Project { .section}

To unpublish the *OpportunitiesForm* project, do the following in the *Yogifon\_Staging* instance:

1.  Open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
2.  In the list of customization projects, select the unlabeled check box for the *Yogifon* project, and clear the check box for the *OpportunitiesForm* project.
3.  On the form toolbar, click **Publish**.

The system removes all published customization projects from the Acumatica ERP instance, merges the content of the customization projects that are currently selected on the form, and applies the merged content to the instance.

**Parent topic:**[Unpublishing Customization Projects](../CustomizationPlatform/CustomizationProjects_UnpublishingProjects_Mapref.md)

