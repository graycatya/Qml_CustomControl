import QtQuick 2.12

import "../../CustomControl"

Item {
    width: 200; height: 200
    ArcProgressBar {
        width: 46; height: 46;
        running: true
        duration: 4000
    }
}