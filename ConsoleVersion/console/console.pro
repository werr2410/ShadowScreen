QT -= gui

CONFIG += c++17 console
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        adress.cpp \
        bankcard.cpp \
        baseboard.cpp \
        delivery.cpp \
        detail.cpp \
        main.cpp \
        reviews.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    ComptureFunction.h \
    adress.h \
    bankcard.h \
    baseboard.h \
    delivery.h \
    detail.h \
    reviews.h