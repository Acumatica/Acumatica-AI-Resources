# Error, Warning, or Informational Notification: Configuration {#_25fb70a4-48d3-4794-9d05-c6dfd26b5fe8 .concept}

In this topic, you can find information about how to configure an error, warning, or informational notification to be displayed on an Acumatica ERP form.

## Configuration from the Backend { .section}

To display an error, warning, or informational notification on an Acumatica ERP form, you generally do not need to explicitly add the qp-info-box control in the frontend code of an Acumatica ERP form. Instead, you should validate the data on the backend and throw an exception of the PXSetPropertyException type, as described in [Data Validation: Validation of Field Values](../StudioDeveloperGuide/CodeCustomization_DataValidation_FieldValuesValidation.md) and [Data Validation: Validation of a Data Record](../StudioDeveloperGuide/CodeCustomization_DataValidation_DataRecordValidation.md). In this case, the notification is displayed automatically for the field or data record for which the exception has been thrown.

## Notification Defined in the Frontend { .section}

You may need to display a static notification on an Acumatica ERP form or display a notification in a specific place on the form. In this case, you can explicitly define the qp-info-box control in the HTML code of an Acumatica ERP form.

In the following example, the notification displays the message that is defined by the state of the field specified in the control. You need to define this field in the data access class that provides data for the Acumatica ERP form and in the TypeScript code of the form.

**Note:** The notification is not displayed if the field specified in the state attribute does not have any error, warning, or informational message attached \(that is, its state is *none*\).

```
<qp-info-box state.bind="QuickProcessParameters.AvailabilityMessage">
</qp-info-box>
```

The notification in the following code displays the error, warning, or informational message that is assigned to any of the fields or records of the view specified in the control. If no error, warning, or informational messages are assigned to the fields or records of the view, the notification is not displayed.

```
<qp-info-box view.bind="QuickProcessParameters"></qp-info-box>
```

You can also specify the type and text of the notification message directly in the control, as the following example shows.

```
<qp-info-box caption="An informational message" type="info">
</qp-info-box>
```

You define the position of the notification on an Acumatica ERP form by placing the qp-info-box control in the needed location in HTML code of the form. By default, the notification is stretched through the whole container where it is added. For example, if the qp-info-box tag is added inside the qp-template tag, the notification has the same width as the whole template.

**Parent topic:**[Error, Warning, or Informational Notification](../DeveloperGuide/UIDevRef_InfoBox_Mapref.md)

