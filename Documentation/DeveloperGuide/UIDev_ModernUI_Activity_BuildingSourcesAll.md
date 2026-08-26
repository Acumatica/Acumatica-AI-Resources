# Modern UI Development:To Build the Source Code of All Acumatica ERP Forms for Modern UI Development {#_01b91b0d-797f-4b84-b97b-0afb11b62a5e .task}

The following activity will walk you through the process of initially building the source code for all the forms that are available in the Modern UI.

## Story { .section}

Suppose that you are going to develop the Modern UI for new Acumatica ERP forms or customize the Modern UI of existing forms for the Smart Fix company. Before you start your development, you need to rebuild all the Modern UI sources in the `FrontendSources` folder of your instance.

## Process Overview { .section}

You will execute a command to build the source code for the first time.

## System Preparation { .section}

Before you build the source code for the first time, do the following:

1.  Complete the following prerequisite activity: [Modern UI Development: To Deploy an Instance with Custom Forms and the Modern UI](UIDev_ModernUI_Activity_PrepareInstance.md). As a result, the Node.js, the node version manager \(nvm\), and the node package manager \(npm\) have been installed correctly on your computer.
2.  Use Windows PowerShell or a similar program to run the following command in the `FrontendSources` folder of your instance: `npm run getmodules`. This command installs the required dependencies needed to build the sources correctly.

## Step: Building the Source Code for All Acumatica ERP Forms { .section}

When you build the sources in the `FrontendSources` folder of your instance for all Acumatica ERP forms that are available in the Modern UI, the system generates the form schema and JavaScript code from the TypeScript code and creates the mapping between the JavaScript and TypeScript code. You can then use this mapping to debug the client code in a web browser.

To build the sources, run the `npm run build-dev` command in the `FrontendSources` folder. Note that this command may take some time to finish its execution.

Once the command has finished executing, you should see a message that a webpack has been successfully compiled.

**Parent topic:**[Getting Started with the Modern UI](../DeveloperGuide/UIDev_ModernUI_Mapref.md)

