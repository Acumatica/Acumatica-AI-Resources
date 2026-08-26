# Instance Deployment: Creation of an Instance {#_0f87e8ed-3817-4643-81bd-4640ac27da1b .concept}

You can create a new Acumatica ERP instance by using the Acumatica ERP Configuration wizard, which you have installed on your computer:

1.  Run the Acumatica ERP Configuration wizard in any of the following ways:

    -   By clicking **Start &gt; Acumatica &gt; Acumatica ERP Configuration**
    -   By clicking **Search &gt; Acumatica ERP Configuration**
    -   By opening the folder in which you have installed Acumatica ERP Configuration wizard. By default, the address of the folder is `C:\Program Files\Acumatica ERP\`. In the `C:\Program Files\Acumatica ERP\Data` folder, you can find and run the `AcumaticaConfig.exe` file.
2.  On the Welcome page of the Acumatica ERP Configuration wizard, which opens, start the deployment of a new instance:
    -   By clicking **Deploy a New Acumatica ERP Instance**.
    -   By clicking **Perform Application Maintenance**.

        On the Application Maintenance page, which opens, you then click **Create** to proceed.

        **Tip:** You can use this way if at least one Acumatica ERP instance has already been deployed.


The following sections provide an overview of the settings that you need to specify on the pages of the Acumatica ERP Configuration wizard to deploy a new instance.

## Database Server Connection Page { .section}

On this page, you should select the database server you want to use for a new instance and the server authentication method. You can do this by using the following UI elements:

-   **Server Type**: Select the server type you want to use: *Microsoft SQL Server*, *MySQL Server*, or *PostgreSQL Server*.
-   **Server Name**: Type the name or address of the server machine.

    **Tip:** For a MySQL server, the default port number is 3306. You can specify the custom port number after a comma.

-   **Windows Authentication**: Select this option button if you want to use Windows authentication for connecting to the database server.

    **Attention:** This method works only for a local Microsoft SQL Server or when both application and database servers are members of the same Windows domain.

-   **SQL Server Authentication**: Select this option button if you want to use SQL Server authentication for connecting to the database server. You should also specify the username and password for an account with sufficient rights to create or modify databases.
-   **Encrypt Database Server Connection**: Select this check box to require encryption from the server. This encryption secures the connection and protects transmitted data.

Note the following about selecting the authentication method:

-   You must ensure that the selected authentication method is supported by the database server.
-   Windows authentication does not work for MySQL Server and PostgreSQL Server.

## Database Configuration Page { .section}

On this page, you can either create a new database or connect to an existing one by selecting it from the list of available databases on the server. You should select one of the following option buttons:

-   **Create a New Database**: Select this option button if you want to create a new database. You should also specify the name of the new database in the **New Database's Name** box. By default, the database name is *AcumaticaDB*, but you can change it.
-   **Connect to an Existing Database**: Select this option button if you want to connect to an existing database. You should select the database in the **Available Databases on the Server** list.

    **Tip:** You can also search for a specific database by using the **Database Filter** box.

    If you are creating the Acumatica Self-Service Portal for an existing Acumatica ERP instance, you should connect to the database that is used by this instance.

    Depending on the database you have selected, you can also select the relevant check box to update or repair the database, if required. If you want to shrink data after the database maintenance, select the **Shrink Data After Update** or **Shrink Data After Repair** check box, respectively.


## Tenant Setup Page { .section}

On this page, you can specify the following settings for the tenant:

-   **Tenant Name**: The name of the tenant. The default tenant name is *Company*. If you want to change it, you should double-click the name in the column, type a new tenant name, and press Enter.

    **Attention:** This name is used only when multiple tenants are present; otherwise, the Sign-In page will not display a tenant selection box. Due to integration with OData, the name cannot contain the following special symbols: `,;:+=?^<>/\{}[]|#$%&@`.

-   **Insert Data**: The demo data that is used for this tenant. By default, a new tenant does not contain demo data. If you want to fill the database with demo data, you should select *SalesDemo* in the column.

    **Tip:** The *U100* and *T100* demo data entries contain demo data that was prepared for the completion of Acumatica training courses.


For each tenant, you can also specify the following settings:

-   **Parent Tenant ID**: The identifier of the tenant that will be used as the parent tenant for this tenant. By default, the *System* tenant is specified. For more details about parent tenants, see [Tenant Maintenance: General Information](INST_Maintaning_Tenants_GeneralInfo.md).
-   **Visible**: The tenant’s visibility to users. By default, a new tenant is visible \(that is, the check box is selected\). For more details about tenant visibility, see [Tenant Maintenance: General Information](INST_Maintaning_Tenants_GeneralInfo.md).
-   **Advanced Settings**: A check box that indicates the ability to access advanced settings, such as defining parent tenants and inserting demo data, and displaying the System tenant if the check box is selected. By default, the check box is cleared.
-   **Secure Tenant on the Sign-In Page**: A check box that indicates the ability to display the tenant selection box with all tenants of the instance on the Sign-In page. If the check box is selected, the tenant selection box on the Sign-In page of the instance will not appear until a user enters their username and password. After authorization, the system will display a list of companies allowed for the entered user account. For more details, see [Tenant Maintenance: General Information](INST_Maintaning_Tenants_GeneralInfo.md).

On this page, you can also create additional tenants or delete unneeded ones.

## Database Connection Page { .section}

On this page, you can select the authentication method for connection to the database. You should select one of the following option buttons:

-   **Windows Authentication**: Select this option button if you want to use the default anonymous user account employed by Internet Information Services \(IIS\).

    **Important:** Windows authentication is not compatible with a MySQL Server.

