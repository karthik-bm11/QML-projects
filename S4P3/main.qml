import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Create a Form")

    Row{
        x:10;y:10
        spacing:10


        Rectangle{
            id:rect2
            color: "beige"
            radius: 10
            width: txtid.implicitWidth+20
            height: txtid.implicitHeight+20
            Text {
                id: txtid
                text: qsTr("Name:")
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
                TextField{
                    id:nameid
                    placeholderText: qsTr("Enter name")
                    maximumLength: 20
                }
                onEditingFinished: {
                    console.log("The name is: " +text)
                }

            }

           }


    }

    Row{
        x:10;y:60
        spacing:10


        Rectangle{
            id:rect3
            color: "beige"
            radius: 10
            width: txtid.implicitWidth+20
            height: txtid.implicitHeight+20
            Text {
                id: txtid1
                text: qsTr("Age:")
                color: "black"
                anchors.centerIn: parent
                font.family: "arial"

            }

        }
        Rectangle{
            id:rect4
            color:"beige"
            width: txtid2.implicitWidth+20
            height: txtid2.implicitHeight+20
            TextInput{
                id:txtid3
                color: "black"
                focus: true
                font.family: "consolas"
                anchors.centerIn: parent
                TextField{
                    id:ageid
                    placeholderText: qsTr("Enter Age")
                    validator: IntValidator
                    maximumLength: 3
                }
                onEditingFinished: {
                    console.log("The age is: " +text)
                }

            }

           }


    }
}
