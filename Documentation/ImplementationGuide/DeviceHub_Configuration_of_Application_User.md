# DeviceHub: Configuration of a DeviceHub User {#_36a84a26-f023-40ed-9cd7-c098f87591d6 .concept}

The DeviceHub application requires an Acumatica ERP user account that can perform printing, scanning, and weighing operations. In this topic, you will learn about the creation of this user and the configuration of its access rights.

## User Account for DeviceHub { .section}

On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, you need to create a user account for DeviceHub. We recommend that you create a Acumatica ERP user account that is not used for other purposes so that DeviceHub can connect to Acumatica ERP by using this user account.

Two-factor authentication is not supported for DeviceHub users. That is, the user used for DeviceHub operations should not have the *Required for Unknown Devices* or *Required* option selected in the **Two-Factor Authentication** box on the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form.

The Acumatica ERP user needs access rights to specific forms of Acumatica ERP to be able to perform the printing, scanning, and weighing operations. Further in this topic, you will find detailed information about these forms.

You specify the username and password of this Acumatica ERP user account in the **Login** and **Password** boxes on the **Connection** tab of the **Configuration** window of DeviceHub. To learn about setting up the connection settings, see [DeviceHub: To Set Up the Connection Between DeviceHub and the Acumatica Instance](Devicehub_To_Set_Up_the_Connection_Implem_Activity.md).

## Forms for Printing { .section}

To perform printing operations, the Acumatica ERP user account should have access rights to the forms listed in the following table.

|Form Name|Minimum Access Rights|Description|
|---------|---------------------|-----------|
|[Printers](../UserGuide/SM_20_65_10.md) \(SM206510\)|*Edit*|On this form, DeviceHub synchronizes the list of printers configured in DeviceHub with Acumatica ERP.|
|[Print Jobs](../UserGuide/SM_20_65_00.md) \(SM206500\)|*Edit*|On this form, DeviceHub fetches the list of print jobs created in Acumatica ERP by using polling.|
|All report forms that will be used for printing documents|*View Only*|Acumatica ERP uses report forms to run reports and to generate printable documents, each of which has the crucial details of the document. For example, on the [Sales Order](../UserGuide/SO_64_10_10.md) \(SO641010\) report form, you can generate a printable document for a sales order that you have created on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. When you print the document with DeviceHub, it uses the document generated on the [Sales Order](../UserGuide/SO_64_10_10.md) \(SO641010\) report form.|
|All forms that contain records used for generating a report|*View Only*|The DeviceHub user must have access to all data entry forms whose data the system uses to form a report. For example, to generate printable versions of sales orders, the user must have access to the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, the data entry form for sales orders. The [Sales Order](../UserGuide/SO_64_10_10.md) \(SO641010\) report form uses the form’s data to generate printable sales orders.|

## Forms for Scanning { .section}

To perform scanning operations, the Acumatica ERP user should have access rights to the forms listed in the following table.

|Form Name|Minimum Access Rights|Description|
|---------|---------------------|-----------|
|[Scanners](../UserGuide/SM_20_65_40.md) \(SM206540\)|*Edit*|On this form, the list of scanners configured in DeviceHub is synchronized with Acumatica ERP settings.|
|[Scan Jobs](../UserGuide/SM_20_65_05.md) \(SM206505\)|*Edit*|On this form, DeviceHub fetches the list of scan jobs created in Acumatica ERP by using polling.|
|All forms on which you are going to scan and upload documents|*Edit*|You perform the scanning of documents on data entry forms, such as [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\).|

## Form for Viewing the Results of Weighing { .section}

To perform weighing operations, the Acumatica ERP user must have at least the *Edit* access rights to the [Scales](../UserGuide/SM_20_65_30.md) \(SM206530\) form. On this form, the list of scales configured in DeviceHub and the weights received on these scales are synchronized with Acumatica ERP.

**Parent topic:**[Getting Started with DeviceHub](../ImplementationGuide/Config_Initial_DeviceHub_Mapref.md)

