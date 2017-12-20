
	LOCAL_PATH := $(call my-dir)

	include $(CLEAR_VARS)

	#opencv
	OPENCVROOT:= D:\openCV\OpenCV-2.4.9\OpenCV-2.4.9-android-sdk
	OPENCV_CAMERA_MODULES:=on
	OPENCV_INSTALL_MODULES:=on
	OPENCV_LIB_TYPE:=SHARED
	include ${OPENCVROOT}/sdk/native/jni/OpenCV.mk


	LOCAL_SRC_FILES := opencvdemo_com_ndkopencvtest_OpenCVClass.cpp

	LOCAL_LDLIBS += -llog
	LOCAL_MODULE := myopencvlib


	include $(BUILD_SHARED_LIBRARY)	