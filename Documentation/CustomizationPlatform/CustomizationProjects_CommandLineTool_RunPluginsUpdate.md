# PXCommandLine Tool: RunUpdatePlugins {#_d7b2eb5b-b6b9-45f6-b2e5-dd9bdfd05c84 .concept}

You can use the `RunPluginsUpdate` value of the `/method` parameter to work with the `CustomizationPlugin` classes of all published customization projects. For more information about customization plug-ins, see [Custom Processes During Publication of a Customization](CG_Platform_Framework_PlugIn.md) and [To Add a Customization Plug-In to a Project](CG_GL_Items_Code_AddingPlugIn.md).

The `RunPluginsUpdate` method runs the `CustomizationPlugin.UpdateDatabase` methods from customization plug-ins of all published customization projects. If the `UseRuntimeCompilation` key is set to *true* in the `Web.config` file, then the customization plug-ins are also collected from the `App_RuntimeCode` folder.

You must use the `RunPluginsUpdate` method only if the customization package that you published has a customization plug-in that implements the `UpdateDatabase` method. You can call the `RunPluginsUpdate` method by using the following syntax.

```
PX.CommandLine.exe [/website "path\to\web\site\root"]
/method RunPluginsUpdate
```

**Parent topic:**[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)

