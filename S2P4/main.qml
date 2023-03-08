import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties and Handlers")
    color:"black"
    property bool flag: false

    Text {
        id : txt
        font.family:  "consolas"
        color:"White"
        text : "Click to make rectangle invisible"
    }
    Rectangle {
        id:rect
        width: 200
        height: 90
        color:"yellow"
        anchors.centerIn: parent

    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if(flag == true) {
                rect.visible=true
                flag=false
                txt.text = "Click to make rectangle invisible"

            }
            else {
                rect.visible=false
                flag=true
                txt.text = "Click to make rectangle visible"

            }
        }
    }
}
