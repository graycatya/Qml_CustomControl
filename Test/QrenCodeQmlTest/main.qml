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
