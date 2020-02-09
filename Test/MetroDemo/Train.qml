import QtQuick 2.12 

import "../../CustomControl"

ImageMove {
    id: train
    width: 835; height: 52
    property bool just: true

    color: "transparent"
    source: "../../png/train1.png"
    state: train.just ? "lefttoright" : "righttoleft"
    animation_running: true
    animation_duration: 4000
    onJustChanged: {
        console.log("onJustChanged");
        train.animation_running = false 
        train.state = train.just ? "lefttoright" : "righttoleft"
        train.animation_running = true
    }
}