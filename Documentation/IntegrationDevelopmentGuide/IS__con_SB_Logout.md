# Logout\(\) Method {#_378c9257-9a93-48c8-a3a4-1180afa00f51 .reference}

You use the Logout\(\) method to make the client application sign out from Acumatica ERP.

## Syntax { .section}

```
public void Logout()
```

## Usage Notes { .section}

For each call of the Login\(\) method, you must call the Logout\(\) method after you finish your work with Acumatica ERP to close the session. Therefore, when you are working with the web services API, we recommend that you use the pattern that is shown in the following code.

```
using 
(
  //Connect to the web services and sign in to Acumatica ERP
  Screen context = new Screen();
  ...
)
{
  try
  {
    //Import, export, or submit data
    ...
  }
  finally
  {
    //Sign out from Acumatica ERP
    context.Logout();
  }
}
```

**Parent topic:**[Screen-Based SOAP API Reference](../IntegrationDevelopmentGuide/IS__IS_SB_API_Reference.md)

