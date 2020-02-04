import QtQuick 2.12 
import QtQuick.Shapes 1.12

Item {
    id: root 
    width: 46; height: 46
    Rectangle {
        id: background
        color: "transparent"
        Shapes {
            id: backgroundShape
            width: root.width; height: root.height
            
        }
    }
}