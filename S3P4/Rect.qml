import QtQuick 2.15

Item {
    id:itm
    property alias rect: rect1.opacity
        property alias color: rect1.color
        property alias ht: rect1.height
        property alias vis: rect1.visible

        width:rect1.width
        height: rect1.height
        signal buttonClicked
        Rectangle{
            id:rect1
            width:50;height: 50
            color:"red"
            opacity: 1.0
            visible: true

            MouseArea{
                anchors.fill:parent
                onClicked: {
                  itm.buttonClicked()
                }
            }
        }
    }

