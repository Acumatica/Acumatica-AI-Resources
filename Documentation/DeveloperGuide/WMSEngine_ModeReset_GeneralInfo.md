# Reset of Barcode Scan Mode: General Information {#_85ef070d-1561-4b95-8922-24f41bdfa7a4 .concept}

You need to define how each barcode scan mode is cleared.

## Learning Objectives { .section}

In this chapter, you will learn how to implement the resetting logic of the barcode scan mode.

## Applicable Scenarios { .section}

You need to define the resetting logic for each barcode scan mode that you implement.

## Resetting of the Scan Mode { .section}

The scan mode is reset as follows:

-   A soft reset is executed once the scanning cycle is completed—that is, when a confirmation state reflects success. The system executes the ScanMode.Reset\(fullReset: false\) method for the soft reset.
-   A hard reset is executed in the following cases:

    -   If the scan mode is changed to another one.
    -   If a confirmation state reports failure and requests a reset.
    -   If a user executes the reset command either by clicking the **Reset** button of the form toolbar or by scanning the `*RESET` barcode. However, in this case, the Basis.IsWithinReset flag is set. This flag can be used in the mode's resetting logic to determine whether a particular state should be cleared or not.
    The system executes the ScanMode.Reset\(fullReset: true\) method for the hard reset.

-   The whole form is reset once a user clicks the **Cancel** button on the form toolbar. This is the default behavior of an Acumatica ERP form. In this case, all screen caches are cleaned, which causes form reinitialization.

The ScanMode.Reset\(\) method can be called from any other scan component either in soft mode or in hard mode.

**Note:** You should not call the protected ScanMode.ResetMode\(\) method within any component. This method is for override only. Moreover, the method can be intercepted. Therefore, in order to cause all interceptors to be applied, this method should be called indirectly via the `public` ScanMode.Reset\(\) method.

**Parent topic:**[Resetting a Barcode Scan Mode](../DeveloperGuide/WMSEngine_ModeReset_Mapref.md)

