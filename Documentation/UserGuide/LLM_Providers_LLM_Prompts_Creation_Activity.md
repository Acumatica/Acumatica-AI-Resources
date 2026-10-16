# Integration with LLM Providers: To Create an Agent

This activity will walk you through the process of creating an agent.

## Story

**Attention:** This scenario and agent are for demonstration purposes only and may not apply to real-world business needs. The example shows how anomaly detection and AI Automation agents can work together in Acumatica ERP. After anomaly detection runs, its results are added to the generic inquiry form as columns that can be sent to the LLM.

Suppose that you've been tasked with configuring an AI Automation agent that reviews sales order pricing. Your company wants to catch cases where the unit price of an item in a sales order differs from its expected value.

To support this, you will use a generic inquiry that lists expected unit prices and anomaly data for sales order lines. You will run anomaly detection for this inquiry, and then create an agent that uses the *Generic Inquiry* tool to retrieve the expected prices. The agent will compare the actual unit price of each sales order line with the expected value and update the sales order description with a summary of the differences.

## Process Overview

By using the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, you will import the generic inquiry. By using the [Detect Anomalies in Generic Inquiries](ML_50_20_00.md) \(ML502000\) form, you will run anomaly calculation for this inquiry. By using the [Agents](ML_20_20_00.md) \(ML202000\) form, you will create an agent, add instructions to it, and test it.

## System Preparation

Before you begin creating the agent, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as security expert Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  Make sure that the *AI Automation* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
3.  Make sure you have performed the following prerequisite activities: [Integration with LLM Providers: To Create an Agent LLM Connection](LLM_Providers_LLM_Connection_Creation_Activity.md).
4.  Upload the [SO-Unit-Prices-Anomalies.xml](../Trainings/DesignAIAutomationSolutions/Files/SO-Unit-Prices-Anomalies.md) generic inquiry to the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.

## Step 1: Publishing the Generic Inquiry

To publish the uploaded generic inquiry, do the following on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form:

1.  On the form toolbar, click **Publish to the UI**.
2.  In the **Publish to the UI** dialog box, which opens, specify the following settings:
    -   **Site Map Title**: `SO-Unit-Prices-Anomalies`
    -   **Workspace**: Empty
    -   **Category**: Empty
    -   **Screen ID**: Automatically generated value
    -   **Access Rights**: *Set to Granted for All Roles*
3.  Click **Publish**.

## Step 2: Running Anomaly Detection

Run the anomaly detection for the generic inquiry as follows:

1.  On the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form with the *SO-Unit-Prices-Anomalies* generic inquiry selected, make sure that *On Demand* is selected in the **Update Frequency** box on the **Anomaly Detection** tab.
2.  Click **Detect Anomalies** on the form toolbar.
3.  On the [Detect Anomalies in Generic Inquiries](ML_50_20_00.md) \(ML502000\) form, which opens, select the check box in the *SO-Unit-Prices-Anomalies* row and click **Process**.
4.  Wait till the calculation process completes.
5.  On the [Generic Inquiry](SM_20_80_00.md) form, click **View Inquiry** on the form toolbar, and make sure that the **Anomaly Severity**, **Expected Value**, **Reviewed**, and **Comment** columns have appeared.

## Step 3: Specifying Basic Settings for an Agent

To create an agent, do the following on the [Agents](ML_20_20_00.md) \(ML202000\) form:

1.  Add a new record and specify the following settings in the **General Settings** section of the **Agent Definition** tab:
    -   **Agent ID**: `ANOMALIES_GI`
    -   **Agent Name**: `Anomalies in GI`
    -   **Agent LLM Connection**: *LLMConnection*

        This is the connection that you have created in [Integration with LLM Providers: To Create an Agent LLM Connection](LLM_Providers_LLM_Connection_Creation_Activity.md).

    -   **Target Form**: *SO301000*
    -   **Button Name**: `Anomalies in GI`
2.  On the form toolbar, click **Save**.

## Step 4: Adding the Tools

While you are still working on the [Agents](ML_20_20_00.md) \(ML202000\) form, do the following on the **Tools** tab:

1.  Make sure that the table contains the rows for the `get_current` and `patch_current` tools.
2.  Add a new row and specify the following settings for it:
    -   **Tool Type**: *Generic Inquiry*
    -   **Tool Name**: `gi_sales`
    -   **Tool Description** \(in the **Tool Definition** section\): `Retrieves data from a generic inquiry`
    -   **Generic Inquiry** \(in the **Generic Inquiry Tool Settings**\): *SO-Unit-Prices-Anomalies*

        Notice that the system fills in the **Tool Name** box in the **Tool Definition** section.


## Step 5: Adding Instructions

To add instructions to the agent, do the following on the **Instructions** tab:

1.  Add the following instructions before the **Rules and Constraints** section:

    ```
    ##Context Instructions
    You are an AI assistant working with Acumatica ERP data.
    
    ##Goal
    Generate a description for a sales order that clearly documents how the Unit Price 
    of each item (detail line) differs from its expected value.
    
    ##Execution Steps
    1. Retrieve Current Sales Order Data
    Call get_current tool to get information about the current SalesOrder record. 
    Use parameter $expand with "Details" value to get all detail lines. These lines describe items.
    
    From the response, extract values: OrderNbr from the sales order header
    For each detail line: InventoryID, UnitPrice (if available)
    
    2. Retrieve Expected Unit Price Values
    Call gi_sales tool to get information about expected values for UnitPrice of each item.
    You need only those records where the column named OrderNbr equals the OrderNbr from 
    the SalesOrder header obtained from the get_current tool response.
    
    3. Compare Actual vs Expected Values
    Compare values for each detail line of SalesOrder with values from the gi_sales response:
    
    3.1 Match lines that have equal values in column "Inventory ID" (from gi_sales) and 
    in the sales order detail line column "InventoryID" (from get_current).
    If there is no match, note it but continue processing.
    3.2 For these corresponding records, compare "UnitPrice" from the detail lines (get_current) 
    with "ExpectedValueUnitPrice" from gi_sales.
    4. Generate Conclusion & Update
    Generate a conclusion about the difference between these values as text (e.g., 
    "Item A: Unit Price $10 vs Expected $12"). Call patch_current to update the "Description" field 
    on the SalesOrder with the generated conclusion.
    If no matches or differences are found, set Description = "Unit Prices are okay".
    ```

    These instructions explain what the LLM should do and how it extracts and updates data.

    **Tip:** You can click **Insert Data Field** &gt; **Field** and **Insert Data Field** &gt; **Tool** to add fields and tools to the business instructions.

2.  On the form toolbar, click **Save**.

## Step 6: Testing and Activating the Agent

To test the created agent, do the following in the **Agent Testing** section:

1.  In the **Example Record** box, select the sales order with the *000029*.

    The status of this sales order is *Open*, so the LLM can update it. Also, the sales order has two stock items added to the **Details** tab, *APJAM08* and *Oranges*.

2.  Click **Test Agent**.
3.  On the **Result** tab, make sure that sales order has the *Modified* label, and that the description is shown as updated with information on actual and expected prices \(see below\).


4.  In the **General Settings** section, select the **Active** check box to add the agent command to the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
5.  On the form toolbar, click **Save**.

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

