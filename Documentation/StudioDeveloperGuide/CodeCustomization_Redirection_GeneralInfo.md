# Redirection to Webpages: General Information {#_5c4b428c-8cc5-4d4b-82ba-e89936314d48 .concept}

This lesson describes two types of redirection to webpages you can implement on an Acumatica ERP form:

-   Adding a simple redirection link to the grid of a form by using the PXSelector attribute.
-   Adding a redirection link by using an action. By using this approach, you can also add conditional logic to the form so that a redirection link opens different forms, depending on whether a specified condition is met.

## Learning Objectives { .section}

In this chapter, you’ll learn how to do the following:

-   Add a redirection link by using the PXSelector attribute on a DAC field
-   Add a redirection link by implementing an action with a corresponding button on the form
-   Redirect the user to a report at the end of a processing operation

## Applicable Scenarios { .section}

You add redirection to a webpage on a form when you need to give users the ability to open one of the following:

-   A record's data entry form with the record displayed, so that a user can get detailed information about that record
-   A report or a generic inquiry related to the record
-   Any destination URL

## Redirection Link from a Selector Control { .section}

A redirection link from a selector control is often used for opening the data entry form on which the record was created. The user can then view the selected record and make any needed edits. You can add redirection from a selector control declaratively by doing the following:

-   Adding the [PXSelector](https://help.acumatica.com/(W(9))/Help?ScreenId=ShowWiki&pageid=ba7af401-68a9-90bd-9a63-8b2ab7d23c4b) attribute to a field in its data access class
-   Adding the [PXPrimaryGraph](https://help.acumatica.com/(W(4))/Help?ScreenId=ShowWiki&pageid=842ed8f6-e659-45ef-3083-6696cf1fecaf) attribute to the DAC that corresponds to the record in the selector control
-   Configuring the selector control as described in [Selector Control: Configuration of a Link](../DeveloperGuide/UIDevRef_Selector_Link.md)

## Redirection in an Action { .section}

To implement redirection in an action, you need to throw one of the exceptions provided by the Acumatica Framework. Once an exception is thrown, it interrupts the current context and propagates up the call stack until it’s handled by the Acumatica Framework, which performs the redirection. \(This mechanism doesn’t affect the performance of the application.\)

The following exceptions are used for redirection:

-   [PXRedirectRequiredException](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=13d4a907-f13d-9307-00b1-2db76ee9c6ba) opens the specified application page in the same window \(the default behavior\) or a new one.
-   [PXPopupRedirectException](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d9f44c15-aad4-407a-205c-b38138a8d451) opens the specified application page in a pop-up window.
-   [PXReportRequiredException](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=c85ab4ce-160d-dfc3-2987-ddca0ae64c41) opens the specified report in the same window \(the default behavior\) or a new one.
-   [PXRedirectWithReportException](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=1c494034-939c-fefb-7a79-3b735cbf4b88) opens two pages: the specified report in a new window, and the specified application page in the same window.
-   [PXRedirectToUrlException](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=6ca87219-b63a-ae06-5ded-2fd17e6adfe7) opens the webpage with the specified external URL in a new window. This exception is also used for opening an inquiry page that’s loaded into the same window by default.

If you want to add a redirection link that’s implemented by using an action, you need to configure the selector control as described in the [Link Behavior](../DeveloperGuide/UIDevRef_Selector_Link.md#_8b030877-81b7-47e1-b29c-7d7735de8e2c) section of [Selector Control: Configuration of a Link](../DeveloperGuide/UIDevRef_Selector_Link.md).

## Handling of Redirection Exceptions { .section}

In most cases, you don’t need to implement the handling of exceptions that are used for redirection.

However, in cases where certain scopes are used that need to distinguish between their own successful and failed closures in conjunction with a redirect operation, you should implement the exception handler and explicitly close all these scopes. For example, if a PXTransactionScope object is being used and redirection is being performed, you should implement the exception handler and explicitly close the scope. For a PXTransactionScope object, you should do this by calling its Complete method in the `catch` block of the exception handler. The following code example shows how this is implemented.

```language-csharp
using PXTransactionScope tranScope = new();
try
{
  // Do something that may throw any kind of redirect exception
  tranScope.Complete();
}
catch(PXBaseRedirectException redirect){
  tranScope.Complete();
  throw;
}
```

Note that in the above code, a PXBaseRedirectException has been used. All the exceptions listed in the preceding section are derived from this base class.

**Parent topic:**[Redirecting the User to Webpages](../StudioDeveloperGuide/CodeCustomization_Redirection_Mapref.md)

