# Contract Version {#_92274c6d-08bf-4a33-8818-e6b9f6ed6695 .concept}

Acumatica ERP 2026 R1 supports one version of system contract, which is Contract Version 4. In this topic, you can learn the main characteristics of this contract version.

**Note:** Contract Version 1 is not supported starting from Acumatica ERP 2018 R2. Contract Versions 2 and 3 are not supported starting from Acumatica ERP 2023 R2.

## Characteristics of Contract Version 4 { .section}

The main characteristics of Contract Version 4 are the following:

-   The REST API is supported for the endpoints with this contract version.
-   The SOAP API is not supported for the endpoints with this contract version.
-   You can specify particular fields of the entity to be returned from the system.
-   By default, the system does not return all fields of the entity \(including fields of the linked and detail entities defined within the entity\).
-   Through the endpoint, you can work with the elements that were added to the Acumatica ERP form in a customization project.
-   Through the endpoint, you can work with the predefined elements on an Acumatica ERP form that are not included in the entity definition.
-   When optimization for speed of the retrieval of the list of records fails, the system returns an error.
-   Custom endpoints created from scratch have this contract version.

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

