
############## Fill in/change here the names and versions of the libs #############

###### version nr of the complete package
REL_MAJ=4
REL_MIN=0
REL_REV=3

###### version nr of GUI
EIDGUI=beidgui
EIDGUI_MAJ=$(REL_MAJ)
EIDGUI_MIN=$(REL_MIN)
EIDGUI_REV=$(REL_REV)

DLGLIB=beiddialogsQT
DLGLIB_MAJ=$(REL_MAJ)
DLGLIB_MIN=$(REL_MIN)
DLGLIB_REV=$(REL_REV)

DLGSRV=beiddialogsQTsrv
DLGSRV_MAJ=$(REL_MAJ)
DLGSRV_MIN=$(REL_MIN)
DLGSRV_REV=$(REL_REV)

CARDLAYERLIB=beidcardlayer
CARDLAYERLIB_MAJ=$(REL_MAJ)
CARDLAYERLIB_MIN=$(REL_MIN)
CARDLAYERLIB_REV=$(REL_REV)
CARDLAYERLIB_COMPAT_VERSION=1.0

CARDLAYEREMULIB=beidcardlayerEmulation
CARDLAYEREMULIB_MAJ=1
CARDLAYEREMULIB_MIN=0
CARDLAYEREMULIB_REV=0
CARDLAYEREMULIB_COMPAT_VERSION=1.0

CARDPLUGIN=cardpluginBeid
CARDPLUGIN_MAJ=3
CARDPLUGIN_MIN=0
CARDPLUGIN_REV=1
CARDPLUGIN_COMPAT_VERSION=1.0

CARDPLUGINSIS=cardpluginFull__ACS__
CARDPLUGINSIS_MAJ=$(REL_MAJ)
CARDPLUGINSIS_MIN=$(REL_MIN)
CARDPLUGINSIS_REV=$(REL_REV)
CARDPLUGINSIS_COMPAT_VERSION=1.0

CARDPLUGINSIS_ACR38U=siscardplugin1__ACS__
CARDPLUGINSIS_ACR38U_MAJ=$(REL_MAJ)
CARDPLUGINSIS_ACR38U_MIN=$(REL_MIN)
CARDPLUGINSIS_ACR38U_REV=$(REL_REV)
CARDPLUGINSIS_ACR38U_COMPAT_VERSION=1.0

CARDPLUGINEMU=cardpluginBeidEmulation
CARDPLUGINEMU_MAJ=1
CARDPLUGINEMU_MIN=0
CARDPLUGINEMU_REV=0
CARDPLUGINEMU_COMPAT_VERSION=1.0

CARDPLUGINSISEMU=cardpluginFull__ACS__Emulation
CARDPLUGINSISEMU_MAJ=1
CARDPLUGINSISEMU_MIN=0
CARDPLUGINSISEMU_REV=0
CARDPLUGINSISEMU_COMPAT_VERSION=1.0

COMMONLIB=beidcommon
COMMONLIB_MAJ=$(REL_MAJ)
COMMONLIB_MIN=$(REL_MIN)
COMMONLIB_REV=$(REL_REV)
COMMONLIB_COMPAT_VERSION=1.0

PKCS11LIB=beidpkcs11
PKCS11LIB_MAJ=$(REL_MAJ)
PKCS11LIB_MIN=$(REL_MIN)
PKCS11LIB_REV=$(REL_REV)
PKCS11LIB_COMPAT_VERSION=1.0

CARDLAYERTOOL=beidcardlayerTool
CARDLAYERTOOL_MAJ=$(REL_MAJ)
CARDLAYERTOOL_MIN=$(REL_MIN)
CARDLAYERTOOL_REV=$(REL_REV)
CARDLAYERTOOL_COMPAT_VERSION=1.0

COMMONTEST=beidcommonTest
COMMONTEST_MAJ=$(REL_MAJ)
COMMONTEST_MIN=$(REL_MIN)
COMMONTEST_REV=$(REL_REV)
COMMONTEST_COMPAT_VERSION=1.0

