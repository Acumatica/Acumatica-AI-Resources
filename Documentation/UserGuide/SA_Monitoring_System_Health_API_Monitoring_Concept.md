# System Health: Monitoring and Troubleshooting API Requests

With Acumatica ERP, you can more quickly identify the causes of API performance and integration issues. The **API Monitoring** tab of the [System Monitor](SM_20_15_30.md) \(SM201530\) form gives you a consolidated view of API activity, including request volume, resource usage, errors, throttling, performance, and license consumption. When you need to investigate a specific problem, you can capture selected incoming API requests on the [Request Profiler](SM_20_50_70.md) \(SM205070\) form and inspect their details.

System administrators can use the monitoring data to identify excessive API load, determine which integrations contribute to it, and see whether resource or license limits are affecting performance. Developers can then narrow an investigation to a particular integration or request and use the captured details to troubleshoot errors, slow requests, or excessive concurrency.

## What API Monitoring Tracks

The **API Monitoring** tab of the [System Monitor](SM_20_15_30.md) \(SM201530\) form includes requests whose paths begin with:

-   `/api/`: API routes, such as the generic inquiry-based and DAC-based OData interfaces \(`/api/odata/gi` and `/api/odata/dac`\)
-   `/soap/`: The screen-based SOAP API
-   `/entity/`: The contract-based REST API
-   `/Webhooks/`: Requests received by registered webhook handlers
-   `/odata`: The legacy generic inquiry-based OData interface
-   `/identity/`: The OAuth 2.0 and OpenID Connect endpoints for authorization, token issuance, and user information

## Monitoring Integration Activity

The calendar widget on the **API Monitoring** tab of the [System Monitor](SM_20_15_30.md) \(SM201530\) form highlights days with excessive API consumption or significant throttling. When you click a date, the monitoring widgets show its data in 10-minute intervals.


For example, if an integration slows down at a particular time, you can first isolate its activity by endpoint or user and then compare request duration with resource consumption, throttling, and errors.

You can click each widget to analyze its information:

-   *API Request Count:* Review the number of requests and break down the results by tenant, screen, user, IP address, endpoint, session, HTTP method, or target action. These breakdowns can help you identify overlapping integrations or unexpected request patterns.
-   *API Resource Consumption:* Compare the CPU time, SQL time, throttled time, and server time associated with API requests to identify where API request processing time is spent.
-   *API Request Error Count:* Identify periods with unsuccessful requests and analyze the errors by tenant, screen, endpoint, or HTTP status code.
-   *API Resource Shortage:* Identify periods when demand exceeded the available API processing capacity and requests were delayed.
-   *API Requests by Time:* Review request counts by duration.
-   *API Request Duration:* Analyze total server time by tenant, screen, user, or endpoint.
-   *API Requests by Size:* Review the distribution of requests by size to see if any are close to the limit.

## Capturing and Inspecting API Requests

Suppose that a third-party integration intermittently returns errors or takes a long time to update records. After the API monitoring widgets identify the affected period, you can configure the [Request Profiler](SM_20_50_70.md) \(SM205070\) form to capture only the relevant incoming API requests. You can then reproduce the problem and inspect the affected requests on the form.

To investigate the issue, you can use the following workflow:

1.  On the **Logging Filters** tab, use the **Request Type** box to select the request types you want to capture. To limit the results to failed API requests, select **Log Only Errors**. For API requests, this option captures requests with HTTP status codes from 400 through 599. Then select **Log Requests \(Apply Filter\)**.
2.  If you need to inspect the request or response content, add *API Request Body*, *API Request Response*, or both to the categories in **Diagnostics Logging**. Then select **Log Diagnostics \(Apply Filter\)**.


3.  Reproduce the issue in the integration.
4.  On the **Requests** tab, filter the captured requests by URL, user, or HTTP method. For example, if an integration can retrieve shipments but fails to update them, you can exclude `GET` requests and focus on `PUT` requests. For the relevant request, review the HTTP status code, exception message, throttling status, server time, and SQL time.
5.  If you logged the request body or response, open the **Diagnostics Log**, select the related entry, and click **View Diagnostics**. You can review the captured content together with its start time, HTTP method, HTTP status code, and log level.

**Attention:** An API request body or response can contain user-sensitive or business-sensitive data. When the logging of API request bodies, API responses, or SQL is enabled, the Request Profiler displays a warning that sensitive data may be captured and stored.

## Checking API License Limits

On the **API Monitoring** tab of the [System Monitor](SM_20_15_30.md) \(SM201530\) form, you can also check API license consumption. The *Consumption Status* widget shows API session and request consumption relative to the applicable license limits. You can use this information to determine whether you need to adjust an integration's synchronization frequency or request concurrency.

You can view the API license limits on the **License and Constraints** tab of the [License Monitoring Console](SM_60_40_00.md) \(SM604000\) form, where the API limits are now grouped under **Web Service API Usage Constraints**.


**Parent topic:**[Monitoring System Health](../UserGuide/SA_Monitoring_System_Health_Mapref.md)

