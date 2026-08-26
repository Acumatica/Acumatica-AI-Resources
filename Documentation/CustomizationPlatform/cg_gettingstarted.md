# Getting Started {#_0a5adc4e-fc8c-4dea-85e2-8f90f9c5817a .concept}

This chapter explains how to start developing a customization project and guides you to various useful chapters about the developing process.

## To Start Developing a Customization Project: { .section}

1.  Make sure you have the prerequired knowledge described in [Knowledge Prerequisites](cg_gs_knowledgeprerequisites.md).
2.  Review [Preparation for the Acumatica ERP Installation: General Information](../UserGuide/INST_Preparing_Installation_GeneraInfo.md) in the Acumatica ERP Installation Guide.
3.  Prepare your operating system according to [System Requirements for the Acumatica ERP Installation](../UserGuide/INST_Preparing_Installation_System_Requirements.md) in the same guide.
4.  Prepare the environments as described in [Preparation for the Acumatica ERP Installation: System Environment](../UserGuide/INST_Preparing_Installation_System_Environment.md).
5.  In the application instance, assign a *Customizer* role to those who will work on the customization project. See [To Assign the Customizer Role to a User Account](CG_GL_Stages_Role.md) for details.
6.  If you haven't used version control, set up version control as described in [Integrating the Project Editor with a Version Control System](CG_GL_VCS.md). If your team already has a customization project and uses version control:
    1.  Create an empty customization project with predefined name.

        This step is needed because you can load customization project files from version control only in scope of an existing project.

    2.  Download the project from version control.

You are ready to develop your customization project.

## Implementing Customization { .section}

As a rule, the process of resolving a customization task includes the following steps:

-   *Explore the original code* of your Acumatica ERP application instance. This step is executed in the development environment, which must be the same as the production environment. See [Exploring the Source Code](CG_GL_Stages_Explore.md) for details.
-   *Develop the customization project*. This step is also executed locally in the development environment, which must include all customizations that are included in the production environment. See [To Develop a Customization Project](CG_GL_Stages_Developing.md) for details.
-   *Perform final testing*. In this step, you test the newly developed customization project in the staging environment, which can be a local copy of the customized production environment. The staging environment must include a copy of the production database. See [To Perform Final Testing of a Customization](CG_GL_Stages_Testing.md) for details.
-   *Deploy the customization project*. This step must be executed in the production environment. See [To Deploy a Customization Project](CG_GL_Stages_Deploying.md) for details.

    **Attention:**

    The version number of Acumatica ERP used in the development, staging, and production environments should be the same. If they are not, before deploying and publishing a project on the production instance, you should update the application instances to the same version. If the production application instance has been updated \(or will be updated soon\) to a particular version, you should update the development and staging instances to the target version and repeat all testing steps. Then, if the tests are successful, you should again create the deployment package to upload it to the production environment.

    Also, keep in mind that to carry out the final testing \(with the production database\) and deployment stages, you must be registered as an internal user with the *Customizer* role assigned.


-   **[Knowledge Prerequisites](../CustomizationPlatform/cg_gs_knowledgeprerequisites.md)**  

-   **[To Prepare an Environment](../CustomizationPlatform/cg_gs_preparingenvironments.md)**  

-   **[To Assign the Customizer Role to a User Account](../CustomizationPlatform/CG_GL_Stages_Role.md)**  

-   **[Exploring the Source Code](../CustomizationPlatform/CG_GL_Stages_Explore.md)**  

-   **[To Develop a Customization Project](../CustomizationPlatform/CG_GL_Stages_Developing.md)**  

-   **[To Perform Final Testing of a Customization](../CustomizationPlatform/CG_GL_Stages_Testing.md)**  

-   **[To Deploy a Customization Project](../CustomizationPlatform/CG_GL_Stages_Deploying.md)**  

-   **[Asking Questions](../CustomizationPlatform/cg_gs_askingquestions.md)**  


