# AI-Assisted Testing and Diagnostics with Test SDK: General Information

Unit tests are useful for validating business logic, but they don't prove that a user can complete a workflow in the browser. Test SDK helps automate UI-level testing by interacting with Acumatica ERP forms through generated wrappers. You can use these tests to verify that users can successfully complete the workflow and that the UI responds as expected.

You can use AI to help inspect generated wrappers, draft test code, analyze and classify failing test results, and identify the next diagnostic steps. AI can be useful for generating a first draft of UI automation code, which is often repetitive. You must still verify that the generated test uses real wrapper members, stable test data, and reliable assertions.

## Learning Objectives

In this chapter, you will learn how to do the following:

-   Inspect generated wrappers for a Modern UI form
-   Use AI to draft wrapper-based UI test code
-   Review AI-generated Test SDK code for correctness and stability
-   Run or review automated UI test results
-   Use AI to classify UI test failures and suggest next diagnostic steps

## Applicable Scenarios

You can use an AI assistant while you're working with the Test SDK in the following scenarios:

-   You need to verify that a customization works through the Modern UI of a form.
-   You want automated test coverage for a browser-level workflow.
-   You need to generate repetitive test code based on existing wrappers.
-   A UI test fails, and you need to determine the root cause of the failure.

## AI-Assisted Testing with the Test SDK

A Test SDK workflow begins with a prepared test project and generated wrappers. The wrappers expose form elements, actions, grids, and fields that test code can use instead of direct browser selectors. Before writing a test, you inspect the wrapper to identify the real member names available for the form.

**AI can help summarize the wrapper, identify useful members, and draft a test that opens a screen, locates a record, enters data, triggers an action, and verifies the result.**This is especially useful because tests written by using Test SDK often follow repeatable patterns. For repeated test generation, the project can include reusable Copilot prompt files and repository instructions so that you don't need to write long prompts each time.

**You must still review the generated test**. You should confirm that it uses actual wrapper members, avoids hard-coded credentials or local paths, uses deterministic test data, and asserts a meaningful UI outcome. If the test fails, AI can help classify the failure by reviewing a sanitized log or failure message. Common causes include wrapper-member mismatch, missing test data, timing or wait issues, validation not being triggered, environment configuration, or a true application defect.

## Workflow of the Process

For AI-assisted testing with Test SDK, the typical process involves the following steps:

1.  Inspect generated screen wrappers within a Test SDK project
2.  Identify fields, tables \(grids\), actions, and helper methods
3.  Use a reusable prompt file, Copilot Chat, or inline chat to draft a wrapper-based UI test
4.  Review the generated code against actual wrappers
5.  Build and run the test, or review prepared output
6.  Analyze logs or failure artifacts
7.  Prompt AI to classify the likely failure cause
8.  Record the next diagnostic step

**Parent topic:**[AI-Assisted Testing and Diagnostics with Test SDK for the Modern UI](../DeveloperGuide/UIDev_AIAssistedTestingAndDiagnostics_Mapref.md)

