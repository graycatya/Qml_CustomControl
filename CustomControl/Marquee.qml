import QtQuick 2.5


Rectangle {
    id: root
    width: 200; height: 100
    color: "steelblue"
    clip: true
    anchors.centerIn: parent

    property alias marquee: marquee
    property alias marquee_sequential: marquee_sequential
    property alias marquee_sequential_property: marquee_property

    Text {
        id: marquee
        height: parent.height
        text: marquee_text
        verticalAlignment: Text.AlignVCenter

        SequentialAnimation {
            id: marquee_sequential
            loops: Animation.Infinite
            running: false

            PropertyAnimation {
                id: marquee_property
                target: marquee
                property: "x"
                from: root.width
                to: - marquee.width
                duration: 1000
            }
        }

    }

}
