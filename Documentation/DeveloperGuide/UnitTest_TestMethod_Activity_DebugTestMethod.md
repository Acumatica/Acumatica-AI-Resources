# Test Method:To Debug a Test Method {#_25b03612-7baf-4488-a169-649e0d137284 .task}

The following activity will walk you through the process of debugging a test method.

## Story { .section}

Suppose that you have a test method implemented in a test class. You need to debug the test method in order to detect possible errors.

## Process Overview { .section}

In Visual Studio, you will set breakpoints both in the code being tested and in the test method, launch the debugging for the test method from the **Test Explorer** window, and check that the values of the fields are as expected.

## System Preparation { .section}

Before you begin debugging the test method, make sure that you have performed the following prerequisite activities:

1.  [Test Instance for Unit Testing: To Deploy an Instance](UnitTest_InitialConfiguration_Activity_DeployInstance.md), to prepare the Acumatica ERP instance that you will use
2.  [Test Project and Test Class: To Create a Test Project](UnitTest_TestProject_Activity_CreateProject.md), to create and configure the `PhoneRepairShop_Code.Tests.csproj` test project
3.  [Test Project and Test Class: To Create a Test Class](UnitTest_TestProject_Activity_CreateClass.md), to create the `RSSVRepairServiceMaintTests` test class
4.  [Test Method: To Create a Test Method Without Parameters](UnitTest_TestMethod_Activity_CreateTestMethodNoParam.md), to create the `PreliminaryCheckAndWalkInServiceFlags_AreOpposite` test method

## Step: Debugging a Test Method { .section}

To debug the `PreliminaryCheckAndWalkInServiceFlags_AreOpposite` method, do the following:

1.  In the `PhoneRepairShop_Code``.Tests` project, open the `RSSVRepairServiceMaintTests.cs` file.
2.  Move the caret to the following line.

    ```language-csharp
    repairService.WalkInService = false;
    ```

3.  Press F9 to set a breakpoint on the line.
4.  In the `PhoneRepairShop_Code` project, open the `RSSVRepairServiceMaint.cs` file.
5.  In the `_(Events.FieldUpdated<RSSVRepairService, RSSVRepairService.walkInService> e)` method, move the caret to the following line.

    ```language-csharp
    row.PreliminaryCheck = !(row.WalkInService == true);
    ```

6.  Press F9 to set a breakpoint on the line.
7.  Select the **Test** &gt; **Test Explorer** menu command to open the **Test Explorer** window.
8.  Right-click the `PreliminaryCheckAndWalkInServiceFlags_AreOpposite` method, and select **Debug**. After the debugging process starts, the execution initially pauses at the breakpoint in the `RSSVRepairServiceMaint.cs` file. This is because the `_(Events.FieldUpdated<RSSVRepairService, RSSVRepairService.walkInService> e)` method gets triggered when the `repairService` object is first created and added to the cache using the `graph.Caches[typeof(RSSVRepairService)].Insert(...)` method of the graph. Continue debugging \(you can press F5 for this\).
9.  The execution pauses in the `RSSVRepairServiceMaintTests.cs` file. You can verify that the value of `repairService.WalkInService` is *true*.
10. Step over the statement in the current line \(you can use F10 for this\). The value of `repairService.WalkInService` becomes *false*.
11. Step over the statement in the current line. This updates the `repairService` object in the cache. During the update, the FieldUpdated event is generated for the **Walk-In Service** check box, and the `_(Events.FieldUpdated<RSSVRepairService, RSSVRepairService.walkInService> e)` method of the `RSSVRepairServiceMaint` class is launched. The execution pauses at the breakpoint in the `RSSVRepairServiceMaint.cs` file, which signifies that the extension library and unit test match each other.
12. Continue debugging \(you can press F5 for this\). The debugging process continues until it completes successfully.

**Parent topic:**[Creating a Test Method](../DeveloperGuide/UnitTest_TestMethod_Mapref.md)