-   **SQL Server Authentication**: Select this option button if you want to use a different account for connecting to the database.

    If you select this option, you should also specify the one of the following settings:

    -   **Create Login Credentials**: Select this option if you want to create a new SQL username.
    -   **Use Existing Login Credentials**: Select this option if you want to use an existing username and password.

        **Important:** The specified username must have the following minimum rights within the database server:

        -   For a Microsoft SQL server, *read*, *write*, *execute*, and *ddl\_admin*
        -   For a MySQL server, *create*, *alter*, *drop*, *select*, *delete*, *insert*, *update*, *create temporary tables*, and *execute*

## Instance Configuration Page { .section}

On this page, you can specify the following instance configuration settings:

-   **Instance Name**: The Acumatica ERP instance name. By default, the instance name is *AcumaticaERP*. You can change it.
-   **Create Acumatica ERP Site**: An option button that you select if you want to create an Acumatica ERP application instance.
-   **Create Self-Service Portal**: An option button that you select if you want to create an Acumatica Self-Service Portal site.

    **Tip:** The Acumatica Self-Service Portal is designed to be a site where your customers can view relevant information about their interactions with your company as a vendor and perform common activities online. It is a special type of application instance connected to your Acumatica ERP instance but with limited access to functionality. For more details, see [Instance Deployment: Deploying the Acumatica Self-Service Portal](INST_Deploying_Instances_Self_Service_Portal.md).

-   **Local Path to the Instance**: The path on the local computer to the application instance. By default, it is `C:\Program Files\Acumatica ERP\InstanceName`, but you can change it.

## Website Configuration Page { .section}

On this page, you can configure the website and application pool.

In the **Website Settings** section, you specify the following settings:

-   **Available Websites**: Select the website that you want to use. By default, the *Default Web Site* is selected.
-   **Create Virtual Directory**: Select the check box if you want to create a virtual directory with a name specified in the **Virtual Directory Name** box. To use the URL of the IIS default site \(that is,*http://www.domain.com*\), clear the **Create Virtual Directory** check box.
-   **Compile the Site**: Select this check box if you want to allow the system to load the website faster for the first time.
-   **Install Node.js**: Select this check box if you want to install the needed version of Node.js for the compilation of the customization code.

    **Tip:** If you want to use the version of Node.js that has already been installed in your system, you can clear the **Install Node.js** check box and add the following key to the `appSettings` section of the `Web.config` file of your instance: `<add key="NodeJs:NodeJsPath" value="C:\Program Files\NodeJs"/>`, where `value` specifies the path to the location where Node.js has been installed.

-   **Use Modern UI as Default**: Select this check box if you want to use the Modern UI as the default user interface.

You may want to use a dedicated application pool to better isolate instances and fine-tune resources that are allocated for the instance by IIS. To specify the dedicated application pool, select one of the following options in the **Application Pool Settings** section:

-   **Create New Application Pool**: Select this option button if you want to create a new application pool. You should also type the application pool name in the **Application Pool Name** box.
-   **Use Existing Application Pool**: Select this option button if you want to use an existing application pool. You should select the name of this application pool in the list of available application pools.

    The list of application pools includes all the application pools you can use to install Acumatica ERP from the list of pools configured in the IIS web server. You can select an application pool that uses either the classic or integrated model of request processing through the web server.

    **Tip:** Acumatica ERP employs the application pools that use one of the supported .NET Framework versions. For the list of supported .NET Framework versions, see [System Requirements for the Acumatica ERP Installation](INST_Preparing_Installation_System_Requirements.md).

    For a production instance, we recommend that you create a new application pool for production deployment.


## RabbitMQ Configuration Page { .section}

Suppose that you are deploying a new instance of Acumatica ERP on a new machine. In this case, you would also need to install the RabbitMQ message broker. On the other side, when you are upgrading Acumatica ERP or have an already installed RabbitMQ message broker, you would need to specify the broker connection parameters instead of installing a new one.

When you’re deploying or upgrading an Acumatica ERP instance by using the Acumatica ERP Configuration wizard, the RabbitMQ Confiuration page prompts you to do one of the following:

-   Install a new instance of the RabbitMQ message broker. This is ideal for initial setup.
-   Connect to an existing RabbitMQ message broker. This option works well if you already have RabbitMQ installed and configured on your local machine or a remote server.

## Confirmation of Configuration Page { .section}

On the last page, you can review and confirm the overall instance configuration.

If you want to save the configuration settings in an XML file on your computer for use with a command-line tool, you should click **Save Configuration**. For details, see [Using the Acumatica ERP Command-Line Tool](INST_Using_Command_Line_Tool_Mapref.md).

If you click **Finish**, the deployment of the Acumatica ERP instance will begin.

## Configuration Wizard Logs { .section}

By default, the system saves short logs for changes that have been made in an instance by using the Acumatica ERP Configuration wizard or the command-line tool. These changes are saved in the `Logs` folder, which is located in the folder where you have installed Acumatica ERP.

**Tip:** You have specified the path to this folder on the Destination Folder page of the Acumatica ERP Setup wizard.

If you want to save full logs in the `Logs` folder, you should select the **Full Logging Mode** check box on the Confirmation of Configuration page of the Acumatica ERP Configuration wizard before starting to deploy the instance. You can also use the command-line tool to activate full logging mode. For details, see [Acumatica ERP Command-Line Tool: General Information](../Shared/../UserGuide/INST_Using_Command_Line_Tool_GeneralInfo.md). This mode might be helpful for investigating the cause of any errors that occur in the instance.

For more details about using logs, see [Using Logs](CON_Troubleshooting_Tools_Logs.md).

**Parent topic:**[Deploying Acumatica ERP Instances](../UserGuide/INST_Deploying_Instances_Mapref.md)

