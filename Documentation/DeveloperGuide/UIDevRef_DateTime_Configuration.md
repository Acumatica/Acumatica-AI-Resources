# Date and Time Control: Configuration {#_4591f2eb-9cec-44c6-9d84-498ff64ee869 .concept}

In this topic, you can learn how to adjust a date and time control.

## Date and Time Control Definition { .section}

To define a date and time control, in the data access class \(DAC\), you need to add one of the date and time attributes \(such as [PXDate](https://help.acumatica.com/(W(33))/Main?ScreenId=ShowWiki&pageid=f3ba8d95-6f11-16eb-3c57-b0b030f5d41c), [PXDateAndTime](https://help.acumatica.com/(W(33))/Main?ScreenId=ShowWiki&pageid=e99e29f8-1a5f-23e8-a4a2-75ca171f33df), [PXDBDate](https://help.acumatica.com/(W(31))/Main?ScreenId=ShowWiki&pageid=94441fa4-1035-987d-129d-15538490e44b), [PXDBTime](https://help.acumatica.com/(W(38))/Main?ScreenId=ShowWiki&pageid=7658dee7-e543-45fc-bff9-4089159b07d1), or [PXDBDateAndTime](https://help.acumatica.com/(W(33))/Main?ScreenId=ShowWiki&pageid=7d1babdd-7dab-c573-4209-5f314a34c719)\) to the property field, as shown in the following code.

```language-csharp
public abstract class effectiveAsOfDate : 
  PX.Data.BQL.BqlDateTime.Field<effectiveAsOfDate> { }
[PXDBDate]
[PXUIField(DisplayName = "Effective As Of")]
public virtual DateTime? EffectiveAsOfDate { get; set; }
```

In the TypeScript and HTML code, you then define a field with no additional settings specified. For details, see [UI Definition in HTML and TypeScript: General Information](UIDev_UIDefinition_GeneralInfo.md).

## Separate Boxes for Date and Time { .section}

If you need to display the date and the time in two separate boxes, you define the date and time control, as shown in the following example. You use a nested qp-field control with the timeMode property set to *true* in config.

```language-xml
<field name="ContactsExportDate_Date">
  <qp-field
    class="col-3 no-label"
    control-state.bind=
      "EmailSyncAccountFilter.ContactsExportDate_Time"
    config-time-mode.bind="true">
  </qp-field>
</field>
```

## Input Mask and Display Mask { .section}

The date and time mask configuration are taken from the locale preferences and do not require any additional setup. However, if you need to specify the input mask and the display mask, you specify the value of the InputMask or DisplayMask property of the date and time attribute that is assigned to the DAC property field. You use the [standard](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings) and [custom](https://docs.microsoft.com/en-us/dotnet/standard/base-types/custom-date-and-time-format-strings) date and time format strings.

The following example shows the use of the InputMask and DisplayMask properties.

```language-csharp
public abstract class parameter1 : 
  PX.Data.BQL.BqlDateTime.Field<parameter1> { }
[PXDateAndTime(DisplayMask = "D", InputMask ="d")]
[PXUIField(DisplayName = "Parameter 1")]
public virtual DateTime? Parameter1 { get; set; }
```

## Relative Dates { .section}

The date and time control can display relative dates—that is, values such as *@Today* or *@WeekStart* \(shown below\).

![](../Shared/Images/UIDevRef_DateTime_RelativeDates.png "Relative dates")

To specify that a user can enter relative dates in the control, you need to implement the [RowSelected](https://help.acumatica.com/(W(28))/Help?ScreenId=ShowWiki&pageid=3577810d-417e-0518-74be-587de1c13771) event handler. In the event handler, you call the [PXDatetimeFieldState.showRelativeDates](https://help.acumatica.com/(W(28))/Help?ScreenId=ShowWiki&pageid=0b0b99e2-1fcd-403d-76d6-fd586c54c9be) method to indicate that the values are allowed.

An example of such a handler is shown in the following code.

```language-javascript
@handleEvent(CustomEventType.RowSelected, { view: "Rules" })
  onEPRuleConditionSelected(
    args: RowSelectedHandlerArgs<PXViewCollection<EPRuleCondition>>) 
{
    const ar = args.viewModel.activeRow;

    ar.Value?.to(PXDatetimeFieldState).showRelativeDates();
}
```

**Parent topic:**[Date and Time](../DeveloperGuide/UIDevRef_DateTime_Mapref.md)

