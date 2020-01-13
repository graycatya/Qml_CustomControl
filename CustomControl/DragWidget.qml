import QtQuick 2.12


MouseArea {
    id: root
    anchors.fill: parent 
    property bool drag: true
    property point lastPoint: Qt.point(0, 0)
    property var control: parent

    signal dragWidget(point pos)

    onPressed: {
        lastPoint = Qt.point(mouseX, mouseY)
    }

    onContainsMouseChanged: {
        if(containsMouse)
        {
            cursorShape = Qt.SizeAllCursor;
        } else {
            cursorShape = Qt.ArrowCursor;
        }
    }

    onPositionChanged: {
        if(drag && pressed && control)
        {
            dragWidget(mouseX - lastPoint.x, mouseY - lastPoint.y);
        }
    }
}