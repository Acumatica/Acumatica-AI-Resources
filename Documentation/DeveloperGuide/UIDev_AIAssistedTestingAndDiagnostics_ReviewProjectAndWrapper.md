# AI-Assisted Testing and Diagnostics with Test SDK: To Review Generated Wrappers

This activity will walk you through the process of reviewing a Test SDK project's structure and contents, and using AI to inspect the contents of the generated wrapper to identify the wrapper members needed to test the behavior through the UI.

## Story

Suppose that the Smart Fix company has fixed the business logic described in the [AI-Assisted Diagnostics and Testing with Automated Unit Tests: To Diagnose a Failing Unit Test](UnitTest_AIAssistedDiagnosticsAndTesting_Activity_DiagnoseWithCopilot.md) activity. The fix affects the behavior of the `Quantity` field, whose value can be edited in the **Quantity** column on the **Labor** tab of the Repair Work Orders \(RS301000\) form. The company has also added a focused unit test to verify the business logic.

The unit test proves that the graph logic works, but the company also wants browser-level coverage to verify that the Repair Work Orders form behaves correctly when a user enters a labor quantity that’s below the default value.

In this activity, you'll review a prepared Test SDK project and identify the wrapper members needed to test the same behavior through the UI.

## Process Overview

You'll review the prepared Test SDK project by performing the following steps:

1.  Reviewing the prepared Test SDK project structure
2.  Reviewing the generated wrapper for the Repair Work Orders \(RS301000\) form
3.  Reviewing the custom helper class
4.  Mapping the planned test scenario to generated wrapper members
5.  Reviewing the prepared passing and failure artifacts that will be used in the validation activity

## System Preparation

Before you begin performing the steps of this activity, do the following:

1.  Make sure you’re signed in to Visual Studio with a GitHub account that has GitHub Copilot access. Use Visual Studio 2026 if it’s available in your environment; if not, use Visual Studio 2022, Version 17.10 or later. If Copilot is not installed or is inactive, open the Visual Studio Installer, select your Visual Studio installation, click **Modify**, and select **GitHub Copilot** under optional components. Then restart Visual Studio, sign in with a GitHub account that has Copilot access, and confirm that the Copilot status icon shows that Copilot is active.

    The exact Copilot commands, context-menu options, and mode names may differ between Visual Studio versions.

2.  Download the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository from Acumatica GitHub. The Visual Studio solution in which the prepared Test SDK project is located is in the `ModernUI\AIAssistedTestingAndDiagnostics\StarterProject\AIAssistedDiagnostics.ModernUI.Tests` folder of the repository.
3.  Open the `SETUP.md` file within the `AIAssistedDiagnostics.ModernUI.Tests` project folder and perform all the specified instructions in it to successfully build the Test SDK project in your local environment.

    Keep the `Assets\CopilotPrompts` folder and the prepared artifacts folders with the Test SDK project when you copy the project to your local working folder.

4.  Initialize a local Git repository in your local working folder and copy the prompt templates to `.github\prompts` folder. To do this, use Windows PowerShell to run the following commands from the folder that contains the `AIAssistedDiagnostics.ModernUI.Tests.sln` file.

    ```bourne
    cd "C:\AIAssistedTesting\ModernUITestSDK\AIAssistedDiagnostics.ModernUI.Tests"
    
    git init
    
    New-Item -ItemType Directory -Force -Path ".github\prompts" | Out-Null
    
    Copy-Item ".\Assets\CopilotPrompts\*.prompt.md" ".\.github\prompts\" -Force
    Copy-Item ".\Assets\CopilotPrompts\copilot-instructions-template.md" 
               ".\.github\copilot-instructions.md" -Force
    ```

    Adjust the path to where you copied the Test SDK project locally on your machine.

    If your Visual Studio version does not show the prompt files in Copilot Chat after this setup, open the corresponding prompt template from `Assets\CopilotPrompts` and paste the prompt text into Copilot Chat manually.

