import QtQuick 2.15
import QtQuick.Window 2.15
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Enable/Disable Button")
    color:"black"
//for all buttons
    property bool value: true
    property double op: 1.0
    Row{
        spacing:30
         Button {
            txt:"Button 1"
            en:true
            onButtonClicked: {
                if(value === true) {
                    value=false;
                    op=0.6;
                }
                else {
                    value=true;
                    op=1.0;
                }
            }
        }
         Button {
            txt:"Button 2"
            en:value
            opac:op
        }
         Button {
            txt:"Button 3"
            en:value
            opac:op
        }
         Button {
            txt:"Button 4"
            en:value
            opac:op
        }

    }

}
