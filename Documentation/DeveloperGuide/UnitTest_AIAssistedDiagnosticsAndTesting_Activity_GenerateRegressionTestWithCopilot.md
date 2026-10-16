# AI-Assisted Diagnostics and Testing with Automated Unit Tests: To Apply a Fix

This activity will walk you through the process of using Copilot to apply a validated fix for the business logic and generate a focused regression test.

## Story

Suppose that Copilot has helped you identify the likely cause of the failing test: The validation logic still raises the warning, but it no longer restores the invalid labor quantity to the default quantity.

Copilot also suggested a fix as a response to your submitted prompt in Step 4 of the [AI-Assisted Diagnostics and Testing with Automated Unit Tests: To Diagnose a Failing Unit Test](UnitTest_AIAssistedDiagnosticsAndTesting_Activity_DiagnoseWithCopilot.md) activity.

You now need to review and apply the suggested fix and add a focused regression test so that this defect is easier to diagnose if it recurs.

## Process Overview

You'll fix and regression-test the business logic by performing the following steps:

1.  Reviewing the proposed code changes of Copilot's suggested fix
2.  Applying the suggested fix through an inline chat after reviewing the proposed diff
3.  Running the original `TestRepairWorkOrdersForm` test
4.  Asking Copilot to plan and generate a focused regression test by using a reusable prompt file, Copilot Chat, or an inline chat
5.  Reviewing and running the new test

## System Preparation

Before you begin performing the steps of this activity, do the following:

1.  Complete the [AI-Assisted Diagnostics and Testing with Automated Unit Tests: To Diagnose a Failing Unit Test](UnitTest_AIAssistedDiagnosticsAndTesting_Activity_DiagnoseWithCopilot.md) activity.
2.  Keep the Copilot diagnosis available.
3.  Keep these files open in Visual Studio:

    -   `RSSVWorkOrderEntry.cs`
    -   `RSSVWorkOrderEntryTests.cs`
    -   `Messages.cs`
4.  Confirm that the test still fails.

## Step 1: Reviewing and Applying the Suggested Fix

In this step, you'll verify that the suggested code change is correct and minimal and apply the suggested fix. You'll use a plan-before-edit workflow:

1.  Review Copilot’s proposed fix as an explanation.
2.  Apply the code change in the appropriate file

Do the following:

1.  Review the proposed diff in Copilot.
2.  Confirm that the change restores the invalid quantity to the default labor quantity.
3.  Confirm that no unrelated files were modified.
4.  Confirm that the warning behavior remains unchanged.
5.  Reject or revise the change if Copilot:

    -   Changes the test instead of the implementation code
    -   Removes `Messages.QuantityTooSmall`
    -   Changes `PXErrorLevel.Warning` to `PXErrorLevel.Error`
    -   Hardcodes `3` instead of using the default value
    -   Rewrites unrelated event handlers or graph logic
    The correct fix should restore the value from the related default labor record.

6.  Make sure the `RSSVWorkOrderEntry.cs` file is open and currently in focus in Visual Studio. In the Copilot Chat window, apply the proposed fix by selecting **Apply in Active Document** for the code snippet that contains the proposed fix.
7.  Review the changes and click the **Keep** button that appears in the editor window of the `RSSVWorkOrderEntry.cs` file to save these changes.

## Step 2: Running the Original Test

In this step, you'll verify that the fix restores the original behavior. Do the following:

1.  In Visual Studio's Test Explorer, rerun the `TestRepairWorkOrdersForm` test.
2.  Confirm that the test passes.
3.  If the test still fails and your Visual Studio version provides the **Explain failure with Copilot** menu command for failed tests, right-click the failed test and select that command. If the menu command is not available, use the prompt below.
4.  Ask Copilot to compare the new failure with the original one, but keep any follow-up changes small and reviewable. Use the following prompt if the test still fails.

    ```
    The fix did not make the original TestRepairWorkOrdersForm test pass.
    
    Original failure:
    Expected woLabor.Quantity to be 3 after setting it to 1, but it remained 1.
    
    New failure:
    [Paste the new failure output.]
    
    Do not edit files yet.
    
    Please compare the new failure with the original failure and identify 
    whether the fix was incomplete or whether a different assertion is now failing.
    ```


## Step 3: Asking Copilot to Plan and Generate a Focused Regression Test

In this step, you'll ask Copilot to add a smaller test that targets only the repaired behavior.

