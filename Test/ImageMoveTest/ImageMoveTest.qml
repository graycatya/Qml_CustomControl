import QtQuick 2.12

import "../../CustomControl"

ImageMove {
    width: 200; height: 200
    source: "../../png/train.png"
    state: "rightbuttomtoleftup"
    animation_running: true
    animation_duration: 4000
}