5.  Make sure the Test SDK project builds successfully in Visual Studio.
6.  Make sure GitHub Copilot is enabled in Visual Studio and GitHub Copilot Chat is available.
7.  Make sure the `PhoneRepairShop` customization project is updated and published in the instance that you installed while performing the instructions in the `SETUP.md` file.
8.  Make sure the Repair Work Orders \(RS301000\) form in your instance contains the repair work order with the following ID: *000001*.
9.  Make sure that the user specified in the `config.xml` file can access the Repair Work Orders form in your instance.

## Step 1: Reviewing the Project Structure

In this step, you'll identify the main files of the `AIAssistedDiagnostics.ModernUI.Tests` Test SDK project. Do the following:

1.  In Visual Studio, open the prepared `AIAssistedDiagnostics.ModernUI.Tests` project.
2.  Locate the `Wrappers\Generated\RS\RS301000.cs` file. This file contains the wrapper for the Modern UI of the Repair Work Orders \(RS301000\) form.
3.  Locate the `Wrappers\Custom\RepairWorkOrdersScreen.cs` file. This is a helper class for the generated Modern UI wrapper of the Repair Work Orders form. This class inherits from the generated `RS301000` wrapper because the generated work order containers and labor grid are protected members.
4.  Locate the `Helpers\TestData.cs` file. This file contains the actual data that will be used to run the UI-level test that you'll write later with the help of Copilot.

    Confirm that `Helpers\TestData.cs` contains the following constants.

    ```csharp
    public const string PreparedWorkOrderNbr = "000001";
    public const decimal ConfiguredLaborQuantity = 1m;
    public const decimal BelowConfiguredLaborQuantity = 0m;
    public const decimal ExpectedRestoredLaborQuantity = 1m;
    ```

5.  Locate the `Tests\RS301000_LaborQuantityTests.cs` file. This file contains the actual test code. It already contains a smoke test confirming that the Test SDK project can sign in to the configured instance, open the *000001* repair work order, and read the default labor quantity. You'll later use Copilot to write the UI-level test in this file to confirm that when a user enters a labor quantity that’s lower than the default labor quantity for the repair service, the system restores the quantity to the default configured value.

## Step 2: Reviewing the Generated RS301000 Wrapper

In this step, you'll review the generated wrapper members that will make it possible to write the UI-level test for your planned test scenario. Do the following:

1.  Open `Wrappers\Generated\RS\RS301000.cs`.
2.  Locate the generated screen class \(shown below\).

    ```csharp
    public class RS301000 : Wrapper
    ```

3.  Confirm that the wrapper constructor sets the screen ID as follows.

    ```csharp
    ScreenId = "RS301000";
    ToolBar = new PxToolBar(null);
    Initialize();
    ```

4.  Locate the following:
    -   The protected work order header section

        ```csharp
        WorkOrders_fsColumnAOrder
        ```

    -   The generated order number selector

        ```csharp
        WorkOrders_fsColumnAOrder.OrderNbr
        ```

    -   The protected labor grid

        ```csharp
        Labor_gridLabor
        ```

    -   The generated labor quantity field

        ```csharp
        Labor_gridLabor.Row.Quantity
        ```

    -   The generated save and refresh methods

        ```csharp
        Save()
        Labor_gridLabor.Refresh()
        ```


## Step 3: Reviewing the Custom Helper Class

In this step, you'll review how the custom helper hides generated-wrapper details from the test code.

Do the following:

1.  Open `Wrappers\Custom\RepairWorkOrdersScreen.cs`.
2.  Confirm that the helper class inherits from the generated wrapper.

    ```csharp
    public sealed class RepairWorkOrdersScreen : RS301000
    ```

    The helper inherits from `RS301000` because the generated wrapper exposes important screen sections, such as `WorkOrders_fsColumnAOrder` and `Labor_gridLabor`, as protected members.

