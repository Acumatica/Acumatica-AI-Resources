# Creating a Custom Exception {#_0894fddc-4a7a-4750-a2c9-1bbf5367b8b9 .concept}

In some rare cases, the exceptions provided by the Acumatica Framework may not provide sufficient functionality for the custom business logic that you have implemented. In these cases, you need to create a custom exception.

**Important:** We recommend avoiding the creation of a custom exception. Instead, we recommend that you review your implementation of the business logic and modify it to eliminate the need for a custom exception, which is usually indicative of a poor design of the business logic.

The PXException class serves as the base class for all existing exceptions that are available in the framework. This base class provides the localization of error messages and some helper methods. For details, see [PXException](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=5f3dd9b1-1d2b-10e8-fc00-bd51fc71c8ee). To create a custom exception that is supposed to hold a localizable message, you derive a class from the PXException base class, as shown in the following code example.

``` {#codeblock_g34_11n_bdc}
public class CustomerNotFoundException : PXException
{
  ...
}
```

To create a custom redirect exception, you must derive a class from the PX.Data.PXBaseRedirectException base class. For details about redirecting to webpages by using exceptions, see [Redirection to Webpages: General Information](CodeCustomization_Redirection_GeneralInfo.md).

## Creating a Custom Exception Class with Serializable Data {#section_obd_yjn_bdc .section}

If your custom exception class declares new serializable data in the form of instance fields and auto-generated instance properties that are not marked with the System.NonSerializedAttribute attribute, you need to declare a serialization constructor in the class and provide an override for the PX.Data.PXException.GetObjectData method. This method is responsible for creating serialized data from the instance fields and the auto-generated instance properties. The serialization constructor is responsible for recreating the instance fields and the auto-generated instance properties from the serialized data. You must also call the base serialization constructor and the base GetObjectData method in your custom exception class. This ensures that the serializable data from the base exception types is processed correctly. The following code shows an example.

``` {#codeblock_rng_vcn_bdc}
public class CustomerNotFoundException : PXException
{
  public int? CustomerID
  {
    get;
    set;
  }

  // The serialization constructor
  protected CustomerNotFoundException(SerializationInfo info, StreamingContext context) : 
                                      base(info, context)
  {
    ReflectionSerializer.RestoreObjectProps(this, info);
  }
  
  // The override of the GetObjectData method
  public override void GetObjectData(SerializationInfo info, StreamingContext context)
  {
    ReflectionSerializer.GetObjectData(this, info);
    base.GetObjectData(info, context);
  }
}
```

## Creating a Custom Exception Class Without Serializable Data {#section_jq3_pjn_bdc .section}

If your custom exception class does not contains any objects that declare new serializable data, you can omit the declaration of a serialization constructor as well as the override for the GetObjectData method. The following code shows an example.

``` {#codeblock_nmz_2kn_bdc}
public class DocumentNotApprovedException : PXException
{	
	[field: NonSerialized]
	public Guid? DocumentNoteID { get; set; } 
}
```

The following types of objects are considered non-serializable:

-   Fields and properties that are marked as non-serializable, as shown in the preceding code example
-   Static fields and constants
-   Static properties
-   Calculated properties
-   Properties with an explicit backing field \(that is inherited from the base class\), as shown in the following example

    ``` {#codeblock_jx1_tkn_bdc}
    public int Property 
    {
       get =>  _fieldFromBaseClass;
       set 
       {
    	   _fieldFromBaseClass = value;
       }
    }
    ```


**Parent topic:**[Working with Exceptions](../StudioDeveloperGuide/BL_mng_Working_With_Exceptions.md)

