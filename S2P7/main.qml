import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Item")

    Item {

        x:20;y:20
        width:600;height:300

        Rectangle{
            anchors.fill:parent
            color:"beige"
            border.color:"black"
        }
        MouseArea{
            anchors.fill:parent
            onClicked: {
                if(rect2.y < 200){   //move one rectangle ladder pattern on single click
                    rect1.y+=20
                    rect2.y+=20
                }
            }
        }

        Rectangle{
            id:rect1
            y:10
            width:100;height:100
            color:"purple"
        }
        Rectangle{
            id:rect2
            x:120
            y:10
            width:100;height:100
            color:"cyan"
        }
    }

}
