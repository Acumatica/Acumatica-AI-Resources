# Integration with LLM Providers: To Adjust an Agent

This activity will walk you through the process of adjusting a built-in agent according to your business needs.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story

Suppose that you are a prompt engineer, and you want to modify the predefined agent that generates closure notes for cases. You need to make the notes concise and audit-ready, present them in a structured table, and include case resolution time. You also want to protect sensitive case data. You will create a copy of the existing agent and then modify this copy.

## Process Overview

By using the [Agents](ML_20_20_00.md) \(ML202000\) form, you will create a copy of the predefined *CLOSURE-NOTES* agent. You will adjust its instructions, add a *Generic Inquiry* tool, configure data masking, and test the agent after each change.

## System Preparation

Before you begin adjusting the agent, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as security expert Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  Make sure that the *AI Automation* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
3.  Make sure you have performed the following prerequisite activity: [Integration with LLM Providers: To Create an Agent LLM Connection](LLM_Providers_LLM_Connection_Creation_Activity.md).

## Step 1: Creating a Copy of the Predefined Agent

To create a copy of the agent, do the following on the [Agents](ML_20_20_00.md) \(ML202000\) form:

1.  Open the *CLOSURE-NOTES* agent.
2.  On the form toolbar, click **Clipboard** &gt; **Copy**.
3.  Add a new record and specify `CASENOTES` as the **Agent ID**.
4.  Click any other element on the form.
5.  On the form toolbar, click **Clipboard** &gt; **Paste**.
6.  On the form toolbar, click **Save**.
7.  In the **Agent Testing** section, select *000003* as an example record, and click **Test Agent**.
8.  Review the generated text on the **Result** tab.

## Step 2: Adjusting the Language and Tone of the Output

To change the voice and tone of the output from generic professional, clear language to a tone suited to internal knowledge-management and audit review, do the following on the [Agents](ML_20_20_00.md) \(ML202000\) form:

1.  While you are still working with the *CASENOTES* agent, add the following paragraph to the **Context Instructions** section:

    ```
    Write in a terse, audit-ready register: short declarative sentences, no hedging, 
    no filler phrases such as "it appears that" or "it seems." 
    Avoid empathetic or customer-facing language—these notes are for internal 
    knowledge-management and audit review, not for the customer.
    ```

2.  On the form toolbar, click **Save**.
3.  In the **Agent Testing** section, select *000003* as an example record, and click **Test Agent**.
4.  Review **Result** and compare it with the original output.

## Step 3: Adjusting the Output Format

To replace the current single ordered list with a `<table>` format \(that is, with the `Field/Value` rows instead of inline bold-label list items\), do the following on the [Agents](ML_20_20_00.md) \(ML202000\) form:

1.  While you are still working with the *CASENOTES* agent, replace the paragraph with HTML structure in the **Execution Steps** section with the following:

    ```
    HTML structure hard limit: a single <table> with exactly 2 columns and 
    exactly 6 data rows, one per field, in this exact order: Business Account, Owner, Problem Type, 
    Problem Description, Problem Symptoms, Resolution Status, Resolution Details, 
    Customer Satisfaction.
    - Include a <thead> with one <tr> containing two <th> cells: "Field" and "Value".
    - Each field name goes in the first <td> of its row; its value goes in the second <td>.
    - No nested tables, merged cells, or HTML elements other than <table>, <thead>, <tbody>, 
    <tr>, <th>, and <td>.
    - No additional nesting, sections, or elements are permitted outside the <table>.
    ```

2.  Replace the list in the **Quality Standards** subsection as follows:

    ```
    No inline CSS.
    No unsupported claims.
    No empty cells. If a field has no value, use "Not documented" rather than leaving a <td> blank.
    Keep the HTML compact, valid, and easy to review.
    ```

3.  Add the following instructions to the **Rules and Constraints** section:

    ```
    The output table must always have exactly 6 data rows plus the header row—
    never fewer, never more, regardless of how much or how little case data was retrieved.
    ```

4.  On the form toolbar, click **Save**.
5.  In Summary area, select *000003* as an example record, and click **Test Agent**.
6.  Review the **Result** tab and make sure that the result is displayed as a compact table instead of a bulleted list.

## Step 4: Changing the Input Data

To add another data source to include case resolution time in the generated notes, do the following on the [Agents](ML_20_20_00.md) \(ML202000\) form:

1.  While you are still working with the *CASENOTES* agent, add a row on the **Tools** tab and specify the following settings for it:
    -   **Tool Type**: *Generic Inquiry*
    -   **Tool Name**: `gi_resolution_times`
2.  In the **Generic Inquiry Tool Settings** section, select the *Case Resolution Times \(CR3067BI\)* generic inquiry.

    Notice that the system adds the following text in the **Tool Description** box:

    ```
    Retrieves current records from Acumatica ERP by running the generic inquiry 
    with optional filter parameters. Call this tool when you want to analyze 
    those records or use them to answer users' questions.
    ```

3.  Add the following instructions to Step 1 and Step 2 of the **Execution Steps** section:
    -   After Step 1:

        ```
        1a. Call the gi_resolution_times tool to retrieve the resolution-time metrics 
        for this case (for example: actual resolution duration and, if available, 
        the target/SLA duration).
        ```

    -   After Step 2

        ```
        If gi_resolution_times returns a target or SLA duration and the actual resolution 
        duration exceeds it, note this in Resolution Details (for example: "Resolved in 4 days; 
        exceeds 2-day target"). Do not state or imply an SLA breach if no target value was returned—
        omit the comparison in that case rather than assuming a threshold.
        ```

4.  Add the following step after the last step of the **Execution Steps** section:

    ```
    The gi_resolution_times tool is read-only supporting data. 
    Never attempt to update (or treat as updatable) any record it returns.
    ```

5.  On the form toolbar, click **Save**.
6.  In the **Agent Testing** section, select *000003* as an example record, and click **Test Agent**.
7.  Review the **Result** tab and the **Processing Log** tab.

## Step 5: Hiding Sensitive Data

To configure data masking and verify that sensitive values are protected during agent processing. do the following on the [Agents](ML_20_20_00.md) \(ML202000\) form:

1.  While you are still working with the *CASENOTES* agent, click the `get_current` row on the **Tools** tab.
2.  In the **Masked Fields** box, click the magnifier icon and select the *Case.BusinessAccountName* and *Case.Owner* fields.
3.  On the form toolbar, click **Save**.
4.  In the **Agent Testing** section, select *000011* as an example record, and click **Test Agent**.
5.  Review the log on the **Processing Log** tab. Make sure that in the **Sent to LLM** and **Agent Processing Completed** sections, the `${field_name}` placeholders are used for the selected fields.
6.  Review the **Result** tab and make sure that it displays unmasked data.

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

