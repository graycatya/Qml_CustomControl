import QtQuick 2.12

Item {
    id: root
    property int fps: 60 
    property int fpsCount: 0
    property color textColor: "white"
    property int textSize: 32

    Image {
        id: fpsimage 
        source: "../svg/fps.svg"
        width: source.width  
        height: source.height  
        //anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left 
        RotationAnimation on rotation {
            from: 0 
            to: 360 
            running: true 
            loops: Animation.Infinite
            duration: 1000
        }
        //旋转信号接收刷新fps实时值
        onRotationChanged: fpsCount++
    }

    Text {
        id: fpstext
        anchors.left: fpsimage.right 
        anchors.verticalCenter: fpsimage.verticalCenter
        text: "FPS" + fps 
        font.pixelSize: textSize
        style: Text.Outline 
        styleColor: "#606060"
        color: textColor
    }
    Timer {
        interval: 1000
        repeat: true 
        running: true 
        onTriggered: {
            fps = fpsCount 
            fpsCount = 0
        }
    }
}