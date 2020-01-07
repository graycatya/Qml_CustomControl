import QtQuick 2.5

import "../CustomControl"

Marquee {
    marquee.text: "hello world!"
    marquee.font.pointSize: 24

    marquee_sequential.running: true

    marquee_sequential_property.property: "y"
    marquee_sequential_property.duration: 2000
}