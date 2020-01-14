import QtQuick 2.12
import QtQuick.Controls 2.12
import "../../CustomControl"
Item {
    width: 600
    height: 600

    Rectangle {
        id: moveItem

        x: 100
        y: 100
        width: 100
        height: 100

        color: "lightblue"
        
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
}