# Connector Implementation: Connector Class {#_264c59ca-c18e-4e40-95ce-3c295f3456fc .concept}

The connector class is the main class of a connector for an external system.

The connector class performs the following functions:

-   Provides the settings for connection with the external system
-   Implements navigation to external records
-   Performs the synchronization of records of the external system and Acumatica ERP
-   Implements real-time subscription and processing

## Base Class and Interface { .section}

The connector class derives from the [PX.Commerce.Core.BCConnectorBase&lt;TGraph&gt;](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=3b6882df-0410-c989-3955-77f9307ec63a) base abstract class. The BCConnectorBase&lt;TGraph&gt; class implements the [PX.Commerce.Core.IConnector](https://help.acumatica.com/(W(24))/Help?ScreenId=ShowWiki&pageid=463826b3-3c22-b89a-abaa-d5843ae1091d) interface. Because the BCConnectorBase&lt;TGraph&gt; class is a graph, the connector class is a graph as well.

## Properties and Methods of the Connector Class { .section}

In the ConnectorType property of the connector class, you define a `string` identifier of the connector type; this identifier can be no more than three characters long. In the ConnectorName property of this class, you define the name of the connector, which is displayed on Acumatica ERP forms. For example, the value is displayed in the **Connector** box on the [Entities](../UserGuide/BC_20_20_00.md) \(BC202000\) form.

For details about the methods of the connector class, see [PX.Commerce.Core.IConnector](https://help.acumatica.com/(W(24))/Help?ScreenId=ShowWiki&pageid=463826b3-3c22-b89a-abaa-d5843ae1091d).

## Example { .section}

The following code shows an example of the implementation of the connector class.

**Tip:** You can see this code on [GitHub](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/PlugInDevelopment/Help/ImplementingConnector/WooCommerceTest/WooCommerceConnector.cs).

```language-csharp
﻿using Newtonsoft.Json;
using PX.Async;
using PX.Commerce.BigCommerce;
using PX.Commerce.BigCommerce.API.REST;
using PX.Commerce.Core;
using PX.Commerce.Core.REST;
using PX.Common;
using PX.Data;
using PX.Data.BQL;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;

namespace WooCommerceTest
{
    public class WooCommerceConnector : BCConnectorBase<WooCommerceConnector>
    {
        public const string TYPE = "WOO";
        public const string NAME = "WooCommerce";

        public class WCConnectorType : BqlString.Constant<WCConnectorType>
        {
            public WCConnectorType() : base(TYPE) { }
        }

        public override string ConnectorType { get => TYPE; }
        public override string ConnectorName { get => NAME; }

        public override void NavigateExtern(ISyncStatus status, 
            ISyncDetail detail)
        {
            if (status?.ExternID == null) return;

            EntityInfo info = GetEntities().FirstOrDefault(e => 
                e.EntityType == status.EntityType);
            BCBindingWooCommerce bCBindingBigCommerce = 
                BCBindingWooCommerce.PK.Find(this, status.BindingID);

            if (string.IsNullOrEmpty(bCBindingBigCommerce?.StoreAdminUrl) || 
                string.IsNullOrEmpty(info.URL)) return;

            string[] parts = status.ExternID.Split(new char[] { ';' });
            string url = string.Format(info.URL, parts.Length > 2 ? 
                parts.Take(2).ToArray() : parts);
            string redirectUrl = 
                bCBindingBigCommerce.StoreAdminUrl.TrimEnd('/') + "/" + url;

            throw new PXRedirectToUrlException(redirectUrl, 
                PXBaseRedirectException.WindowMode.New, string.Empty);
        }

        public override async Task<ConnectorOperationResult> Process(
            ConnectorOperation operation, int?[] syncIDs,
            CancellationToken cancellationToken = default)
        {
            EntityInfo info = GetEntities().FirstOrDefault(e => 
                e.EntityType == operation.EntityType);
            using (IProcessor graph = (IProcessor)CreateInstance(
                info.ProcessorType))
            {
                await graph.Initialise(this, operation);
                return await graph.Process(syncIDs, cancellationToken);
            }
        }

        public override async Task<DateTime> GetSyncTime(ConnectorOperation operation)
        {
            BCBindingWooCommerce binding = BCBindingWooCommerce.PK.Find(this, 
                operation.Binding);
            //Acumatica Time
            PXDatabase.SelectDate(out DateTime dtLocal, out DateTime dtUtc);
            dtLocal = PX.Common.PXTimeZoneInfo.ConvertTimeFromUtc(dtUtc, 
                PX.Common.LocaleInfo.GetTimeZone());

            return dtLocal;
        }

        public override async Task ProcessHook(
            IEnumerable<BCExternQueueMessage> messages, 
                CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }

        public static RestClient GetRestClient(BCBindingWooCommerce binding)
        {
            Dictionary<string, string> authHeaders = new()
            {
                { BigCommerceConstants.Headers.AuthToken, binding.StoreXAuthToken },
                { BigCommerceConstants.Headers.AuthClient, binding.StoreXAuthClient }
            };
            return CreateClient(binding.StoreBaseUrl, authHeaders);
        }

        public static RestClient CreateClient(string baseUri, Dictionary<string, string> authHeaders)
        {
            RestOptions options = new RestOptions
            {
                BaseUri = baseUri,
                AuthHeaders = authHeaders
            };
            JsonSerializerSettings serializer = new JsonSerializerSettings
            {
                MissingMemberHandling = MissingMemberHandling.Ignore,
                NullValueHandling = NullValueHandling.Ignore,
                DefaultValueHandling = DefaultValueHandling.Include,
                DateFormatHandling = DateFormatHandling.IsoDateFormat,
                DateTimeZoneHandling = DateTimeZoneHandling.Unspecified,
                ContractResolver = new GetOnlyContractResolver()
            };

            RestClient client = new RestClient();

            return client;
        }

        public List<Tuple<string, string, string>> GetExternalFields(
            string type, int? binding, string entity)
        {
            List<Tuple<string, string, string>> fieldsList = 
                new List<Tuple<string, string, string>>();
            if (entity != BCEntitiesAttribute.Customer && entity != 
                BCEntitiesAttribute.Address) return fieldsList;

            return fieldsList;
        }

        public override Task StartWebHook(string baseUrl, BCWebHook hook, 
            CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }

        public override Task StopWebHook(string baseUrl, BCWebHook hook, 
            CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }
    }
}
```

**Parent topic:**[Implementing a Connector for an External System](../PlugInDevelopmentGuide/CommerceConnector_Implementation_Mapref.md)

