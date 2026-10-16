# AI-Assisted Diagnostics and Testing with Automated Unit Tests:To Diagnose a Failing Unit Test

This activity will walk you through the process of using GitHub Copilot in Visual Studio to diagnose a failing unit test and suggest the smallest safe fix.

## Story

Suppose that the Smart Fix company has changed the customization project for the Repair Work Orders \(RS301000\) form. After the change, a unit test for the form's business logic fails.

The reported problem occurs when a user enters a labor quantity that is lower than the default labor quantity for the repair service. The system should show a warning and restore the quantity to the default value. You need to reproduce the failure, collect the evidence, and use Copilot to identify the likely root cause. You also need to ask Copilot to suggest the smallest safe fix.

## Process Overview

You'll diagnose the failing unit test and generate a fix by performing the following steps:

1.  Reviewing the expected labor quantity behavior
2.  Running the failing unit test in Visual Studio
3.  Capturing the failed assertion and stack trace, or using a Test Explorer Copilot menu command to start the failure analysis
4.  Classifying the failure pattern
5.  Asking Copilot to inspect the relevant test and graph files
6.  Reviewing Copilot’s root-cause analysis and suggested fix

## System Preparation

Before you begin performing the steps of this activity, do the following:

1.  Verify that you’re signed in to Visual Studio with a GitHub account that has GitHub Copilot access. Use Visual Studio 2026 if it’s available in your environment; if not, use Visual Studio 2022, Version 17.10 or later.

    If Copilot is not installed or is inactive, open the Visual Studio Installer, select your Visual Studio installation, click **Modify**, and make sure that**GitHub Copilot** is selected under optional components. Then restart Visual Studio, sign in with a GitHub account that has Copilot access, and confirm that the status icon shows that Copilot is active.

    **Tip:** The exact Copilot commands, context-menu options, and mode names may differ between Visual Studio versions. If your integrated development environment \(IDE\) provides menu commands such as **Explain failure with Copilot** or **Debug with Copilot** in Test Explorer, use these commands as the primary path. Otherwise, use the prompts provided in this activity.

