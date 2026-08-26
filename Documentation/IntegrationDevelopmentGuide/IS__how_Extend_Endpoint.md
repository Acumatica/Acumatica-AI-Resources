# To Extend an Existing Endpoint {#_c450492e-06fe-4563-95c3-efa76975415b .task}

You use the [Web Service Endpoints](../UserGuide/SM_20_70_60.md) \(SM207060\) form to create an endpoint as an extension of an existing endpoint.

You may need to create an extension of an endpoint if you want to use the entities that are defined in the contract of the existing endpoint but you also need some additional entities, fields, and actions in the contract. For example, the contract of the system endpoint with the name *Default* and Version *25.200.001* contains the Address entity, which includes the following fields: AddressLine1, AddressLine2, City, Country, PostalCode, State, and Validated. Suppose that you want to add the new `GPSCoordinates` field to the Address entity of the contract and use it with other API of the contract. You cannot edit the contract of the system endpoint; instead, you should create an endpoint that is based on this system endpoint, and add the new `GPSCoordinates` field to the Address entity of the contract of the new endpoint.

This procedure describes how to create an endpoint that is based on an existing endpoint.

## To Extend an Existing Endpoint { .section}

1.  Open the [Web Service Endpoints](../Shared/../UserGuide/SM_20_70_60.md) \(SM207060\) form.
2.  Select the endpoint that you want the new endpoint to be based on as follows:
    1.  Select the name of the base endpoint in the **Endpoint Name** box.
    2.  Select the version of the base endpoint in the **Endpoint Version** box.
3.  Click **Extend Endpoint** on the form toolbar.
4.  In the **Extend Current Endpoint** dialog box, which opens, make sure the correct name and version of the base endpoint are specified in the **Base Endpoint Name** and **Base Endpoint Version** boxes. Specify the name of the new endpoint in the **Endpoint Name** box and the version of the new endpoint in the **Endpoint Version** box and click **OK**.

    **Note:** For details on the characters that can be used in the endpoint name and version, see [Naming Rules for Endpoints](IS__con_Endpoint_Naming_Rules.md).

    The new endpoint with the name and version you specify appears on the form. On the left pane of the form, you can see the list of entities that were inherited from the base endpoint.

5.  Add the needed entities, fields, and actions to the contract of the created endpoint, as described in [To Create a Custom Endpoint](IS__how_Create_Endpoint.md#), or extend the entities inherited from the base endpoint, as described in [To Extend an Existing Entity](#_3239daef-b345-45af-8b83-117a50d396c0).
6.  Click **Save** on the form toolbar.

## To Extend an Existing Entity {#_3239daef-b345-45af-8b83-117a50d396c0 .section}

1.  Select the extended endpoint in which you want to extend an entity inherited from the base endpoint as follows:
    1.  In the **Endpoint Name** box, select the name of the extended endpoint.
    2.  In the **Endpoint Version** box, select the version of the extended endpoint.
2.  In the left pane, select the entity inherited from the base endpoint to which you want to add new fields, linked or detail entities, or actions.
3.  If you want to add fields to the entity, do the following:
    1.  On the toolbar of the **Fields** tab in the right pane, click **Extend Entity**.
    2.  Use the **Add Row**, **Delete Row**, and **Populate** buttons, which have become available on the tab toolbar, to add and delete fields of the entity. For more details, see [To Add Fields to an Entity](IS__how_Create_Endpoint.md#_6b4c3dab-6732-41f3-8cad-0ba5a92f6d79).
4.  If you want to add actions or linked or detail entities, follow the instructions in [To Create a Custom Endpoint](IS__how_Create_Endpoint.md#).
5.  Click **Save** on the form toolbar.

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

