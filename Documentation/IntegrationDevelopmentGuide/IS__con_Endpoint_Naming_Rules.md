# Naming Rules for Endpoints {#_d11b158c-a417-40aa-9736-86bfd7e5ac57 .concept}

When you create a custom endpoint on the [Web Service Endpoints](../UserGuide/SM_20_70_60.md) \(SM207060\) form \(either from scratch or by extending a system endpoint\), for the names of the entities, fields, actions, and action parameters of the endpoint, and the endpoint name and version, you should make sure to adhere to the following rules:

-   The name of the endpoint can contain only English letters, digits, underscores, and periods, and cannot start with a digit.
-   The version of the endpoint can contain only English letters, digits, underscores, and periods.
-   The name of the entity, field, action, or action parameter can contain only English letters, digits, and underscores, and cannot start with a digit.
-   The name of the field cannot match any of the following reserved names:
    -   Action
    -   CustomFields
    -   Delete
    -   Entity
    -   ID
    -   Note
    -   ReturnBehavior
    -   RowNumber
-   The name of the field must be unique among the names of the fields of the entity.
-   The name of the field that should be used to access a nested entity cannot be Files or Translations.
-   The name of the parameter must be unique among the names of the parameters of the action.
-   The name of the entity or action must be unique among the names of the entities and actions of the endpoint.

The system checks whether the names used in the endpoint satisfy these rules each time you enter the name of a new entity, field, action, or action parameter. You can also validate the endpoint manually, as described in [To Validate an Endpoint](IS__how_Validate_Endpoint.md).

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

