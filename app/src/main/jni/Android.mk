LOCAL_PATH := $(call my-dir)

# Capstone: 6.0.0-Alpha9
# Keystone: 0.9.2
# NDK: 23.1.7779620
# Android Platform: android-19
# https://github.com/FlutterGenerator/keystone-capstone-android/releases/tag/keystone-capstone-android-28274132389
# Gradle 7.5-bin
# AGP 7.4.2
# Modded by tojik_proof_93 @FlutterGenerator

include $(CLEAR_VARS)
LOCAL_MODULE := capstone
LOCAL_SRC_FILES := prebuilt/libs/$(TARGET_ARCH_ABI)/libcapstone.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/prebuilt/include
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := keystone
LOCAL_SRC_FILES := prebuilt/libs/$(TARGET_ARCH_ABI)/libkeystone.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/prebuilt/include
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := Arm-antik
LOCAL_SRC_FILES := Main.cpp Main2.cpp
LOCAL_STATIC_LIBRARIES := capstone keystone
LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/prebuilt/include \
    $(LOCAL_PATH)/capstone/include \
    $(LOCAL_PATH)/keystone/include

LOCAL_CFLAGS += -fno-integrated-as
LOCAL_CFLAGS += -fPIC -fintegrated-as
LOCAL_LDFLAGS += -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now
LOCAL_LDLIBS := -llog
LOCAL_CPPFLAGS += -std=c++17 -fexceptions -frtti -fPIC -fintegrated-as
LOCAL_LDFLAGS += -Wl,-z,max-page-size=16384 -Wl,-z,common-page-size=16384

include $(BUILD_SHARED_LIBRARY)
