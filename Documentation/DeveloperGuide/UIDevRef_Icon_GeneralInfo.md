# Icon: General Information {#_80425daa-05a7-476e-86b5-58cc98c0c863 .concept}

An icon is an image that provides a visual representation of a particular function of the system. An icon is generally placed over a UI element that a user interacts with, such as a button. An example is the icon used to represent the **Save** button on the form toolbar of a form.

An icon is defined by PXImage in the Classic UI. In the Modern UI, an icon is defined by the [qp-icon](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b795747b-3649-9ded-52c6-91420ec1f833) HTML tag.

## Learning Objectives { .section}

In this chapter, you will learn the following about an icon:

-   The proper configuration of an icon
-   The key details of each property of an icon

## Applicable Scenario { .section}

You configure an icon when you want to use an image to visually represent an action on the UI of a form.

## Icon ID { .section}

An ID of an icon in HTML consists of two parts, the `icon` prefix and the semantic name. The semantic name describes the purpose of the element. For example, you may have an icon that represents drag-and-drop functionality in a file upload dialog box. You can set its ID to `iconDragDrop`, as the following code shows.

```
<qp-icon id="iconDragDrop"></qp-icon>
```

## Configuration of an Icon { .section}

To configure an icon, you use the [qp-icon](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b795747b-3649-9ded-52c6-91420ec1f833) HTML tag and specify its imagesrc property. The image source can be a Font Awesome glyph, an SVG icon, or a simple raster icon, such as a PNG or a GIF file. The following code shown an example of the configuration of a qp-icon control that uses a Font Awesome glyph as the image source.

```
<qp-icon imagesrc="main@Excel"></qp-icon>
```

The height and the width of the icon are adjusted automatically in most cases, and we recommend that you not specify the height and width attributes of the qp-icon control manually.

The following example shows how you can specify an SVG icon as the image source.

```
<qp-icon imagesrc="svg:main@filledKey"></qp-icon>
```

The following example shows how you can specify a simple raster icon as the image source.

```
<qp-icon imagesrc="icons/disk.png"></qp-icon>
```

**Parent topic:**[Icon](../DeveloperGuide/UIDevRef_Icon_Mapref.md)

