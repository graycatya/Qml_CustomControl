import QtQuick 2.12
import "../../CustomControl"
Item {
    width: 400; height: 400
    BarTypeProgressBar {
        width: 200; height: 30
        backgroundBorderWidth: 5
        running: true
        duration: 2000
        //value: 200
    }
}
