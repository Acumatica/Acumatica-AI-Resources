# Modern UI Troubleshooting: Build Options {#_5413718a-ab8b-434d-8bf9-2252fbe4623e .concept}

For troubleshooting errors during building of the Modern UI, you can use additional build options, which are described in the following sections.

## Log Level for Building the Source Code { .section}

You can specify the log level in the build command, as shown in the following example. The log level determines the minimum threshold at which a logging method should be enabled.

```
npm run build-dev --- --env LOG_LEVEL=trace
```

The following log levels are available:

-   fatal
-   error
-   warn
-   info
-   debug
-   trace

For more details on log levels, see [documentation of the pino logger](https://github.com/pinojs/pino/blob/main/docs/api.md#levels).

When the build is completed, the links to the log files are displayed along with the result of the build.

## Building of the Source Code for a Particular Tenant { .section}

As described in [Customization Project with UI Changes: How UI Customization Works](UIDev_CustomizationProject_HowWorks.md), the source code for published changes to the Modern UI in a particular tenant is located in the `FrontendSources\screen\src\customizationScreens\<Tenant Name>\screens` folder. For troubleshooting errors during building of the Modern UI changes of a particular tenant of your instance, you can run the following command in the `FrontendSources` folder, where *TenantName* is the tenant name in the **Login Name** box of the [Tenants](../UserGuide/SM_20_35_20.md) \(SM203520\) form.

```
npm run build-dev --- --env tenant=TenantName
```

**Attention:** Before building the source code for changes to the Modern UI, be sure to follow the instructions described in [Performing the Prerequisite Actions](UIDev_ModernUI_BuildingSources.md#_b88ccb95-67cd-4d85-b6bf-4714ce4db9f7).

You can use the `tenant=TenantName` parameter with any other parameters, such as `screenIds` or `modules`, or with the `watch` command with parameters. For details about the parameters, see [Modern UI Development: Building the Source Code](UIDev_ModernUI_BuildingSources.md).

**Tip:** By default, the system executes the `npm run build` command \(instead of `npm run build-dev`\) during publication of a customization project with the Modern UI changes. You can adjust this behavior by adding the respective keys in the `Web.config` file. For details about the keys, see [Customization Project with UI Changes: General Information](UIDev_CustomizationProject_GeneralInfo.md).

**Parent topic:**[Troubleshooting the Modern UI](../DeveloperGuide/UIDev_Troubleshooting_Mapref.md)

