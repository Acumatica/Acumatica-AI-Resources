# Acumatica ERP Command-Line Tool: Possible Parameters and Values

The following table lists all available command-line parameters, including their full and short names, values, and a brief description of each parameter that you can use in the Acumatica ERP command-line tool.

<table id="table_svc_tkd_vl"><thead><tr><th>

Parameter

</th><th>

Values

</th><th>

Description

</th></tr></thead><tbody><tr><td>

`-file` or `-f`

</td><td>

The path to the configuration file

</td><td>

Specifies the path to the XML configuration file.

 Example: `-file:"C:\Program Files (x86)\Program Folder\Data\InstallConfig.xml"`

</td></tr><tr><td>

`-configmode` or `-cm`

</td><td>

-   *NewInstance*
-   *DBMaint*
-   *DBConection*
-   *CompanyConfig*
-   *NewTrainingInstance*
-   *DeleteSite*
-   *RenameSite*
-   *UpgradeSite*

</td><td>

Required. Specifies the maintenance scenario for which you are using the command-line tool. You can use the following values and applicable scenarios:

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

</td></tr><tr><td>

`-dbsrvname` or `-s`

</td><td>

Server name

</td><td>

Specifies the name of the SQL server that will be accessed by this Acumatica ERP application instance. The default value is *\(local\)*, indicating that the database will be deployed on the computer where `ac.exe` is run.

 Example: `-dbsrvname:"(local)"`

</td></tr><tr><td>

`-dbsrvwinauth` or `-sw`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether Windows or SQL Server authentication will be used by the configuration tools to access SQL Server. Select one of the following values:

 -   *True* \(default\): Uses Windows authentication
-   *False*: Uses SQL Server authentication

 Example: `-dbsrvwinauth:"True"`

</td></tr><tr><td>

`-dbsrvuser` or `-u`

</td><td>

Username

</td><td>

