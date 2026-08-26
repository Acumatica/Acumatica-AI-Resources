# Wizard: Conversion from ASPX to HTML and TypeScript {#_4b40bc5d-19f3-44b3-a251-4671ed30f2f0 .concept}

The following tables will help you to convert the ASPX elements that are related to the wizard control to HTML or TypeScript elements.

## PXWizard { .section}

The following table shows the correspondence between the PXWizard element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXWizard```
<px:PXWizard 
  ID="PXWizard1" runat="server" 
  Width="400" Height="240" 
  DataMember="PreloadFilter"
  SkinID="Flat">
```

|Use the [qp-wizard](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=67eb60e0-a2c4-4420-e797-1556d7f4784e) tag in HTML.```language-xml
<qp-wizard 
  id="wizardBudgetArticles" 
  config.bind="wizardConfig">
```

|
|ID```
<px:PXWizard ID="PXWizard1">
```

|Use the id property of the [qp-wizard](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=67eb60e0-a2c4-4420-e797-1556d7f4784e) tag.```language-xml
<qp-wizard 
  id="wizardBudgetArticles">
```

|
|DataMember```
<px:PXWizard 
  DataMember="PreloadFilter">
```

|Instead of specifying a single view for the whole wizard, specify views for the controls in each step of the wizard—that is, the qp-tab tags.```language-xml
<qp-tab ...>
  <qp-template>
    <qp-fieldset ... view.bind="PreloadFilter">
    </qp-fieldset>
  </qp-tempalte>
</qp-tab>
```

|

## NextCommand, PrevCommand, CancelCommand, and SaveCommand { .section}

The following table shows the correspondence between the actions associated with buttons \(NextCommand, PrevCommand, CancelCommand, and SaveCommand\) and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|-   NextCommand
-   PrevCommand
-   CancelCommand
-   SaveCommand

 ```
<NextCommand 
  Target="ds" Command="wNext" />
```

|To override the standard actions, do the following:1.  In TypeScript, map the actions defined in the graph.
2.  Define a property that implements the [IWizardConfig](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=cb56332d-a454-d3b8-7eba-1e187d67e222) interface, and specify the action in the following properties of the IWizardConfig interface:

    -   nextCommand
    -   prevCommand
    -   cancelCommand
    -   saveCommand
    ```language-javascript
wizardConfig: IWizardConfig = {
  nextCommand: "wizardNext"
};
    ```

3.  In HTML, specify the configuration property in the config.bind attribute of the [qp-wizard](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=67eb60e0-a2c4-4420-e797-1556d7f4784e) tag.

    ```language-xml
<qp-wizard 
  config.bind="wizardConfig">
    ```


|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to the wizard control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXWizard|-   runat
-   SkinID

|
|Pages|The entire control is obsolete. The steps of the wizard are defined by a set of qp-tab tags.|
|PXWizardPage|The entire control is obsolete. For each step of the wizard, use the qp-tab tag.|
|-   NextCommand
-   PrevCommand
-   CancelCommand
-   SaveCommand

|Target|

## Caption of the Wizard and Steps { .section}

The following table lists the correspondence between the ASPX elements that were used to specify the caption of the wizard and its step and the properties in the Modern UI.

|ASPX Control|Properties|
|------------|----------|
|PXSmarPanel &gt; Caption```
<px:PXSmartPanel 
  Caption="Preload Budget Articles Wizard">
```

|To specify the caption of the wizard, use the caption property of the [IWizardConfig](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=cb56332d-a454-d3b8-7eba-1e187d67e222) interface. ```language-javascript
@localizable
class WizardCaptions {
  static Caption = "Preload Budget Articles";
}

wizardConfig: IWizardConfig = {
  caption: WizardCaptions.Caption
};
```

|
|PXLabel```
<px:PXWizardPage><Template>
  <px:PXFormView ...><Template>>
    <px:PXLabel runat="server" ID="lblStep1" 
      Width="370px" Style="font-weight: bold;
      text-align: right">Step 1 of 3</px:PXLabel>
```

|To specify the caption of a step, use the caption attribute of the qp-tab tag. Do not specify the *Step N of M* prefix; it is calculated and added automatically to the provided caption.```language-xml
<qp-tab 
  id="tabWizardBudgetArticles-SourceParameters" 
  caption="Select the source parameters">
```

|

**Parent topic:**[Wizard](../DeveloperGuide/UIDevRef_Wizard_Mapref.md)

