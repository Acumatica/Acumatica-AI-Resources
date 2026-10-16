# Opportunity Management: AI Response Priorities and AI Summaries

When you manage many opportunities, a new customer activity can change which opportunity needs your attention first. Acumatica ERP generates an AI response priority to help you identify opportunities with incoming activities that should be addressed quickly. It can also generate an AI summary to give you a concise view of recent communication and customer sentiment—so you’re prepared for the next customer interaction without reviewing every activity first.

You can use these AI capabilities only if the *AI Studio* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Prerequisites

Before you can use the functionality, you must activate the following predefined agents on the [Agents](ML_20_20_00.md) \(ML202000\) form:

-   *OPPO-SUMMARY*: Generates AI summaries for opportunities
-   *ACT-PRIORITY*: Generates AI priorities for activities
-   *EMAIL-PRIORITY*: Generates AI priorities for email activities

You must select an agent LLM connection before you can activate an agent.

After you activate the required agents, you can generate AI response priorities and AI summaries manually. To generate them automatically when an incoming activity is added to an opportunity, you must also activate the predefined business events described in the *Generating AI Response Priorities and AI Summaries* section.

## Choosing Opportunities to Review

In the *Opportunities* \(CR3040PL\) list of records, the **AI Response Priority** column shows the priority of each opportunity’s latest incoming activity. You can use this priority to narrow your focus before opening individual opportunities.

The AI response priority can be one of the following:

-   *Immediate*: The latest incoming activity needs your immediate attention.
-   *Soon*: The latest incoming activity should be addressed soon.
-   *Routine*: The latest incoming activity can be handled when it fits your regular procedures.


Because the priority describes the latest incoming activity, consider it along with other information about each opportunity when you decide what to work on next.

## Viewing the AI Summary of Recent Communication

When you select an opportunity in the *Opportunities* \(CR3040PL\) list of records, you can review its AI summary on the **Activity Stream** side panel tab. The summary is based on the related activities from the past 30 days and includes the following information:

-   The customer sentiment
-   A summary of the communication
-   The suggested next steps
-   A suggested reply


Each time the AI summary is generated, the option in the **AI Sentiment** column of the *Opportunities* \(CR3040PL\) list of records is also updated. The sentiment can be one of the following:


The AI sentiment helps you quickly gauge how the customer is feeling and prepare for the next conversation with them.

The date and time next to the Refresh button show when the AI summary was last updated. If new activities have been added since that time, you can refresh the summary before continuing your work. When you need more context, you can review the individual activities in the Activity Stream.

## Generating AI Response Priorities and AI Summaries

To turn on the automatic generation of AI response priorities and AI summaries when an incoming activity is added to an opportunity, activate the following predefined business events on the [Business Events](SM_30_20_50.md) \(SM302050\) form:

-   *CRActivityAIResponsePriority*: Generates AI response priorities for activities
-   *CREmailAIResponsePriority*: Generates AI response priorities for email activities
-   *CROpportunityAISummary*: Generates AI summaries for opportunities

These business events are inactive by default.

You can also generate the AI response priority and AI summary manually as follows:

-   AI response priority: On the [Activity](CR_30_60_10.md) \(CR306010\) or [Email Activity](CR_30_60_15.md) \(CR306015\) form, click **Generate AI Response Priority** on the More menu.
-   AI summary: On the **Activity Stream** side panel tab, click **Generate Summary** if no summary exists or click Refresh to update an existing summary.

**Parent topic:**[Managing Opportunities](../UserGuide/CRM_Sales_Managing_Opportunities_Mapref.md)

