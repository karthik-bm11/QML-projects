import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("5th problem")
    color:"black"
    Item {
        id: item1
        y:10;x:10

        Rectangle{
            id:rect1
            y:10;x:15
            width:80;height:80
            color: "red"
            opacity: 0.5
            MouseArea{
                anchors.fill:parent
                onClicked:{
                    rect1.opacity=0.5
                    rect2.opacity=1.0
                    rect3.opacity=1.0
                }
            }
        }
        Rectangle{
            id:rect2
            y:10;x:100
            width:80;height:80
            color: "green"
            opacity: 0.5
            MouseArea{
                anchors.fill:parent
                onClicked:{
                    rect1.opacity=1.0
                    rect2.opacity=0.5
                    rect3.opacity=1.0
                }
            }
        }
        Rectangle{
            id:rect3
            y:10;x:190
            width:80;height:80
            color: "blue"
            opacity: 0.5
            MouseArea{
                anchors.fill:parent
                onClicked:{
                    rect1.opacity=1.0
                    rect2.opacity=1.0
                    rect3.opacity=0.5
                }
            }
        }
    }

}
