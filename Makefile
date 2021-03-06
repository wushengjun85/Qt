#############################################################################
# Makefile for building: controlcamera
# Generated by qmake (2.01a) (Qt 4.7.3) on: ?? 6? 18 15:23:36 2016
# Project:  controlcamera.pro
# Template: app
# Command: /home/vmuser/nfs_shared/qt-4.7.3-arm/bin/qmake -o Makefile controlcamera.pro
#############################################################################

####### Compiler, tools and options

CC            = arm-none-linux-gnueabi-gcc -lts
CXX           = arm-none-linux-gnueabi-g++ -lts
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I../../nfs_shared/qt-4.7.3-arm/mkspecs/qws/linux-arm-gnueabi-g++ -I. -I../../nfs_shared/qt-4.7.3-arm/include/QtCore -I../../nfs_shared/qt-4.7.3-arm/include/QtNetwork -I../../nfs_shared/qt-4.7.3-arm/include/QtGui -I../../nfs_shared/qt-4.7.3-arm/include -I. -I. -I. -I../../nfs_shared/tslib/include
LINK          = arm-none-linux-gnueabi-g++ -lts
LFLAGS        = -Wl,-O1 -Wl,-rpath,/home/vmuser/nfs_shared/qt-4.7.3-arm/lib
LIBS          = $(SUBLIBS)  -L/home/vmuser/nfs_shared/tslib/lib -L/home/vmuser/nfs_shared/qt-4.7.3-arm/lib -lQtGui -L/home/vmuser/nfs_shared/tslib/lib -L/home/vmuser/nfs_shared/qt-4.7.3-arm/lib -lQtNetwork -lQtCore -lrt -lpthread 
AR            = arm-none-linux-gnueabi-ar cqs
RANLIB        = 
QMAKE         = /home/vmuser/nfs_shared/qt-4.7.3-arm/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = arm-none-linux-gnueabi-strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = can.cpp \
		canread.cpp \
		main.cpp \
		signalcan.cpp \
		testthread.cpp \
		widget.cpp moc_signalcan.cpp \
		moc_testthread.cpp \
		moc_widget.cpp
OBJECTS       = can.o \
		canread.o \
		main.o \
		signalcan.o \
		testthread.o \
		widget.o \
		moc_signalcan.o \
		moc_testthread.o \
		moc_widget.o
DIST          = ../../nfs_shared/qt-4.7.3-arm/mkspecs/common/g++.conf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/common/unix.conf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/common/linux.conf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/common/qws.conf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/qconfig.pri \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/qt_functions.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/qt_config.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/exclusive_builds.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/default_pre.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/release.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/default_post.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/warn_on.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/qt.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/unix/thread.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/moc.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/resources.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/uic.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/yacc.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/lex.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/include_source_dir.prf \
		controlcamera.pro
QMAKE_TARGET  = controlcamera
DESTDIR       = 
TARGET        = controlcamera

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_widget.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: controlcamera.pro  ../../nfs_shared/qt-4.7.3-arm/mkspecs/qws/linux-arm-gnueabi-g++/qmake.conf ../../nfs_shared/qt-4.7.3-arm/mkspecs/common/g++.conf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/common/unix.conf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/common/linux.conf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/common/qws.conf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/qconfig.pri \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/qt_functions.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/qt_config.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/exclusive_builds.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/default_pre.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/release.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/default_post.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/warn_on.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/qt.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/unix/thread.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/moc.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/resources.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/uic.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/yacc.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/lex.prf \
		../../nfs_shared/qt-4.7.3-arm/mkspecs/features/include_source_dir.prf \
		/home/vmuser/nfs_shared/qt-4.7.3-arm/lib/libQtGui.prl \
		/home/vmuser/nfs_shared/qt-4.7.3-arm/lib/libQtNetwork.prl \
		/home/vmuser/nfs_shared/qt-4.7.3-arm/lib/libQtCore.prl
	$(QMAKE) -o Makefile controlcamera.pro
../../nfs_shared/qt-4.7.3-arm/mkspecs/common/g++.conf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/common/unix.conf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/common/linux.conf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/common/qws.conf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/qconfig.pri:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/qt_functions.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/qt_config.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/exclusive_builds.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/default_pre.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/release.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/default_post.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/warn_on.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/qt.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/unix/thread.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/moc.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/resources.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/uic.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/yacc.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/lex.prf:
../../nfs_shared/qt-4.7.3-arm/mkspecs/features/include_source_dir.prf:
/home/vmuser/nfs_shared/qt-4.7.3-arm/lib/libQtGui.prl:
/home/vmuser/nfs_shared/qt-4.7.3-arm/lib/libQtNetwork.prl:
/home/vmuser/nfs_shared/qt-4.7.3-arm/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile controlcamera.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/controlcamera1.0.0 || $(MKDIR) .tmp/controlcamera1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/controlcamera1.0.0/ && $(COPY_FILE) --parents can.h canread.h signalcan.h testthread.h widget.h .tmp/controlcamera1.0.0/ && $(COPY_FILE) --parents can.cpp canread.cpp main.cpp signalcan.cpp testthread.cpp widget.cpp .tmp/controlcamera1.0.0/ && $(COPY_FILE) --parents widget.ui .tmp/controlcamera1.0.0/ && (cd `dirname .tmp/controlcamera1.0.0` && $(TAR) controlcamera1.0.0.tar controlcamera1.0.0 && $(COMPRESS) controlcamera1.0.0.tar) && $(MOVE) `dirname .tmp/controlcamera1.0.0`/controlcamera1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/controlcamera1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_signalcan.cpp moc_testthread.cpp moc_widget.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_signalcan.cpp moc_testthread.cpp moc_widget.cpp
moc_signalcan.cpp: can.h \
		canread.h \
		signalcan.h
	/home/vmuser/nfs_shared/qt-4.7.3-arm/bin/moc $(DEFINES) $(INCPATH) signalcan.h -o moc_signalcan.cpp

moc_testthread.cpp: testthread.h
	/home/vmuser/nfs_shared/qt-4.7.3-arm/bin/moc $(DEFINES) $(INCPATH) testthread.h -o moc_testthread.cpp

moc_widget.cpp: testthread.h \
		signalcan.h \
		can.h \
		canread.h \
		widget.h
	/home/vmuser/nfs_shared/qt-4.7.3-arm/bin/moc $(DEFINES) $(INCPATH) widget.h -o moc_widget.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_widget.h
compiler_uic_clean:
	-$(DEL_FILE) ui_widget.h
ui_widget.h: widget.ui
	/home/vmuser/nfs_shared/qt-4.7.3-arm/bin/uic widget.ui -o ui_widget.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

can.o: can.cpp can.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o can.o can.cpp

canread.o: canread.cpp canread.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o canread.o canread.cpp

main.o: main.cpp widget.h \
		testthread.h \
		signalcan.h \
		can.h \
		canread.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

signalcan.o: signalcan.cpp signalcan.h \
		can.h \
		canread.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o signalcan.o signalcan.cpp

testthread.o: testthread.cpp testthread.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o testthread.o testthread.cpp

widget.o: widget.cpp widget.h \
		testthread.h \
		signalcan.h \
		can.h \
		canread.h \
		ui_widget.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o widget.o widget.cpp

moc_signalcan.o: moc_signalcan.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_signalcan.o moc_signalcan.cpp

moc_testthread.o: moc_testthread.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_testthread.o moc_testthread.cpp

moc_widget.o: moc_widget.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_widget.o moc_widget.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

