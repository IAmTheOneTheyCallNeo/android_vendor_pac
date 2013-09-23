# Check for target product
ifeq (pa_vigor,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := xhdpi

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE := false

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

# inherit from proprietary vendor
-include vendor/htc/vigor/BoardConfigVendor.mk

# Kernel
-include kernel/htc/vigor-3.0/arch/arm/configs/vigor_aosp_defconfig
product_device := vigor

# define cpu variant
TARGET_CPU_VARIANT := scorpion

# inherit from vigor device
$(call inherit-product, device/htc/vigor/vigor.mk)

# Include CM extras
EXTRA_CM_PACKAGES ?= true

# Override AOSP build properties
PRODUCT_NAME := pa_vigor
PRODUCT_BRAND := htc
PRODUCT_MODEL := ADR6425LVW
PRODUCT_MANUFACTURER := HTC

# Include ParanoidAndroid repos configuration
include vendor/pa/config/pa_addons.mk

endif
