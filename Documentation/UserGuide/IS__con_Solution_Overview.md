# Synchronization Solution Overview {#_52c21a59-dbba-4202-a8bb-03c01abfbb77 .concept}

The synchronization solution provided by Acumatica is designed for companies that use Salesforce as their primary CRM system and Acumatica ERP as their primary ERP system. In most cases, a company can use this solution as follows:

-   All marketing and sales operations are managed through the CRM system, which is the source system for customer and partner accounts, contacts, and sales opportunities.
-   Distribution and financial operations are managed through the ERP system, which is the source system for inventory items and their prices.
-   The data of customer and partner accounts and contacts can be modified or new business accounts and contacts can be created in either of these systems.

## Typical Solution { .section}

The use of CRM and ERP systems described above could be supported by one of the many integration solutions available on the market as long as it meets the following requirements:

-   It should track changes in both involved systems.
-   It should control the synchronization process.
-   It should reflect changes in both systems by using an API.
-   It should allow the resolution of conflicts and recovery from connectivity failures.

However, this solution would be expensive, and a small or medium-sized business may not be able to afford it.

## Acumatica Solution { .section}

The synchronization solution implemented in Acumatica ERP has been designed to meet the following criteria:

-   The users should be able to continue using Salesforce as a CRM system.
-   The synchronization process should be performed as close to real time as possible. Ideally, a change introduced in one system should be immediately reflected in the other system.
-   CRM-related data that originates in Salesforce should be available for various financial operations in Acumatica ERP.
-   CRM-related data that originates in Acumatica ERP should be available for sales and marketing operations managed in Salesforce.
-   The effort required for the development and administration of Salesforce at the client sites should be minimal because many Acumatica partners and customers do not know how to configure and administer Salesforce or how to develop and deploy code for it.

## Salesforce and Acumatica ERP Integration Capabilities { .section}

Salesforce provides a [REST API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_what_is_rest_api.htm) for queueing and manipulating data in the system. Through this API, an external system \(in this case, Acumatica ERP\) can retrieve data from Salesforce or submit data to Salesforce. Salesforce also provides a [Streaming API](https://developer.salesforce.com/docs/atlas.en-us.api_streaming.meta/api_streaming/intro_stream.htm), through which an external system can subscribe to a queue of changes made to data objects selected by a query.

Acumatica ERP provides a REST API for queueing and manipulating data in the system. Also, Acumatica ERP provides the capability to expose a data query through the OData protocol.

A custom synchronization engine and its configuration UI can be developed in both systems.

**Parent topic:**[Overview of Synchronization with Salesforce](../UserGuide/IS__con_Integration_with_Salesforce.md)

