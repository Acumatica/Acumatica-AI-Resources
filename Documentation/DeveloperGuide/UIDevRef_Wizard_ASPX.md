# Wizard: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to the wizard control to HTML or TypeScript elements.

## PXWizard

The following table shows the correspondence between the PXWizard element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXWizard```
<px:PXWizard 
  ID="PXWizard1" runat="server" 
  Width="400" Height="240" 
  DataMember="PreloadFilter"
  SkinID="Flat">
```

</td><td>

Use the [qp-wizard](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=67eb60e0-a2c4-4420-e797-1556d7f4784e) tag in HTML.```xml
<qp-wizard 
  id="wizardBudgetArticles" 
  config.bind="wizardConfig">
```

</td></tr><tr><td>

ID```
<px:PXWizard ID="PXWizard1">
```

</td><td>

Use the id property of the [qp-wizard](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=67eb60e0-a2c4-4420-e797-1556d7f4784e) tag.```xml
<qp-wizard 
  id="wizardBudgetArticles">
```

</td></tr><tr><td>

DataMember```
<px:PXWizard 
  DataMember="PreloadFilter">
```

</td><td>

Instead of specifying a single view for the whole wizard, specify views for the controls in each step of the wizard—that is, the qp-tab tags.```xml
<qp-tab ...>
  <qp-template>
    <qp-fieldset ... view.bind="PreloadFilter">
    </qp-fieldset>
  </qp-tempalte>
</qp-tab>
```

</td></tr></tbody>
</table>

## NextCommand, PrevCommand, CancelCommand, and SaveCommand

The following table shows the correspondence between the actions associated with buttons \(NextCommand, PrevCommand, CancelCommand, and SaveCommand\) and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_4e378d17-2da4-4206-836a-a97c4d609b82"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

-   NextCommand
-   PrevCommand
-   CancelCommand
-   SaveCommand

 ```
<NextCommand 
  Target="ds" Command="wNext" />
```

</td><td>

To override the standard actions, do the following:1.  In TypeScript, map the actions defined in the graph.
2.  Define a property that implements the [IWizardConfig](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=cb56332d-a454-d3b8-7eba-1e187d67e222) interface, and specify the action in the following properties of the IWizardConfig interface:

    -   nextCommand
    -   prevCommand
    -   cancelCommand
    -   saveCommand
    ```javascript
wizardConfig: IWizardConfig = {
  nextCommand: "wizardNext"
};
    ```

3.  In HTML, specify the configuration property in the config.bind attribute of the [qp-wizard](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=67eb60e0-a2c4-4420-e797-1556d7f4784e) tag.

    ```xml
<qp-wizard 
  config.bind="wizardConfig">
    ```


</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to the wizard control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXWizard

</td><td>

-   runat
-   SkinID

</td></tr><tr><td>

Pages

</td><td>

The entire control is obsolete. The steps of the wizard are defined by a set of qp-tab tags.

</td></tr><tr><td>

PXWizardPage

</td><td>

The entire control is obsolete. For each step of the wizard, use the qp-tab tag.

</td></tr><tr><td>

-   NextCommand
-   PrevCommand
-   CancelCommand
-   SaveCommand

</td><td>

Target

</td></tr></tbody>
</table>

## Caption of the Wizard and Steps

The following table lists the correspondence between the ASPX elements that were used to specify the caption of the wizard and its step and the properties in the Modern UI.

<table id="_6405d82d-2e98-47fc-8d4f-72815ef8a42e"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXSmarPanel &gt; Caption```
<px:PXSmartPanel 
  Caption="Preload Budget Articles Wizard">
```

</td><td>

To specify the caption of the wizard, use the caption property of the [IWizardConfig](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=cb56332d-a454-d3b8-7eba-1e187d67e222) interface. ```javascript
@localizable
class WizardCaptions {
  static Caption = "Preload Budget Articles";
}

wizardConfig: IWizardConfig = {
  caption: WizardCaptions.Caption
};
```

</td></tr><tr><td>

PXLabel```
<px:PXWizardPage><Template>
  <px:PXFormView ...><Template>>
    <px:PXLabel runat="server" ID="lblStep1" 
      Width="370px" Style="font-weight: bold;
      text-align: right">Step 1 of 3</px:PXLabel>
```

</td><td>

To specify the caption of a step, use the caption attribute of the qp-tab tag. Do not specify the *Step N of M* prefix; it is calculated and added automatically to the provided caption.```xml
<qp-tab 
  id="tabWizardBudgetArticles-SourceParameters" 
  caption="Select the source parameters">
```

</td></tr></tbody>
</table>

**Parent topic:**[Wizard](../DeveloperGuide/UIDevRef_Wizard_Mapref.md)

