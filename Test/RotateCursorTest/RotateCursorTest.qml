import QtQuick 2.12

import "../../CustomControl"

Rectangle {
    width: 200; height: 200

    Rectangle {
        x: 50; y: 50
        width: 20; height: 20
        color: "gray"

        RotateCursor {
            x: 50; y: 50
            width: 12; height: 12
        }

    }
}
    