APPLAYERLIB=beidapplayer
APPLAYERLIB_MAJ=$(REL_MAJ)
APPLAYERLIB_MIN=$(REL_MIN)
APPLAYERLIB_REV=$(REL_REV)
APPLAYERLIB_COMPAT_VERSION=1.0

APPLAYEREMULIB=beidapplayerEmulation
APPLAYEREMULIB_MAJ=1
APPLAYEREMULIB_MIN=0
APPLAYEREMULIB_REV=0
APPLAYEREMULIB_COMPAT_VERSION=1.0

APPLAYERTEST=beidapplayerTest
APPLAYERTEST_MAJ=1
APPLAYERTEST_MIN=0
APPLAYERTEST_REV=0
APPLAYERTEST_COMPAT_VERSION=1.0

EIDLIB=beidlib
EIDLIB_MAJ=$(REL_MAJ)
EIDLIB_MIN=$(REL_MIN)
EIDLIB_REV=$(REL_REV)
EIDLIB_COMPAT_VERSION=1.0

EIDLIB_C=beidlibC
EIDLIB_C_MAJ=$(REL_MAJ)
EIDLIB_C_MIN=$(REL_MIN)
EIDLIB_C_REV=$(REL_REV)
EIDLIB_C_COMPAT_VERSION=1.0

EIDLIBTEST=beidlibTest
EIDLIBTEST_MAJ=1
EIDLIBTEST_MIN=0
EIDLIBTEST_REV=0
EIDLIBTEST_COMPAT_VERSION=1.0

JAVALIB=beidlibJava_Wrapper
JAVALIB_MAJ=$(REL_MAJ)
JAVALIB_MIN=$(REL_MIN)
JAVALIB_REV=$(REL_REV)
JAVALIB_COMPAT_VERSION=1.0

EIDLIBJAR=beid35libJava.jar

###################################################################################

INSTALL_DIR=/usr/local

###################################################################################

DLGLIB_NAME=lib$(DLGLIB)
DLGLIB_NAME_x_y_z_dylib= $(DLGLIB_NAME).$(DLGLIB_MAJ).$(DLGLIB_MIN).$(DLGLIB_REV).dylib
DLGLIB_NAME_x_y_dylib=   $(DLGLIB_NAME).$(DLGLIB_MAJ).$(DLGLIB_MIN).dylib
DLGLIB_NAME_x_dylib=     $(DLGLIB_NAME).$(DLGLIB_MAJ).dylib
DLGLIB_NAME_dylib=       $(DLGLIB_NAME).dylib

CARDLAYERLIB_NAME=lib$(CARDLAYERLIB)
CARDLAYERLIB_NAME_x_y_z_dylib= $(CARDLAYERLIB_NAME).$(CARDLAYERLIB_MAJ).$(CARDLAYERLIB_MIN).$(CARDLAYERLIB_REV).dylib
CARDLAYERLIB_NAME_x_y_dylib=   $(CARDLAYERLIB_NAME).$(CARDLAYERLIB_MAJ).$(CARDLAYERLIB_MIN).dylib
CARDLAYERLIB_NAME_x_dylib=     $(CARDLAYERLIB_NAME).$(CARDLAYERLIB_MAJ).dylib
CARDLAYERLIB_NAME_dylib=       $(CARDLAYERLIB_NAME).dylib
CARDLAYERLIB_MAJR_VERSION=     $(CARDLAYERLIB_MAJ).$(CARDLAYERLIB_MIN).$(CARDLAYERLIB_REV)

