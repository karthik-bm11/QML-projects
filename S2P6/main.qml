import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: window1
    width: 640
    height: 480
    visible: true
    title: qsTr("Rectangle Pattern")

    property bool flag:false
    property string color1: "black"
    property string color2: "white"
    Rectangle{
        id:rect1
        width:600
        height: 440
        anchors.centerIn: parent
        color:color1
    }
    Rectangle{
        id:rect2
        width:560
        height: 400
        anchors.centerIn: parent
        color:color2
    }
    Rectangle{
        id:rect3
        width:520
        height: 360
        anchors.centerIn: parent
        color:color1
    }
    Rectangle{
        id:rect4
        width:480
        height: 320
        anchors.centerIn: parent
        color:color2
    }
    Rectangle{
        id:rect5
        width:440
        height: 280
        anchors.centerIn: parent
        color:color1
    }
    MouseArea{
        anchors.fill:parent
        onClicked: {
            if(flag==true){
                color1="black"
                color2="white"
                window1.color="white"
                flag=false
            }
            else{
                color1="white"
                color2="black"
                window1.color="black"
                flag=true
            }

        }
    }
}
