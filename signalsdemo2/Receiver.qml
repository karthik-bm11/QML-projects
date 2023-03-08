import QtQuick 2.15

Item {
    id:itm
    property alias bcolor: rect2.color
        width:rect2.width
        height: rect2.height
        property int count2: 0

        signal notify2(int count2)

        function receiverInfo(count){
            text2.text=count
            console.log("The receiver received the number : "+count)
        }

        Rectangle{
            id:rect2
            width:80;height: 80
            color: "red"

            Text {
                id:text2
                anchors.centerIn: parent
                font.pointSize: 20
                text:"0"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                   count2++
                   notify2(count2)
                }
            }

        }


}
