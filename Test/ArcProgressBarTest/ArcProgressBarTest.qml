import QtQuick 2.12

import "../../CustomControl"

Item {
    width: 200; height: 200
    ArcProgressBar {
        x: 36; y: 36
        width: 46; height: 46;
        running: true
        duration: 4000
    }
    ArcProgressBar {
        x: 100; y: 100
        width: 46; height: 46;
        backdroparcsweepAngle: 360
        to: 360
        running: true
        duration: 4000
    }
}