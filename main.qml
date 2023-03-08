import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Change the font family")
    color: "white"
    property var fonts: Qt.fontFamilies()
    property int count : 0
    MouseArea {
        anchors.fill :parent
        onClicked:{
            funct()
        }
    }
    Text {
        id:txt
        font.pointSize: 45
        color: "black"
        anchors.centerIn:parent
    }

    function funct(){
        txt.text = fonts[count]
        txt.font.family= fonts[count]
        if(count < fonts.length) {
            count+=1;
        }
    }
}
