LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE     := dlib
LOCAL_C_INCLUDES := ../dlib-19.9
LOCAL_SRC_FILES  := ../dlib-19.9/dlib/threads/threads_kernel_shared.cpp \
		    ../dlib-19.9/dlib/entropy_encoder/entropy_encoder_kernel_1.cpp \
		    ../dlib-19.9/dlib/entropy_decoder/entropy_decoder_kernel_2.cpp \
		    ../dlib-19.9/dlib/base64/base64_kernel_1.cpp \
		    ../dlib-19.9/dlib/threads/threads_kernel_1.cpp \
		    ../dlib-19.9/dlib/threads/threads_kernel_2.cpp

LOCAL_C_FLAGS   := -DDLIB_NO_GUI_SUPPORT
LOCAL_LDLIBS    := -latomic 
include $(BUILD_SHARED_LIBRARY)
