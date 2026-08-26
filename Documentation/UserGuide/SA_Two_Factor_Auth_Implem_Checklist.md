# Two Factor Authentication: Implementation Checklist {#_623d8adb-71a0-4473-beee-d48ee3155bb1 .concept}

The following sections provide details you can use to ensure that the system is configured properly for using the two-factor authentication functionality, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Mandatory Configuration { .section}

We recommend that before you initially activate two-factor authentication for the users of your system, you make sure the needed feature has been enabled.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Two-Factor Authentication* feature has been enabled.|

## Recommended Configuration for Authentication by Using the Acumatica Mobile App { .section}

The settings listed in the following table should be specified if you want to activate authentication by using the Acumatica mobile app.

|Form|Criteria to Check|
|----|-----------------|
|[Activate License](SM_20_15_10.md) \(SM201510\)|A valid license has been activated for the instance. If a license has not been activated, two-factor authentication by push notifications cannot be used. For more details, see [Preparing an Instance: To Enable Features and Activate the License](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_To_License_Activate.md).|
|Web Server IIS|The Acumatica ERP instance has been deployed by using the HTTPS protocol; otherwise, two-factor authentication by push notifications cannot be used. For details, see [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).|
|A mobile device of a user|The Acumatica app has been installed and push notifications have been allowed for the app.|

## Recommended Configuration for Delivering Access Codes by Email { .section}

The settings listed in the following table can be specified to set up the delivery of access codes by email.

|Form|Criteria to Check|
|----|-----------------|
|[Email Accounts](SM_20_40_02.md) \(SM204002\)|A system email account has been configured as described in [Configuring Email Accounts](EM__con_Configuring_Email_Accounts.md).|
|[Send and Receive Email](SM_50_70_10.md) \(SM507010\)|All the necessary actions for sending and receiving emails by using a schedule have been performed. For details, see [To Create a Send and Receive Email Schedule](EM__HOW_To_Create_a_Send_and_Receive_Schedule.md).|
|[Users](SM_20_10_10.md) \(SM201010\)|Make sure that all users have email addresses specified on this form.|
|[Security Preferences](SM_20_10_60.md) \(SM201060\)|The **Allow Email** check box is selected under the **Two-Factor Authentication Policy** section.|

## Recommended Configuration for Delivering Access Codes by SMS { .section}

The settings listed in the following table should be specified to configure the delivery of access codes by short message service \(SMS\).

|Form|Criteria to Check|
|----|-----------------|
|[SMS Providers](SM_20_35_35.md) \(SM203535\)|An SMS provider \(Twillio or Amazon SMS\) has been configured.|
|[User Profile](SM_20_30_10.md) \(SM203010\)|Make sure that all users have phone numbers specified on this form.|
|[Security Preferences](SM_20_10_60.md) \(SM201060\)|The **Allow SMS** check box is selected under the **Two-Factor Authentication Policy** section.|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Two-Factor Authentication: Implementation Activity](SA_Two_Factor_Auth_Implem_Activity.md).

**Parent topic:**[Managing Two-Factor Authentication](../UserGuide/SA_Two_Factor_Auth_Mapref.md)

