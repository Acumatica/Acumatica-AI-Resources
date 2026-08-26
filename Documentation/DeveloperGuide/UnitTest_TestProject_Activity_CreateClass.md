# Test Project and Test Class:To Create a Test Class {#_cd8e55db-643b-4a91-bce4-354e2a867012 .task}

The following activity will walk you through the process of creating a test class in the test project that you have created.

## Story { .section}

Suppose that you have created and configured the `PhoneRepairShop_Code.Tests` test project for the extension library implemented in the `PhoneRepairShop_Code.csproj` project.You need to create a class for testing the Repair Services \(RS201000\) custom form, whose business logic is implemented in the `RSSVRepairServiceMaint` class.

## Process Overview { .section}

In the test project, you create a test class derived from the `PX.Tests.Unit.TestBase` class. This class is intended for containing test methods.

## System Preparation { .section}

Before you begin creating the test class, make sure that you have performed the following prerequisite activities:

1.  [Test Instance for Unit Testing: To Deploy an Instance](UnitTest_InitialConfiguration_Activity_DeployInstance.md), to prepare the Acumatica ERP instance
2.  [Test Project and Test Class: To Create a Test Project](UnitTest_TestProject_Activity_CreateProject.md), to create and configure the `PhoneRepairShop_Code.Tests.csproj` test project

## Step: Creating a Test Class { .section}

To create a test class for the Repair Services \(RS201000\) form, do the following:

1.  In the **Solution Explorer** panel of Visual Studio, right-click the `PhoneRepairShop_Code.Tests` project, and select **Add** &gt; **New Item**.
2.  Select the *Visual C\# item \| Class* template, and type `RSSVRepairServiceMaintTests.cs` as the file name.
3.  Click **Add**.
4.  Specify the following `using` directives in the `RSSVRepairServiceMaintTests.cs` file.

    ```language-csharp
    ﻿using Xunit;
    using PX.Data;
    using PX.Tests.Unit;
    using PhoneRepairShop;
    ```

5.  Make the `RSSVRepairServiceMaintTests` class public and derived from TestBase as follows.

    ```language-csharp
        public class RSSVRepairServiceMaintTests : TestBase
    ```


In this class, you will create a test method to test the logic of the `RSSVRepairServiceMaint` graph, as described in [Test Method: To Create a Test Method Without Parameters](UnitTest_TestMethod_Activity_CreateTestMethodNoParam.md). For more information about creating test methods, see [Creating a Test Method](UnitTest_TestMethod_Mapref.md).

**Parent topic:**[Creating a Test Project and a Test Class](../DeveloperGuide/UnitTest_TestProject_Mapref.md)

