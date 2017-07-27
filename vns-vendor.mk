# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT_PACKAGES += \
    gnss_supl20service_hisi \
    GeofenceLocation

PRODUCT_PACKAGES += \
    native_packages.xml

PRODUCT_PACKAGES += \
    27c11b57-14ff-48bf-abbe-92e345092278.sec \
    hdbd \
    hw_healthd \
    oeminfo_nvm_server \
    teecd

PRODUCT_PACKAGES += \
    bfgx_and_wifi_cfg \
    bfgx_cfg \
    CPU_RAM_SCHED.bin \
    CPU_RAM_WBS.bin \
    cr4_asic.bin \
    cr4_regmem.bin \
    cr4_regmem_u1.bin \
    wifi_cfg

$(call inherit-product, vendor/huawei/vns/vns-vendor-blobs.mk)
