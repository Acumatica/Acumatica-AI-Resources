# Configuring MCP Servers: To Create an MCP Server

This activity will walk you through the process of creating an MCP server and adding a *Generic Inquiry* tool to it.

## Story

Suppose that you are a system administrator, and your organization wants to make selected sales order data available to an MCP-compatible AI client. You need to create an MCP server, add a tool based on a published generic inquiry, and copy the server URL for use by the AI client.

## Process Overview

By using the [MCP Servers](SM_30_21_00.md) \(SM302100\) form, you will create an MCP server and add a *Generic Inquiry* tool to it.

## System Preparation

Before you begin creating the MCP server, make sure that the following is true:

-   The *MCP Server* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   The generic inquiry that you want to expose as a tool is published to the UI.
-   The users who will connect through an MCP client have access to the generic inquiry.

## Step 1: Creating an MCP Server

To create an MCP server, do the following on the [MCP Servers](SM_30_21_00.md) \(SM302100\) form:

1.  Add a new record.
2.  In the **Server Name** box, type the server name.

    The server name can contain uppercase and lowercase letters, digits, hyphens, underscores, periods, and tildes. It cannot contain spaces, commas, or other special characters.

3.  Make sure the **Active** check box is selected.
4.  In the **Server Title** box, type the server title.
5.  Optional: In the **Instructions** box, type instructions that describe the purpose of the server and the intended use of its tools.
6.  On the form toolbar, click **Save**.

The system generates the URL of the MCP server.

## Step 2: Adding a Generic Inquiry Tool

While you are still working on the [MCP Servers](SM_30_21_00.md) \(SM302100\) form, do the following:

1.  In the **Tools** table, add a new row.
2.  Make sure that the **Active** check box is selected for the row.
3.  In the **Tool Type** column, select *Generic Inquiry* \(Item 1 below\).
4.  In the **Tool Settings for Generic Inquiry** pane, specify the following settings:
    -   **Generic Inquiry** \(Item 2\): The published generic inquiry that the tool should use
    -   **Tool Name** \(Item 3\): The name that the MCP client will use to call the tool
    -   **Tool Title** \(Item 4\): The human-readable title of the tool
    -   **Shared Filter to Apply** \(Item 5\): The shared filter that should be applied when the tool is called, if needed
5.  On the form toolbar, click **Save**.


The MCP server can now expose the selected generic inquiry as a callable tool.

## Step 3: Copying the Server URL

To copy the URL that an MCP client will use to connect to the server, do the following:

1.  In the Summary area of the [MCP Servers](SM_30_21_00.md) \(SM302100\) form, click the **Copy** button next to the **URL** box.
2.  Save the URL so that you can use it when you configure the MCP client.

**Parent topic:**[Configuring MCP Servers](../UserGuide/MCP_Servers_Mapref.md)

