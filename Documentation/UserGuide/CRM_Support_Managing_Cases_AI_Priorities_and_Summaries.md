# Case Management: AI Response Priorities and AI Summaries

When you work with many cases, a new customer activity can change which case needs a response first. Acumatica ERP generates an AI response priority to help you identify cases with incoming activities that require attention. It can also generate an AI summary to give you a quick view of the recent communication and customer sentiment so that you can understand the current context before responding.

You can use these AI capabilities only if the *AI Studio* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Prerequisites

Before you can use the functionality, you must activate the following predefined agents on the [Agents](ML_20_20_00.md) \(ML202000\) form:

-   *CASE-SUMMARY*: Generates AI summaries for cases
-   *ACT-PRIORITY*: Generates AI priorities for activities
-   *EMAIL-PRIORITY*: Generates AI priorities for email activities

You must select an agent LLM connection before you can activate an agent.

After you activate the required agents, you can generate AI response priorities and AI summaries manually. To generate them automatically when an incoming activity is added to a case, you must also activate the predefined business events described in the *Generating AI Response Priorities and AI Summaries* section.

## Choosing Cases to Address

In the *Cases* \(CR3060PL\) list of records, the **AI Response Priority** column shows the priority of each case’s latest incoming activity. You can use this priority to identify the cases that may need to be addressed first without opening every case.

The AI response priority can be one of the following:

-   *Immediate*: The latest incoming activity needs your immediate attention.
-   *Soon*: The latest incoming activity should be addressed soon.
-   *Routine*: The latest incoming activity can be handled when it fits your regular procedures.

The priority reflects the urgency of the latest incoming activity. Use it along with other information about each case when you plan your work.

## Viewing the AI Summary of Recent Communication

When you select a case in the *Cases* \(CR3060PL\) list of records, you can review its AI summary on the **Activity Stream** side panel tab. The AI summary—based on the related activities from the past 30 days—includes the following information:

-   The customer sentiment
-   A summary of the communication
-   The suggested next steps
-   A suggested reply

The summary can help you quickly catch up on the recent exchange and prepare your response to the most recent incoming case activity. When you need to confirm a detail, you can review the individual activities in the Activity Stream.

Each time the AI summary is generated, the option in the **AI Sentiment** column of the *Cases* \(CR3060PL\) list of records is also updated. The sentiment can be one of the following:


The AI sentiment helps you quickly gauge how the customer is feeling and prepare to respond to them.

The date and time next to the Refresh button show when the AI summary was last updated. If new activities have been added since that time, you can refresh the summary.

## Generating AI Response Priorities and AI Summaries

To turn on the automatic generation of AI response priorities and AI summaries when an incoming activity is added to a case, activate the following predefined business events on the [Business Events](SM_30_20_50.md) \(SM302050\) form:

-   *CRActivityAIResponsePriority*: Generates AI response priorities for activities
-   *CREmailAIResponsePriority*: Generates AI response priorities for email activities
-   *CRCaseAISummary*: Generates AI summaries for cases

These business events are inactive by default.

You can also generate the AI response priority and AI summary manually as follows:

-   AI response priority: On the [Activity](CR_30_60_10.md) \(CR306010\) or [Email Activity](CR_30_60_15.md) \(CR306015\) form, click **Generate AI Response Priority** on the More menu.
-   AI summary: On the **Activity Stream** side panel tab, click **Generate Summary** if no summary exists or click Refresh to update an existing summary.

**Parent topic:**[Managing Cases](../UserGuide/CRM_Support_Managing_Cases_Mapref.md)

