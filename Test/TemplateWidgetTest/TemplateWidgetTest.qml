import QtQuick 2.12

import "../../CustomControl"


Rectangle {
    width: 300; height: 300

    //写在最前面,焦点吸收器
    MouseArea {
        anchors.fill: parent
        onClicked: {
            focus = true
        }
    }

    Rectangle {
        id: rectangle
        x: 30; y: 30
        width: 100
        height: 100
        color: "gray"
        smooth: true
        antialiasing: true
        MouseArea {
            anchors.fill: parent
            onClicked: {
                parent.focus = true
            }
        }
        RotateCursor {
            visible: parent.focus
        }
        TemplateWidget { 
            visible: parent.focus
        }
        onXChanged: {
            console.log("onXChanged: " + rectangle.x);
        }

    }

}
