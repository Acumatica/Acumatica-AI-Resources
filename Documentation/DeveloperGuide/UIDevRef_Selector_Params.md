# Selector Control: Selector Parameters {#_59721ef0-e5d4-4b1a-bf66-740da653595f .concept}

You can configure parameters for the selector control. The provided parameter value is used in PXSelector attribute on the DAC field.

You specify selector parameters in the config property of the qp-selector control in one of the following ways:

-   If you need to specify dynamic values, use the parameters function, which is shown in the following code.

    ```language-javascript
    parameters(screen: PXScreen): { [k: string]: any };
    ```

    In the parameters function, you specify the screen class as an argument so that the validation and calculation can be performed for the provided parameters. The parameters function should return the dictionary, where each object is a name and a value of the selector parameter.

    To provide the value of the selector parameter, you can refer to the views of the current form by using the screen property. To refer to the currently selected record, you can use the activeRow property of the view. An example is shown in the following code.

    ```language-javascript
    parameters: (screen: AP203500) => ({ 
      "APRegister.docType": screen.Document_Detail.activeRow.DocType.value })
    ```

    In the code above, the parameter name is `APRegister.docType`, and the parameter value is in the `AP203500` screen, `Document_Detail` view, and `DocType` property of the currently selected record.

-   If you can specify static values, use the parameters property, which is shown below.

    ```language-javascript
    parameters: { [k: string]: any }
    ```

    As the property value, you specify the dictionary, where each object is a name and a value of the selector parameter.


## Example: Defining a Selector Column that Depends on Another Column { .section}

Suppose that you need show different records in the `refNbr` selector depending on a document type specified in the `docType` field in the same table row.

To implement this dependency, do the following:

1.  In the backend: In the PXSelector attribute for the `refNbr` DAC field, specify the `APRegister.docType` parameter, as shown in the following code.

    ```language-csharp
    [PXSelector(typeof(Search<APRegister.refNbr, 
      Where<APRegister.docType, Equal<Optional<APRegister.docType>>>>), 
      Filterable = true)]
    public virtual String RefNbr {...}
    ```

2.  In the frontend: In the view definition in TypeScript, in the definition for the `RefNbr` field, specify the parameters in the columnConfig decorator, as shown in the following code.

    ```language-javascript
    @columnConfig({
      editorConfig: {
        parameters: (screen: AP203500) => ({ 
          "APRegister.docType": screen.Document_Detail.activeRow.DocType.value })
      }
    })
    RefNbr: PXFieldState;
    ```


**Parent topic:**[Selector](../DeveloperGuide/UIDevRef_Selector_Mapref.md)

