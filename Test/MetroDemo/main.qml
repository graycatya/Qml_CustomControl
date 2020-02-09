import QtQuick 2.12 

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
    Timer {
        id: timer
        interval: 6000
        repeat: true 
        running: true
        property bool berth: true
        onTriggered: {
            welcomeui.visible = false
            if(root.startstation <= root.endstation && root.just == true)
            {
                root.just = true
                if(berth)
                {
                    console.log("true berth = true");
                    if(root.startstation >= root.endstation)
                    { 
                        console.log("true berth = true1");
                        root.startstation = 5
                        root.endstation = 0
                        root.nextstation = 4
                        root.just = false
                    }
                    root.startstation = root.nextstation;
                    currentstationui.visible = true 
                    nextstationui.visible = false 
                    timer.berth = false
                } else {
                    currentstationui.visible = false 
                    nextstationui.visible = true
                    root.nextstation = root.startstation + 1;
                    root.doorOpen = !root.doorOpen;
                    timer.berth = true
                }
            } else if(root.startstation >= root.endstation && root.just == false)
            {
                root.just = false
                if(berth)
                {
                    console.log("false berth = true");
                    if(root.startstation <= root.endstation)
                    {
                        console.log("false berth = true1");
                        root.startstation = 20
                        root.endstation = 25
                        root.nextstation = 21
                        root.just = true
                    }
                    root.startstation = root.nextstation;
                    currentstationui.visible = true 
                    nextstationui.visible = false 
                    timer.berth = false
                } else {
                    currentstationui.visible = false 
                    nextstationui.visible = true
                    root.nextstation = root.startstation - 1;
                    root.doorOpen = !root.doorOpen;
                    timer.berth = true
                }
            }
        }
    }
}