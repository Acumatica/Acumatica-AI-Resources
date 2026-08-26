# Connector Implementation: Required Libraries {#_e92b13cf-b974-48f4-bdfe-c156b5bc2789 .concept}

The Acumatica Customization Platform adds the default references to the project of the extension library, such as PX.Data and PX.Common. During the creation of the connector for the external system, you also need to add the references to the assemblies located in the `Bin` folder of the Acumatica ERP instance and to the external assemblies.

## Libraries of the Bin Folder { .section}

You need to add the references to the following assemblies located in the `Bin` folder of the Acumatica ERP instance:

-   `PX.Commerce.Core.dll`: Required for the implementation of any commerce connector
-   `PX.Commerce.Objects.dll`: Required for the implementation of any commerce connector
-   `PX.Commerce.BigCommerce.dll`: Necessary only if you want to use particular features implemented for the BigCommerce connector
-   `PX.Api.ContractBased.dll`: Necessary only if you plan to implement custom classes for Acumatica ERP entities
-   `PX.Data.BQL.Fluent.dll`: Necessary only if you plan to use fluent BQL queries instead of traditional BQL queries

## External Libraries { .section}

You need to add references to the following external libraries:

**Important:** You need to use the same version of the library as the one located in the `Bin` folder.

-   RestSharp
-   Microsoft.Bcl.AsyncIntefaces
-   Newtonsoft.Json
-   Serilog
-   System.Threading.Tasks.Extensions
-   Polly.Core \(necessary only if you plan to implement the processing of API rate limits, as described in [Processing of API Rate Limits](CommerceConnector_Implementation_APIClient.md#_03aa9cfe-a9bb-4e9b-a17c-044aab872cf0)\)

**Parent topic:**[Implementing a Connector for an External System](../PlugInDevelopmentGuide/CommerceConnector_Implementation_Mapref.md)

