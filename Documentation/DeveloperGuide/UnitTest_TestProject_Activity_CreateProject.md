# Test Project and Test Class:To Create a Test Project {#_d8e18ef2-d47c-4d69-8efc-83c2509b6ce3 .task}

The following activity will walk you through the process of creating and configuring a test project.

## Story { .section}

Suppose that you have an extension library implemented in the `PhoneRepairShop_Code.csproj` Visual Studio project. You need to create a test project in which you will develop unit tests for graphs and graph extensions in this extension library. You will use the `xUnit.net` library and the Acumatica Unit Test Framework in the unit tests.

## Process Overview { .section}

In Visual Studio, you will create a test project in the same solution with the extension library that implements the graphs and graph extensions being tested. You will add the required NuGet packages to the test project. You will also add the `PX.Tests.Unit.dll` library and other libraries from the Acumatica ERP instance to the test project.

## System Preparation { .section}

As a prerequisite, before you begin creating a test project, make sure that you have performed the [Test Instance for Unit Testing: To Deploy an Instance](UnitTest_InitialConfiguration_Activity_DeployInstance.md) activity.

## Step 1: Creating a Test Project { .section}

To create the `PhoneRepairShop_Code.Tests.csproj` project, proceed as follows:

1.  Open the `PhoneRepairShop_Code.sln` file, which is located in the `\App_Data\Projects\PhoneRepairShop` subfolder of the SmartFix\_T280 instance folder.
2.  In Visual Studio, in the **Solution Explorer** panel, right-click the `PhoneRepairShop_Code` solution.
3.  Select **Add** &gt; **New Project**.
4.  Select the *Class Library* project template.
5.  Click **Next**.
6.  Enter the `PhoneRepairShop_Code.Tests` project name, leave the value in the **Location** box unchanged, and click **Next**.
7.  In the **Framework** box, leave the default setting.
8.  Click **Create**.
9.  In the Solution Explorer, click the created project and specify its properties as follows:

    -   TargetFramework: *net48*
    -   LangVersion: *9.0*
    -   Nullable: *enable*
    An example of the configuration is shown in the following code.

    ```language-csharp
      <PropertyGroup>
        <TargetFramework>net48</TargetFramework>
        <RootNamespace>PhoneRepairShop_Code.Tests</RootNamespace>
        <AssemblyName>PhoneRepairShop_Code.Tests</AssemblyName>
        <AppendTargetFrameworkToOutputPath>false</AppendTargetFrameworkToOutputPath>
        <OutputPath>bin\$(Configuration)</OutputPath>
        <GenerateAssemblyInfo>false</GenerateAssemblyInfo>
        <FileVersion>25.201.0166</FileVersion>
        <InformationalVersion>25.201.0166</InformationalVersion>
        <LangVersion>9.0</LangVersion>
        <Nullable>enable</Nullable>
        <Copyright>Copyright © 2005-2025 Acumatica, Inc. All rights reserved.</Copyright>
      </PropertyGroup>
    ```

10. Delete the `Class1.cs` item from the `PhoneRepairShop_Code.Tests.csproj` project. You will create the required C\# classes later.
11. Save your changes.

## Step 2: Adding NuGet Packages { .section}

Do the following to add the necessary NuGet packages to the `PhoneRepairShop_Code.Tests.csproj` project:

1.  In the **Solution Explorer** panel of Visual Studio, right-click the `PhoneRepairShop_Code.Tests` project, and select **Manage NuGet Packages**.
2.  Install the following packages:
    -   `xunit` \(Version 2.4.2\)
    -   `xunit.runner.visualstudio` \(Version 2.4.5\)
    -   `System.Runtime.CompilerServices.Unsafe` \(Version 6.1.2\)
    -   `Microsoft.Bcl.AsyncInterfaces` \(Version 10.0.0\)
    -   `Microsoft.Extensions.Configuration` \(Version 10.0.0\)
    -   `Moq` \(Version 4.20.72\)

## Step 3: Adding References to the Customization Code and Acumatica ERP Libraries { .section}

To add references to the customization project and Acumatica ERP libraries to the `PhoneRepairShop_Code.Tests.csproj` project, proceed as follows:

1.  Copy the `PX.Tests.Unit.dll` file from the `UnitTesting` subfolder of the Acumatica ERP installation folder to any folder you choose.
2.  In the `PhoneRepairShop_Code.Tests` project, add references to all Acumatica ERP libraries that are referred in the project of the extension library—that is, add reference to the following files in the `SmartFix_T280\Bin` folder:
    -   `PX.Common.dll`
    -   `PX.Common.Std.dll`
    -   `PX.Data.BQL.Fluent.dll`
    -   `PX.Data.dll`
    -   `PX.Objects.dll`
    -   `PX.CS.Contracts.dll`
    -   `PX.Web.Customization.dll`
3.  Add a reference to the `Autofac.dll` file in the `SmartFix_T280\Bin` folder.
4.  Add a reference to the `PX.Tests.Unit.dll` file in the folder where you have placed it.
5.  Add a reference to the PhoneRepairShop\_Code project.

**Parent topic:**[Creating a Test Project and a Test Class](../DeveloperGuide/UnitTest_TestProject_Mapref.md)

