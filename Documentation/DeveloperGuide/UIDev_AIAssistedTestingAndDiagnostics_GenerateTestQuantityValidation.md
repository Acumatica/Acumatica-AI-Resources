# AI-Assisted Testing and Diagnostics with Test SDK: To Generate a UI Test for Labor Quantity Validation

This activity will walk you through the process of using GitHub Copilot in Visual Studio to generate a UI test for the labor quantity validation behavior.

## Story

Suppose that the Unit Test Framework now confirms that the Repair Work Orders graph restores the labor quantity correctly. The team wants a UI test to verify the same behavior through the browser workflow.

Because UI tests created with Test SDK often include repetitive wrapper-based steps, Copilot can help draft the test from the generated wrapper and helper context. You still need to verify wrapper names, timing assumptions, test data, and assertions.

## Process Overview

You'll generate and review the UI test by performing the following steps:

1.  Reviewing the target UI-level test scenario
2.  Asking Copilot to draft a wrapper-based test
3.  Reviewing the generated test for correct wrapper usage
4.  Reviewing the generated test for data, validation, and assertion correctness
5.  Preparing the test for validation in the next activity

## System Preparation

Before you begin performing the steps of this activity, do the following:

1.  Complete the [AI-Assisted Testing and Diagnostics with Test SDK: To Review Generated Wrappers](UIDev_AIAssistedTestingAndDiagnostics_ReviewProjectAndWrapper.md) prerequisite activity.
2.  Make sure the `AIAssistedDiagnostics.ModernUI.Tests` project builds successfully.
3.  Keep the following files open in Visual Studio:
    -   `Wrappers\Generated\RS\RS301000.cs`
    -   `Wrappers\Custom\RepairWorkOrdersScreen.cs`
    -   `Helpers\TestData.cs`
4.  Make sure the prepared test data is still valid in your instance.
5.  Make sure the runnable smoke test `RepairWorkOrdersScreen_CanOpenPreparedWorkOrder()` is available. This test is already defined in the `AIAssistedDiagnostics.ModernUI.Tests` project in the `RS301000_LaborQuantityTests.cs` file.

## Step 1: Reviewing the Test Scenario

In this step, you'll review the UI behavior that the generated test must validate.

You'll use the following scenario.

```
Open existing repair work order 000001.
Confirm that the labor line has a configured quantity of 1.
Change the labor quantity to 0.
Trigger validation by saving the record and refreshing the Labor grid.
Verify that the final labor quantity is restored to 1.
```

The test should focus on the restored quantity. The warning assertion is optional because warning inspection has not been confirmed through the generated wrapper.

## Step 2: Asking Copilot to Plan and Draft the Test

In this step, you'll ask Copilot to plan and generate the UI test. You'll use a plan-before-edit workflow. Do the following:

1.  Open `Tests\RS301000_LaborQuantityTests.cs`.
2.  Place the cursor after the placeholder comment where the validation test should be added.
3.  Open the inline chat if you want Copilot to insert the method into the current file. Use Copilot Chat if you want Copilot to explain or plan before editing.
4.  Use the reusable prompt file `generate-testsdk-ui-test.prompt.md` if it is available in Copilot Chat. If it’s not available, open `Assets\CopilotPrompts\generate-testsdk-ui-test.prompt.md` and paste the prompt text into Copilot Chat or the inline chat.
5.  If you are not using the reusable prompt file, use the following prompt.

    ```
    Draft a UI test for the Repair Work Orders labor quantity 
    validation scenario.
    
    Before generating code, list:
    1. The helper methods you plan to use.
    2. The generated wrapper members that support those helper methods.
    3. Any assumptions that must be verified.
    
    Target screen:
    RS301000 Repair Work Orders
    
    Scenario:
    Open existing repair work order 000001 whose labor line has a configured/default quantity of 1.
    Change the labor quantity to 0.
    Trigger validation by using the project’s established save/update pattern.
    Verify that the UI restores the labor quantity to 1.
    If the wrapper exposes field warning information, 
    also verify that the QuantityTooSmall warning is shown.
    
    Use the open files as context:
    - The generated RS301000 wrapper class.
    - The RepairWorkOrdersScreen helper class.
    - The TestData helper class.
    - The existing Test SDK test class.
    
    Requirements:
    1. Use generated wrapper members where available.
    2. Prefer the RepairWorkOrdersScreen helper methods where possible.
    3. Do not use direct DOM selectors unless the wrappers do not expose the needed element.
    4. Use deterministic test data from TestData.
    5. Open work order 000001.
    6. Change the labor quantity from 1 to 0.
    7. Trigger validation.
    8. Assert that the final labor quantity is 1.
    9. Assert the QuantityTooSmall warning only if the wrapper exposes a reliable way to inspect it.
    10. Use Arrange, Act, Assert comments.
    11. Avoid hardcoded credentials, tenant secrets, local paths, or environment-specific URLs.
    12. Add TODO comments where wrapper names or test data must be verified.
    13. Name the test method as LaborQuantity_WhenBelowConfigured_RestoresConfiguredQuantity
    
    Constraints:
    - Do not invent wrapper members.
    - Do not rewrite existing helpers unless the helper has a clear TODO.
    - Do not modify configuration files.
    - Do not create broad setup logic that distracts from the test scenario.
    ```

