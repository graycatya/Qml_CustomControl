import QtQuick 2.5

import "../../CustomControl"

ImageMove {
    width: 89; height: 71
    source: "./train.png"
    state: "righttoleft"
    animation_running: true
    animation_duration: 4000
}
