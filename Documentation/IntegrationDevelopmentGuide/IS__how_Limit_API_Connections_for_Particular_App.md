# To Limit API Connections of a Particular Application {#_963b7051-f415-4531-8e6d-d3c9df46dc65 .task}

On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, you can specify a limit for the number of sessions used by a particular integrated application.

**Note:** Instead of specifying a limit for a particular integrated application, on the [User Types](../UserGuide/EP_20_25_00.md) \(EP202500\) form, you can limit the number of sessions for each integrated application. For details about how to limit the number of sessions for each integrated application, see [To Limit the Number of API Connections of Integrated Applications](IS__how_Limit_API_Connections.md).

If a limit is specified on the [Users](../UserGuide/SM_20_10_10.md) form for a user account associated with an integrated application, this limit overrides any limit specified on the [User Types](../UserGuide/EP_20_25_00.md) form. If no limit is specified on the [Users](../UserGuide/SM_20_10_10.md) form for a user account associated with an integration application, any limit specified on the [User Types](../UserGuide/EP_20_25_00.md) form is used.

## To Limit API Connections of a Particular Application { .section}

1.  Open the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form.
2.  For the user account that the integration application uses, type the account's maximum number of sessions in the **Max. Number of Concurrent Logins** box.

**Parent topic:**[Limiting Connections of Integrated Applications](../IntegrationDevelopmentGuide/IS__mng_Licensing_API.md)

