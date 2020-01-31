import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12


Window {
    id: root
    visible: true
    width: 400
    height: 400
    flags: Qt.FramelessWindowHint
    //color: "transparent"

        //color: "blue"
        DragWidget {
            mouseStyle: Qt.SizeAllCursor
            control: parent
            anchors.fill: parent
            hoverenabled: false
            onPosDragWidget: {
                control.x += pos.x
                control.y += pos.y
            }
        }

        DragSizeWidget {
            control: parent
            anchors.fill: parent
        }
    }


