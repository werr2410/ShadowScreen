QT += gui sql core

CONFIG += c++17 console
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    Chating/chat.cpp \
    Chating/message.cpp \
        Computer/baseboard.cpp \
        Computer/computer.cpp \
        Computer/cpu.cpp \
        Computer/detail.cpp \
        Computer/detailinfo.cpp \
        Computer/gpu.cpp \
        Computer/memorychip.cpp \
        Computer/storage.cpp \
        Data/adress.cpp \
        Data/bankcard.cpp \
        Data/delivery.cpp \
        Data/review.cpp \
        Data/security.cpp \
        Data/telegram.cpp \
        Database/dbobj.cpp \
        Database/mssql.cpp \
        User/user.cpp \
        main.cpp \

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    Chating/chat.h \
    Chating/message.h \
    Computer/baseboard.h \
    Computer/computer.h \
    Computer/cpu.h \
    Computer/detail.h \
    Computer/detailinfo.h \
    Computer/gpu.h \
    Computer/memorychip.h \
    Computer/storage.h \
    Data/adress.h \
    Data/bankcard.h \
    Data/delivery.h \
    Data/review.h \
    Data/telegram.h \
    Data/key.h \
    Data/security.h \
    Data/telegram.h \
    Database/dbobj.h \
    Database/mssql.h \
    Exception/exceptions.h \
    User/user.h \

DISTFILES += \
    Data/Текстовый документ.txt \
