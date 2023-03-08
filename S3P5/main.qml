import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 840
    height: 480
    visible: true
    title: qsTr("Different methods to display image")
    property double value: 1.0
    Row{
        anchors.centerIn: parent
        spacing:20

        Image {
            id: img1
            width: 120;height:80
            source: "file:QT1.png"
            opacity: value
            Text {
                id: txt1
                y:85
                text: qsTr("From Working Directory")
            }
        }
        Image {
            id: img2
            width: 120;height:80
            source: "Images/QT2.png"
            opacity: value
            Text {
                id: txt2
                y:85
                text: qsTr("From QML Resource File")
            }
        }
        Image {
            id: img3
            width: 120;height:80
            source: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5R-05Qh3thex9jMuvfCCJMZieN9kcfzo18g&usqp=CAU"
            opacity: value
            Text {
                id: txt3
                y:85
                text: qsTr("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5R-05Qh3thex9jMuvfCCJMZieN9kcfzo18g&usqp=CAU")
            }
        }

        Image {
            id: img4
            width: 120;height:80
            source: "file:///D:\Qt/QT3.png"
            opacity: value
            Text {
                id: txt4
                y:85
                text: qsTr("   From Relative Path  ")
            }
        }

       Images {
            onButtonClicked: {
                value +=0.1
            }

            onButtonClick: {
                value -=0.1
            }
        }
    }
}
