# AI-Assisted Diagnostics and Testing with Automated Unit Tests: To Run the Acuminator Console Runner on Customization Code

This activity will walk you through the process of running Acuminator static analysis on the customization project and using an AI assistant to review the diagnostics. You'll use the Acuminator Console Runner to run the static analysis.

## Story

Suppose that you’ve fixed the labor quantity restoration defect and verified the fix with automated unit tests. Before moving to browser-level validation, you want to run a static analysis check to confirm that the customization code follows Acumatica Framework rules and conventions.

Automated tests validate behavior. Acuminator static analysis validates a different concern: whether the customization code follows Acumatica Framework patterns and avoids common framework-specific mistakes.

## Process Overview

You'll run static validation and review the results by performing the following steps:

1.  Building the customization project
2.  Running the Acuminator Console Runner on the customization project
3.  Reviewing the generated report
4.  Asking Copilot to classify the diagnostics
5.  Reviewing any AI-suggested changes
6.  Validating any accepted change if you decide to apply the suggested fix

## System Preparation

Before you begin performing the steps of this activity, do the following:

1.  Complete the [AI-Assisted Diagnostics and Testing with Automated Unit Tests: To Apply a Fix](UnitTest_AIAssistedDiagnosticsAndTesting_Activity_GenerateRegressionTestWithCopilot.md) activity.
2.  Make sure the `PhoneRepairShop_Code` project builds successfully.
3.  Make sure the original unit test and the focused regression test pass.
4.  Verify the availability of the Acuminator Console Runner on your machine. You can download the latest version of the `Acuminator.Runner.NetFramework.zip` file from Acumatica GitHub [here](https://github.com/Acumatica/Acuminator/releases) and extract it to a local folder on your machine.
5.  Create a folder, such as `C:\acuminator\reports\`, for the Acuminator report.
6.  Identify the path to the customization project that should be analyzed. This should be the customization project \(`PhoneRepairShop_Code`\), not the test project \(`PhoneRepairShop_Code.Tests`\). For example: `C:\SmartFix_T280\App_Data\Projects\PhoneRepairShop\PhoneRepairShop_Code\PhoneRepairShop_Code.csproj`

## Step 1: Building the Customization Project

In this step, you'll confirm that you can successfully build the customization project before you run static analysis. Do the following:

1.  In Visual Studio, build the `PhoneRepairShop_Code` project.
2.  Confirm that the build succeeds.
3.  If the build fails, address the failure before running the Acuminator Console Runner.

Do not run Acuminator on the `PhoneRepairShop_Code.Tests` project. The goal is to analyze the customization code.

## Step 2: Running the Acuminator Console Runner

In this step, you'll run the Acuminator Console Runner on the customization code and save the report. Do the following:

1.  Open Windows PowerShell on your computer and run the following commands one by one. Adjust the paths for your environment:

    -   ```bourne
$ACUMINATOR_RUNNER = 
"C:\Acuminator.Runner.NetFramework\Acuminator.Runner.NetFramework.exe"

```

    -   ```bourne
$CUSTOMIZATION_PROJECT = 
"C:\SmartFix_T280\App_Data\Projects\PhoneRepairShop\
 PhoneRepairShop_Code\PhoneRepairShop_Code.csproj"
```

    -   ```bourne
$REPORT_PATH = 
  "C:\AIAssistedDiagnostics\artifacts\acuminator\acuminator-report.json"
```

    -   ```bourne
New-Item -ItemType Directory -Force -Path (Split-Path $REPORT_PATH)
   | Out-Null
```

    You use the commands above to specify variables for the locations of the following:

    -   The Acuminator Console Runner executable file.
    -   The customization project on which you want to run the Acuminator Console Runner.
    -   The folder where the generated report should be saved. The last command in the list above tells PowerShell to create the folder that will contain the report if it doesn't already exist.
2.  Use the variables created in the preceding instruction to run the following command in the same PowerShell terminal.

    ```
    & $ACUMINATOR_RUNNER $CUSTOMIZATION_PROJECT --format json 
       -f $REPORT_PATH -g FD --non-interactive
    ```

    The command uses the following parts.

    |Command Part|Purpose|
    |------------|-------|
    |`$ACUMINATOR_RUNNER`|Stores the path to the Acuminator Console Runner.|
    |`$CUSTOMIZATION_PROJECT`|Stores the path to the customization project to analyze.|
    |`--format json`|Saves the report in JSON format.|
    |`-f $REPORT_PATH`|Writes the report to the specified file.|
    |`-g FD`|Groups diagnostics by file and diagnostic ID.|
    |`--non-interactive`|Runs in non-interactive mode, which is suitable for automated environments.|


## Step 3: Reviewing the Report

In this step, you'll inspect the generated report before asking Copilot for help. Do the following:

1.  Open the generated report file from the location you’d specified in the previous step.
2.  Determine whether the report contains diagnostics, and identify the following information for one or two important diagnostics:
    -   The Diagnostic ID, such as `PX1077`
    -   The file in which the issue was found
    -   The message related to the raised diagnostic
    -   The severity of the diagnostic

## Step 4: Asking Copilot to Classify the Diagnostics

In this step, you'll use Copilot to interpret the report generated by the Acuminator Console Runner.

The Acuminator diagnostics summary lists diagnostic IDs, rule descriptions, severity information, and code-fix availability, which makes it useful context for AI prompts.

For the purposes of this activity, you'll only use the following two diagnostics from a modified version of the generated report. Adjust the path to the customization project based on your environment.

```json
{
  "codeSourceName": "C:\\AcuTestInstances\\SmartFix_T280\\App_Data\\Projects
                      \\PhoneRepairShop\\PhoneRepairShop_Code\\
                       PhoneRepairShop_Code.csproj",
  "totalDiagnosticsCount": 4,
  "projectReports": [
  {
    "projectName": "PhoneRepairShop_Code",
    "totalDiagnosticsCount": 4,
    "distinctDiagnosticsCount": 2,
    "reportDetails": {
      "totalDiagnosticsCount": 4,
      "distinctDiagnosticsCount": 2,
      "childrenTitle": "Found Errors",
      "childrenGroups": [
        {
          "groupTitle":   "C:\\AcuTestInstances\\SmartFix_T280\\App_Data\\Projects
                            \\PhoneRepairShop\\PhoneRepairShop_Code\\
                             RSSVWorkOrderEntry.cs",
          "totalDiagnosticsCount": 4,
          "distinctDiagnosticsCount": 2,
          "childrenGroups": 
          [
            {
              "groupTitle": "PX1077",
              "totalDiagnosticsCount": 2,
              "lines": 
              [
                "PX1077: Event handlers should be protected virtual:
                 \u0022.\\RSSVWorkOrderEntry.cs: (107,23)-(107,24)\u0022",
                "PX1077: Event handlers should be protected virtual:
                 \u0022.\\RSSVWorkOrderEntry.cs: (123,23)-(123,24)\u0022"
              ]
            },
            {
              "groupTitle": "PX1094",
              "totalDiagnosticsCount": 2,
              "lines": 
              [
                "PX1094: A DAC must be decorated with the 
                 PXHidden or PXCacheName attribute:
                  \u0022.\\RSSVWorkOrderEntry.cs: (44,15)-(44,26)\u0022",
                "PX1094: A DAC must be decorated with the 
                 PXHidden or PXCacheName attribute: 
                  \u0022.\\RSSVWorkOrderEntry.cs: (50,15)-(50,27)\u0022"
              ]
            }
          ]
        }
      ]
    }
  }
 ]
}
```

Open Copilot Chat in Ask mode and use the reusable prompt file `review-acuminator-report.prompt.md` if it is available in Copilot Chat. If it isn’t available, open `Assets\CopilotPrompts\review-acuminator-report.prompt.md` and paste the prompt text into Copilot Chat.

If prompt files are not available, use the following prompt.

```
Review this Acuminator Console Runner report for the PhoneRepairShop customization project.

Do not modify files yet.

Please:
1. Group the diagnostics by severity and diagnostic ID.
2. Explain the Acumatica Framework rule behind each important diagnostic.
3. Identify the first file or method to inspect.
4. Classify each diagnostic as one of the following:
   - Fix now
   - Review with SME
   - Probably not relevant to this scenario
   - Suppression may be justified
5. If a fix is appropriate, suggest the smallest safe change.
6. Explain how to verify the fix after applying it.
7. Identify any diagnostics that may be unrelated to the current labor quantity scenario.

Use Acuminator diagnostic IDs when possible.
Do not suppress diagnostics unless there is a clear justification.
Do not rewrite unrelated code.

Report:
[Paste the report excerpt.]
```

## Step 5: Reviewing AI Output

In this step, you'll review Copilot’s explanation before deciding whether to change the code. To do this, use the following checklist.

|Review Item|Question|
|-----------|--------|
|Diagnostic ID|Did Copilot identify the correct Acuminator rule?|
|Rule explanation|Did Copilot explain Acumatica Framework's reason for the rule?|
|Scope|Is the suggested fix limited to the reported code?|
|Safety|Does the suggestion avoid broad rewrites?|
|Verification|Can the change be verified by building, running tests, and rerunning Acuminator?|
|Suppression|Did Copilot avoid suppressing the diagnostic without justification?|
|SME review|Should this diagnostic be reviewed by an SME before a fix is applied?|

Do not apply a code change just because Copilot suggests one. Treat the AI output as a diagnostic aid.

## Step 6: Validating the Applied Changes \(Optional\)

If you decide to apply a fix based on Copilot's suggestions in the preceding step, do the following:

1.  Apply the smallest safe code change.
2.  Build the `PhoneRepairShop_Code` project.
3.  Run the original unit test.
4.  Run the focused regression test.
5.  Rerun the Acuminator Console Runner.
6.  Confirm that the diagnostic is resolved, or record why it should remain for SME review.

In this activity, you have run an automated static validation check on the customization code and used Copilot to interpret the results. The unit tests confirm behavior, while the Acuminator static analysis helps confirm that the customization code follows Acumatica Framework rules and conventions.

**Parent topic:**[Using AI-Assisted Diagnostics and Testing with Automated Unit Tests](../DeveloperGuide/UnitTest_AIAssistedDiagnosticsAndTesting_Mapref.md)

