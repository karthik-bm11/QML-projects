import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals demo 2")

    Notifier{
        id:send
        Component.onCompleted:{
            notify.connect(receive.receiverInfo)
        }
    }
    Receiver{
        id:receive
        anchors.right:parent.right
        Component.onCompleted:{
            notify2.connect(send.receiverInfo)
        }
    }


}