3.  Review the following helper methods and confirm that the helper methods in the table below use the generated wrapper members listed in the previous step.

    |Helper Method|Purpose|
    |-------------|-------|
    |`Open()`|Opens the Repair Work Orders \(RS301000\) form.|
    |`OpenWorkOrder(string workOrderNbr)`|Opens or selects the *000001* repair work order.|
    |`GetFirstLaborQuantity()`|Reads the current quantity in the table row on the **Labor** tab.|
    |`SetFirstLaborQuantity(decimal quantity)`|Enters a new labor quantity.|
    |`TriggerValidation()`|Saves the record and refreshes the form.|


## Step 4: Mapping the UI Test Scenario

In this step, you’ll map the labor quantity scenario that you plan to test to the generated wrapper and helper members. Confirm that the relevant items for the test are mapped to the generated wrapper and helper members shown below.

**Planned test scenario**

```
Open work order 000001.
Confirm the labor quantity is 1.
Change the labor quantity to 0.
Trigger validation.
Verify that the labor quantity is restored to 1.
```

**Mapping reference**

|Item|Value|
|----|-----|
|Screen ID|*RS301000*|
|Target record|*000001*|
|Default labor quantity|*1*|
|Invalid entered quantity|*0*|
|Expected warning|`QuantityTooSmall` or visible equivalent|
|Expected final quantity|*1*|
|Labor grid wrapper member|`Labor_gridLabor`|
|Quantity field wrapper member|`Labor_gridLabor.Row.Quantity`|
|Save or validation trigger|`Save()` followed by `Labor_gridLabor.Refresh()`|

## Step 5: Asking Copilot to Inspect the Wrapper

In this step, you'll use Copilot to summarize the generated wrapper and helper usage. Do the following:

1.  Open the following files in Visual Studio:
    -   `Wrappers\Generated\RS\RS301000.cs`
    -   `Wrappers\Custom\RepairWorkOrdersScreen.cs`
    -   `Helpers\TestData.cs`
2.  Open GitHub Copilot Chat. Use the reusable prompt file `inspect-testsdk-wrapper.prompt.md` if it’s available in Copilot Chat. If it’s not available, open `Assets\CopilotPrompts\inspect-testsdk-wrapper.prompt.md` and paste the prompt text into Copilot Chat. If your Visual Studio version supports attaching files or references to Copilot Chat, attach or reference the following files instead of relying only on open-editor context:
    -   `Wrappers\Generated\RS\RS301000.cs`
    -   `Wrappers\Custom\RepairWorkOrdersScreen.cs`
    -   `Helpers\TestData.cs`
3.  Use the following prompt if you're not able to use the reusable prompt file in the preceding instruction.

    ```
    Inspect the generated Modern UI Test SDK wrapper for RS301000.
    
    Do not modify files.
    
    Use these files as context:
    - Wrappers\Generated\RS\RS301000.cs
    - RepairWorkOrdersScreen.cs
    - TestData.cs
    
    Please identify:
    1. The generated screen class and namespace
    2. The member used for the Order Nbr. field
    3. The member used for the Labor grid
    4. The member used for the Labor Quantity field
    5. The methods used to save and refresh the screen or grid
    6. The helper methods in RepairWorkOrdersScreen that wrap these generated members
    7. Any wrapper members that are missing or not confirmed
    8. Any member names that Copilot should not invent
    
    Use exact member names from the generated wrapper. 
    If a member does not clearly exist, say that it is missing instead of inventing one.
    ```

4.  Review Copilot’s response.

    Confirm that Copilot uses the exact generated member names that you previously identified in Step 2 of this activity, and does not invent members such as the following.

    ```
    Labor
    LaborGrid
    QuantityField
    OpenWorkOrder
    SetQuantity
    ```

    These names are acceptable only if they’re implemented in the custom helper. They are not generated wrapper members.


**Parent topic:**[AI-Assisted Testing and Diagnostics with Test SDK for the Modern UI](../DeveloperGuide/UIDev_AIAssistedTestingAndDiagnostics_Mapref.md)

