LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_ALLOW_UNDEFINED_SYMBOLS := true

LOCAL_SRC_FILES := hellocpp/main.cpp \
../../Classes/AppDelegate.cpp \
../../Classes/GameScene.cpp \
../../Classes/Building.cpp \
../../Classes/Floor.cpp \
../../Classes/MainMenuScene.cpp \
../../Classes/Common.cpp \
../../Classes/MD5.cpp \
../../Classes/FBUtils.cpp \
../../Classes/SettingsScene.cpp

LOCAL_CPPFLAGS := -DSDKBOX_ENABLED
LOCAL_LDLIBS := -landroid \
-llog
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes
LOCAL_WHOLE_STATIC_LIBRARIES := \
sdkbox \
PluginAdMob \
PluginFacebook

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END


LOCAL_STATIC_LIBRARIES := cocos2dx_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path,$(LOCAL_PATH))

$(call import-module, ./prebuilt-mk)
$(call import-module, ./sdkbox)
$(call import-module, ./pluginadmob)
$(call import-module, ./pluginfacebook)


# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
