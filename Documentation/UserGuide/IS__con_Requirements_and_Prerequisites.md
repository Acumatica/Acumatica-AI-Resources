# Requirements and Prerequisites {#_b051c93a-5505-48dd-98ce-abdcfd43d002 .concept}

The following requirements and prerequisites should be met so that you can start working with the solution that provides synchronization between Acumatica ERP and Salesforce .

## Requirements { .section}

Acumatica ERP is integrated with Salesforce through the Salesforce API. Thus, you need to make sure that your organization uses one of the following Salesforce editions, in which the API is enabled by default:

-   Enterprise Edition
-   Unlimited Edition
-   Developer Edition
-   Performance Edition

For more information about these editions, see [Salesforce editions with API Access](https://help.salesforce.com/articleView?id=000005140&type=1).

For details on how to quickly get a free Salesforce instance so that you can explore the solution, see [To Quickly Obtain a Salesforce Instance](IS__how_Get_Salesforce_Instance.md).

## Prerequisites { .section}

Before you start configuring the systems for synchronization, make sure that the following prerequisites are met:

-   You need a Salesforce account with administrator permissions so that you can properly configure your Salesforce instance.
-   You need an administrator role assigned to your Acumatica ERP user account so that you can properly configure your Acumatica ERP instance.
-   The *Salesforce Integration* feature should be included in the license that is applied to your Acumatica ERP instance.
-   You may need a security token, which will be used during your first authorization in Salesforce to obtain a session token. \(For details about how to obtain a security token if you do not have one, see [To Obtain a Salesforce Security Token](IS__how_Obtain_Security_Token.md).\)

**Parent topic:**[Overview of Synchronization with Salesforce](../UserGuide/IS__con_Integration_with_Salesforce.md)

