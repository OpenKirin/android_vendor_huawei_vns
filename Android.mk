# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

ifneq ($(filter berlin,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)
LOCAL_MODULE := gnss_supl20service_hisi
LOCAL_MODULE_OWNER := honor
LOCAL_SRC_FILES := system/app/gnss_supl20service_hisi/gnss_supl20service_hisi.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := HWJNIFLPLocation
LOCAL_MODULE_OWNER := honor
LOCAL_SRC_FILES := system/framework/HWJNIFLPLocation.jar
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := GeofenceLocation
LOCAL_MODULE_OWNER := honor
LOCAL_SRC_FILES := system/priv-app/GeofenceLocation/GeofenceLocation.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libril
LOCAL_MODULE_OWNER := honor
LOCAL_SRC_FILES_64 := system/lib64/libril.so
LOCAL_SRC_FILES_32 := system/lib/libril.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_64 := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE_PATH_32 := $(2ND_TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MULTILIB := both
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib/egl && pushd $(PRODUCT_OUT)/system/vendor/lib > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so && popd > /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib/egl && pushd $(PRODUCT_OUT)/system/vendor/lib > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so.1 && popd > /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib/egl && pushd $(PRODUCT_OUT)/system/vendor/lib > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so.1.1 && popd > /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib64/egl && pushd $(PRODUCT_OUT)/system/vendor/lib64 > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so && popd > /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib64/egl && pushd $(PRODUCT_OUT)/system/vendor/lib64 > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so.1 && popd > /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib64/egl && pushd $(PRODUCT_OUT)/system/vendor/lib64 > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so.1.1 && popd > /dev/null)

endif
