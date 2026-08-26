# &lt;sm:Container&gt; {#_b6ab20f1-feff-4286-b429-1c299a19bf82 .concept}

The sm:Container tag has the following attributes.

|Attribute|Description|
|---------|-----------|
|AttachmentsControlPriority|The priority value that defines the position of the attachments in the list.|
|Attributes|An indicator of whether that this container holds entity attributes. If the indicator value is *true*, you should not specify the items of the container, because the container configuration is generated dynamically.|
|ContainerActionsToExpand|The number of actions with the Context attribute set to Container to be visible in the toolbar on the list form. The default value depends on the platform.|
|DisplayName|The name of the container on the UI.|
|FieldsToShow|The number of fields to display in the list.|
|FormActionsToExpand|The number of actions with the Context attribute set to Record to be visible in the toolbar on the editing form. The default value depends on the platform.|
|ListActionsToExpand|The number of actions with the Context attribute set to Selection or List to be visible in the toolbar on the list form when the multiple selection of records is activated. The default value depends on the platform.|
|Name|The identifier of the container, as found in the WSDL schema.|
|Type|An optional attribute that specifies the type of the container. The only possible value is *SelectionActionList*, which is used for an action with the Context attribute set to *List*. See [&lt;sm:Action&gt;](MOBILE_sm_Action.md#) for details.|
|Visible|An indicator of whether the link to the container is visible on the editing form. This attribute can be applied to a secondary container. By default, the value is *true*.|

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

