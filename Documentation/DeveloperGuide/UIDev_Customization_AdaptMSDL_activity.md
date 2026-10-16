# Updating a Customization Project for the Modern UI: To Adapt an MSDL Script

This activity will walk you through the process of adapting an MSDL script for the Modern UI with the help of the MSDL adaptation tool.

## Story

Suppose that you have a customization project that contains MSDL scripts. These scripts were created for the Classic UI version of forms, meaning the names of containers and fields in these scripts were taken from the WSDL schema. You need to migrate this project to Acumatica 2026 R2 or later versions.

In this activity, you will be adapting the customization project, that is created in the *T400 Basic Customization of the Mobile App* course.

## Process Overview

You will use the MSDL adaptation tool to help you create a draft version of the MSDL script, then you will review the generated code and correct the field names where they were not determined automatically.

## System Preparation

Before you begin adapting the MSDL scripts, do the following:

1.  Make sure all features related to your customization project, are enabled.
2.  Make sure all customization projects are unpublished.
3.  Clone or download the *SalesActivities* customization project from the following folder in the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository in Acumatica GitHub to a folder on your computer.

    ```
    Help-and-Training-Examples/MobileDevelopment/T400/SalesActivities
    
    ```

4.  Export the *SalesActivities* customization project:
    1.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, create the *SalesActivities* project.
    2.  Open the project in the Customization Project Editor.
    3.  Click **Source Control** &gt; **Open Project from Folder** and specify the folder created in the previous instruction.

## Step 1: Run the MSDL Adaptation Tool

To run the MSDL adaptation tool:

1.  Open the *SalesActivities* project in the Customization Project Editor.
2.  Open the Mobile Application page.
3.  In the More menu, click **Adapt All for Modern UI**.

    The MSDL adaptation tool updates the scripts. For scripts that were not adapted successfully, the adaptation tool shows a warning at the top right corner of the screen, as shown in the screenshot below.


4.  Note the IDs of the screens that were not adapted successfully: SO301000.

## Step 2: Correcting the MSDL Scripts

You need to correct the MSDL scripts where the adaptation process was not completed successfully. Do the following:

1.  In the navigation pane, open the Update SO301000 page.
2.  In the **Scripts** section, note the comment on line 19.

    ```
    update layout "OrderSettingsTab" {
      update group "BillToInfoGroup" {
        remove field "Billing_Address#AddressLine2" # the field was not found during conversion process
      }
    }
    ```

3.  In the **Preview** section, locate the `BillToInfoGroup` section. Notice that the default mapping has changed and it no longer contains the `Billing_Address#AddressLine2` field.
4.  Remove the update instruction for the `OrderSettingsTab` layout.
5.  Publish the customization project.

    In the Customization Publishing window, notice that the logs indicate that the mobile site map has been updated.


**Parent topic:**[Updating Customization Projects for the Modern UI](../DeveloperGuide/UIDev_Customization_Convert_Mapref.md)

