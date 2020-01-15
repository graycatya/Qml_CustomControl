import QtQuick 2.12

DragSizeWidget {
    id: root 
    x: 0
    y: 0
    width: parent.width  
    height: parent.height
    property var control: parent
    property color posborderColor: "#08a1ef"
    property color posColor: "white"
    readonly property int posRadius: 6

    //top
    Rectangle {
        border.color: posborderColor
        border.width:  1
        color: posColor
        width: posRadius * 2
        height: width
        radius: width / 2
        anchors {
            top: parent.top
            horizontalCenter: parent.horizontalCenter
            topMargin: - width / 2
        }
    }

    //bottom 
    Rectangle {
        border.color: posborderColor 
        border.width: 1 
        color: posColor 
        width: posRadius * 2 
        height: width 
        radius: width / 2
        anchors {
            bottom: parent.bottom 
            horizontalCenter: parent.horizontalCenter
            bottomMargin: - width / 2
        }
    }

    //left
    Rectangle {
        border.color: posborderColor
        border.width:  1
        color: posColor
        width: posRadius * 2
        height: width
        radius: width / 2
        anchors {
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: - width / 2
        }
    }

    //right 
    Rectangle {
        border.color: posborderColor 
        border.width: 1 
        color: posColor 
        width: posRadius * 2 
        height: width  
        radius: width / 2
        anchors {
            right: parent.right 
            verticalCenter: parent.verticalCenter
            rightMargin: - width / 2
        }
    }

    //topleft 
    Rectangle {
        border.color: posborderColor 
        border.width: 1 
        color: posColor 
        width: posRadius * 2 
        height: width  
        radius: width / 2
        anchors {
            left: parent.left
            verticalCenter: parent.top
            leftMargin: - width / 2
        }
    }

    //bottomleft 
    Rectangle {
        border.color: posborderColor 
        border.width: 1 
        color: posColor 
        width: posRadius * 2 
        height: width  
        radius: width / 2
        anchors {
            left: parent.left
            verticalCenter: parent.bottom
            leftMargin: - width / 2
        }
    }

    //topright 
    Rectangle {
        border.color: posborderColor 
        border.width: 1 
        color: posColor 
        width: posRadius * 2 
        height: width  
        radius: width / 2
        anchors {
            right: parent.right
            verticalCenter: parent.top
            rightMargin: - width / 2
        }
    }

    //bottomright 
    Rectangle {
        border.color: posborderColor 
        border.width: 1 
        color: posColor 
        width: posRadius * 2 
        height: width  
        radius: width / 2
        anchors {
            right: parent.right
            verticalCenter: parent.bottom
            rightMargin: - width / 2
        }
    }

}