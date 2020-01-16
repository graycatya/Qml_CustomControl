import QtQuick 2.12


Rectangle{
    width: 180; height: 30
    implicitWidth: 180
    implicitHeight: 30
    id: root
    clip: true
    anchors.centerIn: parent
    color: "white"
    border.color: "gray"

    property string text: ipone.text + "." + iptwo.text + "." + ipthree.text + "." + ipfour.text
    property color textcolor: "black"
    

    TextInput {
        id: ipone
        clip: true
        x: 1; y: 1
        width: (root.width -2) * (2/11); height: root.height - 2
        horizontalAlignment: TextInput.AlignHCenter
        verticalAlignment: TextInput.AlignVCenter
        KeyNavigation.tab: iptwo
        selectByMouse: true
        color: textcolor
        
        text: "0"
        font.pointSize: root.height * 0.4

        validator: RegExpValidator{regExp:/(2(5[0-5]|[0-4]\d))|[0-1]?\d{1,2}/}

        onTextEdited: {
            focusswitch(ipone, iptwo)
        }
    }

    Rectangle {
        id: dotone
        y: 1
        width: (root.width -2) * (1/11); height: root.height - 2
        anchors.left: ipone.right
        Text {
            width: parent.width; height: parent.height
            color: textcolor
            text: "."
            font.pointSize: root.height * 0.4

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    TextInput {
        id: iptwo
        clip: true
        y: 1
        width: (root.width -2) * (2/11); height: root.height - 2
        anchors.left: dotone.right
        horizontalAlignment: TextInput.AlignHCenter
        verticalAlignment: TextInput.AlignVCenter
        KeyNavigation.tab: ipthree
        selectByMouse: true
        color: textcolor

        text: "0"
        font.pointSize: root.height * 0.4

        validator: RegExpValidator{regExp:/(2(5[0-5]|[0-4]\d))|[0-1]?\d{1,2}/}

        onTextEdited: {
            focusswitch(iptwo, ipthree)
            if(iptwo.text == "")
            {
                ipone.focus = true
            }
        }
    }

    Rectangle {
        id: dottwo
        y: 1
        width: (root.width -2) * (1/11); height: root.height - 2
        anchors.left: iptwo.right
        Text {
            width: parent.width; height: parent.height
            color: textcolor
            text: "."
            font.pointSize: root.height * 0.4

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    TextInput {
        id: ipthree
        clip: true
        y: 1
        width: (root.width -2) * (2/11); height: root.height - 2
        anchors.left: dottwo.right
        horizontalAlignment: TextInput.AlignHCenter
        verticalAlignment: TextInput.AlignVCenter
        KeyNavigation.tab: ipfour
        selectByMouse: true
        color: textcolor

        text: "0"
        font.pointSize: root.height * 0.4

        validator: RegExpValidator{regExp:/(2(5[0-5]|[0-4]\d))|[0-1]?\d{1,2}/}

        onTextEdited: {
            focusswitch(ipthree, ipfour)
            if(ipthree.text == "")
            {
                iptwo.focus = true
            }
        }
    }

    Rectangle {
        id: dotthree
        y: 1
        width: (root.width -2) * (1/11); height: root.height - 2
        anchors.left: ipthree.right
        Text {
            width: parent.width; height: parent.height
            color: textcolor
            text: "."
            font.pointSize: root.height * 0.4

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    TextInput {
        id: ipfour
        clip: true
        y: 1
        width: (root.width -2) * (2/11); height: root.height - 2
        anchors.left: dotthree.right
        horizontalAlignment: TextInput.AlignHCenter
        verticalAlignment: TextInput.AlignVCenter
        KeyNavigation.tab: ipone
        selectByMouse: true
        color: textcolor

        text: "0"
        font.pointSize: root.height * 0.4

        validator: RegExpValidator{regExp:/(2(5[0-5]|[0-4]\d))|[0-1]?\d{1,2}/}

        onTextEdited: {
            //focusswitch(ipone, iptwo)
            if(ipfour.text == "")
            {
                ipthree.focus = true
            }
        }
    }

    function focusswitch(inputone, inputtwo)
    {
        if (inputone.length === 3)
        {
            inputtwo.focus = true
        } else if(inputone.text > 25 && inputone.length === 2)
        {
            inputtwo.focus = true
        }
    }

}