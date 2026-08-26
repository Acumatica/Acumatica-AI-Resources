# Using Third-Party Tools {#_ea2b191a-9333-46c8-bca5-2aade422f901 .concept}

This topic describes the following third-party tools, which may be useful for troubleshooting:

-   [JetBrains dotTrace](#_48f477e3-8643-4fe2-9360-e7898b091afd): A tool for analyzing the application performance
-   [.NET Memory Profiler](#_df009414-950b-45fb-b639-14807e10cb38): A tool for analyzing an application's memory usage
-   [WinDbg](#_095a927e-d9fe-4e3b-99a0-38013003f013): A powerful tool for analyzing process dump files

## JetBrains dotTrace {#_48f477e3-8643-4fe2-9360-e7898b091afd .section}

JetBrains dotTrace is a tool for analyzing the performance of your application. In particular, by using this tool, you can view the average running time for the methods in your application.

## .NET Memory Profiler {#_df009414-950b-45fb-b639-14807e10cb38 .section}

.NET Memory Profiler is another tool for monitoring and analyzing issues on your server. By using this tool, you can take snapshots of the Acumatica ERP memory and isolate memory leaks.

## WinDbg {#_095a927e-d9fe-4e3b-99a0-38013003f013 .section}

WinDbg is a powerful tool that can open and analyze process dump files.

To use WinDbg, you first need to obtain two .dll files from the .NET Framework version installed on the machine where the dump file was created. You then load these files into WinDbg by using the `.load` command, and use the `.symfix` system command to set the symbol storing path, as shown below.

```
.load c:\sos\sos.dll
.load c:\sos\mscordacwks.dll
.symfix
```

You can then analyze all objects in the memory by using the following commands:

-   `!dumpheap -stat` \(summary for objects of all types\)
-   `!dumpheap -type System.Data.SqlClient.SqlConnection` \(objects of a specific type\)
-   `!do 000007feeeca24a0` \(object at a specific address\)

By exploring the memory this way, you can obtain the value of each object instance in the current process, which may help you find the reason why the application is not working correctly.

**Parent topic:**[Troubleshooting Acumatica ERP](../UserGuide/CON_Troubleshooting_Tools.md)

