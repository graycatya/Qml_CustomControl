import QtQuick 2.12 

Rectangle {
    id: root
    Component.onCompleted: {
        console.debug("************************");
        var i = 0;
        for(i = 0; i < 100; i++)
            catlog.debug_print("Demo QMLLOG: " + i);
    }
}
