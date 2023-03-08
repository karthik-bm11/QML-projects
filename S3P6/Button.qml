import QtQuick 2.15

Item {
    id:itm
    property alias txt: text1.text
        property alias en: rect.enabled
        property alias opac: rect.opacity
        width:rect.width
        height: rect.height
        signal buttonClicked

        Rectangle{
            id:rect
            width:text1.implicitWidth+30;height: text1.implicitHeight+10
            color:"beige"
            border.color:"white"
            border.width:2
            opacity: 1.0
            enabled: true
            Text{
                id:text1
                text:"Button"
                font.pointSize: 10

            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                   itm.buttonClicked()
                }
            }
        }

    }
