# Upgrade of Workflows: General Information {#_23798f6e-158b-4ea3-9b3e-501a4342bf5f .concept}

A customization project might contain inherited workflows—that is, customized workflows based on predefined workflows. During an upgrade to a new version of Acumatica ERP, the predefined workflow that is used in the system can be changed. To incorporate these changes in the customization project with the inherited workflow, you can upgrade workflows in a customization project, as described below.

**Important:** During an upgrade to a new version of Acumatica ERP, if the predefined workflow that is used in the system has been changed, these changes of the predefined workflow are applied automatically to the system, along with the changes that are available in an inherited workflow that is based on this predefined workflow \(if the customization project with this inherited workflow has been published in the system\). That is, you do not need to update the customization project to apply the changes in the predefined workflow to the inherited workflow. You need to update the customization project only if you need to include these changes in the customization project.

## Learning Objectives { .section}

In this chapter, you will learn how to include changes in the predefined workflow in a customization project that contains an inherited workflow that is based on this predefined workflow.

## Applicable Scenarios { .section}

You upgrade a customization project that contains an inherited workflow if the predefined workflow on which the inherited workflow is based has been upgraded in the system and you need to include these changes in the customization project.

## Upgrade of a Customization Project That Contains Inherited Workflows { .section}

For each inherited workflow, a customization project contains both the inherited workflow and the version of the predefined workflow on which the inherited workflow is based. If the version of the predefined workflow in the system and the version of the predefined workflow in the customization project differ, you may need to upgrade the customization project with the new version of the predefined workflow.

For each predefined workflow included in the customization project, each time you open this customization project, the Acumatica Customization Platform checks whether the current version of this predefined workflow is the same as the one that is used in the system. If the version of the predefined workflow in the customization project is not the same as the one that is used in the system, the system displays the corresponding message and prompts you to upgrade the version of the predefined workflow in the customization project.

If you upgrade the version of the predefined workflow in the customization project, the predefined workflow and all its inherited workflows in the customization project will contain the changes that are introduced in the version of the predefined workflow that is used in the system.

**Tip:** This upgrade merges the changes in the inherited workflow in the customization project and the changes in the predefined workflow that is available in the system. If any conflicts occur, a pop-up window appears that contains detailed information about the conflicts. You can review the conflicts and either continue the upgrade with the changes suggested by the system or cancel the upgrade of the predefined workflow.

**Parent topic:**[Upgrading Workflows](../DeveloperGuide/WorkflowUI_UpgradingWorkflows_Mapref.md)