CARDLAYEREMULIB_NAME= lib$(CARDLAYERLIB)
CARDLAYEREMULIB_NAME_x_y_z_dylib= $(CARDLAYERLIB_NAME).$(CARDLAYERLIB_MAJ).$(CARDLAYERLIB_MIN).$(CARDLAYERLIB_REV).dylib
CARDLAYEREMULIB_NAME_x_y_dylib=   $(CARDLAYERLIB_NAME).$(CARDLAYERLIB_MAJ).$(CARDLAYERLIB_MIN).dylib
CARDLAYEREMULIB_NAME_x_dylib=     $(CARDLAYERLIB_NAME).$(CARDLAYERLIB_MAJ).dylib
CARDLAYEREMULIB_NAME_dylib=       $(CARDLAYERLIB_NAME).dylib
CARDLAYEREMULIB_MAJR_VERSION=     $(CARDLAYERLIB_MAJ).$(CARDLAYERLIB_MIN).$(CARDLAYERLIB_REV)

COMMONLIB_NAME=lib$(COMMONLIB)
COMMONLIB_NAME_x_y_z_dylib= $(COMMONLIB_NAME).$(COMMONLIB_MAJ).$(COMMONLIB_MIN).$(COMMONLIB_REV).dylib
COMMONLIB_NAME_x_y_dylib=   $(COMMONLIB_NAME).$(COMMONLIB_MAJ).$(COMMONLIB_MIN).dylib
COMMONLIB_NAME_x_dylib=     $(COMMONLIB_NAME).$(COMMONLIB_MAJ).dylib
COMMONLIB_NAME_dylib=       $(COMMONLIB_NAME).dylib
COMMONLIB_MAJR_VERSION=     $(COMMONLIB_MAJ).$(COMMONLIB_MIN).$(COMMONLIB_REV)

PKCS11LIB_NAME=lib$(PKCS11LIB)
PKCS11LIB_NAME_x_y_z_dylib= $(PKCS11LIB_NAME).$(PKCS11LIB_MAJ).$(PKCS11LIB_MIN).$(PKCS11LIB_REV).dylib
PKCS11LIB_NAME_x_y_dylib=   $(PKCS11LIB_NAME).$(PKCS11LIB_MAJ).$(PKCS11LIB_MIN).dylib
PKCS11LIB_NAME_x_dylib=     $(PKCS11LIB_NAME).$(PKCS11LIB_MAJ).dylib
PKCS11LIB_NAME_dylib=       $(PKCS11LIB_NAME).dylib
PKCS11LIB_MAJR_VERSION=     $(PKCS11LIB_MAJ).$(PKCS11LIB_MIN).$(PKCS11LIB_REV)

APPLAYERLIB_NAME=lib$(APPLAYERLIB)
APPLAYERLIB_NAME_x_y_z_dylib= $(APPLAYERLIB_NAME).$(APPLAYERLIB_MAJ).$(APPLAYERLIB_MIN).$(APPLAYERLIB_REV).dylib
APPLAYERLIB_NAME_x_y_dylib=   $(APPLAYERLIB_NAME).$(APPLAYERLIB_MAJ).$(APPLAYERLIB_MIN).dylib
APPLAYERLIB_NAME_x_dylib=     $(APPLAYERLIB_NAME).$(APPLAYERLIB_MAJ).dylib
APPLAYERLIB_NAME_dylib=       $(APPLAYERLIB_NAME).dylib
APPLAYERLIB_MAJR_VERSION=     $(APPLAYERLIB_MAJ).$(APPLAYERLIB_MIN).$(APPLAYERLIB_REV)

APPLAYEREMULIB_NAME=lib$(APPLAYEREMULIB)
APPLAYEREMULIB_NAME_x_y_z_dylib= $(APPLAYEREMULIB_NAME).$(APPLAYEREMULIB_MAJ).$(APPLAYEREMULIB_MIN).$(APPLAYEREMULIB_REV).dylib
APPLAYEREMULIB_NAME_x_y_dylib=   $(APPLAYEREMULIB_NAME).$(APPLAYEREMULIB_MAJ).$(APPLAYEREMULIB_MIN).dylib
APPLAYEREMULIB_NAME_x_dylib=     $(APPLAYEREMULIB_NAME).$(APPLAYEREMULIB_MAJ).dylib
APPLAYEREMULIB_NAME_dylib=       $(APPLAYEREMULIB_NAME).dylib
APPLAYEREMULIB_MAJR_VERSION=     $(APPLAYEREMULIB_MAJ).$(APPLAYEREMULIB_MIN).$(APPLAYEREMULIB_REV)

