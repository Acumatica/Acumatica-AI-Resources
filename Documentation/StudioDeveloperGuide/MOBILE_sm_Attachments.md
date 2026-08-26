# &lt;sm:Attachments&gt; {#_5e35cde7-fb5c-47a9-8033-1279b29f1f6d .concept}

The sm:Attachments tag has the following attributes.

|Attribute|Description|
|---------|-----------|
|Disabled|An indicator of whether attachments are disabled. If its value is *true*, the attachments are disabled.|
|ImageAdjustmentPreset|The type of the image adjustment that is processed by the application for enhancing images taken from the camera of a mobile device. The only value of this attribute is *Receipt*, which is an indicator that a special camera mode is switched on in the Acumatica mobile application. In this mode, the following enhancements of the image captured by the camera are preformed automatically:-   The image is cropped by the bounding box of the detected edges.
-   The image distortion is removed.
-   The image is converted into black and white.
-   The contrast of the image is maximized.

|
|Name|The identifier of the attachments, as found in the WSDL schema.|
|MaxFileSize|The maximum size of an attached file.|
|MaxImageHeight|The maximum height of an attached image \(in pixels\).|
|MaxImageWidth|The maximum width of an attached image \(in pixels\).|

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

