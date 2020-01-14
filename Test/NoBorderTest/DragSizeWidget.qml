import QtQuick 2.12

Rectangle {
    id: root 
    color: "transparent"
    border.width: 4
    border.color: "transparent"
    width: parent.width  
    height: parent.height  
    property var control: parent 

    signal widgetSize(point pos,int widget, int height);

    //左边拖动大小
    DragWidget {
        id: leftdragsize
        y: root.border.width  
        height: root.height - border.width * 2
        mouseStyle: Qt.SizeHorCursor
        onPosDragWidget: {
            if(root.control.x + pos.x < root.control.x + root.control.width)
            {
                root.control.x += pos.x
            }
            if(root.control.width - pos.x > 0)
            {
                root.control.width -= pos.x
            }
            widgetSize(Qt.point(root.control.x, root.control.y), root.control.width, root.control.height);
        }
    }

    //右边拖动大小
    DragWidget {
        id: rightdragsize
        x: parent.width - width
        y: root.border.width
        height: root.height - border.width * 2
        mouseStyle: Qt.SizeHorCursor
        onPosDragWidget: {
            if(root.control.width + pos.x > 0)
            {
                root.control.width += pos.x
            }
            widgetSize(Qt.point(root.control.x, root.control.y), root.control.width, root.control.height);
        }
    }

    //顶边拖动大小
    DragWidget {
        id: topdragsize
        x: root.border.width  
        width: root.width - border.width * 2
        mouseStyle: Qt.SizeVerCursor
        onPosDragWidget: {
            if(root.control.y + pos.y < root.control.height + root.control.y)
            {
                root.control.y += pos.y
            }
            if(root.control.height - pos.y > 0)
            {
                root.control.height -= pos.y
            }
            widgetSize(Qt.point(root.control.x, root.control.y), root.control.width, root.control.height);
        }
    }

    //底边拖动大小
    DragWidget {
        id: bottomdragsize
        x: root.border.width 
        y: parent.height - height
        width: root.width - border.width * 2
        mouseStyle: Qt.SizeVerCursor
        onPosDragWidget: {
            if(root.control.height + pos.y > 0)
            {
                root.control.height += pos.y
            }
            widgetSize(Qt.point(root.control.x, root.control.y), root.control.width, root.control.height);
        }
    }

    //左上角拖动大小 - 左上角坐标为 0,0
    DragWidget {
        id: lefttopdragsize
        mouseStyle: Qt.SizeFDiagCursor
        onPosDragWidget: {
            
            if(root.control.x + pos.x < root.control.x + root.control.width)
            {
                root.control.x += pos.x;
            }
            if(root.control.y + pos.y < root.control.y + root.control.height)
            {
                root.control.y += pos.y;
            }
            if(root.control.width - pos.x > 0)
            {
                root.control.width -= pos.x;
            }
            if(root.control.height - pos.y > 0)
            {
                root.control.height -= pos.y;
            }
            widgetSize(Qt.point(root.control.x, root.control.y), root.control.width, root.control.height);
        }
    }

    //左下角拖动大小
    DragWidget {
        id: leftbottomdragsize
        y: parent.height - height 
        mouseStyle: Qt.SizeBDiagCursor
        //control: parent
        onPosDragWidget: {
            if(root.control.x + pos.x < root.control.x + root.control.width)
            {
                root.control.x += pos.x
            }
            if(root.control.width - pos.x > 0)
            {
                root.control.width -= pos.x
            }
            if(root.control.height + pos.y > 0)
            {
                root.control.height += pos.y
            }
            widgetSize(Qt.point(root.control.x, root.control.y), root.control.width, root.control.height);
        }
    }

    //右上角拖动大小
    DragWidget {
        id: righttopdragsize
        x: parent.width - width  

        mouseStyle: Qt.SizeBDiagCursor
        onPosDragWidget: {
            if(root.control.y + pos.y < root.control.height + root.control.y)
            {
                root.control.y += pos.y
            }
            if(root.control.height - pos.y > 0)
            {
                root.control.height -= pos.y
            }
            if(root.control.width + pos.x > 0)
            {
                root.control.width += pos.x
            }
            widgetSize(Qt.point(root.control.x, root.control.y), root.control.width, root.control.height);
        }
    }

    //右下角拖动大小
    DragWidget {
        id: rightbottomdragsize
        x: parent.width - width  
        y: parent.height - height 

        mouseStyle: Qt.SizeFDiagCursor
        onPosDragWidget: {
            if(root.control.width + pos.x > 0)
            {
                root.control.width += pos.x
            }
            if(root.control.height + pos.y > 0)
            {
                root.control.height += pos.y
            }
            widgetSize(Qt.point(root.control.x, root.control.y), root.control.width, root.control.height);
        }
    }

}
