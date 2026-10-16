# Updating a Customization Project for the Modern UI: The MSDL Adaptation Tool

The Acumatica mobile app connected to Acumatica ERP 2026 R2 switches from using the names of containers and fields from the WSDL schema to using view names and DAC fields. As a result, MSDL mappings use view names and DAC field names instead of WSDL names. If your customization project contains MSDL scripts created for Acumatica ERP 2026 R1 and previous versions, you need to update them to use the view names and DAC field names.

**Important:** With the new approach, the MSDL mapping takes into account only the schema of the Modern UI version of the form.

You can use the MSDL adaptation tool to help you adapt MSDL scripts based on names from the WSDL schema for the corresponding forms on the Modern UI.

## Changes in the MSDL Scripts

In versions before Acumatica ERP 2026 R2, MSDL mappings identified containers and fields by their names in the WSDL schema. Starting from Acumatica ERP 2026 R2, you should use the corresponding view name for a container and DAC field name for a field.

For example, in the WSDL schema, the `CaseClassID` field of the `Case` view appeared as `CaseClass` in the `CaseSummary` container. Previously, you mapped the field by adding the `CaseSummary` container and the `CaseClass` field to that container. Now, you use the view name, `Case`, for the container and the DAC field name, `CaseClassID`, for the field.

**Note:** To find the view and the name of the field, you can use Element Inspector \(Ctrl+Alt+Click\).

To support backward compatibility with autotests, you may use containerName and legacyName attributes to specify the name of the container and the field from the WSDL schema. You may come across such attributes in the existing mappings that are supplied out of the box.

The following table shows the MSDL script for the form in the Classic UI and in the Modern UI.

<table id="table_unk_1bc_lkc"><thead><tr><th>

Mapping for Classic UI

</th><th>

Mapping for Modern UI

</th></tr></thead><tbody><tr><td>

```
add screen CR306000 {
  **add container "CaseSummary"** {
    formActionsToExpand = 1
    add layout "ContactHeader" {
      displayName = "ContactHeader"
      layout = "HeaderSimple"
      add layout "ContactHeaderRow1" {
        displayName = "ContactHeaderRow1"
        layout = "Inline"
        add field "CaseID" {
          displayName = "ID"
        }
        add field "Status"
      }
      add layout "ContactHeaderRow2" {
        displayName = "ContactHeaderRow2"
        layout = "Inline"
        **add field "CRMInfoEntitlement\#BusinessAccount"**
      }
    }
    add field "Subject"
    **add field "CaseClass"** {
      pickerType = Attached
    }
    ...
  }
}
```

</td><td>

```
add screen CR306000 {
  **add container "Case"** {
    **containerName = "CaseSummary"**
    formActionsToExpand = 1
    add layout "ContactHeader" {
      displayName = "ContactHeader"
      layout = "HeaderSimple"
      add layout "ContactHeaderRow1" {
        displayName = "ContactHeaderRow1"
        layout = "Inline"
        add field "CaseCD" {
          displayName = "ID"
        }
        add field "Status"
      }
      add layout "ContactHeaderRow2" {
        displayName = "ContactHeaderRow2"
        layout = "Inline"
        **add field "CaseCurrent\#BusinessAccount"**
      }
    }
    add field "Subject"
    **add field "CaseClassID"** {
      pickerType = Attached
    }
    ...
  }
}
```

</td></tr></tbody>
</table>

## Adapting MSDL Scripts

The out-of-the-box MSDL scripts have already been adapted to the Modern UI in Acumatica ERP 2026 R2.

If a customization project contains a screen that requires adaptation to the Modern UI, the MSDL Editor displays a message in the **Errors** section. An example is shown in the screenshot below.


To adapt MSDL scripts in the customization project, use the MSDL adaptation tool:

-   To adapt all screens in the project, on the Mobile Application page, in the More menu, run the **Adapt All to Modern UI** command.
-   To adapt only one screen at a time, on the page with the MSDL scripts for a single screen, run the **Adapt to Modern UI** command \(shown in the screenshot above\).

**Attention:** Before running the MSDL adaptation tool, make sure all relevant features are enabled. Otherwise, the tool may not detect the field names in the Modern UI version of the screen.

The MSDL adaptation tool does the following:

-   Changes container and field names if the names of corresponding views and DAC fields are different from the previously specified ones
-   Specifies the old names in the containerName and legacyName attributes
-   Adds comment for fields which name could not be determined automatically

## Before You Adapt and Publish

-   A customization project that contains MSDL scripts that have not been adapted, cannot be published.
-   The MSDL adaptation tool provides a draft MSDL script. You need to review all MSDL scripts before publishing them on a production instance.

**Parent topic:**[Updating Customization Projects for the Modern UI](../DeveloperGuide/UIDev_Customization_Convert_Mapref.md)

