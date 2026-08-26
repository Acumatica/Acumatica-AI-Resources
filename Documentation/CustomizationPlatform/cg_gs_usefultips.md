# Useful Tips {#_5bc1f3a3-a149-4c00-ade4-c6c3ff4b1f48 .concept}

Here are some tips and tools that you can use to simplify your development process.

## Organize team development { .section}

If several developers are working on the customization project, it is important to organize a continuous team development. Here are several essential points for it:

-   Organize a centralized source control, where all developers can push the work they've done. To integrate the changes into source control, you can use automation scripts.
-   All developers should have a local version of Visual Studio, project's database and repository. This ensures independent development and debugging at all times.
-   Every developer should have Acumatica ERP instance in the same directory and with the same name. This helps to maintain the same references of the extension library \(DLL\) to the project's `/bin` folder.
-   All changes to the customization project and Acumatica ERP related development should be stored in the source control. Code should be stored as a part of Visual Studio project. UI, database, and data changes should be included into a customization project and also stored in source control.
-   Developers may work on different features in separate branches and merge their work to the main branch only when the changes are completed and tested.
-   You can do parts of continuous integration manually on your local machine and automatically on the build server from centralized repository.

## Use Acuminator { .section}

You can simplify customization development in Visual Studio by using Acuminator - a static code analysis and colorizer tool. Acuminator provides diagnostics and code fixes for common developer challenges related to Acumatica Framework. Also, Acuminator can colorize and format BQL statements, and can collapse attributes and parts of BQL queries.

To use Acuminator in Visual Studio:

1.  Download Acuminator from [the Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=Acumatica.Acuminator).

    You get a Visual Studio extension installer \(VSIX file\).

2.  Install Acuminator by launching the downloaded VSIX file.

Acuminator is ready for use. To check it, open your customization project in Visual Studio. BQL statements and DAC code Acumatica Framework should be highlighted.

**Parent topic:**[Integrating the Project Editor with Microsoft Visual Studio](../CustomizationPlatform/CG_Platform_Studio.md)

