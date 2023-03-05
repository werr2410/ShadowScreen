#ifndef EXCEPTIONS_H
#define EXCEPTIONS_H

#include <QString>

namespace ShadowScreen {

    namespace Exception {

        class SSExecptions {
        public:
            virtual QString message() const = 0;
        };

        class MSSQLConnectedExecption : public SSExecptions {
        public:
            QString message() const override {
                return "database alredy connected. close it";
            }
        };

        class MSSQLCloseData : public SSExecptions {
        public:
            QString message() const override {
                return "invalid field for connect to ms sql";
            }
        };
    }
}

#endif // EXCEPTIONS_H
