import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 600
    visible: true
    title: qsTr("Increase the size of rect and text proportionally")
    property font fonts: Qt.fontFamilies()
    Rectangle{
        id:rect
        width:txt.implicitWidth + 30;height: txt.implicitHeight +30
        anchors.centerIn: parent
        color:"tan"
        border.color:"black"
        Text{
            id:txt
            anchors.centerIn: parent
            text:"Hello!"
            font.bold: true
            font.family: "consolas"
            font.pointSize: 20
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                txt.font.pointSize += 10                //text size should change automatically not manual
            }
        }
    }
}