2.  Make sure that the environment you’re going to use conforms to the [System Requirements for the Acumatica ERP Installation](../Shared/../UserGuide/INST_Preparing_Installation_System_Requirements.md).
3.  Make sure that the Web Server \(IIS\) features listed in [Configuration of IIS Web Server Features](../Shared/../UserGuide/INST_Preparing_Installation_System_Environment.md#_8be3ff2c-3e69-4e41-874f-93bcb9b1d606) are turned on.
4.  Install the Acuminator extension for Visual Studio.
5.  Install Acumatica ERP Version 2026 R1 or higher in your system. On the Main Software Configuration page of the Acumatica ERP Setup wizard, select the **Install Acumatica ERP** and **Install Debugger Tools** check boxes.
6.  Deploy an Acumatica ERP instance as described in Step 2 of the [Test Instance for Unit Testing: To Deploy an Instance](UnitTest_InitialConfiguration_Activity_DeployInstance.md) activity.
7.  Download the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples/tree/2026R2) repository in Acumatica GitHub to a folder on your computer. You’ll find the Visual Studio solution with the failing unit test in the `UnitTesting\AIAssistedDiagnosticsAndTesting\DefectiveSolution\PhoneRepairShop` folder.
8.  Replace the `PhoneRepairShop` folder in the `App_Data\Projects` folder of your instance with the `PhoneRepairShop` folder, which you can find in the repository’s `UnitTesting\AIAssistedDiagnosticsAndTesting\DefectiveSolution\` folder.

    **Tip:**

    The copied `PhoneRepairShop` folder includes course assets in the `Assets` folder. The `Assets\CopilotPrompts` folder contains the reusable prompt templates used in this activity and the next two activities.

    The `Assets\Acuminator` folder contains prepared Acuminator report artifacts used in the [AI-Assisted Diagnostics and Testing with Automated Unit Tests: To Run the Acuminator Console Runner on Customization Code](UnitTest_AIAssistedDiagnosticsAndTesting_Activity_AcuminatorRunOnCustomizationCode.md) activity.

9.  Initialize a local Git repository in the `PhoneRepairShop` folder and copy the prompt templates to `.github\prompts` folder. To do this, use Windows PowerShell to run each command shown below.

    ```bourne
    cd "C:\SmartFix_T280\App_Data\Projects\PhoneRepairShop"
    
    git init
    
    New-Item -ItemType Directory -Force -Path ".github\prompts" | Out-Null
    
    Copy-Item ".\Assets\CopilotPrompts\*.prompt.md" ".\.github\prompts\" -Force
    Copy-Item ".\Assets\CopilotPrompts\copilot-instructions-template.md" 
              ".\.github\copilot-instructions.md" -Force
    ```

    Adjust the path if your Acumatica ERP instance is installed in a different folder.

    If your Visual Studio version doesn’t show the prompt files in Copilot Chat after this setup, open the corresponding prompt template from `Assets\CopilotPrompts` and paste the prompt text into Copilot Chat manually.

10. In the `App_Data\Projects\PhoneRepairShop` folder, launch the `PhoneRepairShop_code` solution in Visual Studio.
11. Build the `PhoneRepairShop_Code` project.
12. Verify that the necessary NuGet packages and assembly references have already been added to the `PhoneRepairShop_Code.Tests` project. For details, see Steps 2 and 3 of the [Test Project and Test Class: To Create a Test Project](UnitTest_TestProject_Activity_CreateProject.md) activity.

## Step 1: Reviewing the Expected Behavior

In this step, you'll review the expected behavior before reproducing the failure. Do the following:

1.  In Visual Studio, open `RSSVWorkOrderEntryTests.cs`.
2.  Locate the `TestRepairWorkOrdersForm` test method.
3.  Find the section where the test changes the `Quantity` field of an `RSSVWorkOrderLabor` record to `1`.
4.  Review the expected result:
    -   The `QuantityTooSmall` warning should be attached to the `Quantity` field.
    -   The warning level should be `PXErrorLevel.Warning`.
    -   The quantity should be restored to the default value, which is `3`.
5.  Note the related graph, DAC, field, and message constant:

    -   Graph: `RSSVWorkOrderEntry`
    -   DAC: `RSSVWorkOrderLabor`
    -   Field: `Quantity`
    -   Message: `Messages.QuantityTooSmall`

## Step 2: Running the Failing Test

In this step, you'll reproduce the regression. Do the following:

1.  In Visual Studio, launch the Test Explorer by clicking **Test** &gt; **Test Explorer**.
2.  In the Test Explorer window, expand the **PhoneRepairShop\_Code.Tests** node and the **RSSVWorkOrderEntryTests** node within it. Select the **TestRepairWorkOrdersForm** test and run it.
3.  Wait for the test to fail.
4.  If your Visual Studio version provides Copilot menu commands in Test Explorer, right-click the failed test and select **Explain failure with Copilot**. Depending on your Visual Studio and Copilot settings, Copilot may open a chat with the failed-test context and may offer to make edits. For this activity, use the menu command only for diagnosis. If Copilot opens in a mode that can edit files, switch to Ask or Plan mode before continuing. Do not allow Copilot to apply code changes in this step.
5.  If you aren’t using the **Explain failure with Copilot** menu command in Test Explorer or if the command is unavailable, copy the following information into a file, which you can then paste into Copilot Chat:

    -   Stack trace
    -   Test method name
    -   Failed assertion
    -   Expected value
    -   Actual value
    -   Graph
    -   DAC
    -   Field
    -   Warning expected
    -   Warning level expected
    For example, here's how this information looks for the current scenario.

    |Item|Value|
    |----|-----|
    |Stack trace|`RSSVWorkOrderEntryTests.TestRepairWorkOrdersForm()` line 152|
    |Test method|`TestRepairWorkOrdersForm`|
    |Failed assertion|`Assert.Equal(3, woLabor.Quantity);`|
    |Expected value|`3`|
    |Actual value|`1`|
    |Graph|`RSSVWorkOrderEntry`|
    |DAC|`RSSVWorkOrderLabor`|
    |Field|`Quantity`|
    |Warning expected|`Messages.QuantityTooSmall`|
    |Warning level expected|`PXErrorLevel.Warning`|

    The goal is to capture enough evidence for Copilot to analyze the failure without guessing.


## Step 3: Classifying the Failure Pattern with Copilot

In this step, you'll use Copilot to classify the failure before looking for a fix.

When a test fails, the first task is to determine what kind of failure you are dealing with—for example, a failed assertion, a runtime exception, a missing dependency, a test-data issue, or an implementation defect. Each type of failure can point to a different troubleshooting path. In this activity, the failure is expected to be a failed assertion, but you should still classify it before asking Copilot to suggest a fix.

Do the following:

1.  Review the failure output from Test Explorer.
2.  If you used the **Explain failure with Copilot** menu command in the previous step, review Copilot’s explanation and classify the failure based on that response.
3.  If the **Explain failure with Copilot** menu command is not available, make sure these files are open in Visual Studio:
    -   `RSSVWorkOrderEntryTests.cs`
    -   `RSSVWorkOrderEntry.cs`
    -   `Messages.cs`
4.  Open GitHub Copilot Chat in Ask mode and use the reusable prompt file `classify-acumatica-unit-test-failure.prompt.md` if it is available in Copilot Chat by typing */* and selecting the prompt. If this file is not available, open `Assets\CopilotPrompts\classify-acumatica-unit-test-failure.prompt.md` and paste the prompt text into Copilot Chat.

    If you are not using the reusable prompt file, use the following prompt.

    ```
    Classify this Acumatica unit test failure.
    
    Failure output:
     - Failed assertion: Assert.Equal() 
     - Expected value: 3
     - Actual value: 1
     - Stack Trace: RSSVWorkOrderEntryTests.TestRepairWorkOrdersForm() line 152
    
    Use the open test and implementation files as context.
    
    Please classify the failure as one of the following:
    1. Failed assertion
    2. Runtime exception
    3. Missing dependency/service registration
    4. Setup DAC or test data issue
    5. Implementation defect
    
    Then explain:
    - What evidence supports the classification
    - Which file or method to inspect first
    - What not to change yet
    - Why the other categories are less likely
    - Whether this failure should be investigated as a test issue, setup issue,
      or implementation issue
    
    Do not propose a code change yet.
    Do not modify files.
    Do not change the test expectation.
    ```

    Do not ask Copilot to edit files in this step. The goal is to classify the failure and identify where to inspect first.

5.  Confirm that Copilot classifies the current failure as a failed assertion that likely points to an implementation defect.

By contrast, another common unit-test failure pattern involves a missing dependency registration. For example, a test can throw `Autofac.Core.Registration.ComponentNotRegisteredException` when a required service, such as a mock currency service, hasn’t been registered in the test class. In that kind of failure, the next action is not to inspect field validation logic but to register the required service.

## Step 4: Asking Copilot to Inspect the Failure and Suggest a Fix Plan

In this step, you'll ask Copilot to analyze the failing test without editing any files. Do the following:

1.  Use Copilot Chat in Plan mode. Do not edit files yet. If your Visual Studio version provides the **Debug with Copilot** menu command, you can use it as a way to inspect the failing test and stack trace. However, for this activity, continue with a review-only Copilot interaction until you understand the proposed diagnosis. Use the reusable prompt file `inspect-acumatica-unit-test-failure.prompt.md` if it is available in Copilot Chat. If it is not available, open `Assets\CopilotPrompts\inspect-acumatica-unit-test-failure.prompt.md` and paste the prompt text into Copilot Chat.

    If you're not using the reusable prompt file, use the following prompt.

    ```
    Inspect the failing TestRepairWorkOrdersForm unit test.
    
    Files to review:
    - PhoneRepairShop_Code.Tests/RSSVWorkOrderEntryTests.cs
    - PhoneRepairShop_Code/RSSVWorkOrderEntry.cs
    - PhoneRepairShop_Code/Helper/Messages.cs
    
    The expected rule is:
    When RSSVWorkOrderLabor.Quantity is lower than the configured labor quantity,
    the system should attach the QuantityTooSmall warning and restore the quantity to the 
    configured value.
    
    Observed failure:
    The test sets woLabor.Quantity to 1. The QuantityTooSmall warning is expected, and woLabor.
    Quantity should be restored to 3.
    The test fails at the quantity assertion.
    
    Failing assertion:
    Assert.Equal(3, woLabor.Quantity)
    
    Actual value:
    1
    
    Do not edit files yet.
    
    Please:
    1. Explain what the failing assertion means.
    2. Identify the most likely root cause.
    3. Point to the method or event handler to inspect first.
    4. Explain why the warning can still appear while the quantity is not restored.
    5. Propose the smallest safe fix as a plan only.
    6. List assumptions I should verify before editing code.
    7. Identify any Acumatica Framework convention or Acuminator rule that may be relevant.
    8. Explain how the proposed fix should be validated.
    
    Constraints:
    - Do not edit files.
    - Do not change the test expectation.
    - Do not remove Messages.QuantityTooSmall.
    - Do not change PXErrorLevel.Warning.
    - Do not hardcode a value only to make the test pass.
    - Do not rewrite unrelated graph logic.
    ```


## Step 5: Reviewing Copilot’s Diagnosis and Suggested Fix

In this step, you'll evaluate Copilot’s response before changing any code.

Confirm the following:

1.  Copilot points to the `RSSVWorkOrderLabor.Quantity` validation logic.
2.  The proposed root cause is related to the missing restoration of the quantity value.
3.  Copilot does not suggest changing the test expectation or removing the warning.
4.  Use the following checklist.

    |Review Item|Question|
    |-----------|--------|
    |Root cause|Does Copilot explain why the quantity remains `1` instead of being restored to `3`?|
    |Architecture|Does the proposed fix stay in `RSSVWorkOrderEntry.cs`?|
    |Scope|Is the fix limited to labor quantity validation?|
    |Warning behavior|Does the proposed fix preserve `Messages.QuantityTooSmall` and `PXErrorLevel.Warning`?|
    |Testability|Can the fix be verified by rerunning the failing test?|
    |Safety|Did Copilot avoid invented APIs, unrelated rewrites, and test-only logic?|
    |Copilot mode|Did you use Copilot for diagnosis only, without applying edits before review?|
    |Acuminator convention|If Copilot mentioned an Acuminator rule or Acumatica Framework convention, is the rule relevant to this failure?|


In this activity, you've reproduced the labor quantity restoration regression and used Copilot to identify the likely source of the failure without making any code changes. You've also used Copilot to propose the smallest safe fix plan for the issue.

If Copilot proposes a fix, treat it as a plan until you review the exact code change in the [AI-Assisted Diagnostics and Testing with Automated Unit Tests: To Apply a Fix](UnitTest_AIAssistedDiagnosticsAndTesting_Activity_GenerateRegressionTestWithCopilot.md) activity.

**Parent topic:**[Using AI-Assisted Diagnostics and Testing with Automated Unit Tests](../DeveloperGuide/UnitTest_AIAssistedDiagnosticsAndTesting_Mapref.md)

