# Search Customization: Fields from Foreign DACs in the Search Index and Search Results {#_a22825ef-6aaa-42e9-a35d-26af10bc963a .concept}

In the search index, search result title, and search result lines, you can include the fields from the following DACs:

-   The DAC on which the [PXSearchable](https://help.acumatica.com/(W(7))/Help?ScreenId=ShowWiki&pageid=3fcecc8e-f198-2488-5671-91713e77fe49) attribute is declared \(which is referred to as the *declaring* DAC in this topic\)
-   Other DACs \(which are called *foreign* DACs in this topic\)

**Attention:** Though you can use the fields of foreign DACs in the search index and search results, we recommend that you use only fields that are not changed frequently. For example, you can use the `CD` fields, such as CustomerCD and VendorCD. For the declaring DAC, the PXSearchable attribute is responsible for updating the search index. However, the PXSearchable attribute does not update the search index on changes in foreign DACs. Therefore, if you use a frequently changed field of a foreign DAC in the search index or search results, after the foreign field is changed, the search index will become outdated.

## Retrieval of the Search Results { .section}

The algorithm of retrieval of the values for the search results works as follows:

1.  As a part of the input data, the algorithm receives a set of fields. This set usually includes the following fields:

    -   The title fields \(see the titleFields parameters of the [PXSearchable](https://help.acumatica.com/(W(7))/Help?ScreenId=ShowWiki&pageid=3fcecc8e-f198-2488-5671-91713e77fe49) attribute constructor\)
    -   Optional: The fields from the fields parameter of the attribute constructor
    -   Optional: The fields from other properties \(see the Line1Fields, Line2Fields, and NumberFields properties\)
2.  The fields from this set are ordered in the declaration order, starting from the title fields.
3.  The fields from this set are processed sequentially as follows:

    1.  If a DAC field belongs to the declaring DAC, a DAC derived from the declaring DAC, or a DAC that is an ancestor of the declaring DAC, the value of the field is retrieved directly from the declaring DAC instance.
    2.  When the system encounters the first DAC field that does not belong to the hierarchy of the declaring DAC \(that is, the first foreign DAC field\), the system uses the [PXSelector](https://help.acumatica.com/(W(7))/Help?ScreenId=ShowWiki&pageid=ba7af401-68a9-90bd-9a63-8b2ab7d23c4b) attribute of the previous field in the declaration order to obtain the value of the foreign DAC field. The system also caches the foreign DAC relationship \(that is, the foreign DAC and the field of the declaring DAC that has the PXSelector attribute for the foreign DAC\).
    3.  When the system encounters other foreign DAC fields, it first checks the cached foreign DAC relationships. If the needed relationship is not found, it retrieves another relationship from the previous field in the declaration order.

Therefore, if you pass to the [PXSearchable](https://help.acumatica.com/(W(7))/Help?ScreenId=ShowWiki&pageid=3fcecc8e-f198-2488-5671-91713e77fe49) attribute fields only from the declaring DAC, the order of fields is not important. But if you want to display the values from foreign DACs in search results, the order of fields is crucial.

## Order of Fields in PXSearchable { .section}

You should order the fields as follows:

1.  A group of fields of the declaring DAC. The last field of the group has a [PXSelector](https://help.acumatica.com/(W(7))/Help?ScreenId=ShowWiki&pageid=ba7af401-68a9-90bd-9a63-8b2ab7d23c4b) attribute that retrieves the value of the next field that belongs to the first foreign DAC.
2.  A group of fields of the first foreign DAC.
3.  For each newly introduced foreign DAC, the following fields:
    1.  A field from the declaring DAC or a previously included foreign DAC. The field has a PXSelector attribute for the retrieval of the value of the next field that belongs to the newly introduced foreign DAC.
    2.  A group of fields of the newly introduced foreign DAC.

## Examples of Field Order { .section}

Suppose that the PXSearchable attribute has the following declaration.

```language-csharp
[PXSearchable(
  SM.SearchCategory.AR,
  // The format string for the title
  "{0}: {1} - {3}", 
  // The fields for the title
  new Type[] { 
    typeof(APInvoice.docType), typeof(APInvoice.refNbr), 
    **typeof\(APInvoice.vendorID\)**, typeof(Vendor.acctName)
  },
  ...
)]
```

In the code above, notice that the `typeof(APInvoice.vendorID)` type is declared before `typeof(Vendor.acctName)`. However, the APInvoice.vendorID field is not used in the title string format \(that is, the string does not contain a placeholder for the parameter with number 2\). The APInvoice.vendorID field is necessary because it has a PXSelector attribute that the system can use to retrieve the values of the fields of the Vendor DAC.

The following code shows a more complex example.

```language-csharp
// The attribute is assigned to the NoteID field of the RSSVDashboard DAC.
[PXSearchable(SM.SearchCategory.All, 
   // The format string uses the second field from titleFields.
   titlePrefix: "Dashboard: {1}",
   titleFields: 
     new Type[] 
     { 
       // The field with the PXSelector attribute for the Customer DAC
       // goes before the first use of the Customer DAC.
       typeof(RSSVDashboard.customerID),
       typeof(Customer.acctCD) 
     }, 
   fields: 
     new Type[]
     {
       // You do not need to add a field with the PXSelector attribute 
       // for the Customer DAC because it has already been added in titleFields.
       typeof(Customer.acctCD),
       typeof(Customer.acctName),
         
       // The field with the PXSelector attribute for the Contact DAC
       // goes before the first use of the Contact DAC.
       typeof(Customer.defContactID),
       typeof(Contact.displayName),                                
       typeof(Contact.eMail),
       typeof(Contact.phone1),
       typeof(Contact.phone2),
       typeof(Contact.phone3),
       typeof(Contact.webSite)
     },
   NumberFields = new Type[] { typeof(Customer.acctCD) }, 
   Line1Format = "{0}{1}{2}{3}", 
   Line1Fields = new Type[]
   {
     // You do not need to add fields with the PXSelector attribute 
     // for the Customer and Contact DACs 
     // because they have already been added.
     typeof(Customer.acctCD),
     typeof(Contact.displayName),
     typeof(Contact.phone1),
     typeof(Contact.eMail)
   }, 
   Line2Format = "{1}{2}{3}", 
   Line2Fields = new Type[]
   {
     // The field with the PXSelector attribute for the Address DAC
     // goes before the first use of the Address DAC.
     typeof(Customer.defAddressID), 
     typeof(Address.displayName),            
     typeof(Address.city),
     typeof(Address.state)
   }
)]
```

## Optimization of the Search Index Building { .section}

During the building of the search index, the system obtains the value of a field from a foreign DAC by using a complex mechanism that involves [PXSelector](https://help.acumatica.com/(W(7))/Help?ScreenId=ShowWiki&pageid=ba7af401-68a9-90bd-9a63-8b2ab7d23c4b) attributes. This approach results in a number of database queries. To speed up the search index building, you can use the SelectForFastIndexing property of the [PXSearchable](https://help.acumatica.com/(W(7))/Help?ScreenId=ShowWiki&pageid=3fcecc8e-f198-2488-5671-91713e77fe49) attribute. In this property, you should specify a JOIN statement with all additional DACs that should be used during the rebuilding of the search index, as the following example shows.

```language-csharp
SelectForFastIndexing = typeof(SelectFrom<GIDesign>.InnerJoin<SiteMap>.
  On<SiteMap.url.IsEqual<GIUrl.giUrlName.Concat<GIDesign.name>>>)
```

**Parent topic:**[Customizing the Acumatica ERP Search](../StudioDeveloperGuide/CodeCustomization_Search_Mapref.md)

