# UI Localization: DACs {#_6aa5f890-e9fb-49fd-924c-9da852f741f8 .concept}

When the system localizes the fields of the data access classes \(DACs\) and DAC names, it collects the string constants that are specified in the following code elements:

-   The DisplayName property of the PXUIField attribute of the fields of the DACs
-   The AllowedLabels property of the PXStringList attribute or PXIntList attribute of the fields of the DACs

To prepare each DAC for localization, you need to adjust its code as described in the following sections.

## DAC Fields { .section}

To define the names of the UI elements that correspond to DAC fields to be localizable, you specify the DisplayName parameter of the PXUIField attribute for each visible field in the DAC, as shown in the following example.

**Attention:** If you change the DisplayName value of the PXUIField attribute on the fly \(by creating your own PXFieldState\), you should localize the string independently.

```language-csharp
public new abstract class docType : PX.Data.IBqlField{}
[PXDBString(3, IsKey = true, IsFixed = true)]
[PXDefault()]
[PXUIField(DisplayName = "Document Type")]
public override string DocType { get; set; }
```

## Drop-Down Lists { .section}

You specify the values that should be displayed in drop-down lists by using the PXStringList attribute, as shown in the following example.

```language-csharp
public abstract class lineSource : PX.Data.IBqlField{}
[PXString(1, IsFixed = true)]        
[PXStringList(
    new string[] { "D", "R" },
    new string[] { "Draft", "Request" })]
[PXUIField(DisplayName = "Line Source")]
public virtual string LineSource { get; set; }
```

## Radio Buttons { .section}

For localization of the list of strings used as radio button names in a group of radio buttons \(also known as an *option buttons*\), you specify the value of the DisplayName property of PXUIField for strings in PXStringListAttribute, as shown in the following example.

**Attention:** The *-&gt;* character separates the name of the list from the command.

```language-csharp
public abstract class displayMode : 
  PX.Data.BQL.BqlString.Field<displayMode> 
{ 
  public const string AllEntries = "A";
  public const string Matched = "M";
  public const string NotMatched = "N";

  [PXLocalizable]
  public class Messages
  {
    public const string AllEntries = "Display Mode -> Display All Entries";
    public const string Matched = "Display Mode -> Matched";
    public const string NotMatched = "Display Mode -> Not Matched";
  }

  public class ListAttribute : PXStringListAttribute
  {
    public ListAttribute() : base(
      new[] { AllEntries, Matched, NotMatched },
      new[] { Messages.AllEntries, Messages.Matched, Messages.NotMatched }
    ){ }
  }
}

[PXString]
[displayMode.List]
[PXUIField(DisplayName = "Display Mode")]  
[PXDefault(displayMode.AllEntries)]  
public virtual string DisplayMode { get; set; }
```

**Parent topic:**[Supporting UI Localization](../DeveloperGuide/UIDev_Localization_Mapref.md)

