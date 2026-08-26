# UI Localization: Application Messages in C\# {#_49d467e5-7717-4393-a5c6-398d4bcf818c .concept}

For localization of the messages in the C\# source code, the system collects strings from the classes that are marked with the PXLocalizable attribute.

## Defining Localized Messages in Your Application { .section}

To make your application display localized messages, you need to move all strings that should be translated to the public static `Messages` class and specify the PXLocalizable attribute for this class, as shown in the following code.

**Attention:** The exceptions to this requirement are field descriptions and list attributes in the data access classes, which are handled separately. For details on how to make field descriptions and list attributes localizable, see [UI Localization: DACs](UIDev_Localization_DACs.md#).

```language-csharp
using System;
using PX.Data;
using PX.Common;

[PXLocalizable()]
public static class Messages
{
   public const string FieldNotFound = "The field is not found.";
   public const string InvalidAddress = "The address is not valid.";
   public const string AdditionalData = "Author's title: {0}; author's name: {1}.";
}
```

**Attention:** No hyphenation is provided by the system. During the acquisition process of localizable data, all the new-line symbols \(*\\n\\r*\) are to be removed. You can use the reserved symbol \(*~*\) to cause the insertion of a new line.

## Displaying the Localized Version of a Message { .section}

If a message from the `Messages` class is used in an error or warning message that is displayed when an exception of the PXException type or of a type derived from PXException is thrown, you provide a non-localized message. \(See the following example.\) The system displays the localized message automatically if there is a translation for this message in the database.

```language-csharp
if (field == null)
{
    throw new PXException(Messages.FieldNotFound);
}
```

If you need to receive the localized version of a message from the `Messages` class within the application code \(for example, if the message is displayed in the confirmation dialog box, which is displayed if you use the Ask\(\) method of a data view in the code\), you use one of the following methods:

-   PXMessages.Localize\(\): The method searches for the translation of the provided string in the database and returns the first translation it finds.

    ```language-csharp
    string msg = PXMessages.Localize(Messages.FieldNotFound);
    ```

-   PXMessages.LocalizeFormat\(\): The method searches for the translation of the provided string, which includes placeholders \(such as *\{0\}* or *\{1\}*\), in the database and returns the first translation it finds.
-   PXLocalizer.Localize\(\): The method returns the translation with the given key, which you specify in the second parameter. A string may have multiple translations; one translation for each occurrence of the string in the application. For each of the occurrences, a key value is created. For example, if the string is declared in a class marked with the PXLocalizable attribute, the full qualified name of the class is the key, as the following code shows.

    ```language-csharp
    string localizedMsg = PXLocalizer.Localize(
        ActionsMessages.ChangesWillBeSaved,
        typeof(ActionsMessages).ToString());
    ```


**Parent topic:**[Supporting UI Localization](../DeveloperGuide/UIDev_Localization_Mapref.md)

