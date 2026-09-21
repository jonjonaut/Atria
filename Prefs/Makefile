TARGET := iphone:clang:latest:16.5

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = Prefs

Prefs_FILES = $(shell find src -type f -name '*.m')

$(info $(Prefs_FILES))
Prefs_CFLAGS = -fobjc-arc -Wno-deprecated-declarations
Prefs_FRAMEWORKS = UIKit Foundation
Prefs_PRIVATE_FRAMEWORKS = Preferences
Prefs_LIBRARIES = colorpicker
Prefs_INSTALL_PATH = /Library/PreferenceBundles
Prefs_RESOURCE_DIRS = Resources

include $(THEOS_MAKE_PATH)/bundle.mk
