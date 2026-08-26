# Barcode Editor: Configuration of Sound Effects {#_2f5f00f1-04ee-49a5-8e29-67edb73224f3 .concept}

In the barcode editor, you can configure a sound signal that the computer plays when a barcode is being scanned. You can also specify the location of the sound signal library to specify a custom sound.

## Specifying a Sound Signal { .section}

To specify a sound signal, you need to pair it with an invisible control. This control should be mapped to a field that contains the name of sound files. Do the following:

1.  In TypeScript, define a view and a field that contains a sound file, as shown in the following example.

    ```
    export class ScanInfo extends PXView {
        MessageSoundFile: PXFieldState<PXFieldOptions.Disabled>;
        ...
    }
      
    export abstract class BarcodeProcessingScreen extends PXScreen {
        @viewInfo({ containerName: "Scan Information" })
        Info = createSingle(ScanInfo);
        ...
    }
    ```

2.  In the HTML template, add a field that contains a sound file, as shown in the following example. The field should be invisible.

    ```
    <qp-fieldset id="fsInfo-Header" view.bind="Info">
      <field name="MessageSoundFile" show.bind="false"></field>
    </qp-fieldset>
    ```

3.  Specify the field name in the `soundControl` property of the barcode editor control, as shown in the following example.

    ```
    <field name="Barcode" control-type="qp-barcode-input"
      config-sound-control.bind="Info.MessageSoundFile" ...></field>
    ```


## Configuring the Location of the Sound Signal Library { .section}

The config parameter of the qp-barcode-input control provides the following ways to specify the sound signal and its location:

-   The soundMapper function: The function accepts the name of the file as an argument and returns the file with its path. An example of the function definition is shown in the following code.

    ```
    soundMapper : (name) => `https://contoso.com/themes/business/${name}.webm`
    ```

-   The soundPath and soundControl properties: The properties specify the URL of the folder with the sound files and the field that contains the file name without an extension, respectively.

    If the soundMapper function is defined, the system does not analyze the values defined in these properties. If the soundMapper function is not defined, the system determines the sound file location as follows: `"soundPath" + "value_from_soundControl" + ".wav"`. For example, suppose that you specify the soundPath and soundControl values as shown in the following code.

    ```
    @controlConfig({
      soundPath: "https://contoso.com/themes/business/",
      soundControl: Info.MessageSoundFile
    })
    Barcode : PXFieldState;
    ```

    The name of the file in the `Info.MessageSoundFile` field is *"Success"*. The resulting file URL will look as follows.

    ```
    https://contoso.com/themes/business/Success.wav
    ```


**Parent topic:**[Barcode Editor](../DeveloperGuide/UIDevRef_BarcodeInput_Mapref.md)