Specifies the username of the account used to access SQL Server. You must add this parameter if the *SQL Server Authentication* method is used \(and the `dbsrvwinauth` parameter's value is set to *False*\).

 Example: `-dbsrvuser:"SQLAdmin"`

</td></tr><tr><td>

`-dbsrvpass` or `-p`

</td><td>

User password

</td><td>

Specifies the user password for the account used to access SQL Server. You must specify this parameter if the *SQL Server Authentication* method is used \(and the `dbsrvwinauth` parameter's value is set to *False*\).

 Example: `-dbsrvpass:"<user_password>"`

</td></tr><tr><td>

`-dbname` or `-d`

</td><td>

Database name

</td><td>

Required. Specifies the name of the database maintained by this application instance of Acumatica ERP.

 Example: `-dbname:"HSBC_DB"`

</td></tr><tr><td>

`-dbnew` or `-n`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether you want to create a new database in SQL Server. The default setting is *True*, indicating that a new database should be created. *False* indicates that no new database should be created.

 Example: `-dbnew:"False"`

</td></tr><tr><td>

`-dbupdate` or `-b`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether you want to update an earlier version of the database with a newer one. You can also use this parameter to repair an existing database of the current version. The default setting is *True*, indicating that the database should be updated. *False* indicates that the database should not be updated.

 Example: `-dbupdate:"False"`

</td></tr><tr><td>

`-dbsize` or `-dz`

</td><td>

-   *1*
-   *5*
-   *10*
-   *20*
-   *30*
-   *40*
-   *50*

</td><td>

Specifies the maximum size of the database on Azure SQL; therefore, this parameter is used only for Acumatica ERP deployed on Windows Azure. The available values correspond to the standard database size values in gigabytes. The default setting is *1*.

 Example: `-dbsize:"50"`

</td></tr><tr><td>

`-dbskip` or `-ds`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether the database setup steps are skipped. If they are \(which is indicated by *True*\), the database will be set up by the Acumatica ERP instance at runtime. The default setting is *False*, meaning that the database setup steps are not skipped.

 Example: `-dbskip:"False"`

</td></tr><tr><td>

`-dbshrink` or `-dc`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether you want the `ac.exe` utility to shrink the database once it has been configured. This parameter is used only for Acumatica ERP deployed on Windows Azure. The default setting is *False*, which indicates that the database should not be shrinked. *True* indicates that the database should be shrinked.

 Example: `-dbshrink:"True"`

</td></tr><tr><td>

`-iname` or `-i`

</td><td>

The instance name

</td><td>

Required. Specifies the name of the Acumatica ERP instance.

 Example: `-iname:"HSBC Main ERP"`

</td></tr><tr><td>

`-ioldname` or `-io`

</td><td>

The old instance name

</td><td>

Specifies the current name of an Acumatica ERP instance when you rename this instance.

 Example: `-ioldname:"HSBC_HQ"`

</td></tr><tr><td>

`-ipath` or `-h`

</td><td>

The instance directory

</td><td>

Required. Specifies the directory where the application instance files will be stored. The default setting is `C:\Program Files\Acumatica ERP\`.

 Example: `-ipath:"C:\Program Folder\"`

</td></tr><tr><td>

`-vmsize` or `-is`

</td><td>

-   *Small*
-   *Medium*
-   *Large*
-   *ExtraLarge*

</td><td>

Specifies the relative size of the Windows Azure virtual machine. This parameter is used only for Acumatica ERP deployed on Windows Azure. The default setting is *Small*.

 Example: `-vmsize:"ExtraLarge"`

</td></tr><tr><td>

`-swebsite` or `-w`

</td><td>

The website name

</td><td>

Specifies the name of the existing Internet Information Services \(IIS\) website on the local computer.

</td></tr><tr><td>

`-svirtdir` or `-v`

</td><td>

The virtual diretory

</td><td>

Specifies the name of the IIS virtual directory. If there is no such virtual directory in IIS, this directory will be created on the local IIS.

 Example: `-svirtdir:"<virtual_directory_name>"`

</td></tr><tr><td>

`-spool` or `-po`

</td><td>

Application pool

</td><td>

Specifies the name of the IIS application pool. If there is no such application pool in IIS, this pool will be created in the local IIS.

 Example: `-spool:"<application_pool_name>"`

</td></tr><tr><td>

`-dbwinauth` or `-dw`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether Windows or SQL Server authentication will be used by this Acumatica ERP instance to access SQL Server. Specify one of the following values:

 -   *True* \(default\): Uses Windows authentication
-   *False*: Uses SQL Server authentication

 Example: `-dbwinauth:"True"`

</td></tr><tr><td>

`-dbnewuser` or `-dn`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether a new SQL Server account must be created. The default setting is *True*, indicating that a new account must be created; if it is set to *False*, no new account must be created.

 Example: `-dbnewuser:"True"`

</td></tr><tr><td>

`-dbuser` or `-du`

</td><td>

The username

</td><td>

Specifies the name of the user account used by this Acumatica ERP instance to access SQL Server. You must add this parameter if the SQL Server authentication method is used \(and the `dbwinauth` parameter value is set to *False*\).

 Example: `-dbuser:"SQLAdmin"`

</td></tr><tr><td>

`-dbpass` or `-dp`

</td><td>

User password

</td><td>

Specifies the password of the user account used by this Acumatica ERP instance to access SQL Server. You must add this parameter if the SQL Server authentication method is used \(and the `dbwinauth` parameter value is set to *False*\).

 Example: `-dbpass:"SQLAdmin"`

</td></tr><tr><td>

`-securemode` or `-cs`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether the tenant ID is displayed on the Sign-In page. Select one of the following values:

 -   *True*: Hides the tenant ID
-   *False* \(default\): Displays the tenant ID

 Example: `-securemode:"False"`

</td></tr><tr><td>

`-company` or `-c`

</td><td>

Tenant options

</td><td>

Specifies tenant options. If you want to specify options for more one tenant, specify this parameter for each of the tenants. This parameter contains the following subparameters:

 -   `CompanyID`: Specifies the tenant ID. To modify the settings of an existing tenant, specify its ID here.
-   `ParentID`: Specifies the ID of the tenant's parent tenant.
-   `Visible`: Allows users to sign in to the tenant if you specify the *True* value.
-   `CompanyType`: Inserts demo data into the tenant's database if you specify the *True* value.
-   `LoginName`: Displays the tenant name on the Acumatica ERP Sign-In page.
-   `Delete`: Deletes the tenant if you specify the *True* value.

 Example: `-company:"CompanyID=KC; ParentID=1; Visible=True; CompanyType=True; LoginName=Company; Delete=True"`

</td></tr><tr><td>

`-output` or `-op`

</td><td>

-   *Normal*
-   *Quiet*
-   *Forced*

</td><td>

Specifies the command-line execution mode. Select one of the following values:

 -   *Normal*: The command line acts as a dialogue. When you run the `ac.exe` utility, you will answer questions related to the parameters.
-   *Quiet*: All warnings are ignored. Any error forces the `ac.exe` utility to stop and exit.
-   *Forced*: All warnings are ignored. If you do not specify any mandatory parameters, they are automatically configured with default values. Minor errors are ignored, while critical errors force the `ac.exe` utility to stop and exit.

 Example: `-output:"Forced"`

</td></tr><tr><td>

`-dbcollation` or `-dl`

</td><td>

The SQL Server collation name

</td><td>

Specifies a collation that will be used for a database that is created during Acumatica ERP instance deployment instead of the default *SQL\_Latin1\_General\_CP1\_CI\_AS* collation.

 Example: `-dbcollation:French_CI_AI`

</td></tr><tr><td>

`-dboptimize` or `-do`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether the `Optimize Tables` command should be applied to MySQL database tables during the deployment of an Acumatica ERP instance. The default value of this parameter is *False*, meaning that the command should not be applied, because the process of table optimization may take a lot of time. To apply the `Optimize Tables` command, add this parameter, and specify the *True* value.

 Example: `-dboptimize:"True"`

</td></tr><tr><td>

`-portal` or `-pp`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies \(if it is set to `True`\) that the Self-Service Portal should be installed.Example: `-portal:"True"`

</td></tr><tr><td>

`-coursetemplate` or `-ct`

</td><td>

-   *T210*
-   *T220*
-   *T230*
-   *T240*
-   *T250*

</td><td>

Specifies the training course for which an Acumatica ERP instance is deployed and the customization project is published.Example: `-coursetemplate:"T210"`

</td></tr><tr><td>

`-newUI` or `-nu`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether the Modern UI is enabled in Acumatica ERP by adding the `EnableSiteMapSwitchUI` parameter with one of the following values to the *web.config* file:

 -   *True* \(default\): Enables the Modern UI
-   *False*: Disables the Modern UI

</td></tr><tr><td>

`-skipcompile` or `-sc`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether the `Skip Compile Site` command should be applied to an instance during the deployment. The default value of this parameter is *False*, meaning that the command should not be applied. To apply the `Skip Compile Site` command and skip the compilation of files during the instance deployment, add this parameter and specify *True*.

</td></tr><tr><td>

`-nodejs` or `-nj`

</td><td>

-   *True*
-   *False*

</td><td>

Specifies whether the `NodeJS Installation` command should be applied and Node.js should be automatically deployed during the instance’s deployment. The default value of this parameter is *True*, meaning that the command should be applied. To skip the deployment of Node.js during the instance’s deployment, add this parameter and specify *False*.

</td></tr></tbody>
</table>

**Tip:** For all command-line parameters that have the *False* and *True* values, you can use *No* instead of *False* and *Yes* instead of *True*.

**Parent topic:**[Using the Acumatica ERP Command-Line Tool](../UserGuide/INST_Using_Command_Line_Tool_Mapref.md)

