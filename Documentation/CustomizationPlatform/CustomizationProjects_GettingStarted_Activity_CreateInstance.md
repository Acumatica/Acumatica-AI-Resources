# Customization Projects: To Deploy an Instance {#_64244873-0758-45b8-90bf-208cca9c6b0b .task}

This activity will walk you through the process of preparing the environment and deploying an Acumatica ERP instance that you can use to perform the activities of this guide.

## Story { .section}

Suppose that you are a customizer in your company. Before you can start working on the customization project, you need to deploy an Acumatica ERP instance.

## Process Overview { .section}

You will deploy an Acumatica ERP instance with the *T100* dataset. On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you will then enable the features that are required to test the customization projects in this guide.

## System Preparation { .section}

Before you begin deploying an instance, do the following:

1.  Make sure that the environment that you are going to use meets the [System Requirements for the Acumatica ERP Installation](../UserGuide/INST_Preparing_Installation_System_Requirements.md).
2.  Make sure that the Web Server \(IIS\) features that are listed in [Preparation for the Acumatica ERP Installation: System Environment](../UserGuide/INST_Preparing_Installation_System_Environment.md) have been turned on.

## Step 1: Deploying an Acumatica ERP Instance { .section}

Open the Acumatica ERP Configuration wizard, and deploy a new application instance as follows:

1.  On the Database Configuration page of the Acumatica ERP, type the name of the database: `Yogifon`.
2.  On the Tenant Setup page, define one tenant with the *T100* dataset inserted by specifying the following settings:

    -   **Tenant Name**: `Yogifon`
    -   **New**: Selected
    -   **Insert Data**: *T100*
    -   **Parent Tenant ID**: 1
    -   **Visible**: Selected
    The system creates a new Acumatica ERP instance, adds a new tenant, and loads the selected data.

3.  Sign in to the new tenant by using the following credentials:

    -   **Username**: `admin`
    -   **Password**: `setup`
    Change the password when the system prompts you to do so.

4.  In the info area in the top right corner of the Acumatica ERP screen, click your username, and click **My Profile**.
5.  On the **General Info** tab of the [User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\) form, which opens, select *YOGIFON* in the **Default Branch** box.
6.  On the form toolbar, click **Save**.

In subsequent sign-ins to this account, you will be signed in to the *YOGIFON* branch.

## Step 2: Enabling the Features { .section}

Enable the features that are required to test the customization projects by doing the following:

1.  Open the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  Select the following check boxes:
    -   **Business Account Locations**
    -   **Multicurrency Accounting**
    -   **Payment Application by Line**
4.  On the form toolbar, click **Enable**.

**Parent topic:**[Getting Started with Customization Projects](../CustomizationPlatform/CustomizationProjects_GettingStarted_Mapref.md)

