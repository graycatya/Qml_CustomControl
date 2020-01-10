import QtQuick 2.12

Rectangle {
    id: root 
    clip: true 
    color: "steelblue"
    
    anchors.centerIn: parent

    //Image元素抛出
    property alias source: imageroll.source

    //SequentialAnimation元素抛出
    property alias animation_loops: imageroll_sequential.loops 
    property alias animation_running: imageroll_sequential.running

    //PropertyAnimation元素抛出
    property alias animation_duration: imageroll_property.duration

    Image {
        id: imageroll

        SequentialAnimation{
            id: imageroll_sequential
            loops: Animation.Infinite
            PropertyAnimation{
                id: imageroll_property
                target: imageroll 
                //property: "x"
                //from: root.width
                //to: - imageroll.width
                //duration: 1000
            }
        }
    }

    states: [
        State {
            name: "lefttoright"
            PropertyChanges {
                target: imageroll_property
                property: "x"
                from: root.width
                to: - imageroll.width
            }
        },
        State {
            name: "righttoleft"
            PropertyChanges {
                target: imageroll_property
                property: "x"
                from: - imageroll.width
                to: root.width
            }
        },
        State {
            name: "uptodown"
            PropertyChanges {
                target: imageroll_property
                property: "y"
                from: -imageroll.height
                to: root.height 
            }
        },
        State {
            name: "downtoup"
            PropertyChanges {
                target: imageroll_property
                property: "y"
                from: root.height
                to: -imageroll.height
            }
        } 
    ]
    
}