# Limitation of API Connections for Integrated Applications {#_c69cd384-2b5a-43c5-949f-32991bb4f545 .concept}

If an integrated application does not properly sign out from Acumatica ERP, this application can use all of the API sessions included in the license \(that is, reach the maximum number of API users, which is described in [License Restrictions for API Users](IS__con_License_Restrictions_API_Users.md)\), thus preventing other integrated applications from signing in. To avoid such situations, you can limit the number of sessions for either each integration application assigned to a user type or an individual integration application.

Before configuring these limits, on the **Warnings** tab of the [License Monitoring Console](../UserGuide/SM_60_40_00.md) \(SM604000\) form, you can review whether any of the integrated application opens more than three sessions at a time \(which is a predefined system value for this form\). If the number of sessions has not been limited for an integrated application and this application opens more than three sessions at a time, a warning is generated and listed in the table on this tab. This warning can indicate that you should configure a limitation for the particular integration application or review the implementation of signing in and signing out in the application.

## Configuration of the Limitations { .section}

You limit the number of sessions used by each integration application on the [User Types](../UserGuide/EP_20_25_00.md) \(EP202500\) form. Also, if it is necessary to specify a different limit for a particular integration application, you can specify this limit on the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form. For details about how to limit the number of sessions in both of these ways, see [To Limit the Number of API Connections of Integrated Applications](IS__how_Limit_API_Connections.md) and [To Limit API Connections of a Particular Application](IS__how_Limit_API_Connections_for_Particular_App.md).

## Lifecycle of Sign-in Requests { .section}

The lifecycle of any type of requests \(including sign-in requests\) is described in [Lifecycle of the Requests](IS__con_License_Restrictions_API_Users.md#_5e45d3c6-e814-4b08-a995-9592bd6e30fd). This section describes peculiarities of the lifecycle of sign-in requests.

The limitations for the number of API users and the limit of the number of sessions for a particular application are taken into account when one of the API processing cores takes the sign-in request. The API processing core then processes the sign-in request as follows:

1.  Checks whether the maximum number of API users is exceeded. For details about this limit, see [License Restrictions for API Users](IS__con_License_Restrictions_API_Users.md).
2.  Checks whether the limit of the number of sessions specified for this API user is exceeded.

    If the number of sessions opened by the integrated application reaches the limit specified for this integrated application on either the [User Types](../UserGuide/EP_20_25_00.md) \(EP202500\) form or the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, the integrated application cannot open any new session \(that is, cannot sign in to Acumatica ERP\) until it closes one of the existing sessions. The system returns an error in the response to the sign-in request.

    If no limit is specified for the integration application on the [User Types](../UserGuide/EP_20_25_00.md) form or on the [Users](../UserGuide/SM_20_10_10.md) form, the integration application can open no more sessions than the maximum number of API users in the license.


The diagram in [Lifecycle of the Requests](IS__con_License_Restrictions_API_Users.md#_5e45d3c6-e814-4b08-a995-9592bd6e30fd) shows how a sign-in request is processed by an API processing core.

**Parent topic:**[Limiting Connections of Integrated Applications](../IntegrationDevelopmentGuide/IS__mng_Licensing_API.md)

