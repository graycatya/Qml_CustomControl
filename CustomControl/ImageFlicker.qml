import QtQuick 2.12

Item {
    id: root 
    property alias source: image.source
    property alias interval: timer.interval
    property alias repeat: timer.repeat
    property alias running: timer.running
    property alias visibles: image.visible
    width: image.source.width 
    height: image.source.height
    Image {
        id: image 
        visible: true
    }
    Timer {
        id: timer
        interval: 500
        repeat: true 
        running: true 
        onTriggered: {
            image.visible = !image.visible
        }
    }
}