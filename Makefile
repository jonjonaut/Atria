export THEOS_PACKAGE_SCHEME=rootless

TARGET := iphone:clang:latest:16.5
INSTALL_TARGET_PROCESSES = SpringBoard
Atria_LOGOS_DEFAULT_GENERATOR = internal

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Atria

Atria_FILES = $(shell find src -type f -name '*.m' -o -name '*.xm')
Atria_CFLAGS = -fobjc-arc -Wno-reorder-init-list -Wno-deprecated-declarations -Wno-c++11-narrowing
Atria_FRAMEWORKS = UIKit Foundation CoreText QuartzCore
Atria_LIBRARIES = substrate


include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += Prefs

include $(THEOS_MAKE_PATH)/aggregate.mk