6.  Review the generated code or diff before accepting it. If Copilot generates code in the chat, use the **Preview** or **Apply in Active Document** options so that you can inspect the change before saving it.

## Step 3: Reviewing the Generated Test

In this step, you'll review the generated test for correctness before running it. Confirm the following:

1.  The test uses the `var screen = new RepairWorkOrdersScreen();` custom helper.
2.  The test opens the Repair Work Orders \(RS301000\) form by using the following code.

    ```csharp
    screen.Open();
    ```

3.  The test opens the prepared work order as follows.

    ```csharp
    screen.OpenWorkOrder(TestData.PreparedWorkOrderNbr);
    ```

4.  The test changes the labor quantity to the below default value as shown below.

    ```cpp
    screen.SetFirstLaborQuantity(TestData.BelowConfiguredLaborQuantity);
    ```

5.  The test triggers validation as follows.

    ```csharp
    screen.TriggerValidation();
    ```

6.  The test reads the final quantity as shown below.

    ```csharp
    screen.GetFirstLaborQuantity()
    ```

7.  The test asserts the restored quantity by using `TestData.ExpectedRestoredLaborQuantity`.
8.  The generated test does **not** assert warning text unless a reliable warning-inspection API has been confirmed.
9.  The generated test does not use invented generated-wrapper members.
10. The generated test does not modify configuration files or test data constants.

## Step 4: Reviewing AI Output Against the Generated Wrapper

In this step, you'll compare Copilot’s generated code with the actual wrapper and helper.

Use the following checklist for the comparison.

<table id="_d69dd464-2d7c-4e69-b66c-5b2e56f29508"><thead><tr><th align="left" id="d907923e296">

Review Item

</th><th align="left" id="d907923e299">

Accept Only If

</th></tr></thead><tbody><tr><td>

Screen

</td><td>

The test targets RS301000.

</td></tr><tr><td>

Prepared record

</td><td>

The test uses `TestData.PreparedWorkOrderNbr`, which is *000001*.

</td></tr><tr><td>

Quantity input

</td><td>

The test sets the quantity to `TestData.BelowConfiguredLaborQuantity`, which is *0*.

</td></tr><tr><td>

Expected quantity

</td><td>

The test expects `TestData.ExpectedRestoredLaborQuantity`, which is *1*.

</td></tr><tr><td>

Wrapper usage

</td><td>

The test uses the `RepairWorkOrdersScreen` helper class or actual generated members.

</td></tr><tr><td>

Generated member names

</td><td>

Copilot does not invent members, such as `Labor`, `LaborGrid`, or `QuantityField`.

</td></tr><tr><td>

Validation trigger

</td><td>

The test calls the helper method that saves and refreshes the grid on the **Labor** tab.

</td></tr><tr><td>

Warning assertion

</td><td>

Warning assertion is omitted or clearly marked as optional unless warning inspection is confirmed.

</td></tr><tr><td>

Security

</td><td>

The test does not include credentials, tenant names, local paths, or site URLs.

</td></tr><tr><td>

Scope

</td><td>

The test does not create broad setup logic or rewrite helpers unnecessarily.

</td></tr></tbody>
</table>

If Copilot generates direct calls to generated wrapper members, compare them with the `RS301000.cs` wrapper file.

## Step 5: Asking Copilot to Explain the Test

In this step, you'll make sure the generated test is understandable and maintainable.

Do the following:

1.  Use the reusable prompt file `explain-generated-testsdk-test.prompt.md` if it is available in Copilot Chat. If it is not available, open `Assets\CopilotPrompts\explain-generated-testsdk-test.prompt.md` and paste the prompt text into Copilot Chat.

    If you're not using the reusable prompt file, use the following prompt.

    ```
    Explain the generated test.
    
    Do not modify files.
    
    Please cover:
    1. Which repair work order data the test depends on.
    2. How the test opens the screen.
    3. How it opens work order 000001.
    4. How it changes the labor quantity from 1 to 0.
    5. How it triggers validation.
    6. How it verifies that the quantity is restored to 1.
    7. Whether the test can verify the QuantityTooSmall warning.
    8. Which wrapper members or test data values still need SME verification.
    9. Which prepared Test SDK output or log artifact should be used if the live test cannot be run.
    ```

2.  Compare Copilot’s explanation with the actual code.
3.  If the explanation does not match the code, revise the test or ask Copilot to correct the explanation.

## Step 6: Building the Project

In this step, you'll make sure the generated test compiles before running it. Do the following:

1.  Save the `RS301000_LaborQuantityTests.cs` file, to which Copilot added the generated test.
2.  Build the `AIAssistedDiagnostics.ModernUI.Tests` project.
3.  If the build fails, classify the failure before editing code.
4.  The table below lists some common build failures.

    |Failure|Likely Cause|
    |-------|------------|
    |Member does not exist|Copilot invented or guessed a wrapper member.|
    |Namespace missing|The test is missing a `using` directive.|
    |Test class initialization error|The test class may not inherit from `Core.Wrapper`.|
    |Helper method missing|Copilot called a helper method that has not been implemented.|

5.  Fix only the smallest issue needed to make the project build.

**Parent topic:**[AI-Assisted Testing and Diagnostics with Test SDK for the Modern UI](../DeveloperGuide/UIDev_AIAssistedTestingAndDiagnostics_Mapref.md)

