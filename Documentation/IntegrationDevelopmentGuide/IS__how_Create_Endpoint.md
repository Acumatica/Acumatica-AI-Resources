# To Create a Custom Endpoint {#_709351cc-566a-47b3-b153-3a9fdd690ce0 .task}

You use the [Web Service Endpoints](../UserGuide/SM_20_70_60.md) \(SM207060\) form to create a custom endpoint.

If you need to use a custom endpoint, you can either create an endpoint from scratch or extend an existing endpoint with the needed API. This procedure describes how to create a custom endpoint from scratch. To learn how to extend an existing endpoint, see [To Extend an Existing Endpoint](IS__how_Extend_Endpoint.md#).

## To Create an Endpoint from Scratch { .section}

**Tip:** You can create an endpoint that has the latest version of the contract only.

1.  Open the [Web Service Endpoints](../Shared/../UserGuide/SM_20_70_60.md) \(SM207060\) form.
2.  In the **Endpoint Name** box, type the name of the new endpoint.

    **Tip:** For details on the characters that can be used in the endpoint name and version, see [Naming Rules for Endpoints](IS__con_Endpoint_Naming_Rules.md).

3.  In the **Endpoint Version** box, type the version of the new endpoint.
4.  Add the needed entities, fields, and actions to the contract of the created endpoint, as described in the sections below.
5.  Click **Save** on the form toolbar.

## To Add a Top-Level Entity to the Contract of the Endpoint {#_6a9f4811-906d-43f5-9815-de770f5fe3b6 .section}

1.  In the **Endpoint Name** box, select the name of the endpoint to which you want to add an entity.
2.  In the **Endpoint Version** box, select the version of the endpoint to which you want to add an entity.
3.  In the left pane, select the *Endpoint* node.
4.  On the toolbar of the left pane, click **Insert**, and in the **Create Entity** dialog box, do the following:
    1.  In the **Object Name** box, type the name of the entity. This is the name of the API object that you will use in the code of your application to work with the entity.

        **Tip:** For details on the characters that can be used in the entity names, see [Naming Rules for Endpoints](IS__con_Endpoint_Naming_Rules.md).

    2.  In the **Object Type** box, select *Top-Level*.
    3.  In the **Screen Name** lookup box, select the form to which the entity should correspond.
    4.  Click **OK**.
5.  Add the needed fields, actions, or nested entities to the entity, as described in the sections below.

## To Add a Report Entity to the Contract of the Endpoint { .section}

1.  In the **Endpoint Name** box, select the name of the endpoint to which you want to add an entity.
2.  In the **Endpoint Version** box, select the version of the endpoint to which you want to add an entity.
3.  In the left pane, select the *Endpoint* node.
4.  On the toolbar of the left pane, click **Insert**, and in the **Create Entity** dialog box, do the following:

    1.  In the **Object Name** box, type the name of the entity. This is the name of the API object that you will use in the code of your application to work with the entity.

        **Tip:** For details on the characters that can be used in the entity names, see [Naming Rules for Endpoints](IS__con_Endpoint_Naming_Rules.md).

    2.  In the **Object Type** box, select *Report*.
    3.  In the **Screen Name** lookup box, select the report to which the entity should correspond.
    4.  Click **OK**.
    The **Fields** tab is populated with the fields for each parameter of the report.

5.  Optional: Modify the list of fields, as described in [To Add Fields to an Entity](#_6b4c3dab-6732-41f3-8cad-0ba5a92f6d79).

## To Add a Linked or Detail Entity to Another Entity {#_7718d822-4723-412a-aa36-32a7a61fe2cd .section}

1.  In the **Endpoint Name** box, select the name of the endpoint to which you want to add an entity.
2.  In the **Endpoint Version** box, select the version of the endpoint to which you want to add an entity.
3.  In the left pane, select the entity node to which you want to add a linked or detail entity.
4.  On the toolbar of the left pane, click **Insert**.
5.  In the **Field Name** box of the **Create Entity** dialog box, which opens, type the name of the field that should be used to access the nested entity, and specify the values of other elements in one of the following ways:

    -   If you want to insert an entity that already exists in the contract, select the **Use Existing Entity** check box, and select the needed entity in the **Entity Type** box.
    -   If you want to insert a new entity, in the **Object Name** box, type the name of the entity, and in the **Object Type** box, select the type of the entity: *Linked* or *Detail*.
    **Tip:** For details on the characters that can be used in the entity names, see [Naming Rules for Endpoints](IS__con_Endpoint_Naming_Rules.md).

6.  Click **OK**. The new entity appears in the contract.
7.  Add fields to the created entity, as described in the following section.

## To Add Fields to an Entity {#_6b4c3dab-6732-41f3-8cad-0ba5a92f6d79 .section}

1.  In the **Endpoint Name** box, select the name of the endpoint to which you want to add an entity.
2.  In the **Endpoint Version** box, select the version of the endpoint to which you want to add an entity.
3.  In the left pane, select the entity node to which you want to add fields.
4.  On the **Fields** tab of the right pane, do one of the following:

    -   Click **Populate** on the tab toolbar. In the **Populate Fields** dialog box, select the Acumatica ERP object whose fields you want to include in the entity and the fields that you want to include, and click **OK**. The selected fields are added to the contract.
    -   Click **Add Row** on the tab toolbar; then type the name of the new field in the **Field Name** column of the added row, select the Acumatica ERP object whose field you want to include in the entity in the **Mapped Object** column, and select the field that you want to include in the **Mapped Field** column.
    **Tip:**

    -   For some fields to be included in the entity, the corresponding Acumatica ERP feature or features must be enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. For information on Acumatica ERP basic functionality and add-on features, see [Preparing an Instance: Acumatica ERP Features](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Features_Overview.md).
    -   For details on the characters that can be used in the field names, see [Naming Rules for Endpoints](IS__con_Endpoint_Naming_Rules.md).
5.  Click **Save** on the form toolbar.

## To Add an Action to an Entity {#_ac4ef926-d0da-4d37-83f6-6fe92bf38001 .section}

**Attention:** You can add actions that are performed on multiple records \(such as the removal of all records or those the user selects\) to processing forms only. Actions that can be performed on multiple records are not supported for data entry and maintenance forms.

1.  In the **Endpoint Name** box, select the name of the endpoint to which you want to add an entity.
2.  In the **Endpoint Version** box, select the version of the endpoint to which you want to add an entity.
3.  In the left pane, select the *Actions* node in the needed entity.
4.  On the toolbar of the left pane, click **Insert**.
5.  In the **Create Action** dialog box, which opens, select the needed Acumatica ERP action, type the name that should be used to invoke this action through the API, and click **OK**. The dialog box is closed, and the new action is added to the contract.

    **Tip:** For details on the characters that can be used in the action names, see [Naming Rules for Endpoints](IS__con_Endpoint_Naming_Rules.md).

6.  If the action has parameters, add the parameters to the action as follows:
    1.  In the left pane, click the action you have created.
    2.  On the **Parameters** tab of the right pane, do one of the following:

        -   Click **Populate** on the tab toolbar. In the **Populate Fields** dialog box, which opens, select the Acumatica ERP object whose fields you want to use as parameters of the action and the fields that you want to use as parameters, and click **OK**. The selected fields are added to the contract.
        -   Click **Add Row** on the tab toolbar; then type the name of the new parameter in the **Parameter Name** column of the added row, select the Acumatica ERP object whose field you want to use a parameter of the action in the **Mapped Object** column, and select the field that you want to use as a parameter in the **Mapped Field** column.
        **Tip:**

        -   For details on the characters that can be used in the parameter names, see [Naming Rules for Endpoints](IS__con_Endpoint_Naming_Rules.md).
        -   If you need to add parameters of a workflow action, select the *Transition Parameters* object as the object whose fields you want to use as parameters. For details about workflow actions, see [Action Configuration: General Information](../DeveloperGuide/WorkflowUI_Actions_GeneralInfo.md).
7.  On the form toolbar, click **Save**.

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

