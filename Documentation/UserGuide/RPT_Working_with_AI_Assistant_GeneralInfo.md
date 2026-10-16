# Working with AI Assistant: General Information

In the following sections, you’ll learn how to solve various tasks with the help of AI Assistant. These tasks include starting a conversation, asking questions, getting product Help, and reviewing results. They also include drilling down into records, working with widgets, adding widgets to dashboards, and organizing work with chats.

**Attention:** These capabilities are available only if the *AI Assistant* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. Also, you need to have one of the following roles to be able to use AI Assistant:

-   *AI Assistant User*
-   *Administrator*
-   *Acumatica Support*

## Applicable Scenarios

You use AI Assistant in the following cases:

-   You need a fast answer to an operational question \(for example, find what the totals are, review recent activity, or list open invoices\).
-   You want to move from a summarized answer to the underlying records without manually searching.
-   You want to visualize results and turn them into dashboards, widgets, or pivot-style analytics for further review.
-   You’re doing multistep investigation and want to keep questions and follow-ups organized in separate chats.

## AI Assistant Capabilities

With AI Assistant, you can do the following:

-   **Ask questions in everyday language**: You can type a question using language you’d use with colleagues, such as *What is this month's total income?* or *List 10 open invoices that were modified most recently*.
-   **Drill down into records with just a click**: If an answer includes the record ID or name, this ID or name is displayed as a link. Clicking the link opens the record in the main working area of the form—not in the chat window.
-   **Get product Help**: You can ask how to complete a task, where to find functionality, what a system element means, or why a process isn't working as expected. AI Assistant can use the currently open form or record as context.
-   **Turn insights into widgets, dashboards, and pivots**: You can ask AI Assistant to generate widgets and review the source data. You can also refine widgets and add them to existing dashboards. These actions occur in the working area, so you can build tools for further analytics straight from your conversation.
-   **Keep related questions together**: Conversations are grouped into chats. Each chat stores your previous questions and answers—so you can return to your research later or build on it.

## Asking Your Questions

For questions about business data, AI Assistant relies on a defined set of generic inquiries and their descriptions. Your system administrator can add generic inquiries to this set or remove them from it. They can also add descriptions—using business language that’s familiar to your users. By helping AI Assistant associate users' language with specific generic inquiries, fields, and parameters, administrators can increase the likelihood of users getting high-quality answers. For details, see [Exposing Generic Inquiries to AI Assistant: General Information](GI_Exposing_Inquiry_to_AI_Assistant_GeneralInfo.md).



Suppose that you want to see the most recent open invoices. AI Assistant’s results are listed in a table \(shown below\). You can click *Customer Details* \(Item 1 below\) to open the Customer Details \(AR0010DB\) list of records, which lists all customers documents; you can also select a customer to view only their documents. Alternatively, you can click another follow-up prompt \(Item 2\).


**Tip:** You can view different forms and records in the main working area while continuing your conversation with AI Assistant. AI Assistant doesn’t switch between chats when you do this.

For the first follow-up prompt, notice in the next two screenshots that AI Assistant displays the results as text \(Item 1\), and a table \(Item 2\). The columns in the chart are also links to the corresponding records.


## Getting Product Help

In an existing or new AI Assistant chat, you can ask how to complete a task, where to find functionality, what something in the system means, or why a process isn't working as expected. AI Assistant uses information from Beacon, the Acumatica documentation portal, to prepare its answer.


If a form or record is open, AI Assistant can use it as context for a Help-related question. For example, when you ask why an invoice can't be released, the answer can explain the release conditions that apply to the current record.


For example, you can ask about open invoices and the release process \(Item 1 below\). The response includes the requested invoice data \(Item 2\) and product guidance for releasing the invoices \(Item 3\). AI Assistant uses exposed generic inquiries for the business data and Help topics for the product guidance.


Answers to Help-related questions can include links to forms \(Item 1 below\) and links to Help topics and knowledge base articles \(Item 2\). Click a form link to open the form in the system. Click a Help or knowledge base link to review the supporting information.

**Tip:** Help-related questions do not consume AI units.


If Help topics do not cover the Acumatica ERP version you are using, AI Assistant uses the most recent available documentation version. In its first answer in the chat, AI Assistant identifies the documentation version it used and indicates that steps or forms may differ from the installed version.

**Important:** AI Assistant does not use customization projects published in your instance or custom wiki articles when answering Help-related questions.


## Choosing When to See Widgets

Use the *Show Widgets* mode to ask AI Assistant to include widgets in the next response. To enable this mode, click the **Show Widgets** button in the AI Assistant input area. When the mode is enabled, the button is highlighted in blue \(shown below\). If the response can be visualized, AI Assistant adds one or more widgets.


If the widget mode was enabled during your request, an icon appears below your messages, as shown below.