CARDPLUGIN_NAME=lib$(CARDPLUGIN)
CARDPLUGIN_NAME_x_y_z_dylib= $(CARDPLUGIN_NAME).$(CARDPLUGIN_MAJ).$(CARDPLUGIN_MIN).$(CARDPLUGIN_REV).dylib
CARDPLUGIN_NAME_x_y_dylib=   $(CARDPLUGIN_NAME).$(CARDPLUGIN_MAJ).$(CARDPLUGIN_MIN).dylib
CARDPLUGIN_NAME_x_dylib=     $(CARDPLUGIN_NAME).$(CARDPLUGIN_MAJ).dylib
CARDPLUGIN_NAME_dylib=       $(CARDPLUGIN_NAME).dylib
CARDPLUGIN_MAJR_VERSION=     $(CARDPLUGIN_MAJ).$(CARDPLUGIN_MIN).$(CARDPLUGIN_REV)

CARDPLUGINSIS_NAME=lib$(CARDPLUGINSIS)
CARDPLUGINSIS_NAME_x_y_z_dylib= $(CARDPLUGINSIS_NAME).$(CARDPLUGINSIS_MAJ).$(CARDPLUGINSIS_MIN).$(CARDPLUGINSIS_REV).dylib
CARDPLUGINSIS_NAME_x_y_dylib=   $(CARDPLUGINSIS_NAME).$(CARDPLUGINSIS_MAJ).$(CARDPLUGINSIS_MIN).dylib
CARDPLUGINSIS_NAME_x_dylib=     $(CARDPLUGINSIS_NAME).$(CARDPLUGINSIS_MAJ).dylib
CARDPLUGINSIS_NAME_dylib=       $(CARDPLUGINSIS_NAME).dylib
CARDPLUGINSIS_MAJR_VERSION=     $(CARDPLUGINSIS_MAJ).$(CARDPLUGINSIS_MIN).$(CARDPLUGINSIS_REV)

CARDPLUGINSIS_ACR38U_NAME=lib$(CARDPLUGINSIS_ACR38U)
CARDPLUGINSIS_ACR38U_NAME_x_y_z_dylib= $(CARDPLUGINSIS_ACR38U_NAME).$(CARDPLUGINSIS_ACR38U_MAJ).$(CARDPLUGINSIS_ACR38U_MIN).$(CARDPLUGINSIS_ACR38U_REV).dylib
CARDPLUGINSIS_ACR38U_NAME_x_y_dylib=   $(CARDPLUGINSIS_ACR38U_NAME).$(CARDPLUGINSIS_ACR38U_MAJ).$(CARDPLUGINSIS_ACR38U_MIN).dylib
CARDPLUGINSIS_ACR38U_NAME_x_dylib=     $(CARDPLUGINSIS_ACR38U_NAME).$(CARDPLUGINSIS_ACR38U_MAJ).dylib
CARDPLUGINSIS_ACR38U_NAME_dylib=       $(CARDPLUGINSIS_ACR38U_NAME).dylib
CARDPLUGINSIS_ACR38U_MAJR_VERSION=     $(CARDPLUGINSIS_ACR38U_MAJ).$(CARDPLUGINSIS_ACR38U_MIN).$(CARDPLUGINSIS_ACR38U_REV)

CARDPLUGINEMU_NAME=lib$(CARDPLUGINEMU)
CARDPLUGINEMU_NAME_x_y_z_dylib= $(CARDPLUGINEMU_NAME).$(CARDPLUGINEMU_MAJ).$(CARDPLUGINEMU_MIN).$(CARDPLUGINEMU_REV).dylib
CARDPLUGINEMU_NAME_x_y_dylib=   $(CARDPLUGINEMU_NAME).$(CARDPLUGINEMU_MAJ).$(CARDPLUGINEMU_MIN).dylib
CARDPLUGINEMU_NAME_x_dylib=     $(CARDPLUGINEMU_NAME).$(CARDPLUGINEMU_MAJ).dylib
CARDPLUGINEMU_NAME_dylib=       $(CARDPLUGINEMU_NAME).dylib
CARDPLUGINEMU_MAJR_VERSION=     $(CARDPLUGINEMU_MAJ).$(CARDPLUGINEMU_MIN).$(CARDPLUGINEMU_REV)

