# Configuring MCP Servers: To Connect Claude to an MCP Server

This activity will walk you through the process of connecting Claude to an MCP server.

## Story

Suppose that you have configured an MCP server and added a *Generic Inquiry* tool to it. You now need to register Claude as a connected application and use the generated credentials to connect Claude to the MCP server.

## Process Overview

By using the [Connected Applications](SM_30_30_10.md) \(SM303010\) form, you will create a connected application for Claude. You will then copy the client ID, client secret, and MCP server URL and specify them in Claude.

## System Preparation

Before you begin connecting Claude to the MCP server, make sure that the following is true:

-   The *MCP Server* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   The MCP server you want to connect to is active on the [MCP Servers](SM_30_21_00.md) \(SM302100\) form.
-   The MCP server includes at least one active *Generic Inquiry* tool.
-   The user who will connect through Claude has access to the generic inquiries used by the tools.

## Step 1: Creating a Connected Application

To create a connected application for Claude, do the following on the [Connected Applications](SM_30_30_10.md) \(SM303010\) form:

1.  Add a new record.
2.  In the **Client Name** box, type the name of the application.
3.  Make sure that the **Active** check box is selected.
4.  In the **Flow** box, select *Authorization Code*.
5.  On the **Redirect URIs** tab, add the following redirect URIs:
    -   `https://claude.ai/api/mcp/auth_callback`
    -   `https://claude.ai/mcp/callback`
6.  On the **Secrets** tab, click **Add Shared Secret** on the table toolbar.
7.  In the **Add Shared Secret** dialog box, copy the generated value of the secret and click **OK**.
8.  On the form toolbar, click **Save**.
9.  Copy the value from the **Client ID** box.

## Step 2: Copying the MCP Server URL

On the [MCP Servers](SM_30_21_00.md) \(SM302100\) form, open the MCP server that you want to connect to and copy the generated URL.

## Step 3: Connecting Claude to the MCP Server

To connect Claude to the MCP server, do the following in Claude:

1.  Open **Customize** &gt; **Connectors** and add a custom connector.
2.  Enter a connector name. You may use the MCP server's title to easily identify it in the future.
3.  Paste the MCP server URL, client ID, and secret that you copied.
4.  Select the added connector and click **Connect**.
5.  When Claude redirects you to Acumatica ERP, sign in and approve access to the MCP server.

**Attention:** After the connection is established, the tools and data available to Claude depend on the signed-in user's Acumatica ERP access rights.

## Step 4: Verifying the Connection

To verify the connection, start a new chat in Claude and ask a question that matches one of the *Generic Inquiry* tools. Claude calls the corresponding tool, retrieves data from Acumatica ERP, and includes the results in its response.

**Parent topic:**[Configuring MCP Servers](../UserGuide/MCP_Servers_Mapref.md)

