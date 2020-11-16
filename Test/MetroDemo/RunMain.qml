import QtQuick 2.12 

import "../../CustomControl"

import "./MetroRun.js" as MetroFunc

Item {
    id: root
    width: 1366; height: 256
    property int startstation: 23
    property int endstation: 25
    property int nextstation: 24
    property bool just: true
    property bool doorOpen: true
    WelcomeUi {
        id: welcomeui
        visible: true
    }
    CurrentStationUi {
        id: currentstationui 
        visible: false
        endstation: root.endstation
        thisstation: root.startstation
        doorOpen: root.doorOpen
        just: root.just 
    }
    NextStationUi {
        id: nextstationui
        visible: false
        startstation: root.startstation
        endstation: root.endstation 
        nextstation: root.nextstation 
        just: root.just 
    }
    Fps {
        x: 1270; y: 0
        implicitHeight: 26
        implicitWidth: 26
        textSize: 26
    }

    Timer {
        id: timer
        interval: 14000
        repeat: true 
        running: true
        property bool berth: true
        onTriggered: new MetroFunc.MetroRun();
    }
}
