import QtQuick 2.15
import QtQuick.Controls 2.15
ApplicationWindow {
    id:win
    width: 640
    height: 480
    visible: true
    title: qsTr("Page1")

     Page1 {
        id:sender
        Component.onCompleted:{
            sig.connect(receiver.receiverInfo)
        }

    }
      Page2 {                                                           //catching signal one more pattern
        id:receiver
        Component.onCompleted:{
            sign.connect(sender.receiver2Info)
        }
    }

}
