import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:win
    width: 640
    height: 480
    visible: true
    title: qsTr("Mini-project")
    //signal start
    Item {
        id: mainitem
        width: parent.width;height: parent.height
        visible: true
    Image {
        id: bgimg
        source: "https://wallpapers.com/images/hd/dark-wall-with-lights-lcejwtpvwo4ajtta.jpg"
        width: parent.width;height: parent.height


            BorderImage {
                id: logoimg
                source: "https://media.licdn.com/dms/image/C510BAQGhrQtD1gREtQ/company-logo_200_200/0/1569566814741?e=2147483647&v=beta&t=1GD0mjt03ANg9dWAYhtvNm7bOrc6T34O1twp7plxqqs"
                width: 120; height: 100
                border.left: 5; border.top: 5
                border.right: 5; border.bottom: 5
            }



        Rectangle{
            id:startbtn
            color: "beige"
            radius: 15
            border.color: "black"
            width: 70;height: 40
            anchors.centerIn: parent
            Text{
                id:starttxt
                color: "black"
                text: "Start"
                anchors.centerIn: parent
                font.family: "consolas"
                font.pointSize: 10
                font.bold: true
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                   //start()
                    mainitem.visible=false
                    code1.visible=true
                }
            }
        }
    }
}
    Code
    {
        id:code1
        visible: false
    }

}
