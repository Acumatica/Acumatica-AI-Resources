# To Prepare an Environment {#_e8e3c952-463b-4c90-9829-5c6721523902 .concept}

As you perform a customization task, you usually need to use three different sites:

-   A **development environment**: Your local environment, on which you program and debug the customization code.
-   A **production environment**: The target environment of the customer's system that must be customized.
-   A **staging \(or preproduction\) environment**: A copy of the production environment, in which you will test the solution before applying it to the production environment. The staging environment can be created on your local system.

All environments are prepared in the same way as described in the following instruction.

## To Prepare an Environment { .section}

1.  Install Acumatica ERP.
2.  In the Acumatica ERP Configuration wizard, which opens, select **Deploy a New Acumatica ERP Instance** to create a local instance of Acumatica ERP for the development environment.
3.  On the *Database Configuration* page \(Step 2 of 8 of the process of deploying a new instance\), create a new database for the development environment.
4.  On the *Company Setup* page \(Step 3 of 8\), specify the desired settings for the company.
5.  On the *Instance Configuration* page \(Step 6 of 8\), as the **Local Path to the Instance**, specify a path outside of the `C:\Program Files (x86)` and `C:\Program Files` folders to avoid an issue with permission to work in these folders. For example, you could enter `C:\AcumaticaSites\MyProject`.

    The system creates a new Acumatica ERP instance, adds a new company, and loads the selected data. Use the following initial credentials to log in to the new company:

    -   **Login**: `admin`
    -   **Password**: `setup`
    Change the password when the system prompts you to do so.

6.  Log in to Acumatica ERP.

**Parent topic:**[Getting Started](../CustomizationPlatform/cg_gettingstarted.md)

