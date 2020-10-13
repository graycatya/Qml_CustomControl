[返回](../README.md)

# Qml&C++二维码模块

* 模块提供QML与Widget两个版本的实现

## 目录结构

#### Src 目录分别提供了QML跟C++两种实现

* QrenCodeQml
* QrenCodeWidget

# Example

main.cpp
```
    #include <QGuiApplication>
    #include <QQmlApplicationEngine>
    #include "../../QrenCode/Src/QrenCodeQml/QuickQrenCodeParentItem.h"
    int main(int argc, char *argv[])
    {
        QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

        QGuiApplication app(argc, argv);

        QQmlApplicationEngine engine;
        qmlRegisterType<QuickQrenCodeParentItem>("QParentQrenCode", 1, 0, "ParentQrenCode");
        const QUrl url(QStringLiteral("qrc:/main.qml"));
        QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
        engine.load(url);

        return app.exec();
    }
```

main.qml
```
import QtQuick 2.12
import QtQuick.Window 2.12
import QParentQrenCode 1.0

Window {
    id: window
    visible: true
    width: 400
    height: 400
    title: qsTr("Hello World")

    ParentQrenCode {
        id: qrencode
        width: parent.width;
        height: parent.height;
        qrmode: ParentQrenCode.MODE_8;
        qrlevel: ParentQrenCode.LEVEL_Q;
        casesen: true;
        text: "graycatya";
        source: ":/LOGO.png";
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

    }

    onWidthChanged: {
        qrencode.width = window.width;
        qrencode.height = window.height;
    }
    onHeightChanged: {
        qrencode.width = window.width;
        qrencode.height = window.height;
    }
}
```