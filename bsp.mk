################################################################################
# \file bsp.mk
#
# \brief
# Define the KIT_XMC7200_DC_V1 target.
#
################################################################################
# \copyright
# Copyright 2023 Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation
#
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

# Any additional components to apply when using this board.
# Use a default CM0+ image (XMC7x_CM0P_SLEEP). This can be swapped for a
# different pre-built image or removed if custom built project.
BSP_COMPONENTS:=XMC7x_CM0P_SLEEP

# Any additional defines to apply when using this board.
BSP_DEFINES:=CY_USING_HAL

# Path to the flash loaders to patch for this board
CY_QSPI_FLM_DIR=$(MTB_TOOLS__TARGET_DIR)/config/FlashLoaders/

# Path to the patched flash loaders for this board
CY_QSPI_FLM_DIR_OUTPUT=$(MTB_TOOLS__TARGET_DIR)/config/GeneratedSource/

# Enable JLink debugger
BSP_PROGRAM_INTERFACE=JLink

################################################################################
# ALL ITEMS BELOW THIS POINT ARE AUTO GENERATED BY THE BSP ASSISTANT TOOL.
# DO NOT MODIFY DIRECTLY. CHANGES SHOULD BE MADE THROUGH THE BSP ASSISTANT.
################################################################################

# Board device selection. MPN_LIST tracks what was selected in the BSP Assistant
# All other variables are derived by BSP Assistant based on the MPN_LIST.
MPN_LIST:=XMC7200D-F176K8384
DEVICE:=XMC7200D-F176K8384
DEVICE_COMPONENTS:=CAT1 CAT1C CAT1C8M
DEVICE_LIST:=XMC7200D-F176K8384
DEVICE_TOOL_IDS:=bsp-assistant device-configurator dfuh-tool library-manager memory-analyzer motor-suite-gui project-creator qspi-configurator smartio-configurator
DEVICE_XMC7200D-F176K8384_CORES:=CORE_NAME_CM0P_0 CORE_NAME_CM7_0 CORE_NAME_CM7_1
DEVICE_XMC7200D-F176K8384_DIE:=TVIIBH8M
DEVICE_XMC7200D-F176K8384_FEATURES:=CM7_0_FPU_PRESENT CM7_1_FPU_PRESENT
DEVICE_XMC7200D-F176K8384_FLASH_KB:=8384
DEVICE_XMC7200D-F176K8384_SRAM_KB:=1024
RECIPE_DIR:=$(SEARCH_recipe-make-cat1c)