CARDPLUGINSISEMU_NAME=lib$(CARDPLUGINSISEMU)
CARDPLUGINSISEMU_NAME_x_y_z_dylib= $(CARDPLUGINSISEMU_NAME).$(CARDPLUGINSISEMU_MAJ).$(CARDPLUGINSISEMU_MIN).$(CARDPLUGINSISEMU_REV).dylib
CARDPLUGINSISEMU_NAME_x_y_dylib=   $(CARDPLUGINSISEMU_NAME).$(CARDPLUGINSISEMU_MAJ).$(CARDPLUGINSISEMU_MIN).dylib
CARDPLUGINSISEMU_NAME_x_dylib=     $(CARDPLUGINSISEMU_NAME).$(CARDPLUGINSISEMU_MAJ).dylib
CARDPLUGINSISEMU_NAME_dylib=       $(CARDPLUGINSISEMU_NAME).dylib
CARDPLUGINSISEMU_MAJR_VERSION=     $(CARDPLUGINSISEMU_MAJ).$(CARDPLUGINSISEMU_MIN).$(CARDPLUGINSISEMU_REV)

EIDLIB_NAME=lib$(EIDLIB)
EIDLIB_NAME_x_y_z_dylib= $(EIDLIB_NAME).$(EIDLIB_MAJ).$(EIDLIB_MIN).$(EIDLIB_REV).dylib
EIDLIB_NAME_x_y_dylib=   $(EIDLIB_NAME).$(EIDLIB_MAJ).$(EIDLIB_MIN).dylib
EIDLIB_NAME_x_dylib=     $(EIDLIB_NAME).$(EIDLIB_MAJ).dylib
EIDLIB_NAME_dylib=       $(EIDLIB_NAME).dylib
EIDLIB_MAJR_VERSION=     $(EIDLIB_MAJ).$(EIDLIB_MIN).$(EIDLIB_REV)

EIDLIB_C_NAME=lib$(EIDLIB_C)
EIDLIB_C_NAME_x_y_z_dylib= $(EIDLIB_C_NAME).$(EIDLIB_C_MAJ).$(EIDLIB_C_MIN).$(EIDLIB_C_REV).dylib
EIDLIB_C_NAME_x_y_dylib=   $(EIDLIB_C_NAME).$(EIDLIB_C_MAJ).$(EIDLIB_C_MIN).dylib
EIDLIB_C_NAME_x_dylib=     $(EIDLIB_C_NAME).$(EIDLIB_C_MAJ).dylib
EIDLIB_C_NAME_dylib=       $(EIDLIB_C_NAME).dylib
EIDLIB_C_MAJR_VERSION=     $(EIDLIB_C_MAJ).$(EIDLIB_C_MIN).$(EIDLIB_C_REV)

JAVALIB_NAME=lib$(JAVALIB)
JAVALIB_NAME_x_y_z_dylib= $(JAVALIB_NAME).$(JAVALIB_MAJ).$(JAVALIB_MIN).$(JAVALIB_REV).dylib
JAVALIB_NAME_x_y_dylib=   $(JAVALIB_NAME).$(JAVALIB_MAJ).$(JAVALIB_MIN).dylib
JAVALIB_NAME_x_dylib=     $(JAVALIB_NAME).$(JAVALIB_MAJ).dylib
JAVALIB_NAME_dylib=       $(JAVALIB_NAME).dylib
JAVALIB_MAJR_VERSION=     $(JAVALIB_MAJ).$(JAVALIB_MIN).$(JAVALIB_REV)

