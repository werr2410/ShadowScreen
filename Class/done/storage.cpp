#include "storage.h"

namespace ShadowScreen {

    namespace  Compture {

        void ShadowScreen::Compture::Storage::setModel(QString model) {
            if(model.isEmpty() == false)
                this->model = model;
        }

        void Storage::setSize(QString size) {
            if(size.isEmpty() == false)
                this->size = size;
        }

        Storage::Storage() {
            setSize("0");
            setModel("unknown");
        }

        void Storage::setModel() {
            setModel(Detail::getDetail(Storage::type(), Model));
        }

        void Storage::setSize() {
            setSize(Detail::getDetail(Storage::type(), Size));
        }

        QString Storage::getModel() const {
            return model;
        }

        QString Storage::getSize() const {
            return size;
        }

        void Storage::init() {
            setManufacturer(Storage::type());
            setModel();
            setSize();
        }

        QString Storage::toString() const {
            return getManufacturer() + " | " + getModel() + " | " + getSize();
        }

        QString Storage::type() const {
            return "diskdrive";
        }

    }
}

