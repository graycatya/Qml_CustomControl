import QtQuick 2.12 
import "../../CustomControl"

Item {
    width: 300; height: 300 

    ImageFlipable {
        x: 36; y: 36
        width: 36; height: 36
        fronturl: "../../png/logo.png"
        backurl: "../../png/logo.png"
        state: "axisY"
    }

}
