TARGET := iphone:clang:latest:16.5

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = AtriaPrefs

AtriaPrefs_FILES = $(shell find src -type f -name '*.m')

$(info $(Prefs_FILES))
AtriaPrefs_CFLAGS = -fobjc-arc -Wno-deprecated-declarations
AtriaPrefs_FRAMEWORKS = UIKit Foundation
AtriaPrefs_PRIVATE_FRAMEWORKS = Preferences
AtriaPrefs_LIBRARIES = colorpicker
AtriaPrefs_INSTALL_PATH = /Library/PreferenceBundles
AtriaPrefs_RESOURCE_DIRS = Resources

include $(THEOS_MAKE_PATH)/bundle.mk
