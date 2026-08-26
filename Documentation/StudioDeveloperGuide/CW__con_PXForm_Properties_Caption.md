# Use of the Caption Property of Containers {#_16edab7b-9ec3-4383-a92d-253fe8eee07d .concept}

If you plan to use a container in the mobile site map, we recommend that you specify a unique name for the Caption property of the container. Then in the mobile site map, you can refer to the container by the specified caption in the Name attribute of the &lt;sm:Container&gt; tag, as the following code shows.

```
<sm:Container Name="ValueOfTheCaptionProperty">
...
</sm:Container>
```

Otherwise, in the WSDL schema, the API web service assigns to the container the name of the first child element. If you use this name in the mobile site map, an error may occur after the container content is reordered because the container name might be changed in the WSDL schema.

**Parent topic:**[Configuring Containers](../StudioDeveloperGuide/CW__mng_Configuring_Containers.md)

