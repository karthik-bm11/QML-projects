import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals and slots")
    property int count:0

    Rectangle{
        id:rect
        width: 150
        height: 150
        color: "cyan"
        anchors.centerIn: parent
        signal sig(int count)       //Define a signal
        Text{
            id:txtid
            color: "black"
            anchors.centerIn: parent
            text: count
        }

        function greet(msg){
            if(count%10===0){
            console.log("greet slot called parameter:"+count)
        }
    }
    MouseArea{
        anchors.fill: parent
        onClicked:{
            count++
            rect.sig(count)         //signal fired
        }
    }
    Component.onCompleted:{
        rect.sig.connect(rect.greet)
    }
}
}
