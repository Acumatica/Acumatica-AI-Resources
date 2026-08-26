# Image Viewer: Loading of Images from a Third-Party Source {#_af5a39e1-9d92-4d60-beea-def43cd2327f .concept}

When a user specifies an image from a third-party source \(such as a third-party integration\), the Cross-Origin Resource Sharing \(CORS\) policy may prevent the system from loading it.

To resolve this issue, in the qp-image-view control, specify `showProgress: false`, as shown in the following code. This setting disables the CORS policy and the progress bar for uploading the image.

```
export class SendGridDesignImportParameters extends PXView  {
	...
  @controlConfig({showProgress: false})
  ThumbnailUrl : PXFieldState;
}
```

**Parent topic:**[Image Viewer](../DeveloperGuide/UIDevRef_ImageViewer_Mapref.md)

