# UI Events: Handling of Large Binary Data {#_e95db9a8-b2bc-4706-a9b3-e76d53dc0ad2 .concept}

In a UI event handler, you can access large binary objects, such as PDFs or images, that are received from the server. To access the large object, you call the `baseApiClient.fetchExt` method, as shown in the following example.

```language-javascript
@handleEvent(CustomEventType.RowSelected, 
  { view: 'EmployeesWithPaychecksList' })
onEmployeesWithPaychecksRowChange(
  args: RowSelectedHandlerArgs<PXViewCollection<PREmployee>>) {
  if (!args?.viewModel?.activeRow?.BAccountID?.value) return;
  if (this.previousEmployeeRowId === 
    args.viewModel.activeRow.BAccountID.value) return;
  this.previousEmployeeRowId = 
    args.viewModel.activeRow.BAccountID.value;
  this.baseApiClient.fetchExt(`ui/screen/PR502000/lob`, {
    Command: "GeneratePdfDocument",
    Parameters: {
      employeeID: args.viewModel.activeRow.BAccountID.value,
    }
 }).then(e => {
   const iframe = document.getElementById('pdfHolder');
   if (e) {
    iframe.setAttribute('src', 
         `data:application/pdf;base64,${e}`);
   }
   else {
    iframe.setAttribute('src', "");
  }
  });
}
```

**Parent topic:**[Handling UI Events](../DeveloperGuide/UIDev_HandlingEvents_Mapref.md)

