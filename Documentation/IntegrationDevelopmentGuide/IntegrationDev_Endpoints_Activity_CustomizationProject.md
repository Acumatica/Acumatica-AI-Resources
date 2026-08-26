# Web Service Endpoints: To Include an Endpoint in a Customization Project {#_af73e6e5-8e63-4304-9ac8-c25c432138fa .task}

This activity will walk you through the process of including an endpoint in a customization project.

## Story { .section}

Suppose that you need to distribute an integration application that uses a custom web service endpoint to the other Acumatica ERP instances of the company. You need to include the endpoint in a customization project. You can then export this customization project to a ZIP file, import the file to the target instance, and publish this customization project.

## Process Overview { .section}

You will include the needed endpoint in a customization project.

## System Preparation { .section}

Before you begin performing this activity, do the following:

1.  Deploy an instance of Acumatica ERP with the name *MyStoreInstance* and a tenant that has the *MyStore* name and contains the *T100* data.

2.  Complete the following prerequisite activity: [Generic Inquiries in a Customization Project: To Include Generic Inquiries in a Customization Project](../UserGuide/GI_CustomizationProject_Activity.md). In this activity, a customization project is created.

## Step: Including an Endpoint in the Customization Project { .section}

You will include in the customization project the *ItemAvailabilityData/0001* custom endpoint, which is preconfigured in the instance.

To include the endpoint in the customization project, do the following:

1.  In the navigation pane of the Customization Project Editor, click **Web Service Endpoints** to open the [Web Service Endpoints](../UserGuide/AU_20_60_02.md) page.
2.  On the page toolbar, click **Add New Record**.
3.  In the **Add Entity Endpoint** dialog box, which opens, select the unlabeled check box in the row with the *ItemAvailabilityData* endpoint and version *0001*.
4.  Click **Save**.

    The endpoint has been added to the Web Service Endpoints page.


**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

