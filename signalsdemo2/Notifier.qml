import QtQuick 2.15

Item {
    id:sender
    property alias acolor: rect1.color
    width:rect1.width
    height: rect1.height
    property int count: 0

    signal notify(int count)

    function receiverInfo(count2){
        text1.text=count2
        console.log("The receiver received the number : "+count2)
    }
    Rectangle{
        id:rect1
        width:80;height: 80
        color: "red"

        Text {
            id:text1
            anchors.centerIn: parent
            font.pointSize: 20
            text:"0"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
               count++
               notify(count)
            }
        }
    }

}
