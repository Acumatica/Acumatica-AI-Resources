# To Validate an Endpoint {#_2216d868-9370-49e4-b1b7-62f2ae04a7f6 .task}

You use the [Web Service Endpoints](../UserGuide/SM_20_70_60.md) \(SM207060\) form to validate an endpoint, an entity, or an action. During this validation, the system makes sure the following criteria are met for the elements of the endpoint, entity, or action:

-   The names of the elements satisfy the naming rules. For details on these rules, see [Naming Rules for Endpoints](../Shared/../IntegrationDevelopmentGuide/IS__con_Endpoint_Naming_Rules.md).
-   The elements are mapped to objects, fields, and actions that exist in the system.

The validation of the name of a new entity, field, action, or action parameter is performed automatically once you have entered the name on the form. You can validate an endpoint, entity, or action manually, as described in this topic.

## To Validate an Endpoint { .section}

1.  Open the [Web Service Endpoints](../Shared/../UserGuide/SM_20_70_60.md) \(SM207060\) form.
2.  Select the endpoint that you want to validate as follows:
    1.  In the **Endpoint Name** box, select the name of the endpoint.
    2.  In the **Endpoint Version** box, select the version of the endpoint.
3.  On the form toolbar, click **Validate Endpoint**. The long-running validation operation starts.

    Once the validation is finished, the system displays a message with the results of the validation. If the validation has failed, the error message contains the names of all fields that caused the error.

4.  If any errors occur, correct the endpoint accordingly.

## To Validate an Entity { .section}

1.  Open the [Web Service Endpoints](../Shared/../UserGuide/SM_20_70_60.md) \(SM207060\) form.
2.  Select the endpoint that contains the entity that you want to validate as follows:
    1.  In the **Endpoint Name** box, select the name of the endpoint.
    2.  In the **Endpoint Version** box, select the version of the endpoint.
3.  In the left pane, click the entity that you want to validate.
4.  On the toolbar of the **Fields** tab of the right pane, click **Validate Entity**.

    Once the validation is finished, the system displays a message with the results of the validation. If the validation has failed, the error message contains the names of all fields that caused the error.

5.  If any errors occur, correct the entity accordingly.

## To Validate an Action { .section}

1.  Open the [Web Service Endpoints](../Shared/../UserGuide/SM_20_70_60.md) \(SM207060\) form.
2.  Select the endpoint that contains the action that you want to validate as follows:
    1.  In the **Endpoint Name** box, select the name of the endpoint.
    2.  In the **Endpoint Version** box, select the version of the endpoint.
3.  In the left pane, click the action that you want to validate.
4.  On the toolbar of the **Parameters** tab of the right pane, click **Validate Action**.

    Once the validation is finished, the system displays a message with the results of the validation. If the validation has failed, the error message contains the names of all fields that caused the error.

5.  If any errors occur, correct the action accordingly.

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

