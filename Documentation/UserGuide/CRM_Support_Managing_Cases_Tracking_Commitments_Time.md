# Case Management: Tracking of Case Commitment Times {#_305e22a0-27d8-4709-9469-e243d34f9f9e .concept}

In Acumatica ERP, an administrative user can activate the tracking of the company's case commitments for a particular case class on the **Commitments** tab of the [Case Classes](CR_20_60_00.md) \(CR206000\) form. The following commitment times can be tracked: the initial time to respond to the customer request, the overall response time to any customer request about the case, and the time to resolve the case. For details, see [Case Classes: Case Commitments](CRM_Case_Classes_Case_Severity_Response_Times.md).

## Time Tracking for Case Commitments { .section}

If all case commitments have been activated on the [Case Classes](CR_20_60_00.md) form, time tracking proceeds as follows for a case of the class:

-   When you create the case, the system starts counting the time to track the fulfillment of the activated commitments.
-   The system tracks the time of the first response for both of the following commitments: the initial response time and the response time.
-   When you send the initial response to the customer, the system stops tracking the initial response time and response time; it continues tracking only the resolution time.
-   If the customer sends an additional request or provides the requested information, the system starts tracking the response time again until you respond to this inquiry.
-   The tracking of time for the resolution time commitment stops when a solution for the case is provided or the case is closed, depending on the option selected in the **Stop Counting Time** box on the [Case Classes](CR_20_60_00.md) form.

The process of time tracking during the case workflow is shown in the following diagram.

![](Images/diag_CRM_Case_Commitments_Workflow_Overview_of_Case_Commitments.png)

## Elements Showing the Commitments of a Case { .section}

To monitor the fulfillment of the case commitments, you can use the following boxes in the Summary area and on the **CRM Info** tab of the [Cases](CR_30_60_00.md) \(CR306000\) form:

-   **Initial Response Due**
-   **Response Due**
-   **Resolution Due**

If the case has no outgoing activity \(that is, if the **First Outgoing Activity** box on the **CRM Info** tab is empty\), the **Initial Response Due** box is shown. The system calculates and recalculates its date and time as follows:

-   Initially, the system calculates the initial response due time by doing one of the following, depending on whether an initial activity exists for the case:
    -   If an initial activity exists for the case, the system adds the target initial response time to the date and time of the initial activity's creation, which is in the **Started On** box of the [Activity](CR_30_60_10.md) \(CR306010\) form.
    -   If no initial activity exists for the case \(for example, it has been deleted\), the system adds the target initial response time to the date and time of the case's creation, which is in the **Reported On** box of the [Cases](CR_30_60_00.md) form.
-   At the moment when the extension for the initial response time becomes applicable, the system recalculates the initial response due time by adding the initial response extension to the current time.

The system calculates the date and time in the **Response Due** box as follows:

-   If the date and time in the **Last Incoming Activity** box is later than the date and time in the **Last Outgoing Activity** box \(both boxes are on the **CRM Info** tab\), the system populates this box by adding the target response time to the time of the first unanswered incoming activity.
-   If the case has no outgoing activity \(that is, if the **First Outgoing Activity** box on the **CRM Info** tab is empty\), the system does one of the following, depending on whether an initial activity exists for the case:
    -   If an initial activity exists for the case, the system adds the target response time to the date and time of the initial activity's creation, which is in the **Started On** box of the [Activity](CR_30_60_10.md) \(CR306010\) form.
    -   If no initial activity exists for the case \(for example, it has been deleted\), the system adds the target response time to the date and time of the case's creation, which is in the **Reported On** box of the [Cases](CR_30_60_00.md) form.
-   At the moment when the extension for the response time becomes applicable, the system recalculates the response due time by adding the response extension to the current time.

The system calculates the date and time in the **Resolution Due** box by adding the target resolution time to the **Reported On** time of the case if either of the following conditions is met:

-   The **Solution Provided In** box \(**CRM Info** tab\) is empty, and *If Case Solution is Provided in Activity* is selected in the **Stop Counting Time** box on the [Case Classes](CR_20_60_00.md) form for the case class.
-   The case is active \(that is, the **Active** check box on the **CRM Info** tab is selected\), and *If Case Becomes Inactive* is selected in the **Stop Counting Time** box on the [Case Classes](CR_20_60_00.md) form for the case class.

At the moment when the extension for the resolution time becomes applicable, the system recalculates the resolution due time by adding the resolution extension to the current time.

For details about how an extension can be applied to the commitment times, see [Case Management: Time Extensions for Case Commitments](CRM_Support_Managing_Cases_Case_Commitments_Grace_Period.md).

## Case Commitment Inquiry Forms { .section}

You can use the following inquiry forms to analyze the fulfillment of case commitments by your company's service team:

-   Case Initial Response Times \(CR3065BI\)
-   Case Response Times \(CR3066BI\)
-   Case Resolution Times \(CR3067BI\)

The inquiry forms are available if the *Case Commitments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Parent topic:**[Managing Cases](../UserGuide/CRM_Support_Managing_Cases_Mapref.md)

