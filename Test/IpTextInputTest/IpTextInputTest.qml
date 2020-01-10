import QtQuick 2.12 

import "../../CustomControl"

Rectangle {
    width:200; height: 100

    IpTextInput { id: iptext; textcolor:"red"  }
    Rectangle {
        width: 200; height: 30
        anchors.top: iptext.bottom
        color: "blue"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("width: " + iptext.width + " height: " + iptext.height)
                console.log(iptext.text)
            }
        }
    }

}