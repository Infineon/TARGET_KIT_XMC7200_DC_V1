# KIT_XMC7200_DC_V1 BSP Release Notes
The KIT_XMC72_DC_V1, a 176-pin evaluation board is based on the XMC7200 family of devices. XMC7200 MCU is designed for  industrial applications. The evaluation board carries a XMC7200D microcontroller,and 100 pin High Density Motor Connector In addition, the board features an on-board programmer/debugger (Segger J-Link) with USB-UART VCOM interface,  MikroBUS connector interface, two user LEDs, two potentiometer, and two push buttons: (XRES and USR) The board supports operating voltages from 3.3 V to 5.0 V for XMC7200D device.

NOTE: BSPs are versioned by family. This means that version 1.2.0 of any BSP in a family (eg: XMC™ ) will have the same software maturity level. However, not all updates are necessarily applicable for each BSP in the family so not all version numbers will exist for each board. Additionally, new BSPs may not start at version 1.0.0. In the event of adding a common feature across all BSPs, the libraries are assigned the same version number. For example if BSP_A is at v1.3.0 and BSP_B is at v1.2.0, the event will trigger a version update to v1.4.0 for both BSP_A and BSP_B. This allows the common feature to be tracked in a consistent way.

### What's Included?
The KIT_XMC7200_DC_V1 library includes the following:
* BSP specific makefile to configure the build process for the board
* cybsp.c/h files to initialize the board and any system peripherals
* cybsp_types.h file describing basic board setup
* Linker script & startup code for GCC and ARM toolchains
* Configurator design files (and generated code) to setup board specific peripherals
* .lib file references for all dependent libraries
* API documentation

### What Changed?
#### v2.3.1
* Updated the capabilities in props.json for XMC7000 BSPs
#### v2.3.0
* Updated linker scripts and startup code to align with mtb-pdl-cat1 v3.14.0
* Added bt-fw-mur-cyw43439 as a dependency for KIT_XMC72_EVK_MUR_43439M2
#### v2.2.0
* Added the BSP for KIT_T2G_C-2D-6M_LITE
#### v2.1.0
* Updated the KIT_XMC72_EVK, KIT_XMC72_EVK_MUR_43439M2, KIT_XMC71_EVK_LITE_V1 and KIT_XMC71_EVK_LITE_V2 BSPs to use ECO as main clock source
#### v2.0.2
* Updated the BSP description for KIT_XMC71_EVK_LITE_V1 and KIT_XMC71_EVK_LITE_V2 BSPs
#### v2.0.1
* Updated the description in README file for KIT_XMC72_EVK and KIT_XMC72_EVK_MUR_43439M2 BSPs
#### v2.0.0
* Fixed issue where CM0P prebuilt image would enable both CM7 cores on devices which contain
  two CM7 cores, even for single core applications.
* Updated default clock divider selections to better align with frequency limitations documented
  in the datasheet.

##### Known issues:
Issue: Wifi companion radio connection may fail when the board is programmed using `make program`

Workaround: Program the board using an IDE launch config.
#### v1.2.1
* Updated the description in README file for KIT_XMC72_EVK and KIT_XMC72_EVK_MUR_43439M2 BSPs
#### v1.2.0
* Updated linker scripts and startup code to align with mtb-pdl-cat1 v3.4.0
* Added functionality to enable BSP Assistant chip flow
* Added capabilities to match BSPS created by BSP Assistant chip flow
#### v1.1.0
* Add macro `CYBSP_USER_BTN_DRIVE` indicating the drive mode that should be used for user buttons
#### v1.0.0
Note: This revision is only compatible with ModusToolbox Tools 3.0 and newer.
* Initial production release

### Supported Software and Tools
This version of the KIT_XMC7200_DC_V1 BSP was validated for compatibility with the following Software and Tools:

| Software and Tools                        | Version |
| :---                                      | :----:  |
| ModusToolbox™ Software Environment        | 3.2.0   |
| GCC Compiler                              | 11.3.1  |
| IAR Compiler                              | 9.50.2  |
| ARM Compiler                              | 6.22    |

Minimum required ModusToolbox™ Software Environment: v3.0.0

### More information
* [KIT_XMC7200_DC_V1 BSP API Reference Manual][api]
* [KIT_XMC7200_DC_V1 Documentation](https://www.infineon.com/dgdl/Infineon-XMC-7200-Datasheet-DataSheet-v01_00-EN.pdf?fileId=8ac78c8c8412f8d30184443173374425)
* [Cypress Semiconductor, an Infineon Technologies Company](http://www.cypress.com)
* [Infineon GitHub](https://github.com/infineon)
* [ModusToolbox™](https://www.cypress.com/products/modustoolbox-software-environment)

[api]: https://infineon.github.io/TARGET_KIT_XMC7200_DC_V1/html/modules.html

---
© Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation, 2019-2025.