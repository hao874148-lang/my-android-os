# ====================================================================
# BY_QH OS VIP PRO MAX ULTIMATE - MASTER DEVICE MAKEFILE
# ====================================================================

$(call inherit-product, vendor/custom/config/byqh_branding.mk)
$(call inherit-product, vendor/custom/config/debloat/debloat_packages.mk)

# AI & MEMORY ULTIMATE
$(call inherit-product, vendor/custom/config/ai/ai_predictive_engine.mk)
$(call inherit-product, vendor/custom/config/memory/ram_plus_ultimate.mk)

# GAMING & GRAPHICS EXTREME
$(call inherit-product, vendor/custom/config/gaming/extreme_gaming_boost.mk)
$(call inherit-product, vendor/custom/config/graphics/adrenoboost_extreme.mk)
$(call inherit-product, vendor/custom/config/input/touch_1000hz.mk)
$(call inherit-product, vendor/custom/config/smoothness/ios_smoothness.mk)

# POWER & SECURITY
$(call inherit-product, vendor/custom/config/power/battery_saver_props.mk)
$(call inherit-product, vendor/custom/config/security/kernel_hardening.mk)

# NETWORK ULTIMATE
$(call inherit-product, vendor/custom/config/network/dual_channel_wifi7.mk)

# MEDIA & CAMERA
$(call inherit-product, vendor/custom/config/media/dolby_dirac_audio.mk)
$(call inherit-product, vendor/custom/config/media/camera_ai_vip.mk)

# SYSTEM & UI
$(call inherit-product, vendor/custom/config/privacy/privacy_vault.mk)
$(call inherit-product, vendor/custom/config/notifications/anti_delay_bank.mk)
$(call inherit-product, vendor/custom/config/ui/ui_customizations.mk)
$(call inherit-product, vendor/custom/config/gestures/smart_gestures.mk)
$(call inherit-product, vendor/custom/config/ota/ota_config.mk)
$(call inherit-product, vendor/custom/config/build/final_build_prep.mk)

PRODUCT_COPY_FILES += \
    vendor/custom/config/power/init.byqh.bypass2.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.byqh.bypass2.rc \
    vendor/custom/config/network/init.byqh.doh.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.byqh.doh.rc

PRODUCT_PACKAGES += \
    GameSpace \
    GameSpaceOverlay \
    PlayIntegrityFix \
    GmsCompat \
    ByqhAudioFX \
    ByqhPrivacyVault

PRODUCT_PROPERTY_OVERRIDES += \
    ro.byqh.version=ULTIMATE-A16-V2.0 \
    ro.byqh.system.readiness=100 \
    ro.byqh.os_status=ULTIMATE_EMPEROR_READY \
    user.language=vi \
    user.region=VN \
    persist.sys.locale=vi-VN
