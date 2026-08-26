# Acumatica ERP Installation On-Premises: General Information {#_ef2a1bf3-f6a2-421e-9fc2-611e875c379a .concept}

The installation of Acumatica ERP begins with installing the Acumatica ERP Configuration wizard on the server. You can install the Acumatica ERP Configuration wizard with or without the Acumatica ERP Tools.

This topic provides an overview of the Acumatica ERP Configuration wizard and the Acumatica ERP Tools. It describes their functionalities, capabilities, and installation processes.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with the Acumatica ERP Configuration wizard and its capabilities
-   Recognize the Acumatica ERP Tools
-   Obtain the Acumatica ERP installation package
-   Install the Acumatica ERP Configuration wizard
-   Optional: Install the Acumatica ERP Tools

## Applicable Scenario { .section}

You may need to learn how to install the Acumatica ERP Configuration wizard if you are an implementation consultant who needs to install the Acumatica ERP Configuration wizard.

## The Acumatica ERP Configuration Wizard { .section}

The Acumatica ERP Configuration wizard is the part of software that gives you the ability to deploy an Acumatica ERP application instance. The Acumatica ERP application instance is a website accessed by users in your company for daily tasks.

By using the Acumatica ERP Configuration wizard, you can do the following:

-   Deploy multiple application instances
-   Create additional tenants
-   Perform application, database, and tenant maintenance
-   Delete tenants and application instances

## Getting an Acumatica ERP Installation Package { .section}

The installation of the Acumatica ERP Configuration wizard is initiated through the installation package. You can find and download the latest version of the installation package from the [Acumatica Community](https://community.acumatica.com/) website. On the menu bar of the website, you can click **Product** and select the version of Acumatica ERP whose installation package you want to download. The link to the installation package contains a nine-digit build number that has the `XX.XXX.XXXX` format. You click the link and download the `AcumaticaERPInstall.msi` Windows installer package.

**Tip:** You can download any of the previously released versions from the [builds.acumatica.com](http://builds.acumatica.com) website.

After you have downloaded the installation package, you can start installing the Acumatica ERP Configuration wizard.

## Installation of the Acumatica ERP Configuration Wizard { .section}

To install the Acumatica ERP Configuration wizard, you need to run `AcumaticaERPInstall.msi`, which you have downloaded on your computer.

The installation process will guide you through the Acumatica ERP Configuration wizard pages, on which you should perform the following actions:

1.  Welcome page: This page opens when you run `AcumaticaERPInstall.msi`. To start the installation process, you should click **Next**.
2.  End-User License Agreement page: On this page, you should read the license agreement, select the **I accept the terms in the License Agreement** check box, and click **Next**.
3.  Main Software Configuration page: On this page, you can select the necessary software components \(that is, the Acumatica ERP Tools\) to install along with the Acumatica ERP Configuration wizard. By default, the **Install Acumatica ERP** and **Launch the Acumatica ERP Configuration Wizard** check boxes are selected. To proceed to the next page, you should click **Next**.
4.  Destination Folder page: On this page, you should check the path to the default folder to which Acumatica ERP will be installed and change it, if needed. By default, the address of the folder is `C:\Program Files\Acumatica ERP\`. To proceed to the next page, you should click **Next**.
5.  Confirmation page: On this page, you should click **Install** to install the Acumatica ERP Configuration wizard.

The Acumatica ERP software starts installing. When the installation process has been completed, you should click **Finish**.

The Acumatica ERP Configuration wizard is automatically started. You can also run the Acumatica ERP Configuration wizard anytime by selecting it on the Start menu.

## The Acumatica ERP Tools { .section}

Along with the Acumatica ERP Configuration wizard, the Acumatica ERP installation package includes the Acumatica ERP Tools, which consist of the following components:

-   Acumatica Report Designer: This component provides visual tools that you can use to design custom reports. For more information, see [Acumatica Report Designer Guide](ReportDesigner_Main.md).
-   DeviceHub: This application is used to connect hardware devices, such as printers, scanners, and digital scales. You can also configure a set of default printers to streamline the printing of documents for users, regardless of the physical location of the users and printers. For detailed instructions on setting up hardware devices via DeviceHub, see [Implementing DeviceHub](../ImplementationGuide/config_DH_Mapref.md).
-   Debugger Tools: The set of software components that gives you a basic ability to debug the deployed Acumatica ERP instances. For more information, see [To View and Debug Acumatica ERP Source Code](../CustomizationPlatform/CG_GL_BL_Debug_Acu_Code.md).

You can install any of these components along with the Acumatica ERP Configuration wizard or at any later time.

If you have already installed the latest version of the Acumatica ERP Configuration wizard without the needed tool selected, you can install this tool in any of the following ways:

-   Uninstall the Acumatica ERP Configuration wizard, and then install it with the tool that you need. For details, see [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Configuration Wizard](INST_Installing_Configuration_Wizard_Activity.md).

    **Tip:** You can uninstall Acumatica ERP by using the standard Windows procedure. For more details, see [Uninstalling of Acumatica ERP: General Information](INST_Uninstalling_Acumatica_GeneralInfo.md).

-   Modify the installation settings of Acumatica ERP and select the check box for the tool you need to install. For more details, see [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Tools \(Optional\)](INST_Installing_Configuration_Wizard_Install_Tools_Activity.md).

If the Acumatica ERP Configuration wizard, which you have already installed, is not the latest version, you can download and install the next version of it with the Acumatica ERP Tools.

**Parent topic:**[Installing Acumatica ERP On-Premises](../UserGuide/INST_Installing_Locally_Mapref.md)

