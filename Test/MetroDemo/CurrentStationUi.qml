import QtQuick 2.12 

import "../../CustomControl"
import "UiConfig.js" as Uidefine


Item {
    id: root
    width: 1366 
    height: 256 
    property int endstation: 0
    property int thisstation: 0
    property bool just: true
    property bool doorOpen: false
    
    Image {
        id: imagebackground 
        source: "../../png/background.png"
        width: source.width 
        height: source.height 
    }
    Image {
        x: 86; y: 19
        source: "../../png/logotext.png"
        width: source.width 
        height: source.height
    }
    ImageFlipable {
        x: 29; y: 17
        width: 45
        height: 42
        fronturl: "../../png/logo.png"
        backurl: "../../png/logo.png"
        state: "axisY"
    }
    Image {
        x: 25; y: 74
        source: "../../png/first.png"
        width: source.width 
        height: source.height
    }
    Image {
        x: 29; y: 88
        source: "../../png/endstation.png"
        width: source.width 
        height: source.height
    }
    Item {
        x:95; y: 88
        width: 114; height: 36
        Item {
            width: 114; height: 18
            Text {
                id: endstataiontext
                anchors.centerIn: parent
                text: Uidefine.textstation[endstation]
                font.pixelSize: 18
                font.family: "微软雅黑"
                font.weight: Font.Bold
            }
        }
        Item {
            y: 24
            width: 114; height: 10
            Text {
                id: endstataiontextenglish
                anchors.centerIn: parent
                text: Uidefine.textstationenglish[endstation]
                font.pixelSize: 10
                font.family: "微软雅黑"
                font.weight: Font.Bold
            }
        }
    }
    Image {
        x: 25; y: 130
        source: "../../png/first.png"
        width: source.width 
        height: source.height
    }
    Image {
        x: 68; y: 139
        source: "../../png/thisstation.png"
        width: source.width 
        height: source.height
    }
    Image {
        x: 25; y: 190
        source: "../../png/first.png"
        width: source.width 
        height: source.height
    }
    Item {
        x: 42; y: 200
        width: 148; height: 44
        Item {
            width: 148; height: 24
            Text {
                id: thisstationtext
                anchors.centerIn: parent
                text: Uidefine.textstation[thisstation]
                font.pixelSize: 24
                font.family: "微软雅黑"
                font.weight: Font.Bold
            }
        }
        Item {
            y: 29
            width: 148; height: 12
            Text {
                id: thisstationtextenglish
                anchors.centerIn: parent
                text: Uidefine.textstationenglish[thisstation]
                font.pixelSize: 12
                font.family: "微软雅黑"
                font.weight: Font.Bold
            }
        }
    }



    Item {
        x: 241; y: 61
        width: 198; height: 179
        Item {
            width: 198; height: 107
            Image {
                //x: 287; y: 61
                anchors.centerIn: parent
                source: "../../png/roundblack.png"
            }
        }
        Item {
            y: 127
            width: 198; height: 24
            Text {
                id: animationone
                anchors.centerIn: parent
                text: Uidefine.textstation[thisstation-1]
                font.pixelSize: 24
                font.family: "微软雅黑"
                font.weight: Font.Bold
            }
        }
        Item {
            y: 161
            width: 198; height: 16
            Text {
                id: animationoneenglish
                anchors.centerIn: parent
                text: Uidefine.textstationenglish[thisstation-1]
                font.pixelSize: 16
                font.family: "微软雅黑"
                font.weight: Font.Bold
            }
        }
    }
    Image {
        x: 434; y: 84
        source: "../../png/arrowright.png"
        rotation: root.just ? 0 : 180
    }

    Item {
        x: 550; y: 40
        width: 198; height: 200
        Item {
            width: 198; height: 138
            ImageScale {
                //x: 580; y: 40
                width: 138; height: 138
                anchors.centerIn: parent
                source: "../../png/roundblue.png"
                animation_running: true
                animation_duration: 2000
            }
        }
        Item {
            y: 146
            width: 198; height: 24
            Text {
                id: animationtwo
                anchors.centerIn: parent
                text: Uidefine.textstation[thisstation]
                font.pixelSize: 24
                font.family: "微软雅黑"
                font.weight: Font.Bold
            }
        }
        Item {
            y: 180
            width: 198; height: 16
            Text {
                id: animationtwoenglish
                anchors.centerIn: parent
                text: Uidefine.textstationenglish[thisstation]
                font.pixelSize: 16
                font.family: "微软雅黑"
                font.weight: Font.Bold
            }
        }
    }
    Image {
        x: 758; y: 85
        source: "../../png/arrowright.png"
        rotation: root.just ? 0 : 180
    }

    Item {
        x: 859; y: 61
        width: 198; height: 179
        Item {
            width: 198; height: 107
            Image {
                anchors.centerIn: parent
                source: "../../png/roundgreen.png"
            }
        }
        Item {
            y: 127
            width: 198; height: 24
            Text {
                id: animationthree
                anchors.centerIn: parent
                text: Uidefine.textstation[thisstation+1]
                font.pixelSize: 24
                font.family: "微软雅黑"
                font.weight: Font.Bold
            }
        }
        Item {
            y: 161
            width: 198; height: 16
            Text {
                id: animationthreeenglish
                anchors.centerIn: parent
                text: Uidefine.textstationenglish[thisstation+1]
                font.pixelSize: 16
                font.family: "微软雅黑"
                font.weight: Font.Bold
            }
        }
    }

    DoorOpen { x: 1126; y: 70; visible: doorOpen  }

    DoorOtherOpened { x: 1143; y: 70; visible: !doorOpen }


    Image {
        x: 1117; y: 173
        visible: doorOpen
        source: "../../png/doorsonthis.png"
    }

    Image {
        x: 1099; y: 174
        visible: !doorOpen
        source: "../../png/doorsonopened.png"
    }
}