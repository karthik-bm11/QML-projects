import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text changing simultaneosly as we type")

    Row{
        x:10;y:10
        spacing:10


        Rectangle{
            id:rect2
            color: "beige"
            width: txtid.implicitWidth+20
            height: txtid.implicitHeight+20
            Text {
                id: txtid
                text: qsTr("Enter text")
                color: "black"
                anchors.centerIn: parent
                font.family: "arial"

            }
        }
        Rectangle{
            id:rect1
            color:"beige"
            width: txtid2.implicitWidth+20
            height: txtid2.implicitHeight+20
            TextInput{
                id:txtid2
                color: "black"
                focus: true
                font.family: "consolas"
                anchors.centerIn: parent
                text: "Enter text to change"
                onTextEdited: {
                    console.log("The text changed to " +text)
                    txtid.text=text
                }
            }
          }
       }
    }
