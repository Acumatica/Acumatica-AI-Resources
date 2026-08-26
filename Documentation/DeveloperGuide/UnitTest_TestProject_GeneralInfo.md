# Test Project and Test Class: General Information {#_8bf3a5f6-192c-4e95-afba-cf4b00962280 .concept}

As the first step in creating a set of unit tests for an extension library in a customization project, you create a Visual Studio project and configure it to serve as the test project. For each graph or graph extension to be tested, you create a separate test class in the test project.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure a project in Visual Studio to be a test project that uses the xUnit.net library and the Acumatica Unit Test Framework
-   Create the test class that will contain unit tests

## Applicable Scenarios { .section}

You create and configure a test project each time you need to create unit tests for graphs and graph extensions implemented in a customization project. You create a test class for each graph or graph extension for which you will create unit tests.

## Requirements for Using the Acumatica Unit Test Framework { .section}

By design, the Acumatica Unit Test Framework does not require you to sign in or access a database on a disk. To perform unit tests, you do not need to deploy an Acumatica ERP instance or a database instance. All actions are performed in RAM.

The Acumatica Unit Test Framework is designed to be used with the xUnit.net library. You may configure your project for using another unit test library \(for example, NUnit\), but Acumatica does not guarantee compatibility with a unit test library other than xUnit.net.

For details about xUnit.net library, see [Getting Started with xUnit.net](https://xunit.net/docs/getting-started/netfx/visual-studio).

## Naming Conventions for Test Projects, Namespaces, and Test Classes { .section}

By performing the usual process, for each project whose functionality is going to be tested, you create a test project in the same Visual Studio solution and name it by adding *.Tests* to the end of the name of the project being tested.

Similarly, the namespace used in the test project should be named the same as the namespace of the project being tested with *.Tests* appended to the name.

The test class should also be named the same as the class being tested with *Tests* appended to the name.

For example, to test the `InventoryItemMaint` class, which is in the `PhoneRepairShop_Code` namespace and contained in the `PhoneRepairShop_Code.csproj` project, you create the `PhoneRepairShop_Code.Tests.csproj` project; in this project, you create the `InventoryItemMaintTests` class and place it in the `PhoneRepairShop_Code.Tests` namespace.

## Test Class Definition { .section}

A test class is derived from the `TestBase` class, which is available in the `PX.Tests.Unit` namespace.

**Parent topic:**[Creating a Test Project and a Test Class](../DeveloperGuide/UnitTest_TestProject_Mapref.md)

