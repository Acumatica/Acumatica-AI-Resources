# Test Method:To Create a Test Method Without Parameters {#_100468bb-630f-4ed6-86ef-e3791dadb3cd .task}

The following activity will walk you through the process of creating a test method without parameters.

## Story { .section}

Suppose that you want to make sure that the following behavior of the Repair Services \(RS201000\) custom form has not changed: The selection of the **Walk-In Service** check box and the selection of the **Requires Preliminary Check** check box are mutually exclusive. You need to create a test method that changes the state of one check box and checks the state of the other check box.

## Process Overview { .section}

To create the test method, you will create a `public void` method and assign it the `[Fact]` attribute. In the method, you will create an instance of the tested graph. In the cache of the graph, you will create a record. In this record, you will change the values of the fields that indicate the states of the check boxes, update the cache of the graph, and check that the values of dependent fields have been changed according to the tested logic of the graph.

## System Preparation { .section}

Before you begin creating the test method, make sure that you have performed the following prerequisite activities:

1.  [Test Instance for Unit Testing: To Deploy an Instance](UnitTest_InitialConfiguration_Activity_DeployInstance.md), to prepare the Acumatica ERP instance that you will use
2.  [Test Project and Test Class: To Create a Test Project](UnitTest_TestProject_Activity_CreateProject.md), to create and configure the `PhoneRepairShop_Code.Tests.csproj` test project
3.  [Test Project and Test Class: To Create a Test Class](UnitTest_TestProject_Activity_CreateClass.md), to create the `RSSVRepairServiceMaintTests` test class

## Step: Creating a Test Method Without Parameters { .section}

To create a method for checking the states of the check boxes of the Repair Services \(RS201000\) form, do the following:

1.  In the `RSSVRepairServiceMaintTests` class, use the following code to create a public void method and name it *PreliminaryCheckAndWalkInServiceFlags\_AreOpposite*.

    ```language-csharp
            public void PreliminaryCheckAndWalkInServiceFlags_AreOpposite()
            {
            }
    ```

2.  By using the following code, assign the `[Fact]` attribute to the method to specify that this unit test is called without parameters.

    ```language-csharp
            [Fact]
            public void PreliminaryCheckAndWalkInServiceFlags_AreOpposite()
    ```

3.  In the `PreliminaryCheckAndWalkInServiceFlags_AreOpposite` method, create an instance of the `RSSVRepairServiceMaint` graph as follows.

    ```language-csharp
                var graph = PXGraph.CreateInstance<RSSVRepairServiceMaint>();
    ```

4.  Now that the `RSSVRepairServiceMaint` graph is initialized, use the following code to create an `RSSVRepairService` object that represents a record in the table of the Repair Services form.

    ```language-csharp
                var repairService =
                    graph.Caches[typeof(RSSVRepairService)].
                    Insert(new RSSVRepairService
                    {
                        ServiceCD = "Service1",
                        Description = "Service 1",
                        WalkInService = true,
                        PreliminaryCheck = false
                    }) as RSSVRepairService;
    ```

    Objects that represent table records are created in the graph cache \(PXCache objects\). You can address a specific cache of a graph either by the DAC name \(`graph.Caches[typeof(<DAC_name>)]`\) or by the graph view that contains the DAC objects \(`graph.<DACView>.Cache`\).

5.  After a record is created, determine whether a change of the **Walk-In Service** check box state leads to a change of the **Requires Preliminary Check** check box state. Also, determine whether a change of the **Requires Preliminary Check** check box state leads to a change of the **Walk-In Service** check box. Perform this checking by adding the following code.

    ```language-csharp
                if (repairService != null) 
                { 
                    repairService.WalkInService = false;
                    graph.Caches[typeof(RSSVRepairService)].Update(repairService);
                    Assert.True(repairService.PreliminaryCheck);
    
                    repairService.WalkInService = true;
                    graph.Caches[typeof(RSSVRepairService)].Update(repairService);
                    Assert.False(repairService.PreliminaryCheck);
    
                    repairService.PreliminaryCheck = false;
                    graph.Caches[typeof(RSSVRepairService)].Update(repairService);
                    Assert.True(repairService.WalkInService);
    
                    repairService.PreliminaryCheck = true;
                    graph.Caches[typeof(RSSVRepairService)].Update(repairService);
                    Assert.False(repairService.WalkInService);
                }
    ```


To walk through the process of running the test method, see [Test Method: To Run a Test Method](UnitTest_TestMethod_Activity_RunTestMethod.md). For details about debugging the test method, see [Test Method: To Debug a Test Method](UnitTest_TestMethod_Activity_DebugTestMethod.md).

**Parent topic:**[Creating a Test Method](../DeveloperGuide/UnitTest_TestMethod_Mapref.md)

