# Acumatica ERP Command-Line Tool: General Information {#_4f9af995-3f23-4da6-a6c0-f6435979c4c4 .concept}

In Acumatica ERP, you can deploy a new application instance and perform database and application maintenance tasks by using the command-line tool.

This topic provides an overview of how you can use the Acumatica ERP command-line tool instead of the Acumatica ERP Configuration wizard.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with the Acumatica ERP command-line tool and its syntax
-   Review some examples of using command-line commands to deploy instances and perform maintenance tasks by using the Acumatica ERP command-line tool
-   Deploy an out-of-the-box Acumatica ERP instance from a configuration file by using the Acumatica ERP command-line tool

## Applicable Scenario { .section}

You may need to learn how to use the Acumatica ERP command-line tool if you are a system administrator who prefers to use command-line commands to deploy a new instance and to perform some maintenance tasks without using the Acumatica ERP Configuration wizard.

## The Acumatica ERP Command-Line Tool { .section}

The Acumatica ERP command-line tool is an executable file with the `ac.exe` name. By default, `ac.exe` is located in the folder on the computer that has Acumatica ERP installed, which is `C:\Program Files (x86)\Acumatica ERP\Data\`.

When you run `ac.exe`, you supply a set of command-line parameters, where each parameter must be presented in the following format.

```
-parameter:"parameter value"
```

When you pass a command-line command to the Acumatica ERP command-line tool, you should use the following syntax.

```

ac.exe [-f|-file:"path to configuration file"] [-cm|-configmode:"main scenario"] 
[-s|-dbsrvname:"server name"] [-sw|-dbsrvwinauth:"True|False"] 
[-u|-dbsrvuser:"username"] [-p|-dbsrvpass:"user password"] 
[-d|-dbname:"database name"] [-n|-dbnew:"True|False"] 
[-b|-dbupdate:"True|False"] [-dm|-dbmode:"Regular|Template|Demo"] 
[-dz|-dbsize:"database size in GB"] [-ds|-dbskip:"True|False"] 
[-dc|-dbshrink:"True|False"] [-i|-iname:"instance name"] 
[-io|-ioldname:"old instance name"] [-h|-ipath:"instance directory"] 
[-is|-vmsize:"Small|Medium|Large|ExtraLarge"] 
[-it|-trumbprint:"X.509 thumbprint"][-w|-swebsite:"Web site name"] 
[-v|-svirtdir:"virtual directory"] [-po|-spool:"application pool"] 
[-a|-sactions:"AnonymousUser|SelectedUser"] 
[-k|-suser:"username"] [-m|-spass:"user password"] 
[-dw|-dbwinauth:"True or False"] [-dn|-dbnewuser:"True|False"] 
[-du|-dbuser:"username"] [-dp|-dbpass:"user password"] 
[-cs|-securemode:"True|False"] [-c|-company:"[ci|CompanyID=company ID];
[cp|ParentID=parent company ID] 
[cv|Visible=True];[ct|CompanyType=True]; [cn|LoginName:username]; 
[cd|Delete:True]"] [-op|-output:"Normal|Quiet|Forced"]
```

All parameter values in the command-line commands are case-sensitive and must be enclosed in quotation marks. Each parameter for the command line also has a short form that you can use instead of the full parameter name. If you have specified a parameter more than once in a command line, the last parameter value will be used.

You can run `ac.exe` in one of three modes:

-   *Command-line*: Parameters are passed to `ac.exe` from the command line.
-   *Batch*: The path to the configuration file with parameters is passed to `ac.exe` from the command line.
-   *Mixed*: Some parameters are passed to `ac.exe` through the configuration file, while other parameters are passed from the command line. In this mode, command-line parameters have priority over those specified in the configuration file.

For details about possible parameters and their values, see [Acumatica ERP Command-Line Tool: Possible Parameters and Values](INST_Using_Command_Line_Tool_Parameters.md).

## Deployment of an Instance by Using the Acumatica ERP Command-Line Tool { .section}

You can use a configuration file to deploy an Acumatica ERP instance with the Acumatica ERP command-line tool. You can create the configuration file with the command-line commands automatically by running the Acumatica ERP Configuration wizard. For details, see [Acumatica ERP Command-Line Tool: To Deploy an Instance by Using the Configuration File](INST_Using_Command_Line_Tool_Configuration_file_Activity.md).

You can also deploy an instance manually by using the command-line commands that you pass to `ac.exe`, as shown in the following examples:

-   ```
ac.exe -configmode:"NewInstance" -dbsrvname:"GP" -dbname:"JPMorgan" 
-company:"CompanyID=1;CompanyType=;LoginName=;" 
-company:"CompanyID=2;CompanyType=;ParentID=1;Visible=Yes; LoginName=JPMorgan;" 
-iname:"JP Morgan" -ipath:"C:\Program Files\Program Folder\JP Morgan\\" 
-swebsite:"Default Web Site" -svirtdir:"JPMorgan" -spool:"JPMorgan" 
-sactions:"SelectedUser" -suser:"GP\Administrator"
```

-   ```
ac.exe -cm:"NewInstance" -s:"SM" -d:"InstanceDB" -c:"ci=1;" 
-c:"ci=2;cp=1;ct=Demo;cv=True;cn=Company;" -i:"Instance" 
-h:"C:\Program Files (x86)\Program Folder\Instance" -w:"Default Web Site" 
-v:"Instance" -po:"Classic .NET AppPool" -a:"AnonymousUser"
```

    The command in this example also creates an application instance and uses the short forms of the command-line parameters.


## Maintenance of an Instance by Using the Command-Line Commands { .section}

You can use the following examples of command-line commands, which you pass to `ac.exe` to perform some maintenance tasks in Acumatica ERP.

The following command updates an existing database.

```
ac.exe -configmode:"DBMaint" -dbsrvname:"SM" -dbnew:"False" -dbname:"DotNet4" 
-dbupdate:"True"
```

The following command updates an existing application instance.

```
ac.exe -cm:"UpgradeSite" -i:"Instance"
```

The following commands can be used to switch on full logging mode and save full logs of instance updates in the `Logs` folder of the Acumatica ERP installation folder:

-   Short parameter name: `ac.exe -fl:"Yes"`
-   Full parameter name: `ac.exe -fulllog:"Yes"`

    For details about full logging mode, see [Instance Deployment: Creation of an Instance](INST_Deploying_Instances_Deployment_Instance.md).


**Parent topic:**[Using the Acumatica ERP Command-Line Tool](../UserGuide/INST_Using_Command_Line_Tool_Mapref.md)

