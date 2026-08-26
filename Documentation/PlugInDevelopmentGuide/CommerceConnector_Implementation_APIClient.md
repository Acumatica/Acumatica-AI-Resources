# Connector Implementation: API Client {#_7f05d184-fe9d-4003-aa67-67e8eb90703f .concept}

You need to implement an API client of the external system. The built-in connectors in Acumatica ERP use REST API clients or GraphQL clients. The details of the implementation of an API client depend on the external system. In this topic, you can find descriptions of particular approaches that can be used for implementation.

**Attention:** The external system determines which classes you need to implement and how the connector communicates with the external system.

## Processing of API Rate Limits {#_03aa9cfe-a9bb-4e9b-a17c-044aab872cf0 .section}

You can implement the following approach for handling the *429 Too Many Requests* response code: If this response code is received, the connector checks the headers of the response to find the recommended delay for the request, and retries the request after this delay.

To use this approach, you need to derive the REST API client implementation from the PX.Commerce.Core.REST.RetryCapableRESTClientBase abstract class and override its methods. The RetryCapableRESTClientBase class uses the `Polly.Core.dll` library.

The following code shows a sample fragment of a REST API client implementation.

**Tip:** You can see this code on [GitHub](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/PlugInDevelopment/Help/ImplementingConnector/WooCommerceTest/External/WooRestClientBase.cs).

```language-csharp
﻿using PX.Commerce.BigCommerce;
using PX.Commerce.Core;
using PX.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PX.Commerce.Core.REST;
using Polly;
using PX.Commerce.BigCommerce.API.REST;
using System.Net.Http;

namespace WooCommerceTest
{
    public abstract class WooRestClientBase :
        RetryCapableRESTClientBase<WooRestClientBase.HttpCallContext>
    {
        protected WooRestClientBase(int attempts) : base(attempts)
        {
        }

        protected override ValueTask<bool> IsFailure(Outcome<HttpCallContext> result,
            int attemptNumber, int attempts) =>
            new((result.Exception is not null
                || (result.Result?.Response is not null && (int)result.Result.Response.StatusCode == 429))
                && attempts >= attemptNumber);

        protected override ValueTask HandleError(HttpCallContext ctx,
            int attemptNumber, int attempts)
        {
            if (attempts == attemptNumber)
                throw new PXException(BCMessages.RetryLimitIsExceeded);

            return new ValueTask();
        }

        protected override ValueTask<TimeSpan?> GetDelay(HttpCallContext context,
            int attemptNumber)
        {
            if (context is null)
                return new(TimeSpan.FromSeconds(attemptNumber + 1));

            var response = context.Response;
            if ((int)response.StatusCode == 429)
            {
                if ((response.Headers.TryGetValues(
                    BigCommerceConstants.Headers.RateLimitResetMs, out var values)
                    || response.Headers.TryGetValues(
                        BigCommerceConstants.Headers.RateLimitWindowMs, out values))
                    && int.TryParse(values.FirstOrDefault(), out var delay))
                    return new ValueTask<TimeSpan?>(TimeSpan.FromMilliseconds(delay));

                return new ValueTask<TimeSpan?>(TimeSpan.FromSeconds(attemptNumber + 1));
            }

            return new ValueTask<TimeSpan?>((TimeSpan?)null);
        }

        public class HttpCallContext(IBCRestResponse Response, HttpRequestMessage Request, string Body)
        {
            public IBCRestResponse Response { get; } = Response;
            public HttpRequestMessage Request { get; } = Request;
            public string Body { get; } = Body;
        }
    }
}
```

**Parent topic:**[Implementing a Connector for an External System](../PlugInDevelopmentGuide/CommerceConnector_Implementation_Mapref.md)

