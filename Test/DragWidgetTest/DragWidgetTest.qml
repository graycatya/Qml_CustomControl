import QtQuick 2.12
import QtQuick.Controls 2.12
import "../../CustomControl"
Item {
    width: 800
    height: 600

    Rectangle {
        id: moveItem

        x: 100
        y: 100
        width: 300
        height: 200

        color: "lightblue"
        DragWidget {
            control: moveItem

        }
    }
}