Use one of the following approaches:

-   **Preferred**: Use the reusable prompt file `generate-acumatica-unit-regression-test.prompt.md` if it is available in Copilot Chat. If the file is not available, open `Assets\CopilotPrompts\generate-acumatica-unit-regression-test.prompt.md` and paste the prompt text into Copilot Chat or inline chat.
-   **Alternative**: Use Copilot inline chat in the `RSSVWorkOrderEntryTests.cs` file.
-   **Fallback**: Paste the prompt below into Copilot Chat.

Ask Copilot to describe the test plan first. After you review the plan, ask Copilot to generate the test method.

```
Add one focused xUnit regression test to 
 PhoneRepairShop_Code.Tests/RSSVWorkOrderEntryTests.cs.

Before generating code, briefly state the test goal and assumptions. Then generate the test method.

Test name:
LaborQuantity_WhenBelowDefault_AttachesQuantityTooSmallWarningAndRestoresDefaultQuantity

Business rule:
When RSSVWorkOrderLabor.Quantity is lower than the configured/default labor quantity,
the system should attach the QuantityTooSmall warning and restore the quantity to 
the configured/default value.

The test should specifically verify:
1. Setting the work order labor quantity to 1 triggers Messages.QuantityTooSmall.
2. The field state has PXErrorLevel.Warning.
3. The work order labor quantity is restored to the configured/default value of 3.

Use the existing setup pattern already present in RSSVWorkOrderEntryTests.cs:
- Setup<RSSVWorkOrderEntry>(new RSSVSetup())
- PXGraph.CreateInstance<RSSVWorkOrderEntry>()
- PXCache.GetStateExt to inspect PXFieldState
- PXCache.Locate to retrieve the proper RSSVWorkOrderLabor object after validation
- Existing message constants from PhoneRepairShop.Messages

Constraints:
- Follow Acumatica Unit Test Framework patterns and Acuminator-friendly coding conventions.
- Do not change production code.
- Do not require a live database or browser session.
- Reuse existing setup patterns from the file.
- Use Arrange, Act, Assert comments.
- Keep the test readable.
- Do not hide the tested business rule behind too many helper methods.
- Show me the diff before running the test.

After generating the code, list what I should verify before running the test.
```

If Copilot provides a code block in chat, prefer the **Preview** or **Apply in Active Document** commands so you can review the diff. Do not copy code blindly into the file.

## Step 4: Reviewing and Accepting the Generated Test

In this step, you'll confirm that the generated test protects the repaired behavior. Do the following:

1.  Confirm that the test initializes the setup DAC by using `Setup<RSSVWorkOrderEntry>(new RSSVSetup())`.
2.  Confirm that the test creates the graph with `PXGraph.CreateInstance<RSSVWorkOrderEntry>()`.
3.  Confirm that the test creates or reuses the same repair service, device, repair price, labor, and work order setup used in the originally failing test.
4.  Confirm that the test sets `woLabor.Quantity` to `1`.
5.  Confirm that the test calls `PXCache.Locate` before inspecting the final cached object.
6.  Confirm that the test asserts:
    -   `Messages.QuantityTooSmall`
    -   `PXErrorLevel.Warning`
    -   Restored quantity of `3`
7.  Remove or revise any generated code that:
    -   Hardcodes values unrelated to the original test setup
    -   Changes production code
    -   Avoids `PXFieldState`
    -   Omits verification of the restored quantity
8.  Save the generated test to the `RSSVWorkOrderEntryTests.cs` file.
9.  Confirm that Copilot generated the test in the correct class and did not add unrelated helper methods.
10. Make sure that the generated test follows the Arrange, Act, Assert structure.
11. Confirm that the generated test is not larger or more complex than the original broad test.

## Step 5: Running the Regression Test

In this step, you'll verify that the focused test works. Do the following:

1.  Build the test project.
2.  Run the new focused regression test.
3.  Run the original `TestRepairWorkOrdersForm` test again.
4.  Confirm that both tests pass.

In this activity, you have used Copilot to restore the labor quantity validation behavior and to add a focused regression test that protects the quantity restoration rule. You have also used a review-first workflow so that AI-generated changes are reviewed, applied intentionally, and validated by automated tests.

**Parent topic:**[Using AI-Assisted Diagnostics and Testing with Automated Unit Tests](../DeveloperGuide/UnitTest_AIAssistedDiagnosticsAndTesting_Mapref.md)

