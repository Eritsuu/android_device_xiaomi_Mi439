#
# Copyright (C) 2024 The Evolution-X Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(USES_DEVICE_XIAOMI_MI439),true)
include $(call all-makefiles-under,$(LOCAL_PATH))

WCNSS_MAC_SYMLINK := $(TARGET_OUT_VENDOR)/firmware/wlan/prima/wlan_mac.bin
$(WCNSS_MAC_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS MAC bin link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /mnt/vendor/persist/.$(notdir $@) $@
ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_MAC_SYMLINK)

endif