You do not have to click **Show Widgets** every time you need a visualization. If the mode is disabled \(Item 1 below\) but you explicitly ask for a widget \(Item 2\), AI Assistant generates widgets.

**Tip:** AI Assistant can also organize data into a pivot table \(Item 3\). You can click the links in the table to open the corresponding records.


## Generating Widgets

AI Assistant can return multiple widgets in a single response when the request asks about more than one metric or data category. By default, the first three widgets are displayed. If more widgets are generated, click **Show All N Widgets** to expand the full list \(see below\). \(*N* is the total number of generated widgets.\) Click **Show Less** to collapse it again.


AI Assistant can generate widgets as part of the initial response or in a follow-up request. For example, after receiving a text-only answer, you can ask AI Assistant to generate widgets for that answer. AI Assistant analyzes the previous response and the original request, and then returns a new response with widgets \(shown below\).


AI Assistant supports the full set of widget types, which are the following:

-   Doughnut
-   Line
-   Column
-   Bar
-   Funnel
-   Data Table
-   Meter
-   Score Card
-   Trend Card
-   Pivot Table

AI Assistant determines the appropriate widget type automatically, based on your request and the data available for visualization. If you want to use a particular widget type, add this information to your request.

## Reviewing the Source of a Widget

For each generated widget, you can review the source information that was used to create the visualization. The link with the widget name \(Item 1 below\) opens the generic inquiry form with the source information \(Item 2\). Hovering over the link or clicking the arrow shows the widget source details, including the generic inquiry name and the screen ID \(Item 3\).

The source details can also include the filters and query details used to generate the widget—such as date ranges, sorting rules, and aggregation settings.


## Refining Widgets

You can refine widgets without starting over. Select one or more generated widgets for editing \(Item 1 below\), and describe the needed change in a follow-up request. The selected widgets are highlighted in the response \(Item 2\) and are also shown as tags in the AI Assistant input area \(Item 3\). Each tag shows the widget title; you can click the Close icon in the tag to remove the widget from the editing context.


You can also edit widgets conversationally by referring to them in the request \(see below\). For example, ask AI Assistant to change the visualization or adjust the data. AI Assistant returns an updated response with the edited widgets.


**Tip:** Hidden widgets can be selected for editing after you click **Show All N Widgets**.

## Adding Widgets to Dashboards

You can turn an AI-generated insight into a dashboard element by dragging widgets from the AI Assistant response to an existing dashboard. The dashboard must be open in the working area—drag the widget by the dots that appear in its upper left corner \(shown below\). If another form is open instead, the dots are not displayed and dragging is not possible.

If the dashboard is not open, open it manually or ask AI Assistant to find it by name. AI Assistant responds with a link; click it to open the dashboard in the working area, and then drag the widget onto it.


You can also ask AI Assistant to add a widget to a specific dashboard. AI Assistant searches for dashboards by name and gives you the link to it. You then open the dashboard in the working area and drag the generated widget from the AI Assistant response onto it.

When you ask AI Assistant to find a dashboard, the response depends on the search results and your access rights:

-   If one editable dashboard is found, AI Assistant displays a link to and tells you to open it before dragging widgets to it.
-   If multiple editable dashboards are found, AI Assistant lists them and tells you to open the needed dashboard before dragging widgets to it.
-   If dashboards are found but you do not have rights to edit them, AI Assistant lists the dashboards and informs you that access rights are missing.
-   If no dashboards are found, AI Assistant tells you about it and asks you to clarify the dashboard name.

**Important:** Requests for widget generation are available to all AI Assistant users without additional restrictions; however, the visualization depends on the user’s access rights. Adding widgets to dashboards is available only to users who have the dashboard owner role.

## Managing Your Chats

Each time you click a predefined prompt or type a new question, AI Assistant creates a chat. You can continue asking questions in this chat or go back to the list of chats, switch to another chat, or start a new one.

To get back to the list of chats, click the *Chats* link in the upper left corner of the window \(Item 1 below\). From this list, you can click another chat to switch to it. To start a new chat, click **Create Chat** \(Item 2\).


If you no longer need a chat, you can delete it \(Item 1 below\). Notice that the system has assigned a name to each chat based on your request \(Item 2\). Click the *Back* link to return to the previous chat \(Item 3\).


**Tip:** You can resize the chat window by dragging its borders and move it as needed.

## Monitoring AI Unit Usage

AI Assistant shows a warning when AI unit consumption exceeds a site threshold specified in your license. The warning appears in the AI Assistant window and is not part of your conversation \(shown below\). By default, the threshold is 90 percent.


The warning is displayed once per user, when they open the AI Assistant window and AI Assistant connects to the cloud service. If a chat is already open at that point, the warning appears under the last AI Assistant answer.

**Parent topic:**[Working with AI Assistant](../UserGuide/RPT_Working_with_AI_Assistant_Mapref.md)

