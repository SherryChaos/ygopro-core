#Ocgcore: Android.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := ocgcore
LOCAL_MODULE_FILENAME := libocgcore
LOCAL_SRC_FILES := card.cpp \
	duel.cpp \
	effect.cpp \
	field.cpp \
	group.cpp \
	interpreter.cpp \
	libcard.cpp \
	libdebug.cpp \
	libduel.cpp \
	libeffect.cpp \
	libgroup.cpp \
	mem.cpp \
	ocgapi.cpp \
	operations.cpp \
	playerop.cpp \
	processor.cpp \
	scriptlib.cpp \

LOCAL_STATIC_LIBRARIES := lua

LOCAL_CPPFLAGS := -std=c++14
LOCAL_CPPFLAGS += -DLUA_USE_HPP
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../lua/src

include $(BUILD_SHARED_LIBRARY)

