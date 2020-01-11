import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Component.onCompleted: {
        console.debug("************************");
        var i = 0;
        for(i = 0; i < 100; i++)
            catlog.debug_print("QMLLOG: " + i);
        catlog.debug_file("qml", "qmldebug");
        catlog.warn_print("Warn");
    }
}
