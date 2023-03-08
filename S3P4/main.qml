import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    color:"black"
    title: qsTr("Column Function")
    property double value: 1.0
    property int hth:50
    property bool flag: true
    Column{
        anchors.centerIn: parent
        spacing: 20

         Rect{
            rect:value
            ht:hth
            vis:flag
            onButtonClicked: {
                if(value > 0.4) {
                    value= rect-0.1;
                }
            }
        }
         Rect{
            color:"green"
            rect: value
            ht:hth
            vis:flag
            onButtonClicked: {
                value= rect+0.1
            }
        }
         Rect{
            rect:value
            color:"orange"
            ht:hth
            vis:flag
            onButtonClicked: {
               if(hth < 70){
                   hth=ht+2;
               }
            }
        }
         Rect{
            rect:value
            color:"blue"
            ht:hth
            vis:flag
            onButtonClicked: {
                if(hth > 40) {
                    hth=ht-2;
                }
            }
        }
         Rect {
            color:"gray"
            rect:value
            ht:hth

            onButtonClicked: {

                if(flag == true) {
                    flag=false;
                }
                else {
                    flag=true;
                }
            }
        }

    }
}
