import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:wid
    width: 640
    height: 480
    visible: true
    title: qsTr("Window Color Change")
    property bool value: false
    Row {
        anchors.centerIn: parent
        spacing: 20
        Rectangle{
            id:rect1
            width:50;height: 50
            color:"red"                         //without row,without x/y
            border.color:"black"
            Text {
                id: redt
                text: qsTr("Red")
                color:"black"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    wid.color="red"
                }
            }
        }
        Rectangle{
            id:rect2
            width:50;height: 50
            color:"green"
            border.color:"black"
            Text {
                id: greent
                text: qsTr("Green")
                color:"black"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    wid.color="green"
                }
            }
        }
        Rectangle{
            id:rect3
            width:50;height: 50
            color:"blue"
            border.color:"black"
            Text {
                id: bluet
                text: qsTr("Blue")
                color:"black"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    wid.color="blue"
                }
            }
        }
        Rectangle{
            id:rect4
            width:50;height: 50
            color:"cyan"
            border.color:"black"
            Text {
                id: cyant
                text: qsTr("cyan")
                color:"black"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    wid.color="cyan"
                }
            }
        }
        Rectangle{
            id:rect5
            width:50;height: 50
            color:"orange"
            border.color:"black"
            Text {
                id: ort
                text: qsTr("orange")
                color:"black"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    wid.color="orange"
                }
            }
        }
    }

}
