# AI-Assisted Diagnostics and Testing with Automated Unit Tests: General Information

While creating or modifying a customization project for Acumatica ERP, you need a reliable way to detect when changes break the existing business logic. Automated unit tests give you a repeatable way to reproduce defects, verify expected behavior, and confirm that fixes work. AI tools such as GitHub Copilot can then help you interpret failures, diagnose the likely causes, and draft possible fixes or regression tests.

**Throughout the process, you remain in control, reviewing and validating the suggestions before accepting them.**

## Learning Objectives

In this chapter, you will learn how to do the following:

-   Use automated unit tests to reproduce a customization defect
-   Interpret failing assertions, exception messages, and stack traces
-   Prompt an AI assistant to explain a failure and suggest likely root causes
-   Review AI-suggested fixes before applying them
-   Use the AI assistant to help generate focused regression tests
-   Validate fixes by running automated tests

## Applicable Scenarios

The following are some of the scenarios in which you can use an AI assistant to help with diagnostics, fixes, and testing:

-   You make a change that causes an existing unit test to fail.
-   You notice that a graph or graph extension behaves differently than expected after a code change.
-   You need to diagnose whether a failure is caused by implementation logic, test setup, missing dependencies, or test data.
-   You want to add regression coverage after fixing a defect.

## AI-Assisted Unit Test Diagnostics

Effective AI-assisted diagnosis starts with a reproducible failure. Instead of first inspecting all the related source code manually, you run the test and collect the most important evidence: the failed assertion, expected value, actual value, exception message, stack trace, and relevant source files.

**Tip:** In Visual Studio, you may be able to start this workflow directly from Test Explorer. For example, if a Copilot menu command is available for a failed test, you can use it to explain the failure or start a debugging conversation with Copilot with the relevant test context. If no such Copilot menu command is available, provide the failed assertion, stack trace, and relevant source files to Copilot manually.

After you collect the evidence, you can ask the AI assistant to classify the failure and explain where to inspect first. AI can often identify likely causes more quickly when it has enough context, such as the failing test method, related graph or graph extension, business rule, and failure output. You can then ask the AI assistant to suggest a fix.

However, you must review the AI assistant's output carefully. A suggested fix should be **small**, **targeted**,**consistent with the existing architecture**, and **verifiable through the use of automated tests**. You should reject suggestions that remove business validation, hard-code test-only values, rewrite unrelated code, or change the test expectation without justification.

After the fix is applied, you run the original test again. Then you can ask the AI assistant to help generate a focused regression test that directly protects the repaired behavior.

Automated tests validate behavior, but they are not the only automated validation tool available to you. Static analysis tools such as Acuminator can help you check customization code against Acumatica Framework rules and conventions. Acuminator diagnostics can also provide useful context for AI prompts because they identify framework-specific issues by diagnostic ID and rule description.

## Workflow of the Process

For AI-assisted diagnostics with automated unit tests and static validation, the typical process involves the following steps:

1.  Running the failing unit test
2.  Capturing the failure evidence
3.  Using a Test Explorer Copilot menu command or prompt AI to explain the likely cause and suggest a fix
4.  Reviewing the AI-suggested fix
5.  Applying a small, validated code change
6.  Rerunning the original test
7.  Using a reusable prompt file, inline chat, or chat prompt to draft a focused regression test
8.  Review and run the new test
9.  Run the Acuminator Console Runner on the customization code
10. Using AI to review and classify any Acuminator diagnostics
11. Building, testing, and rerunning static validation after any accepted change

**Parent topic:**[Using AI-Assisted Diagnostics and Testing with Automated Unit Tests](../DeveloperGuide/UnitTest_AIAssistedDiagnosticsAndTesting_Mapref.md)

