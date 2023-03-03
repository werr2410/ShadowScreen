#include "videocard.h"
#include <iostream>

namespace ShadowScreen {

    namespace Computer {

        Videocard::Videocard(bool isInit) {
            if(isInit)
                Videocard::init();
            else
                (*this) = Videocard();
        }

        Videocard::Videocard() : Detail() { }

        void Videocard::Manufacturer() {
            QString line = " ";
            std::string res = "";
            QString command = "wmic path win32_VideoController get name ";

            command += ">> ";
            command += comp_filename;

            std::system(command.toStdString().c_str());

            QFile file(comp_filename);

            if(file.open(QIODevice::ReadOnly | QIODevice::Text)) {
                QTextStream in(&file);

                line = in.readLine() + " | ";

                while (!in.atEnd()) {
                    res += in.readLine().toStdString() + " | ";
                }

                file.remove();

                file.close();
            }

            setManufacturers(QString().fromStdString(res));
        }

        void Videocard::init() {
            Manufacturer();
        }

        QString Videocard::toString() const {
            return getManufacturer();
        }

        QString Videocard::type() const {
            return "videocard";
        }
    }
}