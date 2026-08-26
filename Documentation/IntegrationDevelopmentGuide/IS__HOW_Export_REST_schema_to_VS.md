# To Import a REST Schema to a Visual Studio Solution {#_41be41d9-05cb-4536-a7a8-b38610760065 .task}

You can create a Visual Studio project and use the REST schema contained in the Acumatica ERP `swagger.json` files for interaction with Acumatica ERP. \(For details about the `swagger.json` files, see [OpenAPI 3.0](../Shared/../IntegrationDevelopmentGuide/IS__IS_CB_REST_Endpoint_API_Reference.md).\) You import the REST schema to a Visual Studio solution in two stages:

1.  You generate Visual Studio packages from the REST schema.
2.  You include the generated Visual Studio packages in your Visual Studio solution.

The following sections provide instructions on these stages, as well as an example of the use of the imported REST schema.

## To Generate Visual Studio Packages from a REST Schema { .section}

1.  Obtain the `swagger.json` file you need.
2.  Open the website [https://editor.swagger.io](https://editor.swagger.io).
3.  Insert the contents of the `swagger.json` file into the website's edit box.

    The website suggests that you convert the JSON contents to YAML format.

4.  Click **OK** to agree to the suggestion or **Cancel** to leave the contents in JSON format; neither of these actions affects the result of parsing the file.

    The website engine parses the REST schema contained in the `swagger.json` file and create the visual representation of the REST schema.

5.  On the **Generate Client** menu, invoke the **csharp** command.

    The `csharp-client-generated.zip` archive is downloaded to your computer. The archive contains the *IO.Swagger* Visual Studio solution, two Visual C\# projects \(*IO.Swagger* and *IO.Swagger.Test*\), and other files.

6.  Extract the `csharp-client-generated.zip` archive.
7.  Make sure that the `IO.Swagger` solution can be built.

**Note:** To compile the *IO.Swagger* and *IO.Swagger.Test* projects, you may have to explicitly specify the path to the `RestSharp.dll` library. In addition, you may get compilation errors related to the misuse of the `override` keyword and the absence of the `BaseValidate` method. To fix these errors, remove the misused `override` keyword and the entire command that contains the nonexistent `BaseValidate` method.

## To Add the Generated Projects to a Visual Studio Solution { .section}

1.  In Visual Studio, create a C\# project.
2.  In your project, add a reference to the `Newtonsoft.Json` library as follows:
    1.  In Solution Explorer, right-click your project.
    2.  Click **Manage NuGet Packages**.
    3.  Select the **Browse** tab.
    4.  Search for the `Newtonsoft.Json` library, and install it.
3.  In the folders containing the unpacked contents from the `csharp-client-generated.zip` archives, rename the *IO.Swagger* projects and the `IO.Swagger` namespaces to avoid the name conflict.

    You do not have to add the `IO.Swagger.Test` projects to the solution of your C\# project.

4.  Add the former *IO.Swagger* projects to the solution of your C\# project.
5.  In your project, add a reference to the `RestSharp.dll` library.
6.  Add your code that uses the REST API to your project.

    **Tip:** You can find other examples in the [AcumaticaRESTAPIClientForCSharp](https://github.com/Acumatica/AcumaticaRESTAPIClientForCSharp) repository on GitHub.


**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

