# Synchronizing Acumatica ERP with Microsoft Exchange Server

In Acumatica ERP, you can synchronize contacts, emails, tasks, and events between your users' Exchange Server and Acumatica ERP accounts.

In this chapter, you will find information on configuring and managing synchronization between Acumatica ERP and Microsoft Exchange Server.

## Requirements

Acumatica ERP can be integrated with Microsoft Exchange Server 2013 or later.

The license for your Acumatica ERP instance must include the following features, which must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Exchange Integration*: Required for the configuration and management of integration with Exchange Server
-   *Scheduled Processing*: Required for the setup of synchronization schedules

## Overview of Exchange Integration

Microsoft Exchange Server integration lets you synchronize emails, contacts, tasks, and calendar events between Acumatica ERP and Microsoft email and collaboration services. Users can work with the synchronized records in Acumatica ERP while the corresponding items are maintained in their Microsoft mailboxes.

Acumatica ERP supports two approaches to exchange integration:

-   [**Microsoft Graph**](EM__MS_365_Overview.md) connects Acumatica ERP to Microsoft 365 cloud services.
-   [**Exchange Web Services \(EWS\)**](EM__con_Exchange_Integration_Overview.md) connects Acumatica ERP to an on-premises Microsoft Exchange Server.

Both approaches use the Exchange integration configuration and synchronization policies in Acumatica ERP. They also share many of the established synchronization rules for emails, contacts, tasks, and events. However, the services use different connection methods, and some synchronization behavior differs.

The approach is selected in the **Web Services** box on the [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) form.

## Microsoft Graph and EWS Integration

The following table summarizes the key differences between the two approaches.

|Area|Microsoft Graph|EWS|
|----|---------------|---|
|Microsoft service|Microsoft 365 cloud services|On-premises Microsoft Exchange Server|
|Integration technology|Microsoft Graph API|Exchange Web Services|
|Connection configuration|Uses an OAuth 2.0 external application configured on the [External Applications](SM_30_10_00.md)\(SM301000\) form and selected in the exchange integration configuration|Uses the EWS configuration|
|Authorization|Uses Microsoft Graph application permissions that require Microsoft administrator consent|Uses the EWS authentication model|

## Synchronization Policies

Regardless of the selected web service, synchronization policies define how the supported records are synchronized. At least one synchronization policy must be configured for Microsoft Graph integration.

The policies are maintained on the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form. Depending on the entity and the selected integration approach, a policy can define settings such as the synchronization direction, category, email synchronization folder, conflict-resolution priority, and Microsoft To Do list.

Some settings have Graph-specific behavior. For example, Microsoft Graph uses Microsoft To Do lists for tasks and can use categories to identify items for synchronization. Email synchronization also has differences between the Graph and EWS approaches.

-   **[Microsoft Graph Integration: Overview](../UserGuide/EM__MS_365_Overview.md)**  

-   **[EWS Integration: Overview](../UserGuide/EM__con_Exchange_Integration_Overview.md)**  


