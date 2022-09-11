#
# Copyright 2022~ Christian Helmich. All rights reserved.
# License: http://www.opensource.org/licenses/BSD-2-Clause
#

UNAME := $(shell uname)
ifeq ($(UNAME),$(filter $(UNAME),Linux Darwin SunOS FreeBSD GNU/kFreeBSD NetBSD OpenBSD GNU))
ifeq ($(UNAME),$(filter $(UNAME),Darwin))
HOST_OS=darwin
TARGET_OS?=darwin
else
ifeq ($(UNAME),$(filter $(UNAME),SunOS))
HOST_OS=solaris
TARGET_OS?=solaris
else
ifeq ($(UNAME),$(filter $(UNAME),FreeBSD GNU/kFreeBSD NetBSD OpenBSD))
HOST_OS=bsd
TARGET_OS?=bsd
else
HOST_OS=linux
TARGET_OS?=linux
endif
endif
endif
else
EXE=.exe
HOST_OS=windows
TARGET_OS?=windows
endif

APP_NAME?=test

UNITY_VERSION?=2021.3.2f1

ifeq ($(HOST_OS),darwin)
UNITY?=/Applications/Unity/Hub/Editor/$(UNITY_VERSION)/Unity.app/Contents/MacOS/Unity
else
ifeq ($(HOST_OS),linux)
UNITY?=/Applications/Unity/Hub/Editor/$(UNITY_VERSION)/Unity.app/Contents/Linux/Unity
else
ifeq ($(HOST_OS),windows)
UNITY?="C:\\Program Files\\Unity\\Hub\\Editor\\$(UNITY_VERSION)\\Editor\\Unity.exe"
endif
endif
endif

ifeq ($(TARGET_OS),darwin)
TARGET_APP?=-buildOSXUniversalPlayer $(APP_NAME).app
else
ifeq ($(TARGET_OS),linux)
TARGET_APP?=-buildLinux64Player $(APP_NAME)
else
ifeq ($(TARGET_OS),windows)
TARGET_APP?=-buildWindows64Player $(APP_NAME).exe
endif
endif
endif


build:
	$(UNITY) -projectPath $(PWD) -logFile -  $(TARGET_APP) -nographics -batchmode -quit
