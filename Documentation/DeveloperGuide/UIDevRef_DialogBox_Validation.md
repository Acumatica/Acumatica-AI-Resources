# Dialog Box: Field Validation {#_f36a77bd-71f6-498c-b0f2-aed127ad7043 .concept}

If you want the system to perform validation of values \(for example, in event handlers or by using the VerifyRequired method\) when a user clicks a button in a dialog box, you need to enable this validation in the frontend.

The validation can be performed both for the fields of a dialog box and for the fields on the form.

To enable this validation, do the following:

1.  In the HTML template, for the button that returns `WebDialogResult.OK`, specify `validateInput = true`, as shown in the following code.

    ```language-xml
    <footer id="footer-CreateSalesOrder">
      <qp-button id="buttonOK-CreateSalesOrder" dialog-result="OK" 
        config.bind="{validateInput: true}">
      </qp-button>
    </footer>
    ```

2.  If you need to validate values when a user clicks the **Close** button in the dialog box, in the qp-panel tag, specify `closeButtonValidateInput = true`, as shown in the following code.

    ```language-xml
    <qp-panel id="CreateSalesOrder" caption="Create Sales Order" 
      auto-repaint="true" width="sm"
      close-button-dialog-result="No" close-button-validate-input="true">
    ```


**Parent topic:**[Dialog Box](../DeveloperGuide/UIDevRef_DialogBox_Mapref.md)

