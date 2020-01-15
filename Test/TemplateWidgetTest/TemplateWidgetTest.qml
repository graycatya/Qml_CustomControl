import QtQuick 2.12

import "../../CustomControl"


Rectangle {
    width: 300; height: 300

    Rectangle {
        id: rectangle
        x: 30; y: 30
        width: 100
        height: 100
        color: "blue"
        RotateCursor {}
        TemplateWidget {
            
        }

    }

}