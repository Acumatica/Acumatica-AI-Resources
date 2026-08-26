# Acumatica ERP Command-Line Tool: Possible Parameters and Values {#_9e64f453-3f47-4b2b-979b-3b5c22ae1f8b .concept}

The following table lists all available command-line parameters, including their full and short names, values, and a brief description of each parameter that you can use in the Acumatica ERP command-line tool.

|Parameter|Values|Description|
|---------|------|-----------|
|`-file` or `-f`|The path to the configuration file|Specifies the path to the XML configuration file.

 Example: `-file:"C:\Program Files (x86)\Program Folder\Data\InstallConfig.xml"`

|
|`-configmode` or `-cm`|-   *NewInstance*
-   *DBMaint*
-   *DBConection*
-   *CompanyConfig*
-   *NewTrainingInstance*
-   *DeleteSite*
-   *RenameSite*
-   *UpgradeSite*

|Required. Specifies the maintenance scenario for which you are using the command-line tool. You can use the following values and applicable scenarios:

 -   *NewInstance*: Installs a new application instance. You can also use the following command-line parameters in this scenario:
    -   `-company`
    -   `-dbname`
    -   `-dbnew`
    -   `-dbnewuser`
    -   `-dbpass`
    -   `-dbsrvname`
    -   `-dbsrvpass`
    -   `-dbsrvuser`
    -   `-dbsrvwinauth`
    -   `-dbupdate`
    -   `-dbuser`
    -   `-dbwinauth`
    -   `-iname`
    -   `-ipath`
    -   `-sactions`
    -   `-spass`
    -   `-spool`
    -   `-suser`
    -   `-svirtdir`
    -   `-swebsite`
    -   `-portal`
-   *DBMaint*: Creates a new database or updates an existing database with a current version of the database schema. You can also use the following command-line parameters in this scenario:
    -   `-company`
    -   `-dbname`
    -   `-dbnew`
    -   `-dbsrvname`
    -   `-dbsrvpass`
    -   `-dbsrvuser`
    -   `-dbsrvwinauth`
    -   `-dbupdate`
-   *DBConection*: Modifies the database connection settings. You can also use the following command-line parameters in this scenario:
    -   `-company`
    -   `-dbname`
    -   `-dbnew`
    -   `-dbnewuser`
    -   `-dbpass`
    -   `-dbsrvname`
    -   `-dbsrvpass`
    -   `-dbsrvuser`
    -   `-dbsrvwinauth`
    -   `-dbupdate`
    -   `-dbuser`
    -   `-dbwinauth`
-   *CompanyConfig*: Adds new tenants or deletes existing ones. You can also use the following command-line parameters in this scenario:
    -   `-company`
    -   `-dbname`
    -   `-dbnew`
    -   `-dbsrvname`
    -   `-dbsrvpass`
    -   `-dbsrvuser`
    -   `-dbsrvwinauth`
    -   `-dbupdate`
-   *NewTrainingInstance*: Installs a new application instance for a T-series training course and publishes the required customization for the course. In this scenario, you can use the command-line parameters that are described for the *NewInstance* scenario and the following additional parameter: `-coursetemplate`.

-   *DeleteSite*: Deletes an existing Acumatica ERP instance. You can also use the `-iname` parameter in this scenario.
-   *RenameSite*: Renames an existing Acumatica ERP instance. You can also use the following command-line parameters in this scenario:
    -   `-iname`
    -   `-ioldname`
-   *UpgradeSite*: Upgrades the files of an existing Acumatica ERP instance. You can also use the `-iname` command-line parameter in this scenario.

 Example: `-configmode:"NewInstance"`

|
|`-dbsrvname` or `-s`|Server name|Specifies the name of the SQL server that will be accessed by this Acumatica ERP application instance. The default value is *\(local\)*, indicating that the database will be deployed on the computer where `ac.exe` is run.

 Example: `-dbsrvname:"(local)"`

|
|`-dbsrvwinauth` or `-sw`|-   *True*
-   *False*

|Specifies whether Windows or SQL Server authentication will be used by the configuration tools to access SQL Server. Select one of the following values:

 -   *True* \(default\): Uses Windows authentication
-   *False*: Uses SQL Server authentication

 Example: `-dbsrvwinauth:"True"`

