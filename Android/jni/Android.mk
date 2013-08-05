TOP_PATH:= $(call my-dir)
LOCAL_PATH := $(TOP_PATH)
include $(CLEAR_VARS)
LOCAL_MODULE           	:= clucene

CORE_CLUCENE_DIR        := ../../CLucene/core/CLucene
CONTRIBS_LIB_DIR	:= ../../CLucne/contribs-lib/CLucene
SHARED_DIR		:= ../../CLucene/shared/CLucene

CORE_LUCENE_INCLUDE 	:= $(TOP_PATH)/../../CLucene/core
CONTRIBS_LUCENE_INCLUDE := $(TOP_PATH)/../../CLucene/contribs-lib
SHARED_LUCENE_INCLUDE 	:= $(TOP_PATH)/../../CLucene/shared


LOCAL_SRC_FILES  := \
$(CORE_CLUCENE_DIR)/analysis/CachingTokenFilter.cpp \
$(CORE_CLUCENE_DIR)/CLMonolithic.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/Encoder.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/Formatter.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/Fragmenter.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/Highlighter.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/QueryScorer.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/QueryTermExtractor.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/SimpleFragmenter.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/SimpleHTMLEncoder.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/SimpleHTMLFormatter.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/TextFragment.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/TokenGroup.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/TokenSources.cpp \
$(CONTRIBS_LIB_DIR)/highlighter/WeightedTerm.cpp \ \
$(CONTRIBS_LIB_DIR)/util/gzipcompressstream.cpp \
$(CONTRIBS_LIB_DIR)/util/gzipinputstream.cpp 

LOCAL_C_INCLUDES  :=  \
$(CORE_LUCENE_INCLUDE) \
$(CONTRIBS_LUCENE_INCLUDE) \
$(SHARED_LUCENE_INCLUDE) \

LOCAL_LDLIBS                  	:= -lz -llog 
LOCAL_CFLAGS			:= -fPIC -D_REENTRANT -D_UCS2 -D_UNICODE -fvisibility=hidden
include $(BUILD_STATIC_LIBRARY)

#We're building a static library for Lucene, but this would be eventually linked to a shared library (.so) in an Android project.
#This very makefile can be used for extending the JNI layer that would have to be written in order for this library to be invoked as a .so file
# from the Android Java application
