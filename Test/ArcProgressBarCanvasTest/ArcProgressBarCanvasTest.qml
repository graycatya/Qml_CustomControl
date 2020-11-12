import QtQuick 2.12

import "../../CustomControl"

Item {
    id: root
    width: 200; height: 200
    ArcProgressBarCanvas {
        id: arcpro
        width: 200; height: 200
    }

    ArcProgressBarCanvas {
        id: arcpro1
        x: root.width*(1/4); y: root.height*(1/4)
        width: 100; height: 100
        radiusCanvas: 25
        backgroundEndValue: 25
    }


    Timer {
        interval: 100
        repeat: true 
        running: true
        onTriggered: {
            if(arcpro.value < arcpro.backgroundEndValue)
            {
                arcpro.value = arcpro.value + 0.5;
            } else {
                arcpro.value = 0;
            }
        }
    }

    Timer {
        interval: 100
        repeat: true 
        running: true
        onTriggered: {
            if(arcpro1.value < arcpro1.backgroundEndValue)
            {
                arcpro1.value = arcpro1.value + 0.5;
            } else {
                arcpro1.value = 0;
            }
        }
    }
}