|
|`-dbsrvuser` or `-u`|Username|Specifies the username of the account used to access SQL Server. You must add this parameter if the *SQL Server Authentication* method is used \(and the `dbsrvwinauth` parameter's value is set to *False*\).

 Example: `-dbsrvuser:"SQLAdmin"`

|
|`-dbsrvpass` or `-p`|User password|Specifies the user password for the account used to access SQL Server. You must specify this parameter if the *SQL Server Authentication* method is used \(and the `dbsrvwinauth` parameter's value is set to *False*\).

 Example: `-dbsrvpass:"<user_password>"`

|
|`-dbname` or `-d`|Database name|Required. Specifies the name of the database maintained by this application instance of Acumatica ERP.

 Example: `-dbname:"HSBC_DB"`

|
|`-dbnew` or `-n`|-   *True*
-   *False*

|Specifies whether you want to create a new database in SQL Server. The default setting is *True*, indicating that a new database should be created. *False* indicates that no new database should be created.

 Example: `-dbnew:"False"`

|
|`-dbupdate` or `-b`|-   *True*
-   *False*

|Specifies whether you want to update an earlier version of the database with a newer one. You can also use this parameter to repair an existing database of the current version. The default setting is *True*, indicating that the database should be updated. *False* indicates that the database should not be updated.

 Example: `-dbupdate:"False"`

|
|`-dbsize` or `-dz`|-   *1*
-   *5*
-   *10*
-   *20*
-   *30*
-   *40*
-   *50*

|Specifies the maximum size of the database on Azure SQL; therefore, this parameter is used only for Acumatica ERP deployed on Windows Azure. The available values correspond to the standard database size values in gigabytes. The default setting is *1*.

 Example: `-dbsize:"50"`

|
|`-dbskip` or `-ds`|-   *True*
-   *False*

|Specifies whether the database setup steps are skipped. If they are \(which is indicated by *True*\), the database will be set up by the Acumatica ERP instance at runtime. The default setting is *False*, meaning that the database setup steps are not skipped.

 Example: `-dbskip:"False"`

|
|`-dbshrink` or `-dc`|-   *True*
-   *False*

|Specifies whether you want the `ac.exe` utility to shrink the database once it has been configured. This parameter is used only for Acumatica ERP deployed on Windows Azure. The default setting is *False*, which indicates that the database should not be shrinked. *True* indicates that the database should be shrinked.

 Example: `-dbshrink:"True"`

|
|`-iname` or `-i`|The instance name|Required. Specifies the name of the Acumatica ERP instance.

 Example: `-iname:"HSBC Main ERP"`

|
|`-ioldname` or `-io`|The old instance name|Specifies the current name of an Acumatica ERP instance when you rename this instance.

 Example: `-ioldname:"HSBC_HQ"`

|
|`-ipath` or `-h`|The instance directory|Required. Specifies the directory where the application instance files will be stored. The default setting is `C:\Program Files\Acumatica ERP\`.

 Example: `-ipath:"C:\Program Folder\"`

|
|`-vmsize` or `-is`|-   *Small*
-   *Medium*
-   *Large*
-   *ExtraLarge*

|Specifies the relative size of the Windows Azure virtual machine. This parameter is used only for Acumatica ERP deployed on Windows Azure. The default setting is *Small*.

 Example: `-vmsize:"ExtraLarge"`

|
|`-swebsite` or `-w`|The website name|Specifies the name of the existing Internet Information Services \(IIS\) website on the local computer.|
|`-svirtdir` or `-v`|The virtual diretory|Specifies the name of the IIS virtual directory. If there is no such virtual directory in IIS, this directory will be created on the local IIS.

 Example: `-svirtdir:"<virtual_directory_name>"`

|
|`-spool` or `-po`|Application pool|Specifies the name of the IIS application pool. If there is no such application pool in IIS, this pool will be created in the local IIS.

 Example: `-spool:"<application_pool_name>"`

|
|`-dbwinauth` or `-dw`|-   *True*
-   *False*

|Specifies whether Windows or SQL Server authentication will be used by this Acumatica ERP instance to access SQL Server. Specify one of the following values:

 -   *True* \(default\): Uses Windows authentication
-   *False*: Uses SQL Server authentication

 Example: `-dbwinauth:"True"`

|
|`-dbnewuser` or `-dn`|-   *True*
-   *False*

|Specifies whether a new SQL Server account must be created. The default setting is *True*, indicating that a new account must be created; if it is set to *False*, no new account must be created.

 Example: `-dbnewuser:"True"`

|
|`-dbuser` or `-du`|The username|Specifies the name of the user account used by this Acumatica ERP instance to access SQL Server. You must add this parameter if the SQL Server authentication method is used \(and the `dbwinauth` parameter value is set to *False*\).

 Example: `-dbuser:"SQLAdmin"`

|
|`-dbpass` or `-dp`|User password|Specifies the password of the user account used by this Acumatica ERP instance to access SQL Server. You must add this parameter if the SQL Server authentication method is used \(and the `dbwinauth` parameter value is set to *False*\).

 Example: `-dbpass:"SQLAdmin"`

|
|`-securemode` or `-cs`|-   *True*
-   *False*

|Specifies whether the tenant ID is displayed on the Sign-In page. Select one of the following values:

 -   *True*: Hides the tenant ID
-   *False* \(default\): Displays the tenant ID

 Example: `-securemode:"False"`

|
|`-company` or `-c`|Tenant options|Specifies tenant options. If you want to specify options for more one tenant, specify this parameter for each of the tenants. This parameter contains the following subparameters:

 -   `CompanyID`: Specifies the tenant ID. To modify the settings of an existing tenant, specify its ID here.
-   `ParentID`: Specifies the ID of the tenant's parent tenant.
-   `Visible`: Allows users to sign in to the tenant if you specify the *True* value.
-   `CompanyType`: Inserts demo data into the tenant's database if you specify the *True* value.
-   `LoginName`: Displays the tenant name on the Acumatica ERP Sign-In page.
-   `Delete`: Deletes the tenant if you specify the *True* value.

 Example: `-company:"CompanyID=KC; ParentID=1; Visible=True; CompanyType=True; LoginName=Company; Delete=True"`

|
|`-output` or `-op`|-   *Normal*
-   *Quiet*
-   *Forced*

|Specifies the command-line execution mode. Select one of the following values:

 -   *Normal*: The command line acts as a dialogue. When you run the `ac.exe` utility, you will answer questions related to the parameters.
-   *Quiet*: All warnings are ignored. Any error forces the `ac.exe` utility to stop and exit.
-   *Forced*: All warnings are ignored. If you do not specify any mandatory parameters, they are automatically configured with default values. Minor errors are ignored, while critical errors force the `ac.exe` utility to stop and exit.

 Example: `-output:"Forced"`

|
|`-dbcollation` or `-dl`|The SQL Server collation name|Specifies a collation that will be used for a database that is created during Acumatica ERP instance deployment instead of the default *SQL\_Latin1\_General\_CP1\_CI\_AS* collation.

 Example: `-dbcollation:French_CI_AI`

|
|`-dboptimize` or `-do`|-   *True*
-   *False*

|Specifies whether the `Optimize Tables` command should be applied to MySQL database tables during the deployment of an Acumatica ERP instance. The default value of this parameter is *False*, meaning that the command should not be applied, because the process of table optimization may take a lot of time. To apply the `Optimize Tables` command, add this parameter, and specify the *True* value.

 Example: `-dboptimize:"True"`

|
|`-portal` or `-pp`|-   *True*
-   *False*

|Specifies \(if it is set to `True`\) that the Self-Service Portal should be installed.Example: `-portal:"True"`

|
|`-coursetemplate` or `-ct`|-   *T210*
-   *T220*
-   *T230*
-   *T240*
-   *T250*

|Specifies the training course for which an Acumatica ERP instance is deployed and the customization project is published.Example: `-coursetemplate:"T210"`

|
|`-newUI` or `-nu`|-   *True*
-   *False*

|Specifies whether the Modern UI is enabled in Acumatica ERP by adding the `EnableSiteMapSwitchUI` parameter with one of the following values to the *web.config* file:

 -   *True* \(default\): Enables the Modern UI
-   *False*: Disables the Modern UI

|
|`-skipcompile` or `-sc`|-   *True*
-   *False*

|Specifies whether the `Skip Compile Site` command should be applied to an instance during the deployment. The default value of this parameter is *False*, meaning that the command should not be applied. To apply the `Skip Compile Site` command and skip the compilation of files during the instance deployment, add this parameter and specify *True*.|
|`-nodejs` or `-nj`|-   *True*
-   *False*

|Specifies whether the `NodeJS Installation` command should be applied and Node.js should be automatically deployed during the instance’s deployment. The default value of this parameter is *True*, meaning that the command should be applied. To skip the deployment of Node.js during the instance’s deployment, add this parameter and specify *False*.|

**Tip:** For all command-line parameters that have the *False* and *True* values, you can use *No* instead of *False* and *Yes* instead of *True*.

**Parent topic:**[Using the Acumatica ERP Command-Line Tool](../UserGuide/INST_Using_Command_Line_Tool_Mapref.md)

