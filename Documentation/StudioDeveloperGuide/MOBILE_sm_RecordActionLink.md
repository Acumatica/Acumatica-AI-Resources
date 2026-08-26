# &lt;sm:RecordActionLink&gt; {#_fad8382a-c43a-489a-97e9-3fd45724654c .concept}

You can use the sm:RecordActionLink tag to remove an action from the screen toolbar and put the action among the [&lt;sm:Field&gt;](MOBILE_sm_Field.md) tags on a data entry form. The action to which this tag refers must be declared with the same name within the same container by using the [&lt;sm:Action&gt;](MOBILE_sm_Action.md) tag.

## Attributes { .section}

The sm:RecordActionLink tag has the following attributes.

|Attribute|Description|
|---------|-----------|
|Name|The action identifier, as found in the WSDL schema.|
|Weight|The value that is used to set the width of the link within the UI element line defined by the [&lt;sm:Layout&gt;](MOBILE_sm_Layout.md) tag with the Template attribute set to *Inline*. The default value is *1*.|

## Example { .section}

The following example shows how to use the sm:RecordActionLink tag in the mobile site map.

```

<sm:Container ...>
  ...
  <sm:RecordActionLink Name="ViewOnMap"/>
  ...
  <sm:Action Behavior="Void" Context="Record" Name="ViewOnMap" Redirect="true"/>
  ...
</sm:Container>
```

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

