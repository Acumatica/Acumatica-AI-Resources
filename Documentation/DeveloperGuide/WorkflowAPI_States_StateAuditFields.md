# Workflow States: Tracking of Changes in States {#_f4996bf7-50eb-4ac5-92e1-a58026dfc920 .concept}

The Acumatica Framework automatically tracks the state changes whenever a transition moves a record from one state to another in a workflow. This provides you with the ability to audit the state changes. To enable this functionality, you must declare the following fields in the underlying DAC of the workflow:

-   A field of the `Guid` type that is declared with the [PXDBStateChangedByID](https://help.acumatica.com/(W(6))/Help?ScreenId=ShowWiki&pageid=2e3b8495-2f7d-38f4-19de-fd648f80f2d5) attribute.

    The field stores the ID of the user who made the last workflow transition for the data record.

-   A field of the `string` type that is declared with the[PXDBStateChangedByScreenID](https://help.acumatica.com/(W(5))/Help?ScreenId=ShowWiki&pageid=693d08a2-c5c4-edda-9603-c5876b90e6c5) attribute.

    This field stores the screen ID of the application screen on which the last workflow transition occurred for the data record.

-   A field of the `DateTime` type that is declared with the [PXDBStateChangedDateTime](https://help.acumatica.com/(W(4))/Help?ScreenId=ShowWiki&pageid=ef1bb3eb-6e2e-bc2e-c804-f05af16a0ec3) attribute.

    The field stores the date and time in UTC of the data record's last workflow transition.


These fields are updated whenever a workflow transition happens and the workflow state is changed. The following code shows how to declare these fields in a DAC.

```language-csharp
[PXDBStateChangedByID()]
public virtual Guid? StateChangedByID { get; set; }
public abstract class stateChangedByID : 
    PX.Data.BQL.BqlGuid.Field<stateChangedByID> { }

[PXDBStateChangedByScreenID()]
public virtual string StateChangedByScreenID { get; set; }
public abstract class stateChangedByScreenID : 
    PX.Data.BQL.BqlString.Field<stateChangedByScreenID> { }

[PXDBStateChangedDateTime]
public virtual DateTime? StateChangedDateTime { get; set; }
public abstract class stateChangedDateTime : 
    PX.Data.BQL.BqlDateTime.Field<stateChangedDateTime> { }
```

For each field, you also need to create the corresponding database column. For details, see [Audit Fields](../StudioDeveloperGuide/DA__con_Audit_Fields.md).

**Parent topic:**[Defining Workflow States](../DeveloperGuide/WorkflowAPI_States_Mapref.md)

