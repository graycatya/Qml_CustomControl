import QtQuick 2.5


Rectangle{
    width: 80; height: 20
    id: root
    clip: true
    anchors.centerIn: parent
    color: "gray"
    border.color: "red"

    TextInput {
        id: inputone
        clip: true
        x:2;
        width: root.width * 0.2
        height: root.height * 0.9
    }

    TextInput {
        id: inputtwo
        clip: true
        x:root.width * 0.2;
        width: root.width * 0.2
        height: root.height * 0.9
    }

    TextInput {
        id: inputthree
        clip: true
        x:root.width * 0.2*2;
        width: root.width * 0.2
        height: root.height * 0.9
    }

    TextInput {
        id: inputfour
        clip: true
        x:root.width * 0.2*3;
        width: root.width * 0.2
        height: root.height * 0.9
    }
    

    //antialiasing: bool
    //border.color: color
    //border.width: int
    //color: color
    //gradient: any
    //radius: real
    //
    //
    //activeFocus: bool
    //activeFocusOnTab: bool
    //anchors.alignWhenCentered: bool
    //anchors.baseline: AnchorLine
    //anchors.baselineOffset: real
    //anchors.bottom: AnchorLine
    //anchors.bottomMargin: real
    //anchors.centerIn: Item
    //anchors.fill: Item
    //anchors.horizontalCenter: AnchorLine
    //anchors.horizontalCenterOffset: real
    //anchors.left: AnchorLine
    //anchors.leftMargin: real
    //anchors.margins: real
    //anchors.right: AnchorLine
    //anchors.rightMargin: real
    //anchors.top: AnchorLine
    //anchors.topMargin: real
    //anchors.verticalCenter: AnchorLine
    //anchors.verticalCenterOffset: real
    //antialiasing: bool
    //baselineOffset: int
    //children: list<Item>
    //childrenRect.height: real
    //childrenRect.width: real
    //childrenRect.x: real
    //childrenRect.y: real
    //clip: bool
    //containmentMask: QObject*
    //data: list<Object>
    //enabled: bool
    //focus: bool
    //height: real
    //implicitHeight: real
    //implicitWidth: real
    //layer.effect: Component
    //layer.enabled: bool
    //layer.format: enumeration
    //layer.mipmap: bool
    //layer.samplerName: string
    //layer.samples: enumeration
    //layer.smooth: bool
    //layer.sourceRect: rect
    //layer.textureMirroring: enumeration
    //layer.textureSize: size
    //layer.wrapMode: enumeration
    //opacity: real
    //parent: Item
    //resources: list<Object>
    //rotation: real
    //scale: real
    //smooth: bool
    //state: string
    //states: list<State>
    //transform: list<Transform>
    //transformOrigin: enumeration
    //transitions: list<Transition>
    //visible: bool
    //visibleChildren: list<Item>
    //width: real
    //x: real
    //y: real
    //z: real
    //childAt(realx,realy)
    //forceActiveFocus()
    //forceActiveFocus(Qt: : FocusReasonreason)
    //nextItemInFocusChain(boolforward)
    //objectName: string
}