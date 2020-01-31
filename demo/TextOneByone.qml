import QtQuick 2.12
import QtGraphicalEffects 1.12
 
 
Rectangle{
    property var textVar: ["等","待","确","认"," ."," ."," ."]
    property var textIndex: 0
 
    color: "transparent"
    width: 250
    height: 50
 
 
    Item
    {
        id:waitItem
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.verticalCenter: parent.verticalCenter
        implicitHeight: 30
        implicitWidth: 30
        Rectangle
        { id: rect
            width: parent.width
            height: parent.height
            color: Qt.rgba(0, 0, 0, 0)
            radius: width / 2
            border.width: width / 6
            visible: false
        }
        ConicalGradient
        {
            width: rect.width
            height: rect.height
            gradient: Gradient
            { GradientStop
                { position: 0.0; color: "#87CEFF" }
                GradientStop
                {
                    position: 1.0;
                    color: "blue"
                }
            }
            source: rect
            Rectangle {
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                width: rect.border.width
                height: width
                radius: width / 2
                color: "blue"
            }
            RotationAnimation on rotation {
                from: 0
                to: 360
                duration: 800
                loops: Animation.Infinite
            }
        }
    }
 
    Text
    {
        id:scrollText
        height:parent.height
        anchors.left: waitItem.right
        anchors.leftMargin: 15
 
        color:"blue"
        //font.bold: true
        font.pixelSize: 22
        verticalAlignment: Text.AlignVCenter
        text: ""
 
    }
    Timer
    {
        id:textTimer
        interval: 1000
        running: true
        repeat: true
        onTriggered:
        {
            if(textIndex == textVar.length)
            {
                scrollText.text = ""
                textIndex = 0;
                return;
            }
            scrollText.text = scrollText.text + textVar[textIndex]
            textIndex++;
        }
 
    }
 
}